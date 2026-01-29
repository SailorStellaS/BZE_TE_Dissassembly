.BANK 10 SLOT 0
.ORG $0000

.SECTION "Bank10" FORCE

	ora ($40.b),Y		; 11 40
	brk $00.b		; 00 00
	ora ($60.b,X)		; 01 60
	eor $57.b,X		; 55 57
	eor $21.b,X		; 55 21
	ora ($05.b,X)		; 01 05
	ora ($0D.b,X)		; 01 0D
	ora ($0C.b,X)		; 01 0C
	and ($01.b,X)		; 21 01
	ora $0501.w,X		; 1D 01 05
	ora ($0D.b,X)		; 01 0D
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $1C.b,X		; 55 1C
	and ($01.b,X)		; 21 01
	and $0501.w,X		; 3D 01 05
	ora ($0D.b,X)		; 01 0D
	ora ($2C.b,X)		; 01 2C
	and ($01.b,X)		; 21 01
	ora $0501.w,X		; 1D 01 05
	ora ($0D.b,X)		; 01 0D
	ora ($70.b,X)		; 01 70
	eor $57.b,X		; 55 57
	eor $02.b,X		; 55 02
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	ora $0E01.w		; 0D 01 0E
	and ($01.b,X)		; 21 01
	ora $0501.w,X		; 1D 01 05
	ora ($0D.b,X)		; 01 0D
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $1E.b,X		; 55 1E
	and ($01.b,X)		; 21 01
	and $0501.w,X		; 3D 01 05
	ora ($0D.b,X)		; 01 0D
	ora ($2E.b,X)		; 01 2E
	and ($01.b,X)		; 21 01
	ora $0501.w,X		; 1D 01 05
	ora ($0D.b,X)		; 01 0D
	ora ($70.b,X)		; 01 70
	eor $57.b,X		; 55 57
	eor $3C.b,X		; 55 3C
	and ($01.b,X)		; 21 01
	adc $0501.w,X		; 7D 01 05
	ora ($48.b,X)		; 01 48
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	ora $0501.w,X		; 1D 01 05
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $58.b,X		; 55 58
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	and $0501.w,X		; 3D 01 05
	ora ($68.b,X)		; 01 68
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	ora $0501.w,X		; 1D 01 05
	ora ($70.b,X)		; 01 70
	eor $57.b,X		; 55 57
	eor $3E.b,X		; 55 3E
	and ($01.b,X)		; 21 01
	adc $0501.w,X		; 7D 01 05
	ora ($4A.b,X)		; 01 4A
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	ora $0501.w,X		; 1D 01 05
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $5A.b,X		; 55 5A
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	and $0501.w,X		; 3D 01 05
	ora ($6A.b,X)		; 01 6A
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	ora $0501.w,X		; 1D 01 05
	ora ($70.b,X)		; 01 70
	eor $57.b,X		; 55 57
	eor $78.b,X		; 55 78
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	sbc $8401.w,X		; FD 01 84
	and ($01.b,X)		; 21 01
	ora $0501.w		; 0D 01 05
	ora ($1D.b,X)		; 01 1D
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $94.b,X		; 55 94
	and ($01.b,X)		; 21 01
	ora $0501.w		; 0D 01 05
	ora ($3D.b,X)		; 01 3D
	ora ($A4.b,X)		; 01 A4
	and ($01.b,X)		; 21 01
	ora $0501.w		; 0D 01 05
	ora ($1D.b,X)		; 01 1D
	ora ($70.b,X)		; 01 70
	eor $57.b,X		; 55 57
	eor $7A.b,X		; 55 7A
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	sbc $8601.w,X		; FD 01 86
	and ($01.b,X)		; 21 01
	ora $0501.w		; 0D 01 05
	ora ($1D.b,X)		; 01 1D
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $96.b,X		; 55 96
	and ($01.b,X)		; 21 01
	ora $0501.w		; 0D 01 05
	ora ($3D.b,X)		; 01 3D
	ora ($A6.b,X)		; 01 A6
	and ($01.b,X)		; 21 01
	ora $0501.w		; 0D 01 05
	ora ($1D.b,X)		; 01 1D
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AA.b		; 00 AA
	tax		; AA
	tax		; AA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	cop $49.b		; 02 49
	asl $00.b,X		; 16 00
	mvn $F0,$00		; 54 00 F0
	ora ($66.b,X)		; 01 66
	stp		; DB
	ora ($01.b,X)		; 01 01
	adc [$67.b]		; 67 67
	bvc  21.b		; 50 15
	cpy #$3F.b		; C0 3F
	ora ($1F.b,X)		; 01 1F
	adc ($D3.b,S),Y		; 73 D3
	eor ($01.b,X)		; 41 01
	ora ($1F.b,X)		; 01 1F
	ora $806161.l,X		; 1F 61 61 80
	bra  85.b		; 80 55
	eor $FC.b,X		; 55 FC
	sbc $6DDB3C.l,X		; FF 3C DB 6D
	phx		; DA
	adc [$FF.b],Y		; 77 FF
	inc $FA.b		; E6 FA
	bit $F23C.w,X		; 3C 3C F2
	sbc ($ED.b)		; F2 ED
	sbc $DBDB.w		; ED DB DB
	ora [$07.b]		; 07 07
	xce		; FB
	xce		; FB
	sbc $50FD.w,X		; FD FD 50
	eor $C0.b,X		; 55 C0
	sbc ($C0.b,S),Y		; F3 C0
	rts		; 60

	bvs  32.b		; 70 20
	cld		; D8
	cpy #$C0.b		; C0 C0
	cpy #$20.b		; C0 20
	jsr $1010.w		; 20 10 10
	cpx #$E0.b		; E0 E0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	pea $F000.w		; F4 00 F0
	ora $DF087A.l		; 0F 7A 08 DF
	rti		; 40

	ora [$0F.b]		; 07 0F
	and $55557F.l,X		; 3F 7F 55 55
	jsr ($03FF.w,X)		; FC FF 03
	tsb $0D13.w		; 0C 13 0D
	ora [$2C.b],Y		; 17 2C
	tad		; 5B
	and [$03.b],Y		; 37 03
	ora $0C.b,S		; 03 0C
	tsb $0303.w		; 0C 03 03
	ora $1F1F0F.l		; 0F 0F 1F 1F
	ora $1B0D.w		; 0D 0D 1B
	tas		; 1B
	sbc $5405FF.l,X		; FF FF 05 54
	jsr ($F2FF.w,X)		; FC FF F2
	sbc $EA3F22.l,X		; FF 22 3F EA
	sbc $F9FEFC.l,X		; FF FC FE F9
	sbc $EFEF.w,X		; FD EF EF
	cmp $3FDD.w,X		; DD DD 3F
	cpy #$01.b		; C0 01
	ora $06.b,S		; 03 06
	eor $FF.b,X		; 55 FF
	ora $FC.b,S		; 03 FC
	sbc ($09.b,S),Y		; F3 09
	ora [$02.b]		; 07 02
	bcs -128.b		; B0 80
	beq -128.b		; F0 80
	cpx #$38.b		; E0 38
	plx		; FA
	cli		; 58
	sbc $3A3AFF.l,X		; FF FF 3A 3A
	mvp $9F,$44		; 44 44 9F
	sta ($15.b,X)		; 81 15
	sbc $FF000F.l,X		; FF 0F 00 FF
	bra -128.b		; 80 80
	ora ($01.b,X)		; 01 01
	ldy #$20.b		; A0 20
	inc $36.b,X		; F6 36
	and #$29.b		; 29 29
	inc $01FE.w,X		; FE FE 01
	ora ($55.b,X)		; 01 55
	eor $33FF.w,X		; 5D FF 33
	cld		; D8
	bvs -64.b		; 70 C0
	bcs  48.b		; B0 30
	bra -128.b		; 80 80
	bmi  48.b		; 30 30
	cpx #$E0.b		; E0 E0
	bcc -112.b		; 90 90
	cpx #$E0.b		; E0 E0
	bmi  48.b		; 30 30
	bvs 112.b		; 70 70
	jsr $FB20.w		; 20 20 FB
	cmp [$9E.b]		; C7 9E
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	asl $02.b		; 06 02
	ora $05.b,S		; 03 05
	asl $0406.w		; 0E 06 04
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	sbc $03FC.w,X		; FD FC 03
	cpy #$FF.b		; C0 FF
	adc ($70.b),Y		; 71 70
	ldx $B0.b,Y		; B6 B0
	eor [$40.b]		; 47 40
	bvs 112.b		; 70 70
	and ($30.b,S),Y		; 33 30
	lsr A		; 4A
	rti		; 40

	sbc $0606FF.l,X		; FF FF 06 06
	eor $41.b,X		; 55 41
	and ($C3.b,S),Y		; 33 C3
	dec A		; 3A
	bpl  27.b		; 10 1B
	jsr $1B03.w		; 20 03 1B
	ora [$17.b],Y		; 17 17
	ora $0319.w,Y		; 19 19 03
	ora $0B.b,S		; 03 0B
	phd		; 0B
	cmp $DC.b,X		; D5 DC
	cmp $6DB6F4.l		; CF F4 B6 6D
	bit $80.b,X		; 34 80
	ora ($30.b,X)		; 01 30
	ora ($74.b,X)		; 01 74
	asl $04.b		; 06 04
	stp		; DB
	stp		; DB
	adc $036D.w		; 6D 6D 03
	cop $01.b		; 02 01
	rts		; 60

	rts		; 60

	asl $06.b		; 06 06
	sbc $7755FF.l,X		; FF FF 55 77
	sbc $E06D60.l		; EF 60 6D E0
	adc $26FFE8.l		; 6F E8 FF 26
	ror $3CDC.w,X		; 7E DC 3C
	cmp ($34.b,S),Y		; D3 34
	tsb $20E3.w		; 0C E3 20
	asl $101E.w,X		; 1E 1E 10
	asl $5D.b		; 06 5D
	eor ($10.b,X)		; 41 10
	ora $C0.b,S		; 03 C0
	trb $FFFF.w		; 1C FF FF
	ora ($55.b),Y		; 11 55
	sta ($BF.b),Y		; 91 BF
	plb		; AB
	lda $636B49.l		; AF 49 6B 63
	rtl		; 6B

	phx		; DA
	phx		; DA
	stx $96.b,Y		; 96 96
	lda $A5.b		; A5 A5
	wai		; CB
	wai		; CB
	sbc $449040.l,X		; FF 40 90 44
	and ($6F.b),Y		; 31 6F
	ora ($55.b),Y		; 11 55
	ora $30.b,S		; 03 30
	pea $2008.w		; F4 08 20
	rti		; 40

	bmi   3.b		; 30 03
	inx		; E8
	inx		; E8
	bmi  48.b		; 30 30
	bne -17.b		; D0 EF
	bra -86.b		; 80 AA
	sec		; 38
	.db $62, $3C, $E5		; 62 3C E5
	phy		; 5A
	bvc  36.b		; 50 24
	tsb $90.b		; 04 90
	.db $62, $3C, $5A		; 62 3C 5A
	bit $04.b		; 24 04
	.db $62, $D0, $FF		; 62 D0 FF
	bra -81.b		; 80 AF
	sec		; 38
	pea $FA38.w		; F4 38 FA
	cpy $84EE.w		; CC EE 84
	inc $7DC4.w		; EE C4 7D
	iny		; C8
	sec		; 38
	php		; 08
	cpy $8404.w		; CC 04 84
	cpy $C8.b		; C4 C8
	sbc $AA09FF.l,X		; FF FF 09 AA
	ora $171F0F.l		; 0F 0F 1F 17
	ora $1F1B17.l,X		; 1F 17 1B 1F
	bit $672F.w,X		; 3C 2F 67
	eor $CE9FEF.l,X		; 5F EF 9F CE
	and $1008A9.l,X		; 3F A9 08 10
	jsr $8040.w		; 20 40 80
	sbc $55FFFF.l,X		; FF FF FF 55
	adc #$81.b		; 69 81
	ora $8A05.w,X		; 1D 05 8A
	sty $81.b		; 84 81
	stx $0E01.w		; 8E 01 0E
	sta $80.b,S		; 83 80
	cop $0C.b		; 02 0C
	jsr $F603.w		; 20 03 F6
	sbc [$1D.b],Y		; F7 1D
	clc		; 18
	asl A		; 0A
	asl $0101.w		; 0E 01 01
	ora $030F0C.l		; 0F 0C 0F 03
	eor $00.b,X		; 55 00
	and $0D0900.l,X		; 3F 00 09 0D
	ora [$02.b]		; 07 02
	asl $06.b		; 06 06
	ora $05.b		; 05 05
	ora $03.b,S		; 03 03
	sbc $FFD5FF.l,X		; FF FF D5 FF
	ora $BEB515.l,X		; 1F 15 B5 BE
	eor ($6D.b)		; 52 6D
	cpy $C5.b		; C4 C5
	cli		; 58
	lsr $61.b		; 46 61
	rts		; 60

	stx $A6.b		; 86 A6
	lda $A0F1AE.l,X		; BF AE F1 A0
	cmp ($82.b)		; D2 82
	asl A		; 0A
	.db $82, $18, $1F		; 82 18 1F
	ora $0E1F5F.l,X		; 1F 5F 1F 0E
	asl $0DFF.w		; 0E FF 0D
	sbc $07.b,X		; F5 07
	lda ($9E.b,S),Y		; B3 9E
	jmp.w [$1A96]		; DC 96 1A
	asl $050A.w		; 0E 0A 05
	ora $05.b		; 05 05
	ora $60.b,S		; 03 60
	bcc  12.b		; 90 0C
	tsb $02.b		; 04 02
	ora [$02.b]		; 07 02
	ora $03.b,S		; 03 03
	sbc $F37F.w,X		; FD 7F F3
	cmp $F7.b,X		; D5 F7
	lda $F09746.l,X		; BF 46 97 F0
	and [$67.b]		; 27 67
	sta $07.b,S		; 83 07
	sbc ($0E.b,S),Y		; F3 0E
	sbc ($0A.b,S),Y		; F3 0A
	sep #$09		; E2 09
	ora #$88.b		; 09 88
	bcc  24.b		; 90 18
	ldy #$78.b		; A0 78
	beq -12.b		; F0 F4
	sbc $FF01.w,X		; FD 01 FF
	ora $4D03BF.l		; 0F BF 03 4D
	ora $3B.b,S		; 03 3B
	tsb $33AD.w		; 0C AD 33
	and $5804.w		; 2D 04 58
	pha		; 48
	mvp $B0,$04		; 44 04 B0
	lda ($30.b,S),Y		; B3 30
	bit $B380.w,X		; 3C 80 B3
	tsb $04.b		; 04 04
	jmp $17FF.w		; 4C FF 17
	inc $DF0F.w,X		; FE 0F DF
	bmi -56.b		; 30 C8
	tsx		; BA
	dey		; 88
	adc ($78.b)		; 72 78
	cop $08.b		; 02 08
	ora ($04.b,X)		; 01 04
	ora $30.b,S		; 03 30
	ora ($BC.b,X)		; 01 BC
	ora ($74.b,X)		; 01 74
	ora ($04.b,X)		; 01 04
	tsb $02.b		; 04 02
	cop $01.b		; 02 01
	adc $0A7E17.l,X		; 7F 17 7E 0A
	sbc [$19.b],Y		; F7 19
	inc $BB.b		; E6 BB
	sbc $DC.b,S		; E3 DC
	bit $8020.w,X		; 3C 20 80
	rti		; 40

	bra  25.b		; 80 19
	bra -69.b		; 80 BB
	cpy #$DC.b		; C0 DC
	cpy #$40.b		; C0 40
	bra  -1.b		; 80 FF
	ora [$FE.b]		; 07 FE
	ora $60.b,S		; 03 60
	bra -72.b		; 80 B8
	rts		; 60

	jmp ($E898.w)		; 6C 98 E8
	rti		; 40

	ror $24.b,X		; 76 24
	tsb $80.b		; 04 80
	rti		; 40

	rts		; 60

	rts		; 60

	tya		; 98
	bmi  64.b		; 30 40
	clc		; 18
	bit $FF.b		; 24 FF
	cmp $039966.l,X		; DF 66 99 03
	ora ($01.b,X)		; 01 01
	ora ($04.b,X)		; 01 04
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	cop $04.b		; 02 04
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	cmp $C0F3D4.l,X		; DF D4 F3 C0
	tsa		; 3B
	mvp $C4,$45		; 44 45 C4
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	eor #$A3.b		; 49 A3
	eor ($FF.b,X)		; 41 FF
	sbc $020101.l,X		; FF 01 01 02
	cop $82.b		; 02 82
	cop $FF.b		; 02 FF
	sbc $BFF557.l,X		; FF 57 F5 BF
	ora ($E7.b,S),Y		; 13 E7
	bit $5E.b		; 24 5E
	cmp $5D.b,S		; C3 5D
	sbc $9E.b		; E5 9E
	dec $C478.w,X		; DE 78 C4
	lsr A		; 4A
	inc A		; 1A
	jmp $C0C3E2.l		; 5C E2 C3 C0
	clc		; 18
	bit $2102.w,X		; 3C 02 21
	ora $BD.b,S		; 03 BD
	bit $F675.w,X		; 3C 75 F6
	cmp $51.b		; C5 51
	ora $C3.b,S		; 03 C3
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	asl $02.b		; 06 02
	tsb $0101.w		; 0C 01 01
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	sbc $F713FF.l,X		; FF FF 13 F7
	lda $101810.l		; AF 10 18 10
	php		; 08
	php		; 08
	trb $18.b		; 14 18
	lsr $14.b		; 46 14
	asl A		; 0A
	asl $8B9C.w		; 0E 9C 8B
	phy		; 5A
	ora ($CF.b,X)		; 01 CF
	cpy #$08.b		; C0 08
	tsb $10.b		; 04 10
	cop $05.b		; 02 05
	trb $1A.b		; 14 1A
	inc A		; 1A
	adc [$F5.b],Y		; 77 F5
	cmp $55.b,X		; D5 55
	sbc $AFFF80.l,X		; FF 80 FF AF
	ldy #$9F.b		; A0 9F
	inc $F7FD.w,X		; FE FD F7
	ora $1E.b		; 05 1E
	sta ($7F.b)		; 92 7F
	sbc $40BF5F.l,X		; FF 5F BF 40
	sbc $61F8FE.l,X		; FF FE F8 61
	sbc $FF7F5D.l,X		; FF 5D 7F FF
	inc $FA0C.w,X		; FE 0C FA
	bit $0CA3.w		; 2C A3 0C
	adc ($1C.b,S),Y		; 73 1C
	sbc $DB.b		; E5 DB
	bra  74.b		; 80 4A
	wai		; CB
	sbc ($01.b,X)		; E1 01
	cmp ($01.b,X)		; C1 01
	cpy #$10.b		; C0 10
	bra  18.b		; 80 12
	asl A		; 0A
	rol $26.b		; 26 26
	lda [$37.b],Y		; B7 37
	lda [$37.b],Y		; B7 37
	adc [$FF.b],Y		; 77 FF
	and ($FF.b,S),Y		; 33 FF
	nop		; EA
	stz $40.b,X		; 74 40
	jmp $BD204C.l		; 5C 4C 20 BD
	bit $3E.b		; 24 3E
	and ($88.b)		; 32 88
	tsb $0B0B.w		; 0C 0B 0B
	tsb $74.b		; 04 74
	sty $CC.b		; 84 CC
	rti		; 40

	stz $20.b		; 64 20
	and ($90.b)		; 32 90
	stz $0B08.w		; 9C 08 0B
	brk $C4.b		; 00 C4
	brk $80.b		; 00 80
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	and ($FF.b,S),Y		; 33 FF
	and [$AA.b]		; 27 AA
	rol $721C.w		; 2E 1C 72
	bit $E4.b		; 24 E4
	pha		; 48
	iny		; C8
	bcc -112.b		; 90 90
	rts		; 60

	jsr $0880.w		; 20 80 08
	trb $2408.w		; 1C 08 24
	pha		; 48
	bcc  96.b		; 90 60
	bra   0.b		; 80 00
	pea $E000.w		; F4 00 E0
	ora ($03.b,X)		; 01 03
	ora ($06.b,X)		; 01 06
	cop $01.b		; 02 01
	ora ($03.b,X)		; 01 03
	sbc $3F7FFF.l,X		; FF FF 7F 3F
	cmp $40.b,S		; C3 40
	lda ($60.b,X)		; A1 60
	bvc  48.b		; 50 30
	php		; 08
	php		; 08
	sbc $71F648.l		; EF 48 F6 71
	jmp ($C822.w)		; 6C 22 C8
	bpl  62.b		; 10 3E
	ror $4121.w,X		; 7E 21 41
	bpl  32.b		; 10 20
	php		; 08
	and #$61.b		; 29 61
	sbc ($83.b)		; F2 83
	bit $06.b		; 24 06
	sbc $995BFE.l,X		; FF FE 5B 99
	phx		; DA
	lda ($39.b)		; B2 39
	txa		; 8A
	jmp $414038.l		; 5C 38 40 41
	ora ($60.b,X)		; 01 60
	bra  97.b		; 80 61
	rts		; 60

	ora ($60.b),Y		; 11 60
	eor [$36.b]		; 47 36
	rol $38.b,X		; 36 38
	eor ($01.b,X)		; 41 01
	bra  32.b		; 80 20
	rti		; 40

	ora $FC33D5.l,X		; 1F D5 33 FC
	asl A		; 0A
	ora ($05.b,X)		; 01 05
	ora ($18.b,X)		; 01 18
	and #$12.b		; 29 12
	eor ($27.b,S),Y		; 53 27
	ora [$07.b]		; 07 07
	ora [$08.b]		; 07 08
	php		; 08
	bpl  16.b		; 10 10
	ora [$07.b]		; 07 07
	and $FDFD28.l		; 2F 28 FD FD
	ora $78B05F.l		; 0F 5F B0 78
	bpl -84.b		; 10 AC
	php		; 08
	trb $DF18.w		; 1C 18 DF
	eor $F9F907.l,X		; 5F 07 F9 F9
	ora $02.b,S		; 03 02
	cmp $6060DF.l,X		; DF DF 60 60
	cmp [$C7.b]		; C7 C7
	adc $03F978.l,X		; 7F 78 F9 03
	sbc $5155FF.l,X		; FF FF 55 51
	xce		; FB
	php		; 08
	inc $20.b		; E6 20
	lda [$54.b],Y		; B7 54
	stz $C163.w		; 9C 63 C1
	rol $01FF.w,X		; 3E FF 01
	txy		; 9B
	.db $82, $46, $39		; 82 46 39
	ora [$1F.b]		; 07 1F
	pha		; 48
	adc $3E.b,S		; 63 3E
	jmp ($31C1.w,X)		; 7C C1 31
	sbc [$17.b],Y		; F7 17
	sbc $82C7.w,X		; FD C7 82
	bra -128.b		; 80 80
	bra  56.b		; 80 38
	xce		; FB
	sed		; F8
	ora [$06.b]		; 07 06
	tyx		; BB
	tsa		; 3B
	bra -128.b		; 80 80
	bra  56.b		; 80 38
	sec		; 38
	plx		; FA
	cop $07.b		; 02 07
	ora ($3F.b,X)		; 01 3F
	eor ($FB.b),Y		; 51 FB
	cpy #$FA.b		; C0 FA
	ora [$43.b]		; 07 43
	ora ($C6.b,X)		; 01 C6
	asl $80.b		; 06 80
	ldy #$80.b		; A0 80
	bvs 119.b		; 70 77
	ora ($C8.b,X)		; 01 C8
	dec $0606.w		; CE 06 06
	bra -128.b		; 80 80
	sbc $7F.b,X		; F5 7F
	ldy #$7F.b		; A0 7F
	bra -32.b		; 80 E0
	jmp $DE21E0.l		; 5C E0 21 DE
	cmp $1001.w,X		; DD 01 10
	cop $10.b		; 02 10
	ora ($31.b,X)		; 01 31
	cpx #$D8.b		; E0 D8
	ora $01.b,S		; 03 01
	ora ($0C.b,X)		; 01 0C
	tsb $0A.b		; 04 0A
	asl $7FF7.w		; 0E F7 7F
	ldx #$AF.b		; A2 AF
	cop $01.b		; 02 01
	ora $C90E77.l		; 0F 77 0E C9
	rol $B6.b,X		; 36 B6
	cpy #$10.b		; C0 10
	rti		; 40

	bpl -128.b		; 10 80
	clc		; 18
	ora ($0E.b,X)		; 01 0E
	rol $80.b,X		; 36 80
	bra -128.b		; 80 80
	jsr $E060.w		; 20 60 E0
	ora $000A00.l,X		; 1F 00 0A 00
	cpx #$C0.b		; E0 C0
	jsr $C0C0.w		; 20 C0 C0
	cpy #$C0.b		; C0 C0
	cmp $FF5D.w,X		; DD 5D FF
	ora $040D04.l		; 0F 04 0D 04
	ora #$0D.b		; 09 0D
	tsb $04.b		; 04 04
	asl $02.b		; 06 02
	ora $01.b,S		; 03 01
	ora $03.b,S		; 03 03
	ora $07.b,S		; 03 07
	ora [$07.b]		; 07 07
	ora $07.b,S		; 03 07
	ora $03.b,S		; 03 03
	ora ($03.b,X)		; 01 03
	sbc [$FF.b],Y		; F7 FF
	cmp $FE.b,S		; C3 FE
	lda $104017.l		; AF 17 40 10
	bpl   8.b		; 10 08
	tsb $08.b		; 04 08
	ora $84.b,S		; 03 84
	ora ($C6.b,X)		; 01 C6
	ora ($52.b,X)		; 01 52
	sta ($F0.b,X)		; 81 F0
	sbc [$08.b],Y		; F7 08
	tsb $0403.w		; 0C 03 04
	ora $82.b		; 05 82
	sta $60.b,S		; 83 60
	sbc ($AF.b,X)		; E1 AF
	inc $FE7F.w,X		; FE 7F FE
	sbc [$E0.b],Y		; F7 E0
	php		; 08
	trb $0E.b		; 14 0E
	ora $82.b,S		; 03 82
	cop $C2.b		; 02 C2
	.db $82, $E3, $C4		; 82 E3 C4
	phk		; 4B
	ora $100CE0.l		; 0F E0 0C 10
	cop $08.b		; 02 08
	ora ($80.b,X)		; 01 80
	cop $C0.b		; 02 C0
	.db $82, $60, $C4		; 82 60 C4
	sty $1510.w		; 8C 10 15
	brk $0C.b		; 00 0C
	ora ($02.b,X)		; 01 02
	ora ($05.b,X)		; 01 05
	ora ($01.b,X)		; 01 01
	sbc [$FF.b],Y		; F7 FF
	sbc $07F8BF.l,X		; FF BF F8 07
	bvc 116.b		; 50 74
	tsb $B8.b		; 04 B8
	clc		; 18
	stx $16.b		; 86 16
	eor ($09.b,X)		; 41 09
	.db $62, $26, $81		; 62 26 81
	ora #$37.b		; 09 37
	bmi  64.b		; 30 40
	rti		; 40

	trb $10.b		; 14 10
	ldy #$A0.b		; A0 A0
	cop $10.b		; 02 10
	ora ($08.b,X)		; 01 08
	rti		; 40

	mvp $FF,$08		; 44 08 FF
	sbc $065555.l,X		; FF 55 55 06
	xce		; FB
	tsb $09F4.w		; 0C F4 09
	sbc ($1B.b),Y		; F1 1B
	nop		; EA
	asl $E5.b,X		; 16 E5
	trb $19EB.w		; 1C EB 19
	inc $F6.b		; E6 F6
	ora #$F8.b		; 09 F8
	sbc ($F6.b,S),Y		; F3 F6
	cpx $E9.b		; E4 E9
	sbc $E6.b,S		; E3 E6
	php		; 08
	lda $A555BF.l,X		; BF BF 55 A5
	sec		; 38
	adc [$60.b]		; 67 60
	eor $FF3FC0.l,X		; 5F C0 3F FF
	ora $9F60E0.l,X		; 1F E0 60 9F
	bra 112.b		; 80 70
	cpy #$87.b		; C0 87
	sta $E0FF3F.l,X		; 9F 3F FF E0
	bra  15.b		; 80 0F
	and $41FFC2.l,X		; 3F C2 FF 41
	sbc $03FF.w,X		; FD FF 03
	ora $1D.b,S		; 03 1D
	asl $F6F3.w,X		; 1E F3 F6
	mvn $4A,$64		; 54 64 4A
	clc		; 18
	sbc $E21D03.l,X		; FF 03 1D E2
	bpl   4.b		; 10 04
	rts		; 60

	jsr $FF10.w		; 20 10 FF
	ora $6E07F7.l,X		; 1F F7 07 6E
	bra  64.b		; 80 40
	rti		; 40

	cld		; D8
	cpx #$68.b		; E0 68
	bcs  80.b		; B0 50
	tya		; 98
	and #$08.b		; 29 08
	bpl -97.b		; 10 9F
	ora $10D040.l,X		; 1F 40 D0 10
	pla		; 68
	php		; 08
	sty $04.b,X		; 94 04
	php		; 08
	and $C82F4C.l,X		; 3F 4C 2F C8
	txs		; 9A
	ora ($0C.b,X)		; 01 0C
	asl A		; 0A
	trb $0F0C.w		; 1C 0C 0F
	tsb $C0.b		; 04 C0
	tsb $01.b		; 04 01
	tsb $0A.b		; 04 0A
	tsb $8004.w		; 0C 04 80
	bra  61.b		; 80 3D
	ora $0C3A.w		; 0D 3A 0C
	bcs  64.b		; B0 40
	ldy #$10.b		; A0 10
	rts		; 60

	rti		; 40

	cpx #$40.b		; E0 40
	rti		; 40

	cpx #$80.b		; E0 80
	rts		; 60

	bra  64.b		; 80 40
	rti		; 40

	adc $00.b,X		; 75 00
	dey		; 88
	ora ($02.b,X)		; 01 02
	tsb $01.b		; 04 01
	ora ($08.b,X)		; 01 08
	ora $06.b,S		; 03 06
	sbc $EAFFFA.l,X		; FF FA FF EA
	ldx $20.b,Y		; B6 20
	pld		; 2B
	and ($02.b),Y		; 31 02
	ora $60.b		; 05 60
	sbc [$7C.b],Y		; F7 7C
	cpx #$80.b		; E0 80
	cpy #$80.b		; C0 80
	jsr $6F4F.w		; 20 4F 6F
	and #$18.b		; 29 18
	asl $03.b		; 06 03
	rts		; 60

	sta [$7C.b],Y		; 97 7C
	cpx #$C0.b		; E0 C0
	bra  32.b		; 80 20
	sbc $75FFFF.l		; EF FF FF 75
	lda $384022.l,X		; BF 22 40 38
	xba		; EB
	lsr A		; 4A
	eor $848E.w,X		; 5D 8E 84
	ldy #$A0.b		; A0 A0
	.db $42, $5E		; 42 5E
	ora ($07.b,X)		; 01 07
	.db $42, $60		; 42 60
	rti		; 40

	sei		; 78
	cop $E8.b		; 02 E8
	.db $42, $10		; 42 10
	sta $A0.b		; 85 A0
	lsr $10.b		; 46 10
	ora [$45.b]		; 07 45
	sbc $C3.b,X		; F5 C3
	sbc $14010D.l,X		; FF 0D 01 14
	ora ($02.b,X)		; 01 02
	and #$01.b		; 29 01
	asl $02.b		; 06 02
	ora $03.b,S		; 03 03
	tsb $04.b		; 04 04
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	sbc $2AABFF.l,X		; FF FF AB 2A
	eor ($0E.b,X)		; 41 0E
	txa		; 8A
	eor $8E.b,X		; 55 8E
	bvc -126.b		; 50 82
	jmp $4D82.w		; 4C 82 4D
	cmp ($22.b,X)		; C1 22
	eor ($B6.b,X)		; 41 B6
	eor $BC.b,S		; 43 BC
	bra -80.b		; 80 B0
	jsr $3121.w		; 20 21 31
	bmi  28.b		; 30 1C
	php		; 08
	sbc $8BFEFF.l,X		; FF FF FE 8B
	php		; 08
	sta [$14.b],Y		; 97 14
	ply		; 7A
	and $42.b		; 25 42
	asl $31.b		; 06 31
	tsb $0B.b		; 04 0B
	php		; 08
	sta [$F0.b],Y		; 97 F0
	ora $60E39C.l		; 0F 9C E3 60
	bpl -111.b		; 10 91
	bpl -120.b		; 10 88
	bra  72.b		; 80 48
	rti		; 40

	bcs  96.b		; B0 60
	cpx #$AE.b		; E0 AE
	sbc $01AAAA.l		; EF AA AA 01
	ora ($61.b,X)		; 01 61
	ldy #$02.b		; A0 02
	ora $43.b,S		; 03 43
	ora ($80.b,X)		; 01 80
	cpy $01.b		; C4 01
	plp		; 28
	inc $A060.w,X		; FE 60 A0
	cop $41.b		; 02 41
	bra -60.b		; 80 C4
	plp		; 28
	ora $844BCC.l,X		; 1F CC 4B 84
	sbc ($68.b,S),Y		; F3 68
	dey		; 88
	bra -126.b		; 80 82
	tsb $0904.w		; 0C 04 09
	clc		; 18
	adc [$60.b]		; 67 60
	bra -128.b		; 80 80
	tsb $10.b		; 04 10
	ora $C0.b		; 05 C0
	ora $C0.b,S		; 03 C0
	sbc $08.b,X		; F5 08
	cop $04.b		; 02 04
	xce		; FB
	ora $02.b,S		; 03 02
	cop $F7.b		; 02 F7
	sbc $45FAFF.l,X		; FF FF FA 45
	ora $4F.b,S		; 03 4F
	adc [$0F.b],Y		; 77 0F
	eor $79B63F.l,X		; 5F 3F B6 79
	cmp $EF66.w,Y		; D9 66 EF
	ora $803FCF.l,X		; 1F CF 3F 80
	sta $80.b,S		; 83 80
	bra -125.b		; 80 83
	sta $79BF87.l		; 8F 87 BF 79
	ror $80.b		; 66 80
	sta $F7BF87.l,X		; 9F 87 BF F7
	sbc $40FFE2.l,X		; FF E2 FF 40
	bra -64.b		; 80 C0
	bcs -64.b		; B0 C0
	sed		; F8
	beq -12.b		; F0 F4
	sed		; F8
	pea $F838.w		; F4 38 F8
	beq -12.b		; F0 F4
	sed		; F8
	bra -64.b		; 80 C0
	beq -16.b		; F0 F0
	bvs  -8.b		; 70 F8
	bmi  56.b		; 30 38
	beq -16.b		; F0 F0
	beq  -8.b		; F0 F8
	adc $A9CEBF.l,X		; 7F BF CE A9
	inc A		; 1A
	ora $0D.b		; 05 0D
	ora #$0A.b		; 09 0A
	asl A		; 0A
	asl $07.b,X		; 16 07
	ora $0A.b		; 05 0A
	cop $01.b		; 02 01
	ora ($02.b,X)		; 01 02
	ora $0304.w		; 0D 04 03
	asl $09.b		; 06 09
	cop $04.b		; 02 04
	cop $01.b		; 02 01
	sbc $AAAF75.l,X		; FF 75 AF AA
	cmp $87FFAF.l,X		; DF AF FF 87
	and $40B3C3.l,X		; 3F C3 B3 40
	sbc [$F7.b],Y		; F7 F7
	adc ($80.b,S),Y		; 73 80
	sbc $AF80.w,X		; FD 80 AF
	bra -41.b		; 80 D7
	cmp ($6C.b,S),Y		; D3 6C
	adc $D7CFAF.l		; 6F AF CF D7
	sbc $AEDFFF.l,X		; FF FF DF AE
	nop		; EA
	cpx #$05.b		; E0 05
	php		; 08
	ora ($10.b)		; 12 10
	ora $84.b,S		; 03 84
	bra  96.b		; 80 60
	lda ($11.b,X)		; A1 11
	bmi  11.b		; 30 0B
	clc		; 18
	tsb $17.b		; 04 17
	beq   4.b		; F0 04
	php		; 08
	bpl   2.b		; 10 02
	sty $E0.b		; 84 E0
	ora ($70.b,X)		; 01 70
	inc A		; 1A
	tsb $415F.w		; 0C 5F 41
	sbc $0132C0.l,X		; FF C0 32 01
	adc $01.b,S		; 63 01
	bmi   1.b		; 30 01
	cpy #$60.b		; C0 60
	tsb $020C.w		; 0C 0C 02
	cop $10.b		; 02 10
	bpl   1.b		; 10 01
	ora ($20.b,X)		; 01 20
	jsr $FFFF.w		; 20 FF FF
	inc $BB.b		; E6 BB
	eor $7C7CB1.l		; 4F B1 7C 7C
	bit $7E.b,X		; 34 7E
	bra  -8.b		; 80 F8
	asl A		; 0A
	ora $6742.w		; 0D 42 67
	bit $76.b		; 24 76
	trb $0118.w		; 1C 18 01
	ora ($4A.b,X)		; 01 4A
	ora $78.b,S		; 03 78
	cop $05.b		; 02 05
	and [$03.b]		; 27 03
	asl $08.b,X		; 16 08
	sbc $3EF73F.l,X		; FF 3F F7 3E
	xba		; EB
	pea $0303.w		; F4 03 03
	bcc   2.b		; 90 02
	ldy $60CF.w		; AC CF 60
	beq  88.b		; F0 58
	and $0E16.w,Y		; 39 16 0E
	bra -16.b		; 80 F0
	rti		; 40

	cpx #$02.b		; E0 02
	jsr $F0CB.w		; 20 CB F0
	cpy #$39.b		; C0 39
	bmi  12.b		; 30 0C
	sbc $BA02FF.l,X		; FF FF 02 BA
	ora $EA.b		; 05 EA
	sty $7B.b		; 84 7B
	sei		; 78
	sta [$03.b]		; 87 03
	jsr ($4B05.w,X)		; FC 05 4B
	phd		; 0B
	ora [$37.b],Y		; 17 37
	eor $10B04F.l		; 4F 4F B0 10
	lda ($E7.b,S),Y		; B3 E7
	ora ($8F.b,X)		; 01 8F
	bmi -21.b		; 30 EB
	sbc $FEFCEB.l,X		; FF EB FC FE
	sbc ($80.b)		; F2 80
	php		; 08
	sta ($85.b,X)		; 81 85
	sty $02.b		; 84 02
	tsb $2C04.w		; 0C 04 2C
	clc		; 18
	bmi -32.b		; 30 E0
	adc ($F0.b),Y		; 71 F0
	bra   8.b		; 80 08
	ora ($84.b,X)		; 01 84
	bcs   4.b		; B0 04
	cpy $1C.b		; C4 1C
	bpl -16.b		; 10 F0
	ora ($3E.b),Y		; 11 3E
	ora $17.b,S		; 03 17
	xce		; FB
	sty $02.b		; 84 02
	bra -128.b		; 80 80
	.db $42, $02		; 42 02
	sbc $0101.w,X		; FD 01 01
	ora ($80.b,X)		; 01 80
	cop $CD.b		; 02 CD
	sbc $FFFEDB.l,X		; FF DB FE FF
	bpl  31.b		; 10 1F
	ora ($1C.b)		; 12 1C
	asl $0F.b		; 06 0F
	tsb $0903.w		; 0C 03 09
	asl $1717.w		; 0E 17 17
	cpy #$C0.b		; C0 C0
	ora $3C2101.l,X		; 1F 01 21 3C
	ora $010301.l		; 0F 01 03 01
	asl $3720.w		; 0E 20 37
	and $9F7BDB.l,X		; 3F DB 7B 9F
	pea $0C78.w		; F4 78 0C
	dey		; 88
	tsb $0C08.w		; 0C 08 0C
	dey		; 88
	bra  48.b		; 80 30
	sec		; 38
	beq 112.b		; F0 70
	sei		; 78
	dey		; 88
	bra   8.b		; 80 08
	bra  96.b		; 80 60
	dey		; 88
	cpx #$80.b		; E0 80
	beq -16.b		; F0 F0
	adc $001400.l,X		; 7F 00 14 00
	ora [$03.b]		; 07 03
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	cop $FF.b		; 02 FF
	eor $EFA84E.l,X		; 5F 4E A8 EF
	bpl  20.b		; 10 14
	bra  34.b		; 80 22
	jsr $8090.w		; 20 90 80
	ora ($10.b),Y		; 11 10
	jsr $9020.w		; 20 20 90
	jsr $1017.w		; 20 17 10
	jsr $1090.w		; 20 90 10
	bmi  32.b		; 30 20
	cmp $5F.b,X		; D5 5F
	inc $FBBF.w,X		; FE BF FB
	dex		; CA
	tsb $47.b		; 04 47
	ora ($BC.b,X)		; 01 BC
	cop $64.b		; 02 64
	ora ($02.b,X)		; 01 02
	ora [$FC.b]		; 07 FC
	ora ($FD.b,X)		; 01 FD
	ora $FB.b,S		; 03 FB
	cop $BB.b		; 02 BB
	ora $C3.b,S		; 03 C3
	ora $FB.b,S		; 03 FB
	ora ($FD.b,X)		; 01 FD
	sed		; F8
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	ora ($05.b),Y		; 11 05
	and ($0F.b,S),Y		; 33 0F
	eor ($02.b,X)		; 41 02
	cpy #$06.b		; C0 06
	rol $023E.w,X		; 3E 3E 02
	cop $40.b		; 02 40
	rti		; 40

	asl $06.b		; 06 06
	cmp [$07.b],Y		; D7 07
	sta [$01.b],Y		; 97 01
	lda $10101F.l		; AF 1F 10 10
	bpl  48.b		; 10 30
	jsr $0820.w		; 20 20 08
	eor $1F.b,S		; 43 1F
	cop $01.b		; 02 01
	bpl  32.b		; 10 20
	adc $016300.l,X		; 7F 00 63 01
	plx		; FA
	sbc $0105.w,X		; FD 05 01
	ora ($03.b,X)		; 01 03
	ora ($F8.b,X)		; 01 F8
	jsr ($0403.w,X)		; FC 03 04
	sta $7F.b,S		; 83 7F
	sbc [$7E.b],Y		; F7 7E
	sbc $C37FBC.l		; EF BC 7F C3
	bra -128.b		; 80 80
	ora ($02.b,X)		; 01 02
	ora $02.b,S		; 03 02
	ora $0C.b		; 05 0C
	tsb $08.b		; 04 08
	php		; 08
	adc $208018.l,X		; 7F 18 80 20
	ora ($40.b,X)		; 01 40
	sta ($03.b,X)		; 81 03
	ora #$01.b		; 09 01
	ora $10.b		; 05 10
	asl $FD57.w		; 0E 57 FD
	sbc $8049FF.l,X		; FF FF 49 80
	bit #$09.b		; 89 09
	php		; 08
	bit $18E4.w,X		; 3C E4 18
	sty $78.b		; 84 78
	tsb $F8.b		; 04 F8
	rol $B6.b,X		; 36 B6
	ror $76.b,X		; 76 76
	inc $F6.b,X		; F6 F6
	sbc [$F7.b],Y		; F7 F7
	cmp $C3.b,S		; C3 C3
	tas		; 1B
	and $7B.b,S		; 23 7B
	sta $FB.b,S		; 83 FB
	ora $F7.b,S		; 03 F7
	sbc [$51.b],Y		; F7 51
	sbc ($FF.b,S),Y		; F3 FF
	cmp ($20.b,X)		; C1 20
	ora ($01.b,X)		; 01 01
	and ($A0.b,X)		; 21 A0
	ora ($01.b),Y		; 11 01
	ora $1216.w		; 0D 16 12
	txa		; 8A
	bvc  62.b		; 50 3E
	ora ($21.b,X)		; 01 21
	cop $01.b		; 02 01
	ora $02.b,X		; 15 02
	dey		; 88
	bra  -9.b		; 80 F7
	cmp ($B2.b,S),Y		; D3 B2
	cmp [$C4.b],Y		; D7 C4
	tsa		; 3B
	bmi  72.b		; 30 48
	rti		; 40

	cmp [$87.b]		; C7 87
	stx $07.b		; 86 07
	ora ($07.b,X)		; 01 07
	ora [$3B.b]		; 07 3B
	jsr $8740.w		; 20 40 87
	rts		; 60

	ora [$81.b]		; 07 81
	ora ($40.b,X)		; 01 40
	ora [$C3.b]		; 07 C3
	cmp [$82.b],Y		; D7 82
	.db $82, $40, $80		; 82 40 80
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	ora $0511.w		; 0D 11 05
	brk $05.b		; 00 05
	cop $02.b		; 02 02
	ora ($02.b,X)		; 01 02
	ora $02.b,S		; 03 02
	cmp $2EEFFD.l,X		; DF FD EF 2E
	cpx $40.b		; E4 40
	bvs  96.b		; 70 60
	ror $3037.w		; 6E 37 30
	and ($19.b,S),Y		; 33 19
	clc		; 18
	sta ($02.b)		; 92 02
	ora #$01.b		; 09 01
	bra  27.b		; 80 1B
	rti		; 40

	bpl  14.b		; 10 0E
	jsr $0707.w		; 20 07 07
	bpl   7.b		; 10 07
	ora ($7D.b,X)		; 01 7D
	cmp $0BB6AA.l,X		; DF AA B6 0B
	and $7501.w,Y		; 39 01 75
	ora ($D0.b,X)		; 01 D0
	plb		; AB
	ora $55.b,S		; 03 55
	tsb $D2.b		; 04 D2
	pla		; 68
	php		; 08
	sbc $38.b,X		; F5 38
	adc [$C3.b],Y		; 77 C3
	stx $0201.w		; 8E 01 02
	tya		; 98
	cpy #$41.b		; C0 41
	bpl   0.b		; 10 00
	brk $04.b		; 00 04
	ora ($0C.b,X)		; 01 0C
	eor ($04.b,X)		; 41 04
	cmp $0C.b,S		; C3 0C
	bit #$80.b		; 89 80
	clc		; 18
	ror $76.b,X		; 76 76
	bra -128.b		; 80 80
	clc		; 18
	clc		; 18
	and ($5F.b,S),Y		; 33 5F
	ora ($4B.b,S),Y		; 13 4B
	ora $202087.l,X		; 1F 87 20 20
	bvc 112.b		; 50 70
	bmi  96.b		; 30 60
	jsr $6020.w		; 20 20 60
	ora [$20.b]		; 07 20
	rti		; 40

	bpl  32.b		; 10 20
	ora ($03.b,X)		; 01 03
	lda $FFFF43.l,X		; BF 43 FF FF
	sbc $0A0102.l,X		; FF 02 01 0A
	ora [$08.b]		; 07 08
	asl $7F38.w,X		; 1E 38 7F
	sbc $018601.l,X		; FF 01 86 01
	ora $2607.w,Y		; 19 07 26
	asl $3849.w,X		; 1E 49 38
	xce		; FB
	lda $FFFFFF.l		; AF FF FF FF
	beq   8.b		; F0 08
	jsr $A118.w		; 20 18 A1
	adc $01E080.l,X		; 7F 80 E0 01
	sta [$38.b]		; 87 38
	cpy #$E0.b		; C0 E0
	sbc [$10.b],Y		; F7 10
	tsb $1B70.w		; 0C 70 1B
	sty $707F.w		; 8C 7F 70
	cpx #$8C.b		; E0 8C
	sta [$70.b]		; 87 70
	tsa		; 3B
	bra  -2.b		; 80 FE
	sbc ($FC.b,S),Y		; F3 FC
	sbc ($FC.b,S),Y		; F3 FC
	cpy $38.b		; C4 38
	jsr $1220.w		; 20 20 12
	bpl   4.b		; 10 04
	tsb $09.b		; 04 09
	php		; 08
	ora ($01.b,X)		; 01 01
	tsa		; 3B
	cmp $20.b,S		; C3 20
	jsr $D612.w		; 20 12 D6
	tsb $C4.b		; 04 C4
	ora #$89.b		; 09 89
	ora ($C0.b,X)		; 01 C0
	cmp $FF47FF.l		; CF FF 47 FF
	rtl		; 6B

	ora [$34.b],Y		; 17 34
	bmi  36.b		; 30 24
	jsr $2C2E.w		; 20 2E 2C
	asl $07.b		; 06 07
	sbc $23.b,S		; E3 23
	cli		; 58
	clc		; 18
	sta ($87.b,S),Y		; 93 87
	bmi  35.b		; 30 23
	plp		; 28
	tsb $04.b		; 04 04
	ora $E3.b,S		; 03 E3
	cpy #$58.b		; C0 58
	cpy #$C7.b		; C0 C7
	jsr ($6C87.w,X)		; FC 87 6C
	jsr ($08FB.w,X)		; FC FB 08
	clc		; 18
	php		; 08
	sed		; F8
	bpl -32.b		; 10 E0
	cpx #$E0.b		; E0 E0
	cpx #$80.b		; E0 80
	xce		; FB
	bra   8.b		; 80 08
	php		; 08
	clc		; 18
	cpx #$E0.b		; E0 E0
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	cpy #$80.b		; C0 80
	bra  51.b		; 80 33
	bmi   1.b		; 30 01
	bpl   4.b		; 10 04
	cop $06.b		; 02 06
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	ora ($F7.b,X)		; 01 F7
	eor [$D3.b],Y		; 57 D3
	jsl $50097E.l		; 22 7E 09 50
	dec A		; 3A
	bpl 106.b		; 10 6A
	clc		; 18
	and ($01.b,X)		; 21 01
	and $240B.w		; 2D 0B 24
	beq   3.b		; F0 03
	bpl  96.b		; 10 60
	cop $3C.b		; 02 3C
	ora $5F.b,S		; 03 5F
	brk $5B.b		; 00 5B
	brk $67.b		; 00 67
	sta $066060.l,X		; 9F 60 60 06
	ora ($07.b,X)		; 01 07
	cmp $010620.l,X		; DF 20 06 01
	eor ($04.b,X)		; 41 04
	cpy #$00.b		; C0 00
	ora #$03.b		; 09 03
	clc		; 18
	ora ($01.b,X)		; 01 01
	eor ($14.b,X)		; 41 14
	cmp $3C.b,S		; C3 3C
	ora ($02.b),Y		; 11 02
	tsb $08.b		; 04 08
	inc $02EE.w		; EE EE 02
	ora $04.b,S		; 03 04
	asl $08.b		; 06 08
	tsb $DFF7.w		; 0C F7 DF
	lda $17FFBB.l		; AF BB FF 17
	tsb $14.b		; 04 14
	ora $1012.w		; 0D 12 10
	asl A		; 0A
	ora [$0A.b]		; 07 0A
	asl A		; 0A
	asl $05.b		; 06 05
	tsb $01.b		; 04 01
	eor [$01.b],Y		; 57 01
	bra  13.b		; 80 0D
	bpl   1.b		; 10 01
	adc [$0A.b]		; 67 0A
	ora ($C0.b,X)		; 01 C0
	tsb $F7AB.w		; 0C AB F7
	sbc $BCFFE3.l,X		; FF E3 FF BC
	cpy $2090.w		; CC 90 20
	cop $42.b		; 02 42
	bra -128.b		; 80 80
	bra   1.b		; 80 01
	ora ($18.b,X)		; 01 18
	ldy $CF38.w,X		; BC 38 CF
	rts		; 60

	stz $20C0.w		; 9C C0 20
	.db $82, $62, $C0		; 82 62 C0
	ora ($01.b,X)		; 01 01
	cmp $CE33.w		; CD 33 CE
	and ($FF.b,S),Y		; 33 FF
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	ora ($12.b)		; 12 12
	adc $1310.w,X		; 7D 10 13
	php		; 08
	ora #$04.b		; 09 04
	cpy $12.b		; C4 12
	ora ($FF.b)		; 12 FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	ora ($BF.b,X)		; 01 BF
	rti		; 40

	cmp $30CF20.l,X		; DF 20 CF 30
	sbc [$18.b]		; E7 18
	sbc $1C.b,S		; E3 1C
	sbc ($0E.b),Y		; F1 0E
	beq  15.b		; F0 0F
	ora ($DC.b,X)		; 01 DC
	rti		; 40

	lda $D320.w		; AD 20 D3
	bmi  75.b		; 30 4B
	clc		; 18
	adc $1C.b		; 65 1C
	ldx #$0E.b		; A2 0E
	lda ($0F.b),Y		; B1 0F
	bne  -1.b		; D0 FF
	sbc ($FD.b,S),Y		; F3 FD
	lda $38.b,S		; A3 38
	cmp [$16.b]		; C7 16
	asl $1F.b		; 06 1F
	ora ($51.b,X)		; 01 51
	rti		; 40

	bra -128.b		; 80 80
	jsr $2020.w		; 20 20 20
	jsr $16C7.w		; 20 C7 16
	bpl  31.b		; 10 1F
	rol $7151.w,X		; 3E 51 71
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	adc $00FF00.l,X		; 7F 00 FF 00
	trb $E3.b		; 14 E3
	bmi  32.b		; 30 20
	cpx #$C0.b		; E0 C0
	cpy #$E8.b		; C0 E8
	phd		; 0B
	bmi  16.b		; 30 10
	cpx #$20.b		; E0 20
	cpy #$C0.b		; C0 C0
	ora ($03.b,S),Y		; 13 03
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora ($03.b,X)		; 01 03
	ora ($7F.b,X)		; 01 7F
	sbc $39AAAB.l,X		; FF AB AA 39
	rti		; 40

	lda ($C0.b,S),Y		; B3 C0
	lda [$C0.b]		; A7 C0
	sbc $1C022D.l		; EF 2D 02 1C
	ora $7C.b,S		; 03 7C
	tas		; 1B
	inc $8079.w,X		; FE 79 80
	asl $1A1C.w,X		; 1E 1C 1A
	asl $D7.b,X		; 16 D7
	sbc [$9B.b]		; E7 9B
	tda		; 7B
	ora ($D7.b,S),Y		; 13 D7
	cop $62.b		; 02 62
	bra 127.b		; 80 7F
	bra -64.b		; 80 C0
	rti		; 40

	rti		; 40

	rti		; 40

	jsr $FFA0.w		; 20 A0 FF
	bra -64.b		; 80 C0
	bra   0.b		; 80 00
	pea $F000.w		; F4 00 F0
	cmp $BE.b,S		; C3 BE
	ora ($60.b,X)		; 01 60
	ora $3F4343.l,X		; 1F 43 43 3F
	and $51FFFC.l,X		; 3F FC FF 51
	ora $03.b		; 05 03
	ora $1F.b,S		; 03 1F
	ora $EF3F30.l,X		; 1F 30 3F EF
	sbc $7FFF9F.l,X		; FF 9F FF 7F
	sbc $FEFFFE.l,X		; FF FE FF FE
	ora $1C.b,S		; 03 1C
	jsr $FCC0.w		; 20 C0 FC
	sbc $F00551.l,X		; FF 51 05 F0
	beq  28.b		; F0 1C
	jsr ($FEE6.w,X)		; FC E6 FE
	xce		; FB
	sbc $BCFFFD.l,X		; FF FD FF BC
	cmp $01.b,S		; C3 01
	jsr ($F07C.w,X)		; FC 7C F0
	tsb $0102.w		; 0C 02 01
	brk $FD.b		; 00 FD
	brk $3C.b		; 00 3C
	rts		; 60

	bne  64.b		; D0 40
	tay		; A8
	ldy #$90.b		; A0 90
	bcc  96.b		; 90 60
	rts		; 60

	bcc -112.b		; 90 90
	brk $74.b		; 00 74
	brk $F0.b		; 00 F0
	sta $9F90F0.l,X		; 9F F0 90 9F
	ora $FFFF9F.l		; 0F 9F FF FF
	brk $F4.b		; 00 F4
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	bra -16.b		; 80 F0
	jsr $C080.w		; 20 80 C0
	cpx #$40.b		; E0 40
	mvn $CC,$00		; 54 00 CC
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sbc $5555FF.l,X		; FF FF 55 55
	sec		; 38
	and $CF7F77.l,X		; 3F 77 7F CF
	sbc $2EFF8E.l,X		; FF 8E FF 2E
	inc $BE1C.w,X		; FE 1C BE
	jmp.w [$5CFD]		; DC FD 5C
	adc $3033.w,X		; 7D 33 30
	rti		; 40

	ldy #$60.b		; A0 60
	cpy #$20.b		; C0 20
	cpx #$F2.b		; E0 F2
	sbc ($03.b),Y		; F1 03
	brk $FF.b		; 00 FF
	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$80.b		; C0 80
	rep #$43		; C2 43
	ror $FFBC.w,X		; 7E BC FF
	sbc $03FF0F.l,X		; FF 0F FF 03
	cpy #$01.b		; C0 01
	inc $0101.w,X		; FE 01 01
	bit $3C.b		; 24 3C
	lda $CD.b,X		; B5 CD
	dec $36.b,X		; D6 36
	pea $FF70.w		; F4 70 FF
	sbc $FF1111.l,X		; FF 11 11 FF
	sbc $4C1551.l,X		; FF 51 15 4C
	jmp ($FCF4.w,X)		; 7C F4 FC
	rol $3BFE.w,X		; 3E FE 3B
	sbc $DDFEFE.l,X		; FF FE FE DD
	sbc $7AFFFF.l,X		; FF FF FF 7A
	sbc $820463.l,X		; FF 63 04 82
	eor ($01.b,X)		; 41 01
	ora ($00.b,X)		; 01 00
	eor $00.b,X		; 55 00
	cpy $30C0.w		; CC C0 30
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	sbc $75.b,X		; F5 75
	eor ($10.b,S),Y		; 53 10
	beq -48.b		; F0 D0
	adc $40.b,S		; 63 40
	.db $62, $60, $81		; 62 60 81
	ora $7C20F0.l		; 0F F0 20 7C
	sbc $6040FF.l,X		; FF FF 40 60
	jsr $FFFF.w		; 20 FF FF
	and $82.b		; 25 82
	inx		; E8
	inx		; E8
	stz $74.b,X		; 74 74
	ldx $FAAA.w		; AE AA FA
	inc $FDF7.w,X		; FE F7 FD
	cmp ($FD.b,S),Y		; D3 FD
	eor [$FF.b],Y		; 57 FF
	ora $089DFE.l,X		; 1F FE 9D 08
	tsb $02.b		; 04 02
	ora ($41.b,X)		; 01 41
	bvc -64.b		; 50 C0
	cpy #$01.b		; C0 01
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($FF.b,X)		; 01 FF
	sbc $824005.l,X		; FF 05 40 82
	inc $FFFD.w,X		; FE FD FF
	ror $CFFF.w		; 6E FF CF
	sbc $E6FF96.l,X		; FF 96 FF E6
	sbc $BBBC.w,X		; FD BC BB
	phk		; 4B
	xce		; FB
	adc $80.b		; 65 80
	rti		; 40

	sbc $5501FF.l,X		; FF FF 01 55
	sta $62F9.w,Y		; 99 F9 62
	ora $59.b,S		; 03 59
	tda		; 7B
	.db $82, $EB, $25		; 82 EB 25
	sbc $6BD747.l,X		; FF 47 D7 6B
	adc $F7FFF3.l		; 6F F3 FF F7
	and $60.b		; 25 60
	asl A		; 0A
	bcc  -1.b		; 90 FF
	nop		; EA
	sbc $906B7F.l,X		; FF 7F 6B 90
	stz $8890.w		; 9C 90 88
	ora ($80.b,X)		; 01 80
	bpl  51.b		; 10 33
	phy		; 5A
	sep #$80		; E2 80
	ply		; 7A
	dec $64DE.w,X		; DE DE 64
	stz $1E.b		; 64 1E
	asl $E0E0.w,X		; 1E E0 E0
	cpx $C4.b		; E4 C4
	cld		; D8
	bra  98.b		; 80 62
	asl $1A.b		; 06 1A
	sbc $5FC5FF.l,X		; FF FF C5 5F
	adc $FF.b,S		; 63 FF
	jmp ($3F3E.w,X)		; 7C 3E 3F
	adc $ABBF7B.l,X		; 7F 7B BF AB
	and $5E1E.w,X		; 3D 1E 5E
	tas		; 1B
	lda [$C5.b],Y		; B7 C5
	adc $BF.b		; 65 BF
	jsr $4040.w		; 20 40 40
	cpy #$C0.b		; C0 C0
	ldy #$80.b		; A0 80
	eor ($60.b,X)		; 41 60
	sbc $01410F.l,X		; FF 0F 41 01
	rts		; 60

	cpx #$20.b		; E0 20
	cpx #$60.b		; E0 60
	rts		; 60

	ldy #$E0.b		; A0 E0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	rti		; 40

	sbc $D53FFF.l,X		; FF FF 3F D5
	eor #$08.b		; 49 08
	lda ($12.b)		; B2 12
	rol $FF11.w		; 2E 11 FF
	ora $FFE0EF.l		; 0F EF E0 FF
	ora ($FF.b,X)		; 01 FF
	ora [$FF.b]		; 07 FF
	inc $BEB6.w,X		; FE B6 BE
	eor $C05F.w		; 4D 5F C0
	cpy #$1E.b		; C0 1E
	sbc $1EE7.w,Y		; F9 E7 1E
	cpx #$DF.b		; E0 DF
	cmp $91450F.l,X		; DF 0F 45 91
	adc $415B5B.l		; 6F 5B 5B 41
	tsb $04.b		; 04 04
	rts		; 60

	rts		; 60

	bvc  80.b		; 50 50
	cop $40.b		; 02 40
	rti		; 40

	inc $81FF.w,X		; FE FF 81
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	ora ($DF.b,X)		; 01 DF
	brk $86.b		; 00 86
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	jsr $8040.w		; 20 40 80
	bra  64.b		; 80 40
	sbc $F515FF.l,X		; FF FF 15 F5
	nop		; EA
	inc $F5D5.w,X		; FE D5 F5
	.db $62, $7F, $4A		; 62 7F 4A
	ror A		; 6A
	eor [$5D.b],Y		; 57 5D
	bit $153C.w,X		; 3C 3C 15
	trb $0C.b		; 14 0C
	tsb $81BD.w		; 0C BD 81
	cop $14.b		; 02 14
	jsr $0101.w		; 20 01 01
	ora #$01.b		; 09 01
	adc $47FCDF.l,X		; 7F DF FC 47
	sta $84E070.l		; 8F 70 E0 84
	tay		; A8
	and $CFBD.w,Y		; 39 BD CF
	lsr A		; 4A
	asl A		; 0A
	ora [$80.b]		; 07 80
	rti		; 40

	cpy #$04.b		; C0 04
	ora $0235.w		; 0D 35 02
	ora ($08.b,X)		; 01 08
	pha		; 48
	ora [$07.b]		; 07 07
	cpy #$FF.b		; C0 FF
	sbc $D155FE.l,X		; FF FE 55 D1
	rol $CD6F.w,X		; 3E 6F CD
	ply		; 7A
	sbc ($FE.b,X)		; E1 FE
	cmp $75.b		; C5 75
	asl $F5.b		; 06 F5
	ora [$FC.b]		; 07 FC
	tsb $FE.b		; 04 FE
	asl $06.b		; 06 06
	bpl -63.b		; 10 C1
	jmp ($78E1.w,X)		; 7C E1 78
	cmp ($F8.b,X)		; C1 F8
	sed		; F8
	xce		; FB
	sbc $DFFD.w,Y		; F9 FD DF
	tyx		; BB
	mvn $EC,$FE		; 54 FE EC
	bvc -56.b		; 50 C8
	bvs -16.b		; 70 F0
	cpx #$70.b		; E0 70
	cpx #$90.b		; E0 90
	ldy #$20.b		; A0 20
	rts		; 60

	rti		; 40

	tsb $44.b		; 04 44
	cpx #$40.b		; E0 40
	cpx #$C0.b		; E0 C0
	rti		; 40

	cpy #$80.b		; C0 80
	sbc $F1D7FF.l,X		; FF FF D7 F1
	adc $7DE379.l,X		; 7F 79 E3 7D
	adc ($1C.b,S),Y		; 73 1C
	beq -28.b		; F0 E4
	iny		; C8
	sbc $2C.b,S		; E3 2C
	ora $05.b,S		; 03 05
	asl $0211.w		; 0E 11 02
	cld		; D8
	cpx #$3B.b		; E0 3B
	tsb $E7.b		; 04 E7
	cpx #$E0.b		; E0 E0
	ora [$07.b]		; 07 07
	asl A		; 0A
	inc A		; 1A
	sbc $D735FF.l,X		; FF FF 35 D7
	jmp $2E6ADC.l		; 5C DC 6A 2E
	tya		; 98
	rol $BF3E.w,X		; 3E 3E BF
	cmp $B9395D.l,X		; DF 5D 39 B9
	and ($D3.b,S),Y		; 33 D3
	and [$A3.b]		; 27 A3
	tsx		; BA
	jsr $8090.w		; 20 90 80
	bra -128.b		; 80 80
	bpl -94.b		; 10 A2
	cpx $C4.b		; E4 C4
	sbc $228BFF.l,X		; FF FF 8B 22
	bcs -112.b		; B0 90
	sei		; 78
	pha		; 48
	sec		; 38
	plp		; 28
	bit $1E34.w,X		; 3C 34 1E
	ora ($0E.b)		; 12 0E
	txa		; 8A
	phd		; 0B
	bit #$8B.b		; 89 8B
	bit #$C0.b		; 89 C0
	jsr $0810.w		; 20 10 08
	tsb $02.b		; 04 02
	eor [$05.b],Y		; 57 05
	sbc $010B03.l,X		; FF 03 0B 01
	ora [$05.b]		; 07 05
	ora $02.b,S		; 03 02
	ora ($04.b,X)		; 01 04
	tsb $02.b		; 04 02
	cop $03.b		; 02 03
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($FF.b,X)		; 01 FF
	sbc $1F7715.l,X		; FF 15 77 1F
	rti		; 40

	cpx #$60.b		; E0 60
	rti		; 40

	bvs   8.b		; 70 08
	bmi -20.b		; 30 EC
	bvs  37.b		; 70 25
	inc A		; 1A
	lda #$0E.b		; A9 0E
	lda $BF07.w,X		; BD 07 BF
	ldy #$10.b		; A0 10
	tay		; A8
	bra  22.b		; 80 16
	bit #$80.b		; 89 80
	bit $5F.b		; 24 5F
	sbc $F41555.l,X		; FF 55 15 F4
	tsb $AC.b		; 04 AC
	bit $F0F8.w		; 2C F8 F0
	sed		; F8
	ora ($F9.b,X)		; 01 F9
	cop $B2.b		; 02 B2
	sty $B4.b		; 84 B4
	sei		; 78
	xce		; FB
	cmp ($FF.b,S),Y		; D3 FF
	sbc $78FCFE.l,X		; FF FE FC 78
	sbc $000501.l,X		; FF 01 05 00
	rts		; 60

	rti		; 40

	jsr $C040.w		; 20 40 C0
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	and $541FFD.l,X		; 3F FD 1F 54
	inc $8F0C.w,X		; FE 0C 8F
	phd		; 0B
	stx $0187.w		; 8E 87 01
	ora ($80.b,X)		; 01 80
	rti		; 40

	ldy #$80.b		; A0 80
	ldy #$F9.b		; A0 F9
	ora $0D01.w		; 0D 01 0D
	sta [$81.b]		; 87 81
	ldy #$A0.b		; A0 A0
	sbc $0FFF3F.l		; EF 3F FF 0F
	jsr ($0789.w,X)		; FC 89 07
	lda #$68.b		; A9 68
	ora $E8.b,X		; 15 E8
	ply		; 7A
	dey		; 88
	clv		; B8
	sei		; 78
	sbc $E0.b,S		; E3 E0
	cmp $8B.b,S		; C3 8B
	tsb $8C.b		; 04 8C
	rti		; 40

	php		; 08
	tya		; 98
	bmi  96.b		; 30 60
	rti		; 40

	bra -128.b		; 80 80
	sbc $67FF.w,X		; FD FF 67
	inc $81.b,X		; F6 81
	cop $02.b		; 02 02
	sta ($02.b,X)		; 81 02
	tsb $04.b		; 04 04
	cop $04.b		; 02 04
	pha		; 48
	pha		; 48
	bit $68.b		; 24 68
	bpl  96.b		; 10 60
	inc $02FE.w,X		; FE FE 02
	cop $04.b		; 02 04
	tsb $48.b		; 04 48
	jsr $1048.w		; 20 48 10
	bvs   0.b		; 70 00
	mvn $A0,$00		; 54 00 A0
	ora ($02.b,X)		; 01 02
	ora $01.b		; 05 01
	ora $50.b,S		; 03 50
	ora $80.b,X		; 15 80
	rol A		; 2A
	ora [$1C.b]		; 07 1C
	ror $D2.b,X		; 76 D2
	rti		; 40

	asl $18.b		; 06 18
	adc ($80.b,X)		; 61 80
	cmp [$F7.b],Y		; D7 F7
	tax		; AA
	lda $7F.b,X		; B5 7F
	ora $7F.b,S		; 03 7F
	sbc $B7C07F.l,X		; FF 7F C0 B7
	sty $DF.b		; 84 DF
	lda ($10.b,S),Y		; B3 10
	sbc $3C2007.l,X		; FF 07 20 3C
	ora $3F7803.l,X		; 1F 03 78 3F
	ora $57E0C0.l		; 0F C0 E0 57
	sbc $FEA0.w,X		; FD A0 FE
	sei		; 78
	bra -32.b		; 80 E0
	ldy #$B0.b		; A0 B0
	inx		; E8
	lsr $60.b,X		; 56 60
	lda #$30.b		; A9 30
	cld		; D8
	bpl -64.b		; 10 C0
	cpy #$10.b		; C0 10
	bra   8.b		; 80 08
	cpy #$06.b		; C0 06
	cpx #$07.b		; E0 07
	brk $50.b		; 00 50
	brk $80.b		; 00 80
	bra 112.b		; 80 70
	bra  -3.b		; 80 FD
	sbc $FB55D5.l,X		; FF D5 55 FB
	tsb $1804.w		; 0C 04 18
	tsb $2DD0.w		; 0C D0 2D
	cmp $3D.b		; C5 3D
	tsb $112C.w		; 0C 2C 11
	sbc ($38.b),Y		; F1 38
	cpy $04FC.w		; CC FC 04
	php		; 08
	bmi   1.b		; 30 01
	cmp $0C.b		; C5 0C
	cmp ($F8.b),Y		; D1 F8
	sbc $7FD3FF.l,X		; FF FF D3 7F
	eor $E060B0.l		; 4F B0 60 E0
	tya		; 98
	cld		; D8
	pla		; 68
	iny		; C8
	bmi -64.b		; 30 C0
	sta $08A0.w,Y		; 99 A0 08
	bvs  66.b		; 70 42
	rti		; 40

	sbc $4080FF.l,X		; FF FF 80 40
	bra  32.b		; 80 20
	cpx #$90.b		; E0 90
	bmi   8.b		; 30 08
	sei		; 78
	rti		; 40

	cmp $3C473D.l		; CF 3D 47 3C
	bmi  32.b		; 30 20
	ldy #$20.b		; A0 20
	jsr $8020.w		; 20 20 80
	bvc  96.b		; 50 60
	ldy #$C0.b		; A0 C0
	cpy #$E0.b		; C0 E0
	jsr $4020.w		; 20 20 40
	jsr $4080.w		; 20 80 40
	sbc $B87F.w,X		; FD 7F B8
	phy		; 5A
	ora [$06.b]		; 07 06
	ora ($0B.b,X)		; 01 0B
	ora [$0F.b]		; 07 0F
	ora [$0B.b]		; 07 0B
	tsb $0F.b		; 04 0F
	ora ($06.b,X)		; 01 06
	cop $04.b		; 02 04
	ora $01.b,S		; 03 01
	ora [$07.b]		; 07 07
	asl $04.b		; 06 04
	ora ($03.b,X)		; 01 03
	sbc $FAFF.w,X		; FD FF FA
	xce		; FB
	cmp $DE807B.l,X		; DF 7B 80 DE
	cpx #$ED.b		; E0 ED
	sbc ($B5.b)		; F2 B5
	ply		; 7A
	sbc $283798.l,X		; FF 98 37 28
	phx		; DA
	ora $3F.b,X		; 15 3F
	cmp [$80.b]		; C7 80
	sbc #$E0.b		; E9 E0
	inc $10.b,X		; F6 10
	ply		; 7A
	inc A		; 1A
	cpy #$0C.b		; C0 0C
	cpx #$05.b		; E0 05
	eor $7F.b,X		; 55 7F
	lda $0BF41F.l		; AF 1F F4 0B
	ora ($89.b,X)		; 01 89
	sta $1330.w,Y		; 99 30 13
	asl $8102.w		; 0E 02 81
	jsr $F803.w		; 20 03 F8
	ora $04.b,S		; 03 04
	ora $70.b,S		; 03 70
	bmi -114.b		; 30 8E
	asl $0181.w		; 0E 81 01
	cmp $FBFFFF.l,X		; DF FF FF FB
	ldy $88.b		; A4 88
	cpx $B408.w		; EC 08 B4
	eor ($04.b)		; 52 04
	ldx $9E14.w,Y		; BE 14 9E
	tsb $844A.w		; 0C 4A 84
	ldx $C0.b,Y		; B6 C0
	bvs   3.b		; 70 03
	beq   3.b		; F0 03
	sei		; 78
	ora $38.b,S		; 03 38
	sta ($08.b,X)		; 81 08
	cmp ($61.b,X)		; C1 61
	bra  49.b		; 80 31
	cpy #$09.b		; C0 09
	sbc $FF.b,X		; F5 FF
	tax		; AA
	inc $060C.w,X		; FE 0C 06
	ora [$02.b]		; 07 02
	asl $03.b		; 06 03
	ora $030C04.l		; 0F 04 0C 03
	ora [$0F.b],Y		; 17 0F
	and $F8F01F.l		; 2F 1F F0 F8
	plx		; FA
	xce		; FB
	pea $F003.w		; F4 03 F0
	ora $C01FE0.l		; 0F E0 1F C0
	rti		; 40

	phd		; 0B
	brk $0A.b		; 00 0A
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	sbc $FF6FF5.l,X		; FF F5 6F FF
	adc $BB50.w,Y		; 79 50 BB
	bpl  -1.b		; 10 FF
	and #$E3.b		; 29 E3
	cpy $F5.b		; C4 F5
	sbc $18E5.w,X		; FD E5 18
	cmp [$20.b]		; C7 20
	dec $C6.b,X		; D6 C6
	pei ($C4.b)		; D4 C4
	ora ($D8.b,X)		; 01 D8
	tsa		; 3B
	ora $F3.b,S		; 03 F3
	ora $E3.b,S		; 03 E3
	ora $D9.b,S		; 03 D9
	ora ($FF.b,X)		; 01 FF
	sbc $7EF47F.l,X		; FF 7F F4 7E
	rol $5727.w		; 2E 27 57
	cmp $7E9E6F.l		; CF 6F 9E 7E
	trb $5FFC.w		; 1C FC 5F
	cmp $E0607F.l,X		; DF 7F 60 E0
	bra  -8.b		; 80 F8
	bvc  88.b		; 50 58
	jsr $80B0.w		; 20 B0 80
	rts		; 60

	ora $9F1F60.l,X		; 1F 60 1F 9F
	adc $0BFF0D.l,X		; 7F 0D FF 0B
	xba		; EB
	rti		; 40

	jsr $A040.w		; 20 40 A0
	cpy #$30.b		; C0 30
	bra  40.b		; 80 28
	ldy #$30.b		; A0 30
	bcc -128.b		; 90 80
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra -80.b		; 80 B0
	jsr $F1C0.w		; 20 C0 F1
	bit $0411.w,X		; 3C 11 04
	ora $02.b		; 05 02
	cop $05.b		; 02 05
	cop $01.b		; 02 01
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
	cop $01.b		; 02 01
	sbc $7D5FFD.l,X		; FF FD 5F 7D
	sbc $FF0A.w,X		; FD 0A FF
	tsb $FB.b		; 04 FB
	cop $FD.b		; 02 FD
	ora ($4F.b,X)		; 01 4F
	and $313E2F.l,X		; 3F 2F 3E 31
	sta [$84.b],Y		; 97 84
	beq   2.b		; F0 02
	sed		; F8
	ora ($FC.b,X)		; 01 FC
	inc $C2F0.w,X		; FE F0 C2
	ora $7803C0.l		; 0F C0 03 78
	cmp $FC8FFF.l,X		; DF FF 8F FC
	eor $E0E0BF.l,X		; 5F BF E0 E0
	ora ($50.b,X)		; 01 50
	cpy #$01.b		; C0 01
	cpy #$98.b		; C0 98
	bne -100.b		; D0 9C
	sei		; 78
	trb $3FEC.w		; 1C EC 3F
	bra  32.b		; 80 20
	cpy #$40.b		; C0 40
	bpl -128.b		; 10 80
	iny		; C8
	bvs -60.b		; 70 C4
	dey		; 88
	sbc $D5EFFF.l,X		; FF FF EF D5
	nop		; EA
	beq  29.b		; F0 1D
	php		; 08
	rep #$02		; C2 02
	and $40C00E.l,X		; 3F 0E C0 40
	and [$72.b],Y		; 37 72
	ora $31.b,S		; 03 31
	and $F00C.w,Y		; 39 0C F0
	ora $08.b		; 05 08
	ora $03.b		; 05 03
	php		; 08
	tsb $40.b		; 04 40
	bvs  48.b		; 70 30
	php		; 08
	tsb $FF.b		; 04 FF
	sbc $5F95FF.l,X		; FF FF 95 5F
	and $3840A0.l,X		; 3F A0 40 38
	rti		; 40

	jsr $88A0.w		; 20 A0 88
	dey		; 88
	bne  88.b		; D0 58
	cpy #$90.b		; C0 90
	bcc  64.b		; 90 40
	and $804080.l,X		; 3F 80 40 80
	rti		; 40

	bra -96.b		; 80 A0
	rti		; 40

	dey		; 88
	clc		; 18
	bpl  64.b		; 10 40
	adc [$FF.b],Y		; 77 FF
	mvn $E0,$55		; 54 55 E0
	rti		; 40

	ldy #$B0.b		; A0 B0
	jsr $7890.w		; 20 90 78
	bcc 104.b		; 90 68
	bra -36.b		; 80 DC
	dey		; 88
	pei ($80.b)		; D4 80
	rti		; 40

	rti		; 40

	rts		; 60

	ldy #$B0.b		; A0 B0
	bcs -72.b		; B0 B8
	sbc $BE7BFE.l,X		; FF FE 7B BE
	cmp $023004.l,X		; DF 04 30 02
	bmi   9.b		; 30 09
	rts		; 60

	jsr $C030.w		; 20 30 C0
	eor $82.b,S		; 43 82
	cpx $900E.w		; EC 0E 90
	beq   4.b		; F0 04
	cop $10.b		; 02 10
	ora #$20.b		; 09 20
	bpl  64.b		; 10 40
	ora $80.b,S		; 03 80
	and $77FB1C.l		; 2F 1C FB 77
	tax		; AA
	dex		; CA
	sbc $0102FE.l,X		; FF FE 02 01
	sta $01.b		; 85 01
	sta $E01C.w,Y		; 99 1C E0
	cld		; D8
	cmp ($01.b,X)		; C1 01
	ora $FE.b		; 05 FE
	ora $86.b,S		; 03 86
	sta $E1FE.w,Y		; 99 FE E1
	ora ($06.b,X)		; 01 06
	sbc $ABFFFF.l,X		; FF FF FF AB
	ldy $D660.w,X		; BC 60 D6
	pla		; 68
	xce		; FB
	jmp $5CAB.w		; 4C AB 5C
	plx		; FA
	trb $18E6.w		; 1C E6 18
	dec $DE30.w		; CE 30 DE
	bit $20.b		; 24 20
	bvs  64.b		; 70 40
	jmp ($6E48.w)		; 6C 48 6E
	php		; 08
	dec $DC18.w,X		; DE 18 DC
	bit $7038.w,X		; 3C 38 70
	ora ($04.b,X)		; 01 04
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	sbc $DFF5FF.l,X		; FF FF F5 DF
	sta $4801.w		; 8D 01 48
	eor ($86.b,X)		; 41 86
	cmp ($25.b,X)		; C1 25
	jsl $A57711.l		; 22 11 77 A5
	lda $68.b,X		; B5 68
	php		; 08
	cmp ($59.b,S),Y		; D3 59
	ror $0240.w,X		; 7E 40 02
	sta ($24.b,X)		; 81 24
	cop $10.b		; 02 10
	eor $04.b,S		; 43 04
	lda ($08.b,X)		; A1 08
	cop $51.b		; 02 51
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $137B.w,X		; FD 7B 13
	ldx $91.b		; A6 91
	adc $90.b,S		; 63 90
	iny		; C8
	ora ($B9.b)		; 12 B9
	asl $73.b		; 06 73
	ora $8D.b,X		; 15 8D
	ora $5B.b,X		; 15 5B
	adc ($78.b,S),Y		; 73 78
	plx		; FA
	sty $B5.b		; 84 B5
	cop $7A.b		; 02 7A
	bra -54.b		; 80 CA
	sta ($9C.b,X)		; 81 9C
	bmi  78.b		; 30 4E
	bit $D1.b		; 24 D1
	sbc $EF5DFF.l,X		; FF FF 5D EF
	plb		; AB
	pea $1F7E.w		; F4 7E 1F
	adc ($30.b)		; 72 30
	pla		; 68
	cpx #$35.b		; E0 35
	jmp $F507.w		; 4C 07 F5
	eor ($72.b)		; 52 72
	cmp ($36.b),Y		; D1 36
	pea $031C.w		; F4 1C 03
	bmi -32.b		; 30 E0
	pha		; 48
	tsb $70.b		; 04 70
	sta $7A.b		; 85 7A
	ora ($38.b,X)		; 01 38
	sbc $AAFDDF.l,X		; FF DF FD AA
	cmp [$6F.b],Y		; D7 6F
	adc $B3B3.w		; 6D B3 B3
	jmp.w [$E3DF]		; DC DF E3
	lda $807FC1.l,X		; BF C1 7F 80
	sbc $6F80FF.l,X		; FF FF 80 6F
	and ($80.b,S),Y		; 33 80
	trb $01C0.w		; 1C C0 01
	sbc $CD.b,S		; E3 CD
	ldx $5A.b,Y		; B6 5A
	and $FFF7.w		; 2D F7 FF
	sbc $BF.b,X		; F5 BF
	inc $FAA4.w		; EE A4 FA
	sbc [$7A.b],Y		; F7 7A
	xce		; FB
	jsr ($FDFF.w,X)		; FC FF FD
	sbc $FE.b,X		; F5 FE
	sbc $49FEF6.l		; EF F6 FE 49
	tya		; 98
	tsb $20.b		; 04 20
	sei		; 78
	beq  -4.b		; F0 FC
	beq  -4.b		; F0 FC
	rts		; 60

	inc $F640.w,X		; FE 40 F6
	rti		; 40

	brk $75.b		; 00 75
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	rti		; 40

	bra -11.b		; 80 F5
	eor $E3BFFE.l,X		; 5F FE BF E3
	and ($D2.b,X)		; 21 D2
	cpy #$D2.b		; C0 D2
	rti		; 40

	lda $1680.w,X		; BD 80 16
	cpy #$A0.b		; C0 A0
	cld		; D8
	ora $60DFC0.l,X		; 1F C0 DF 60
	sbc $6D20.w		; ED 20 6D
	rts		; 60

	sbc $E0.b,S		; E3 E0
	sbc $27DFC0.l		; EF C0 DF 27
	cmp [$DF.b],Y		; D7 DF
	adc [$29.b]		; 67 29
	sbc $03.b,X		; F5 03
	cop $68.b		; 02 68
	ora $04.b		; 05 04
	stx $04.b		; 86 04
	ora #$01.b		; 09 01
	bpl   2.b		; 10 02
	cop $01.b		; 02 01
	xce		; FB
	cop $0C.b		; 02 0C
	ora ($02.b,X)		; 01 02
	tsb $FF01.w		; 0C 01 FF
	adc $5556.w,X		; 7D 56 55
	inc $F60C.w,X		; FE 0C F6
	trb $A6.b		; 14 A6
	stz $D4.b		; 64 D4
	rti		; 40

	ldy $FC.b,X		; B4 FC
	php		; 08
	sed		; F8
	bra 104.b		; 80 68
	rts		; 60

	php		; 08
	clc		; 18
	sec		; 38
	sei		; 78
	bvs 112.b		; 70 70
	beq  -1.b		; F0 FF
	adc $28AF.w,X		; 7D AF 28
	eor $39.b,X		; 55 39
	rol $131A.w		; 2E 1A 13
	ora $020D.w		; 0D 0D 02
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	cop $38.b		; 02 38
	ora ($18.b,X)		; 01 18
	tsb $0302.w		; 0C 02 03
	ora ($5F.b,X)		; 01 5F
	sbc $F557.w,X		; FD 57 F5
	sbc $EF51.w,X		; FD 51 EF
	lda ($0D.b,X)		; A1 0D
	ora [$87.b]		; 07 87
	cmp $40.b,S		; C3 40
	cpy #$80.b		; C0 80
	rts		; 60

	cpy #$0E.b		; C0 0E
	rti		; 40

	asl $FFFF.w,X		; 1E FF FF
	adc $803F3F.l,X		; 7F 3F 3F 80
	ora $FD5FC0.l,X		; 1F C0 5F FD
	ora $D4.b		; 05 D4
	sbc [$20.b]		; E7 20
	tya		; 98
	jsr $0380.w		; 20 80 03
	tsb $0131.w		; 0C 31 01
	cpy $07.b		; C4 07
	tas		; 1B
	ora [$1F.b],Y		; 17 1F
	cpx #$01.b		; E0 01
	asl $18.b		; 06 18
	ora ($D7.b,X)		; 01 D7
	cmp $ABFF.w,X		; DD FF AB
	inc $BE40.w,X		; FE 40 BE
	rol A		; 2A
	rtl		; 6B

	rti		; 40

	eor $5F.b,X		; 55 5F
	bra -75.b		; 80 B5
	ror A		; 6A
	sta ($80.b,X)		; 81 80
	ora $C0.b,X		; 15 C0
	ora $C0.b,X		; 15 C0
	ora $80.b,X		; 15 80
	trb $80.b		; 14 80
	rol A		; 2A
	jsl $DF944A.l		; 22 4A 94 DF
	sbc ($55.b),Y		; F1 55
	eor $DD.b,X		; 55 DD
	ora ($FF.b,X)		; 01 FF
	rti		; 40

	lda $03808F.l,X		; BF 8F 80 03
	bra -128.b		; 80 80
	beq -16.b		; F0 F0
	rol $7F3F.w,X		; 3E 3F 7F
	adc $7FFFFF.l,X		; 7F FF FF 7F
	ora $05F53F.l		; 0F 3F F5 05
	bvc  96.b		; 50 60
	rti		; 40

	cpy #$40.b		; C0 40
	bvc  32.b		; 50 20
	rti		; 40

	bra  80.b		; 80 50
	rts		; 60

	ldy #$C0.b		; A0 C0
	bra  64.b		; 80 40
	rti		; 40

	bra -33.b		; 80 DF
	sbc $A4FEAF.l,X		; FF AF FE A4
	cpy #$53.b		; C0 53
	cpx #$F0.b		; E0 F0
	ply		; 7A
	bra  27.b		; 80 1B
	cpx #$CD.b		; E0 CD
	beq -27.b		; F0 E5
	sed		; F8
	inc $F8.b,X		; F6 F8
	bra -37.b		; 80 DB
	rti		; 40

	cpx $C72F.w		; EC 2F C7
	sbc [$C0.b],Y		; F7 C0
	xce		; FB
	cpx #$FB.b		; E0 FB
	beq  -3.b		; F0 FD
	adc [$FF.b],Y		; 77 FF
	tsx		; BA
	tsx		; BA
	asl $01.b		; 06 01
	ora $01FD.w		; 0D FD 01
	sed		; F8
	ora ($02.b)		; 12 02
	tax		; AA
	php		; 08
	phx		; DA
	inc A		; 1A
	ldy $24.b		; A4 24
	sed		; F8
	tsb $FC01.w		; 0C 01 FC
	jsr ($301C.w,X)		; FC 1C 30
	cop $60.b		; 02 60
	iny		; C8
	adc $053C.w,X		; 7D 3C 05
	tsb $E8.b		; 04 E8
	bpl  16.b		; 10 10
	php		; 08
	bpl  32.b		; 10 20
	rts		; 60

	jsr $2090.w		; 20 90 20
	beq  16.b		; F0 10
	jsr $5554.w		; 20 54 55
	ldy #$82.b		; A0 82
	bmi 124.b		; 30 7C
	sbc [$05.b],Y		; F7 05
	ora ($01.b,X)		; 01 01
	cpy #$30.b		; C0 30
	jmp $4003.w		; 4C 03 40
	sbc $1ABF17.l,X		; FF 17 BF 1A
	bne  96.b		; D0 60
	adc $DE11.w,Y		; 79 11 DE
	eor #$28.b		; 49 28
	ora [$A0.b]		; 07 A0
	jsr $8040.w		; 20 40 80
	ora $100960.l		; 0F 60 09 10
	asl $48.b		; 06 48
	ora [$20.b]		; 07 20
	cpy #$03.b		; C0 03
	adc $157F00.l,X		; 7F 00 7F 15
	adc [$4F.b],Y		; 77 4F
	tay		; A8
	bvs -96.b		; 70 A0
	cpy #$80.b		; C0 80
	bra  15.b		; 80 0F
	bra  48.b		; 80 30
	ora ($C0.b,X)		; 01 C0
	cop $0C.b		; 02 0C
	bmi -64.b		; 30 C0
	ora $005A31.l,X		; 1F 31 5A 00
	lda [$C8.b],Y		; B7 C8
	adc $3434.w,X		; 7D 34 34
	tsb $04.b		; 04 04
	tsb $C8.b		; 04 C8
	bit $80.b,X		; 34 80
	rts		; 60

	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	sbc $4F044F.l,X		; FF 4F 04 4F
	tsb $F3.b		; 04 F3
	jsr ($030B.w,X)		; FC 0B 03
	ora [$80.b]		; 07 80
	beq  -4.b		; F0 FC
	php		; 08
	ora $07.b,S		; 03 07
	bra  -1.b		; 80 FF
	eor [$F7.b],Y		; 57 F7
	inc A		; 1A
	ldx $F176.w		; AE 76 F1
	sta ($A8.b),Y		; 91 A8
	pld		; 2B
	phk		; 4B
	tsb $405B.w		; 0C 5B 40
	sec		; 38
	tya		; 98
	asl $21.b		; 06 21
	beq  97.b		; F0 61
	bra  16.b		; 80 10
	rti		; 40

	and $1C.b,S		; 23 1C
	rts		; 60

	bra 111.b		; 80 6F
	ora ($85.b),Y		; 11 85
	brk $60.b		; 00 60
	rti		; 40

	bra -128.b		; 80 80
	cpy #$A0.b		; C0 A0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	eor ($00.b,X)		; 41 00
	.db $82, $01, $03		; 82 01 03
	ora $01.b,S		; 03 01
	ora ($55.b,X)		; 01 55
	eor $82.b,X		; 55 82
	ldx #$5F.b		; A2 5F
	ora $84.b,S		; 03 84
	txa		; 8A
	inc $4B44.w		; EE 44 4B
	sta $60803F.l,X		; 9F 3F 80 60
	ora $0F.b,S		; 03 0F
	sbc ($FF.b,S),Y		; F3 FF
	sbc $FF.b,S		; E3 FF
	and $18101F.l		; 2F 1F 10 18
	pla		; 68
	rol $47EA.w,X		; 3E EA 47
	eor ($61.b)		; 52 61
	pea $1D18.w		; F4 18 1D
	asl $03.b		; 06 03
	cmp $7E0318.l,X		; DF 18 03 7E
	clc		; 18
	cmp [$1E.b]		; C7 1E
	adc ($07.b,X)		; 61 07
	sed		; F8
	ora ($1E.b,X)		; 01 1E
	ora ($FA.b,X)		; 01 FA
	ora ($FF.b,X)		; 01 FF
	sbc $40C080.l,X		; FF 80 C0 40
	jsr $1020.w		; 20 20 10
	bpl -64.b		; 10 C0
	rti		; 40

	rts		; 60

	ldy #$21.b		; A0 21
	eor ($99.b,X)		; 41 99
	lda #$13.b		; A9 13
	sbc [$47.b],Y		; F7 47
	dey		; 88
	jsr ($08F8.w,X)		; FC F8 08
	php		; 08
	php		; 08
	cop $04.b		; 02 04
	tsb $17.b		; 04 17
	cop $C0.b		; 02 C0
	sed		; F8
	rti		; 40

	bra  12.b		; 80 0C
	cop $D3.b		; 02 D3
	xce		; FB
	cmp ($FF.b,S),Y		; D3 FF
	adc $0301FF.l,X		; 7F FF 01 03
	ora ($02.b,X)		; 01 02
	ora [$0A.b]		; 07 0A
	sta ($14.b,X)		; 81 14
	and #$09.b		; 29 09
	adc $0201FF.l,X		; 7F FF 01 02
	ora ($05.b,X)		; 01 05
	ora $0A.b,S		; 03 0A
	asl $95.b		; 06 95
	tsb $1920.w		; 0C 20 19
	sbc $FF.b,X		; F5 FF
	nop		; EA
	xba		; EB
	cmp [$E1.b]		; C7 E1
	bcc  96.b		; 90 60
	lsr $B9F0.w		; 4E F0 B9
	cpy #$7C.b		; C0 7C
	clv		; B8
	inc $F73C.w,X		; FE 3C F7
	dec $BF.b,X		; D6 BF
	sta $F1406F.l,X		; 9F 6F 40 F1
	bra -58.b		; 80 C6
	tyx		; BB
	and $DE08.w,X		; 3D 08 DE
	ora ($54.b,X)		; 01 54
	brk $28.b		; 00 28
	bra -32.b		; 80 E0
	bcs -128.b		; B0 80
	bra  96.b		; 80 60
	eor $54.b,X		; 55 54
	bra -120.b		; 80 88
	ora ($01.b,X)		; 01 01
	ora $04.b,S		; 03 04
	tsb $01.b		; 04 01
	ora $03.b,S		; 03 03
	cop $01.b		; 02 01
	eor $55.b,X		; 55 55
	rol A		; 2A
	tax		; AA
	and ($FE.b),Y		; 31 FE
	lda ($8C.b,S),Y		; B3 8C
	and ($C7.b,S),Y		; 33 C7
	ora $CF3E.w,X		; 1D 3E CF
	beq -64.b		; F0 C0
	ora $07.b,S		; 03 07
	trb $5538.w		; 1C 38 55
	eor $AA.b,X		; 55 AA
	tax		; AA
	cmp $6010.w		; CD 10 60
	bit #$32.b		; 89 32
	stz $C9.b		; 64 C9
	sta ($F2.b,S),Y		; 93 F2
	sbc $FD7E9F.l		; EF 9F 7E FD
	xce		; FB
	sbc [$EF.b],Y		; F7 EF
	sbc $AFFF7F.l,X		; FF 7F FF AF
	sbc $3B7F77.l,X		; FF 77 7F 3B
	lda $0E1F1D.l,X		; BF 1D 1F 0E
	ora $03A707.l,X		; 1F 07 A7 03
	and $01.b,S		; 23 01
	eor $22.b,S		; 43 22
	adc [$19.b],Y		; 77 19
	tyx		; BB
	php		; 08
	eor $EE04.w,X		; 5D 04 EE
	cop $E7.b		; 02 E7
	ora ($DB.b,X)		; 01 DB
	cmp $FFBD.w,X		; DD BD FF
	sbc $EDBAAA.l,X		; FF AA BA ED
	inc $FF.b,X		; F6 FF
	cpx $FA.b		; E4 FA
	cpx $E8DC.w		; EC DC E8
	inc $58.b,X		; F6 58
	sbc $B190.w,Y		; F9 90 B1
	cpx #$D8.b		; E0 D8
	cpx #$F6.b		; E0 F6
	pea $EBED.w		; F4 ED EB
	eor $8096.w,Y		; 59 96 80
	inc $50E7.w		; EE E7 50
	mvp $88,$80		; 44 80 88
	bra -64.b		; 80 C0
	rts		; 60

	bcs -128.b		; B0 80
	rti		; 40

	ldy #$01.b		; A0 01
	bpl   3.b		; 10 03
	bmi  18.b		; 30 12
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($45.b,X)		; 01 45
	eor $EF.b,X		; 55 EF
	sbc $40201F.l,X		; FF 1F 20 40
	bra -128.b		; 80 80
	rti		; 40

	jsr $EEE0.w		; 20 E0 EE
	jsr $0330.w		; 20 30 03
	rti		; 40

	rts		; 60

	bra -58.b		; 80 C6
	bra -64.b		; 80 C0
	rti		; 40

	jmp ($3020.w)		; 6C 20 30
	and [$00.b],Y		; 37 00
	ldx #$22.b		; A2 22
	sbc $020202.l,X		; FF 02 02 02
	cop $DA.b		; 02 DA
	ora $60.b,S		; 03 60
	cop $C0.b		; 02 C0
	sbc ($03.b,S),Y		; F3 03
	sbc ($03.b,S),Y		; F3 03
	jmp ($4083.w,X)		; 7C 83 40
	rti		; 40

	jsr $0220.w		; 20 20 02
	cop $83.b		; 02 83
	jmp ($5840.w)		; 6C 40 58
	jsr $0220.w		; 20 20 02
	cop $33.b		; 02 33
	cpy $CE33.w		; CC 33 CE
	beq  15.b		; F0 0F
	dey		; 88
	dey		; 88
	rti		; 40

	rti		; 40

	tsb $04.b		; 04 04
	ora $8888D0.l		; 0F D0 88 88
	bmi  64.b		; 30 40
	rti		; 40

	tsb $04.b		; 04 04
	sbc $3FFF3F.l,X		; FF 3F FF 3F
	sed		; F8
	ora [$80.b]		; 07 80
	bra   4.b		; 80 04
	tsb $40.b		; 04 40
	rti		; 40

	cop $02.b		; 02 02
	jsr $1120.w		; 20 20 11
	ora ($07.b),Y		; 11 07
	inx		; E8
	bra -128.b		; 80 80
	tsb $1C.b		; 04 1C
	rti		; 40

	rti		; 40

	cop $0E.b		; 02 0E
	jsr $1120.w		; 20 20 11
	ora [$DF.b],Y		; 17 DF
	cmp $707FFF.l,X		; DF FF 7F 70
	bra  64.b		; 80 40
	rti		; 40

	php		; 08
	jsr $1020.w		; 20 20 10
	bpl  16.b		; 10 10
	bpl   8.b		; 10 08
	bmi  48.b		; 30 30
	sta $60404F.l		; 8F 4F 40 60
	php		; 08
	clc		; 18
	jsr $1020.w		; 20 20 10
	bpl  16.b		; 10 10
	bpl   8.b		; 10 08
	clc		; 18
	jsr $0003.w		; 20 03 00
	ora $00.b,S		; 03 00
	tsb $03.b		; 04 03
	sed		; F8
	xce		; FB
	sbc $A8F7.w,X		; FD F7 A8
	ldx #$03.b		; A2 03
	tsb $03.b		; 04 03
	clc		; 18
	tsb $20.b		; 04 20
	clc		; 18
	cpy #$20.b		; C0 20
	bra  64.b		; 80 40
	jsr $1120.w		; 20 20 11
	ora $04.b,S		; 03 04
	clc		; 18
	jsr $1120.w		; 20 20 11
	lda $AAAAAA.l		; AF AA AA AA
	inc $01F9.w,X		; FE F9 01
	ora $301A.w		; 0D 1A 30
	ora ($61.b,X)		; 01 61
	cmp $86.b,S		; C3 86
	sbc $1B0C.w,Y		; F9 0C 1B
	bmi   1.b		; 30 01
	adc ($C3.b,X)		; 61 C3
	stx $FF.b		; 86 FF
	sbc $A0FFE7.l,X		; FF E7 FF A0
	cmp $2010D0.l,X		; DF D0 10 20
	jsr $98F8.w		; 20 F8 98
	adc $3E4D.w,X		; 7D 4D 3E
	ldx $1F.b		; A6 1F
	eor ($8F.b,S),Y		; 53 8F
	tay		; A8
	bra -33.b		; 80 DF
	cpy #$30.b		; C0 30
	rts		; 60

	clc		; 18
	bmi -115.b		; 30 8D
	clc		; 18
	cmp [$0C.b]		; C7 0C
	.db $62, $87, $30		; 62 87 30
	sbc $DFFFDF.l,X		; FF DF FF DF
	lda $44D0DD.l		; AF DD D0 44
	bra -85.b		; 80 AB
	bvc  68.b		; 50 44
	beq -103.b		; F0 99
	ldx #$3A.b		; A2 3A
	rti		; 40

	cmp ($61.b,X)		; C1 61
	sty $94DD.w		; 8C DD 94
	rts		; 60

	plp		; 28
	ora [$10.b]		; 07 10
	cpy $9960.w		; CC 60 99
	.db $82, $38, $40		; 82 38 40
	sta ($60.b,X)		; 81 60
	sbc $FF7FFF.l,X		; FF FF 7F FF
	xce		; FB
	stp		; DB
	cop $32.b		; 02 32
	eor $5D.b		; 45 5D
	jsl $CC4022.l		; 22 22 40 CC
	ora ($17.b),Y		; 11 17
	plp		; 28
	inx		; E8
	tsb $07.b		; 04 07
	tsb $DF.b		; 04 DF
	cop $30.b		; 02 30
	eor $18.b		; 45 18
	jsl $118C40.l		; 22 40 8C 11
	asl $28.b		; 06 28
	cpy #$04.b		; C0 04
	ora $FD.b,S		; 03 FD
	sbc $90FFEA.l,X		; FF EA FF 90
	bne -128.b		; D0 80
	beq -64.b		; F0 C0
	bvs  96.b		; 70 60
	clc		; 18
	bpl  12.b		; 10 0C
	php		; 08
	stx $84.b		; 86 84
	cmp $C2.b,S		; C3 C2
	rts		; 60

	ldy #$C0.b		; A0 C0
	bra -32.b		; 80 E0
	cpx #$F0.b		; E0 F0
	beq  -8.b		; F0 F8
	sei		; 78
	jsr ($FE3C.w,X)		; FC 3C FE
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	eor $55.b,X		; 55 55
	txa		; 8A
	rol A		; 2A
	cmp $0381B0.l		; CF B0 81 03
	sta [$4F.b]		; 87 4F
	rol $3F14.w		; 2E 14 3F
	cpy #$81.b		; C0 81
	eor $26.b,S		; 43 26
	trb $5555.w		; 1C 55 55
	tax		; AA
	jsl $D16A26.l		; 22 26 6A D1
	cpx $83.b		; E4 83
	php		; 08
	ora [$12.b]		; 07 12
	cmp $80C160.l,X		; DF 60 C1 80
	ora $06.b,S		; 03 06
	eor $55.b,X		; 55 55
	tax		; AA
	jsr $C355.w		; 20 55 C3
	bcs  76.b		; B0 4C
	sty $21.b		; 84 21
	clc		; 18
	php		; 08
	tsx		; BA
	cmp ($80.b,X)		; C1 80
	tsb $3718.w		; 0C 18 37
	ora $2A.b,X		; 15 2A
	php		; 08
	inx		; E8
	rti		; 40

	bvc -20.b		; 50 EC
	rti		; 40

	php		; 08
	asl $04.b		; 06 04
	cmp [$80.b],Y		; D7 80
	cpx $5506.w		; EC 06 55
	eor ($AA.b),Y		; 51 AA
	ldx #$88.b		; A2 88
	cpy #$0C.b		; C0 0C
	rts		; 60

	asl $36.b		; 06 36
	tsb $C070.w		; 0C 70 C0
	php		; 08
	rts		; 60

	tsb $34.b		; 04 34
	php		; 08
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	sbc $AB5664.l,X		; FF 64 56 AB
	tax		; AA
	lda $9BAD.w		; AD AD 9B
	lda $A6.b		; A5 A6
	lda $A6.b		; A5 A6
	txs		; 9A
	lsr $A9.b,X		; 56 A9
	stx $AA.b,Y		; 96 AA
	ror A		; 6A
	lda #$65.b		; A9 65
	tax		; AA
	lda #$6A.b		; A9 6A
	tax		; AA
	ldx $AA.b		; A6 AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	ldx $66.b		; A6 66
	adc $FB9EB9.l		; 6F B9 9E FB
	ror $E5BA.w,X		; 7E BA E5
	adc [$A9.b]		; 67 A9
	eor $65A9.w,Y		; 59 A9 65
	cmp $9A9A.w,Y		; D9 9A 9A
	ldx $5A.b		; A6 5A
	adc $65.b		; 65 65
	sta $A6AA.w,Y		; 99 AA A6
	tax		; AA
	rtl		; 6B

	ror A		; 6A
	lda $AA.b		; A5 AA
	tax		; AA
	tax		; AA
	lda #$AA.b		; A9 AA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	rti		; 40

	brk $0D.b		; 00 0D
	ora $03.b,S		; 03 03
	brk $03.b		; 00 03
	brk $F7.b		; 00 F7
	bpl  -9.b		; 10 F7
	bpl   3.b		; 10 03
	brk $03.b		; 00 03
	brk $F7.b		; 00 F7
	bpl  -9.b		; 10 F7
	bpl   3.b		; 10 03
	brk $03.b		; 00 03
	brk $F7.b		; 00 F7
	bpl  -9.b		; 10 F7
	bpl   3.b		; 10 03
	brk $03.b		; 00 03
	brk $F7.b		; 00 F7
	bpl  -9.b		; 10 F7
	bpl   3.b		; 10 03
	brk $03.b		; 00 03
	brk $F7.b		; 00 F7
	bpl  -9.b		; 10 F7
	bpl   3.b		; 10 03
	brk $03.b		; 00 03
	brk $F7.b		; 00 F7
	bpl  -9.b		; 10 F7
	bpl   2.b		; 10 02
	brk $02.b		; 00 02
	php		; 08
	tsb $04.b		; 04 04
	tsb $0002.w		; 0C 02 00
	cop $00.b		; 02 00
	php		; 08
	php		; 08
	cop $00.b		; 02 00
	cop $08.b		; 02 08
	tsb $04.b		; 04 04
	php		; 08
	cop $08.b		; 02 08
	cop $00.b		; 02 00
	tsb $0804.w		; 0C 04 08
	cop $00.b		; 02 00
	cop $08.b		; 02 08
	tsb $04.b		; 04 04
	php		; 08
	cop $58.b		; 02 58
	ora [$00.b],Y		; 17 00
	tsb $7B04.w		; 0C 04 7B
	ora [$7D.b]		; 07 7D
	php		; 08
	ora $7E.b,S		; 03 7E
	cop $50.b		; 02 50
	ora [$58.b],Y		; 17 58
	tsb $01.b		; 04 01
	ora $03.b,S		; 03 03
	tsb $07.b		; 04 07
	tsb $08.b		; 04 08
	ora $03.b		; 05 03
	ora [$5C.b],Y		; 17 5C
	eor [$00.b],Y		; 57 00
	adc $80FF0C.l,X		; 7F 0C FF 80
	sta ($04.b,X)		; 81 04
	ora $01.b,S		; 03 01
	sty $08.b		; 84 08
	ora ($03.b,X)		; 01 03
	stx $02.b		; 86 02
	mvn $58,$17		; 54 17 58
	tsb $07.b		; 04 07
	ora $040A01.l		; 0F 01 0A 04
	ora ($0B.b,X)		; 01 0B
	php		; 08
	tsb $F701.w		; 0C 01 F7
	jmp $870057.l		; 5C 57 00 87
	tsb $8D0F.w		; 0C 0F 8D
	rti		; 40

	ora $40.b		; 05 40
	bit #$04.b		; 89 04
	ora $01.b,S		; 03 01
	sty $0108.w		; 8C 08 01
	ora $8E.b,S		; 03 8E
	cop $54.b		; 02 54
	eor [$5B.b],Y		; 57 5B
	tsb $0E.b		; 04 0E
	ora ($1F.b,X)		; 01 1F
	ora ($04.b),Y		; 11 04
	ora $01.b,S		; 03 01
	ora [$11.b]		; 07 11
	rti		; 40

	pha		; 48
	bpl   3.b		; 10 03
	eor [$7C.b],Y		; 57 7C
	ora [$00.b],Y		; 17 00
	sta $011F0C.l		; 8F 0C 1F 01
	sta ($05.b),Y		; 91 05
	sty $97.b		; 84 97
	bra   1.b		; 80 01
	sty $08.b,X		; 94 08
	ora ($95.b,X)		; 01 95
	cop $54.b		; 02 54
	eor [$5D.b],Y		; 57 5D
	tsb $17.b		; 04 17
	ora $041A01.l		; 0F 01 1A 04
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($08.b,X)		; 01 08
	and $585701.l,X		; 3F 01 57 58
	ora [$00.b],Y		; 17 00
	stx $0C.b,Y		; 96 0C
	ora ($0F.b,X)		; 01 0F
	tya		; 98
	tsb $99.b		; 04 99
	ora $9B.b,S		; 03 9B
	php		; 08
	ora [$9C.b]		; 07 9C
	cop $54.b		; 02 54
	sbc [$5D.b],Y		; F7 5D
	tsb $22.b		; 04 22
	ora ($07.b,X)		; 01 07
	and $04.b		; 25 04
	ora $23.b,S		; 03 23
	rti		; 40

	jsl $010F40.l		; 22 40 0F 01
	php		; 08
	ora $01.b,S		; 03 01
	eor [$5C.b],Y		; 57 5C
	ora [$00.b],Y		; 17 00
	sta $030C.w,X		; 9D 0C 03
	ora ($9F.b,X)		; 01 9F
	ldy #$04.b		; A0 04
	ora ($03.b,X)		; 01 03
	lda $08.b,S		; A3 08
	ora [$A4.b]		; 07 A4
	cop $54.b		; 02 54
	eor [$5D.b],Y		; 57 5D
	tsb $2C.b		; 04 2C
	ora ($03.b,X)		; 01 03
	and $011F04.l		; 2F 04 1F 01
	ora $01.b,S		; 03 01
	ora [$08.b]		; 07 08
	ora ($03.b,X)		; 01 03
	eor [$5C.b],Y		; 57 5C
	eor [$00.b],Y		; 57 00
	lda $0C.b		; A5 0C
	ora $01.b,S		; 03 01
	lda [$A8.b]		; A7 A8
	tsb $01.b		; 04 01
	ora $AB.b,S		; 03 AB
	php		; 08
	ora [$01.b]		; 07 01
	lda $5502.w		; AD 02 55
	eor [$5D.b],Y		; 57 5D
	tsb $37.b		; 04 37
	ora $3B0301.l		; 0F 01 03 3B
	tsb $07.b		; 04 07
	ora ($03.b,X)		; 01 03
	rol $083F.w,X		; 3E 3F 08
	adc $5C5701.l,X		; 7F 01 57 5C
	eor [$00.b],Y		; 57 00
	ldx $010C.w		; AE 0C 01
	ora $04B1B0.l,X		; 1F B0 B1 04
	ora $01.b,S		; 03 01
	ldy $08.b,X		; B4 08
	ora ($03.b,X)		; 01 03
	ldx $02.b,Y		; B6 02
	eor $57.b,X		; 55 57
	eor $4204.w,X		; 5D 04 42
	ora ($07.b,X)		; 01 07
	ora ($46.b,X)		; 01 46
	tsb $01.b		; 04 01
	ora $4A4901.l		; 0F 01 49 4A
	php		; 08
	ora ($07.b,X)		; 01 07
	eor [$5C.b],Y		; 57 5C
	eor [$01.b],Y		; 57 01
	lda [$0C.b],Y		; B7 0C
	ora $BAB901.l		; 0F 01 B9 BA
	tsb $01.b		; 04 01
	ora [$BD.b]		; 07 BD
	php		; 08
	ora $01.b,S		; 03 01
	adc $5502C0.l,X		; 7F C0 02 55
	eor [$5D.b],Y		; 57 5D
	tsb $4D.b		; 04 4D
	ora $01.b,S		; 03 01
	ora $030451.l,X		; 1F 51 04 03
	ora ($07.b,X)		; 01 07
	mvn $08,$55		; 54 55 08
	ora $01.b,S		; 03 01
	eor [$58.b],Y		; 57 58
	eor [$01.b],Y		; 57 01
	cmp ($0C.b,X)		; C1 0C
	ora $01.b,S		; 03 01
	cmp $04.b,S		; C3 04
	cpy $01.b		; C4 01
	dec $08.b		; C6 08
	ora ($0F.b,X)		; 01 0F
	ora ($C9.b,X)		; 01 C9
	.db $42, $55		; 42 55
	eor [$5D.b],Y		; 57 5D
	tsb $58.b		; 04 58
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	eor $0304.w,X		; 5D 04 03
	ora ($3F.b,X)		; 01 3F
	rts		; 60

	adc ($08.b,X)		; 61 08
	ora $01.b,S		; 03 01
	eor [$58.b],Y		; 57 58
	cmp [$03.b],Y		; D7 03
	dex		; CA
	tsb $0701.w		; 0C 01 07
	cpy $CD04.w		; CC 04 CD
	ora $CF.b,S		; 03 CF
	php		; 08
	ora $C0D401.l,X		; 1F 01 D4 C0
	ora $C0.b		; 05 C0
	.db $42, $55		; 42 55
	eor [$5D.b],Y		; 57 5D
	tsb $64.b		; 04 64
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	adc #$04.b		; 69 04
	ora $01.b,S		; 03 01
	ora [$6C.b]		; 07 6C
	adc $0308.w		; 6D 08 03
	ora ($57.b,X)		; 01 57
	jmp $D20017.l		; 5C 17 00 D2
	tsb $0701.w		; 0C 01 07
	pei ($D5.b)		; D4 D5
	tsb $03.b		; 04 03
	ora ($D8.b,X)		; 01 D8
	php		; 08
	ora ($D9.b,X)		; 01 D9
	.db $42, $55		; 42 55
	eor [$5D.b],Y		; 57 5D
	tsb $70.b		; 04 70
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	adc $04.b,X		; 75 04
	ora $01.b,S		; 03 01
	tas		; 1B
	jmp ($0878.w)		; 6C 78 08
	ora ($03.b,X)		; 01 03
	eor [$5C.b],Y		; 57 5C
	eor [$00.b],Y		; 57 00
	phx		; DA
	tsb $0701.w		; 0C 01 07
	jmp.w [$04DD]		; DC DD 04
	ora $01.b,S		; 03 01
	cpx #$08.b		; E0 08
	ora ($03.b,X)		; 01 03
	sep #$42		; E2 42
	eor $57.b,X		; 55 57
	eor $E304.w,X		; 5D 04 E3
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	inx		; E8
	tsb $01.b		; 04 01
	ora $86.b,S		; 03 86
	jmp ($08EB.w)		; 6C EB 08
	ora [$01.b]		; 07 01
	eor [$5C.b],Y		; 57 5C
	eor [$00.b],Y		; 57 00
	inc $010C.w		; EE 0C 01
	ora $04F1F0.l,X		; 1F F0 F1 04
	ora $01.b,S		; 03 01
	pea $0108.w		; F4 08 01
	ora $F6.b,S		; 03 F6
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc [$10.b],Y		; F7 10
	sbc [$10.b],Y		; F7 10
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	brk $11.b		; 00 11
	rti		; 40

	brk $C7.b		; 00 C7
	cop $5F.b		; 02 5F
	eor $57.b,X		; 55 57
	eor $F0.b,X		; 55 F0
	stz $80F1.w,X		; 9E F1 80
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	php		; 08
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $FF.b,X		; 55 FF
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($F7.b,X)		; 01 F7
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $10.b,X		; 55 10
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($18.b,X)		; 01 18
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $EF.b,X		; 55 EF
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($E7.b,X)		; 01 E7
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $20.b,X		; 55 20
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($28.b,X)		; 01 28
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $DF.b,X		; 55 DF
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($D7.b,X)		; 01 D7
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $30.b,X		; 55 30
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($38.b,X)		; 01 38
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $CF.b,X		; 55 CF
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($C7.b,X)		; 01 C7
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $40.b,X		; 55 40
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($48.b,X)		; 01 48
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $BF.b,X		; 55 BF
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($B7.b,X)		; 01 B7
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $50.b,X		; 55 50
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($58.b,X)		; 01 58
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $AF.b,X		; 55 AF
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($A7.b,X)		; 01 A7
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $60.b,X		; 55 60
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($68.b,X)		; 01 68
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $9F.b,X		; 55 9F
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($97.b,X)		; 01 97
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $70.b,X		; 55 70
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($78.b,X)		; 01 78
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $8F.b,X		; 55 8F
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($87.b,X)		; 01 87
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $80.b,X		; 55 80
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($88.b,X)		; 01 88
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $7F.b,X		; 55 7F
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($77.b,X)		; 01 77
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $90.b,X		; 55 90
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($98.b,X)		; 01 98
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $6F.b,X		; 55 6F
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($67.b,X)		; 01 67
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $A0.b,X		; 55 A0
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($A8.b,X)		; 01 A8
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $5F.b,X		; 55 5F
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $B0.b,X		; 55 B0
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($B8.b,X)		; 01 B8
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $4F.b,X		; 55 4F
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($47.b,X)		; 01 47
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $C0.b,X		; 55 C0
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($C8.b,X)		; 01 C8
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $3F.b,X		; 55 3F
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($37.b,X)		; 01 37
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $D0.b,X		; 55 D0
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($D8.b,X)		; 01 D8
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $2F.b,X		; 55 2F
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($27.b,X)		; 01 27
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $E0.b,X		; 55 E0
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($E8.b,X)		; 01 E8
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $1F.b,X		; 55 1F
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($17.b,X)		; 01 17
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $F0.b,X		; 55 F0
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($F8.b,X)		; 01 F8
	asl $0301.w,X		; 1E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	cmp $0F.b,X		; D5 0F
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	dec $0301.w,X		; DE 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	sbc ($80.b),Y		; F1 80
	brk $A0.b		; 00 A0
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	mvn $C2,$00		; 54 00 C2
	ora [$FF.b]		; 07 FF
	sbc $135445.l,X		; FF 45 54 13
	and $3A2E3E.l		; 2F 3E 2E 3A
	rol $3D3C.w,X		; 3E 3C 3D
	and $113D.w		; 2D 3D 11
	phy		; 5A
	ply		; 7A
	phy		; 5A
	tad		; 5B
	eor $105B.w,X		; 5D 5B 10
	ora ($03.b,X)		; 01 03
	jsr $E206.w		; 20 06 E2
	ora $5003F3.l,X		; 1F F3 03 50
	cpy #$40.b		; C0 40
	bra  32.b		; 80 20
	jsr $10A0.w		; 20 A0 10
	rti		; 40

	ldy #$A0.b		; A0 A0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	jsr $FF20.w		; 20 20 FF
	sbc $36F54F.l,X		; FF 4F F5 36
	rol $52.b,X		; 36 52
	bvs  12.b		; 70 0C
	rol A		; 2A
	ora ($04.b,X)		; 01 04
	adc $6079.w,Y		; 79 79 60
	rts		; 60

	ply		; 7A
	sei		; 78
	sec		; 38
	bit $7F30.w,X		; 3C 30 7F
	bvs -128.b		; 70 80
	adc ($32.b,X)		; 61 32
	bmi  32.b		; 30 20
	bra  32.b		; 80 20
	tsb $FF.b		; 04 FF
	lda $FF9557.l,X		; BF 57 95 FF
	cmp $608080.l,X		; DF 80 80 60
	rts		; 60

	bcc  32.b		; 90 20
	pha		; 48
	bpl  36.b		; 10 24
	php		; 08
	and $07.b,S		; 23 07
	tsb $03.b		; 04 03
	sbc $408102.l,X		; FF 02 81 40
	jsr $0810.w		; 20 10 08
	ora [$FF.b]		; 07 FF
	sbc $015551.l,X		; FF 51 55 01
	ora $06.b,X		; 15 06
	and [$33.b]		; 27 33
	and $3D372F.l		; 2F 2F 37 3D
	eor $7B6F5E.l,X		; 5F 5E 6F 7B
	eor $8D9F5F.l,X		; 5F 5F 9F 8D
	trb $2018.w		; 1C 18 20
	bmi  32.b		; 30 20
	rti		; 40

	cmp $C10FD7.l,X		; DF D7 0F C1
	eor $98.b,S		; 43 98
	tsb $30.b		; 04 30
	rti		; 40

	dey		; 88
	bcc   8.b		; 90 08
	php		; 08
	php		; 08
	bcc  17.b		; 90 11
	bvc -25.b		; 50 E7
	cpx #$20.b		; E0 20
	jsr $5008.w		; 20 08 50
	rti		; 40

	cmp [$F7.b],Y		; D7 F7
	phk		; 4B
	bcs -53.b		; B0 CB
	ora $540408.l		; 0F 08 04 54
	bpl  16.b		; 10 10
	tsb WMADDM.w		; 0C 82 21
	jsl $F01120.l		; 22 20 11 F0
	ora $04.b,S		; 03 04
	bpl  32.b		; 10 20
	tsb $02.b		; 04 02
	sbc ($FD.b,S),Y		; F3 FD
	cmp $FDF29C.l,X		; DF 9C F2 FD
	phd		; 0B
	ora $03.b,S		; 03 03
	ora $04.b,S		; 03 04
	ora [$01.b]		; 07 01
	clc		; 18
	asl $3DE7.w		; 0E E7 3D
	sbc $F0.b,X		; F5 F0
	tsb $08.b		; 04 08
	sta $0B.b,S		; 83 0B
	tsb $49.b		; 04 49
	cop $30.b		; 02 30
	ora ($FF.b,X)		; 01 FF
	cmp $33DF77.l,X		; DF 77 DF 33
	cmp $7175.w		; CD 75 71
	wai		; CB
	cmp [$9A.b]		; C7 9A
	bra -72.b		; 80 B8
	tsb $1858.w		; 0C 58 18
	tay		; A8
	cpx #$B0.b		; E0 B0
	cpy $7001.w		; CC 01 70
	cpy $02.b		; C4 02
	bra   9.b		; 80 09
	tsb $12.b		; 04 12
	php		; 08
	tsb $A0.b		; 04 A0
	bpl 127.b		; 10 7F
	sbc [$77.b],Y		; F7 77
	sbc ($8D.b,S),Y		; F3 8D
	sbc ($9F.b)		; F2 9F
	sta $588282.l		; 8F 82 82 58
	ora [$01.b]		; 07 01
	rol A		; 2A
	ora [$02.b]		; 07 02
	asl $07.b,X		; 16 07
	and ($80.b)		; 32 80
	ora $804022.l		; 0F 22 40 80
	eor ($20.b),Y		; 51 20
	asl A		; 0A
	ora ($24.b),Y		; 11 24
	asl A		; 0A
	adc [$FF.b],Y		; 77 FF
	and ($DB.b,S),Y		; 33 DB
	jmp $C01381.l		; 5C 81 13 C0
	cmp ($08.b,X)		; C1 08
	sty $90.b,X		; 94 90
	cop $60.b		; 02 60
	ora $0C28.w,Y		; 19 28 0C
	sta $9E.b,X		; 95 9E
	jsr $4081.w		; 20 81 40
	bpl -128.b		; 10 80
	jsr $0508.w		; 20 08 05
	rti		; 40

	dey		; 88
	sbc $805440.l,X		; FF 40 54 80
	cpy #$C0.b		; C0 C0
	jsr $5040.w		; 20 40 50
	ldy #$48.b		; A0 48
	rts		; 60

	sty $80.b		; 84 80
	rti		; 40

	bvs  -8.b		; 70 F8
	stp		; DB
	and $3F1B5F.l,X		; 3F 5F 1B 3F
	and $424140.l,X		; 3F 40 41 42
	cmp ($04.b,X)		; C1 04
	cop $A8.b		; 02 A8
	tsb $08.b		; 04 08
	rts		; 60

	asl $267F.w,X		; 1E 7F 26
	bra   8.b		; 80 08
	bpl  32.b		; 10 20
	ora ($02.b,X)		; 01 02
	bpl   3.b		; 10 03
	brk $2A.b		; 00 2A
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	sbc $02AFF7.l,X		; FF F7 AF 02
	inc $1C.b,X		; F6 1C
	jmp $8D50.w		; 4C 50 8D
	tsb $9E.b		; 04 9E
	asl A		; 0A
	sta ($80.b,X)		; 81 80
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	cop $10.b		; 02 10
	eor $3010.w,X		; 5D 10 30
	sta [$1C.b]		; 87 1C
	ora ($F5.b,X)		; 01 F5
	adc [$8A.b],Y		; 77 8A
	rol A		; 2A
	lda $76.b		; A5 76
	cpx #$40.b		; E0 40
	ror A		; 6A
	rts		; 60

	jsr ($0B30.w,X)		; FC 30 0B
	jsr ($8418.w,X)		; FC 18 84
	dec $1830.w,X		; DE 30 18
	sty $C402.w		; 8C 02 C4
	sbc $1145FF.l,X		; FF FF 45 11
	and ($75.b,X)		; 21 75
	eor [$7B.b]		; 47 7B
	rtl		; 6B

	rtl		; 6B

	asl A		; 0A
	lda ($F4.b)		; B2 F4
	lda $95.b,X		; B5 95
	sta $DC.b,X		; 95 DC
	sbc $99EBEB.l		; EF EB EB 99
	tsb $4118.w		; 0C 18 41
	and ($F7.b,S),Y		; 33 F7
	phd		; 0B
	sbc ($0F.b,S),Y		; F3 0F
	bra  96.b		; 80 60
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	rti		; 40

	bra -128.b		; 80 80
	rts		; 60

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	cmp $039FDE.l,X		; DF DE 9F 03
	bpl  19.b		; 10 13
	bmi  56.b		; 30 38
	tsb $21.b		; 04 21
	and ($18.b,X)		; 21 18
	tsb $04.b		; 04 04
	php		; 08
	cop $02.b		; 02 02
	ora [$7F.b],Y		; 17 7F
	bmi   8.b		; 30 08
	jsr $0840.w		; 20 40 08
	sec		; 38
	ora $33037F.l,X		; 1F 7F 03 33
	iny		; C8
	tsb $0408.w		; 0C 08 04
	rti		; 40

	bpl  16.b		; 10 10
	bpl   8.b		; 10 08
	ldy #$20.b		; A0 20
	jsr $F0F0.w		; 20 F0 F0
	bpl  16.b		; 10 10
	jsr $F320.w		; 20 20 F3
	and $335573.l,X		; 3F 73 55 33
	sty $9435.w		; 8C 35 94
	cpx $F8.b		; E4 F8
	inc A		; 1A
	trb $0326.w		; 1C 26 03
	and ($40.b,X)		; 21 40
	adc $80607F.l,X		; 7F 7F 60 80
	jmp.w [$1C43]		; DC 43 1C
	ora $98.b,S		; 03 98
	cmp $FD7FFF.l,X		; DF FF 7F FD
	asl $3C60.w,X		; 1E 60 3C
	rti		; 40

	sei		; 78
	cld		; D8
	jsr $D82C.w		; 20 2C D8
	rol $7C.b		; 26 7C
	sta [$BD.b],Y		; 97 BD
	stx $DD.b,Y		; 96 DD
	sta $80BF80.l,X		; 9F 80 BF 80
	sta $DB2780.l,X		; 9F 80 27 DB
	adc $3480.w		; 6D 80 34
	cpy #$94.b		; C0 94
	cpx #$CF.b		; E0 CF
	cmp $401541.l,X		; DF 41 15 40
	rts		; 60

	rti		; 40

	jsr $9880.w		; 20 80 98
	bra 102.b		; 80 66
	trb $0301.w		; 1C 01 03
	cop $80.b		; 02 80
	bra -128.b		; 80 80
	clc		; 18
	asl $01.b		; 06 01
	sta $F4.b,S		; 83 F4
	sta $3F1F70.l,X		; 9F 70 1F 3F
	jsr $C090.w		; 20 90 C0
	bcc -32.b		; 90 E0
	rti		; 40

	tsb $FF.b		; 04 FF
	cop $80.b		; 02 80
	ora ($40.b,X)		; 01 40
	bra  32.b		; 80 20
	mvp $00,$1F		; 44 1F 00
	tad		; 5B
	ora ($5F.b,X)		; 01 5F
	lda $4040E0.l,X		; BF E0 40 40
	ora $1040BF.l		; 0F BF 40 10
	ldy #$40.b		; A0 40
	eor [$20.b],Y		; 57 20
	ora $04.b,S		; 03 04
	sed		; F8
	sbc $010205.l,X		; FF 05 02 01
	ora ($F0.b,X)		; 01 F0
	sbc $B6E710.l,X		; FF 10 E7 B6
	sbc [$F3.b],Y		; F7 F3
	ora ($0F.b,X)		; 01 0F
	ora ($06.b,X)		; 01 06
	ora [$0E.b]		; 07 0E
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $8001.w		; 20 01 80
	ora [$06.b]		; 07 06
	asl $02.b		; 06 02
	ora #$05.b		; 09 05
	bpl   8.b		; 10 08
	ldy #$10.b		; A0 10
	rti		; 40

	eor [$8B.b],Y		; 57 8B
	cmp $CF.b,X		; D5 CF
	tya		; 98
	jsr ($3098.w,X)		; FC 98 30
	bmi -64.b		; 30 C0
	tsb $18.b		; 04 18
	jsr $B0B8.w		; 20 B8 B0
	sei		; 78
	pla		; 68
	bra  24.b		; 80 18
	rts		; 60

	bra  16.b		; 80 10
	bra  16.b		; 80 10
	sbc [$FF.b],Y		; F7 FF
	sbc [$27.b],Y		; F7 27
	tya		; 98
	jmp.w [$5004]		; DC 04 50
	rti		; 40

	ldx #$12.b		; A2 12
	sbc #$81.b		; E9 81
	trb $08.b		; 14 08
	stp		; DB
	tsb $8C.b		; 04 8C
	ora $18.b,S		; 03 18
	inc $0410.w,X		; FE 10 04
	rti		; 40

	php		; 08
	ora ($07.b,X)		; 01 07
	cpy #$03.b		; C0 03
	cpy #$C0.b		; C0 C0
	ora $E0.b,S		; 03 E0
	rol A		; 2A
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	ora $0C.b,S		; 03 0C
	cop $00.b		; 02 00
	rol A		; 2A
	cmp ($01.b,X)		; C1 01
	ora ($F7.b,X)		; 01 F7
	sbc [$FF.b],Y		; F7 FF
	txa		; 8A
	asl A		; 0A
	eor $6284.w,Y		; 59 84 62
	mvn $41,$04		; 54 04 41
	rti		; 40

	asl A		; 0A
	cop $38.b		; 02 38
	tsb $20.b		; 04 20
	php		; 08
	jsr $BE20.w		; 20 20 BE
	rts		; 60

	cop $04.b		; 02 04
	sec		; 38
	ora ($54.b,X)		; 01 54
	ora ($FC.b,X)		; 01 FC
	sbc $3CF0C0.l,X		; FF C0 F0 3C
	tsb $E0E0.w		; 0C E0 E0
	sei		; 78
	sei		; 78
	asl $131E.w,X		; 1E 1E 13
	rti		; 40

	eor [$00.b]		; 47 00
	jsr ($04FE.w,X)		; FC FE 04
	tsb $C0.b		; 04 C0
	sbc $C78040.l,X		; FF 40 80 C7
	sbc $51.b,X		; F5 51
	bvc  24.b		; 50 18
	and $301410.l,X		; 3F 10 14 30
	phd		; 0B
	ora [$01.b]		; 07 01
	ora ($27.b,X)		; 01 27
	ora [$1C.b]		; 07 1C
	ora ($12.b,X)		; 01 12
	ora ($07.b,X)		; 01 07
	sbc [$FF.b],Y		; F7 FF
	adc [$D5.b],Y		; 77 D5
	ora [$EF.b]		; 07 EF
	php		; 08
	rti		; 40

	bvs  80.b		; 70 50
	rti		; 40

	asl $4D1E.w,X		; 1E 1E 4D
	eor $BAC1CB.l,X		; 5F CB C1 BA
	stz $1FE1.w		; 9C E1 1F
	dec $A4.b		; C6 A4
	jsr $0F4C.w		; 20 4C 0F
	rti		; 40

	cmp $83.b,S		; C3 83
	bit $5555.w,X		; 3C 55 55
	rol A		; 2A
	tax		; AA
	and $146271.l		; 2F 71 62 14
	sec		; 38
	clc		; 18
	ora ($0F.b,X)		; 01 0F
	ora $102020.l,X		; 1F 20 20 10
	php		; 08
	ora ($07.b,X)		; 01 07
	sbc $228AFF.l,X		; FF FF 8A 22
	ora ($06.b),Y		; 11 06
	dec A		; 3A
	cop $18.b		; 02 18
	php		; 08
	stz $04.b		; 64 04
	sbc ($10.b),Y		; F1 10
	rts		; 60

	jsr $088A.w		; 20 8A 08
	cpy #$40.b		; C0 40
	sbc $C06030.l		; EF 30 60 C0
	bra  46.b		; 80 2E
	lda ($33.b),Y		; B1 33
	beq   5.b		; F0 05
	ora $01.b,S		; 03 01
	tsb $0205.w		; 0C 05 02
	ora $0303.w,Y		; 19 03 03
	ora $04.b,S		; 03 04
	tsb $09.b		; 04 09
	ora #$03.b		; 09 03
	ora $FF.b,S		; 03 FF
	sbc $80FFE5.l,X		; FF E5 FF 80
	tya		; 98
	dey		; 88
	tay		; A8
	sec		; 38
	bmi  16.b		; 30 10
	bvc  83.b		; 50 53
	bcc -109.b		; 90 93
	bcc -77.b		; 90 B3
	jsr $A0E4.w		; 20 E4 A0
	sta [$20.b]		; 87 20
	ora ($41.b,X)		; 01 41
	ora $C2.b,S		; 03 C2
	asl $07.b		; 06 07
	ora [$86.b]		; 07 86
	asl $0D4D.w		; 0E 4D 0D
	lda $E8FF.w,X		; BD FF E8
	sbc $18C37C.l,X		; FF 7C C3 18
	rti		; 40

	ora $60F7.w,X		; 1D F7 60
	rtl		; 6B

	sed		; F8
	sbc $FEFC.w,X		; FD FC FE
	adc $737C74.l,X		; 7F 74 7C 73
	bvs  -8.b		; 70 F8
	sed		; F8
	tsb $06E8.w		; 0C E8 06
	beq   3.b		; F0 03
	beq   1.b		; F0 01
	sbc $8DF53F.l,X		; FF 3F F5 8D
	ror $A181.w,X		; 7E 81 A1
	cmp ($25.b,X)		; C1 25
	pha		; 48
	trb $9A.b		; 14 9A
	ora $3D8E.w		; 0D 8E 3D
	lda $01.b,S		; A3 01
	bra 126.b		; 80 7E
	eor ($38.b,X)		; 41 38
	bra  22.b		; 80 16
	rti		; 40

	ora $4023.w		; 0D 23 40
	bra -17.b		; 80 EF
	sbc $29FF3F.l,X		; FF 3F FF 29
	cpy $3CA0.w		; CC A0 3C
	cpx $7F.b		; E4 7F
	bra -81.b		; 80 AF
	cop $DF.b		; 02 DF
	ora ($2F.b,X)		; 01 2F
	cpy #$C4.b		; C0 C4
	sbc ($33.b,S),Y		; F3 33
	ora $C3.b,S		; 03 C3
	ora $03.b,S		; 03 03
	ora $C0.b,S		; 03 C0
	ora $D00F20.l,X		; 1F 20 0F D0
	cop $ED.b		; 02 ED
	tsb $7FD3.w		; 0C D3 7F
	cmp $FE.b,S		; C3 FE
	bra  32.b		; 80 20
	rti		; 40

	bmi  32.b		; 30 20
	bpl -120.b		; 10 88
	jmp ($F0E4.w,X)		; 7C E4 F0
	tya		; 98
	bpl -64.b		; 10 C0
	cpy #$C0.b		; C0 C0
	iny		; C8
	sty $60.b,X		; 94 60
	sta ($94.b)		; 92 94
	php		; 08
	tsb $01.b		; 04 01
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	ora $1D3106.l		; 0F 06 31 1D
	eor $3B.b,S		; 43 3B
	eor [$0E.b]		; 47 0E
	asl $3D3C.w		; 0E 3C 3D
	and $003B.w,Y		; 39 3B 00
	plx		; FA
	brk $FC.b		; 00 FC
	ora ($C6.b,X)		; 01 C6
	cmp $E8.b,S		; C3 E8
	ora $F2.b		; 05 F2
	ora ($01.b,X)		; 01 01
	sta [$C7.b]		; 87 C7
	cmp $FFF82F.l		; CF 2F F8 FF
	eor ($55.b),Y		; 51 55
	cmp $4137C8.l		; CF C8 37 41
	adc $85BF36.l,X		; 7F 36 BF 85
	adc ($73.b,S),Y		; 73 73
	wai		; CB
	ora #$35.b		; 09 35
	sbc $CF.b,X		; F5 CF
	bmi -128.b		; 30 80
	beq -72.b		; F0 B8
	bit $FFF8.w,X		; 3C F8 FF
	eor ($55.b),Y		; 51 55
	bra -128.b		; 80 80
	rts		; 60

	ldy #$D0.b		; A0 D0
	bmi -24.b		; 30 E8
	cli		; 58
	mvn $9C,$64		; 54 64 9C
	jmp $84F4.w		; 4C F4 84
	bra  96.b		; 80 60
	bpl -56.b		; 10 C8
	sed		; F8
	sec		; 38
	sbc $AAFFFF.l,X		; FF FF FF AA
	lda $FC7D.w,Y		; B9 7D FC
	asl $077F.w		; 0E 7F 07
	lda [$43.b],Y		; B7 43
	and [$C1.b]		; 27 C1
	rtl		; 6B

	bra -51.b		; 80 CD
	cop $D1.b		; 02 D1
	asl $18.b		; 06 18
	adc $020F0C.l,X		; 7F 0C 0F 02
	sbc [$01.b],Y		; F7 01
	xce		; FB
	sbc $F7F6.w,Y		; F9 F6 F7
	sbc $02FFFF.l		; EF FF FF 02
	sbc $FC.b,X		; F5 FC
	inc $0380.w,X		; FE 80 03
	eor ($80.b,X)		; 41 80
	sty $C0.b		; 84 C0
	jsr $5366.w		; 20 66 53
	bmi  41.b		; 30 29
	sta ($96.b,X)		; 81 96
	jmp $4080FF.l		; 5C FF 80 40
	ldy #$81.b		; A0 81
	rti		; 40

	cpy #$FF.b		; C0 FF
	eor $18AF55.l,X		; 5F 55 AF 18
	adc [$03.b]		; 67 03
	adc $0D3F1E.l,X		; 7F 1E 3F 0D
	rol $0C12.w,X		; 3E 12 0C
	ora $08.b,X		; 15 08
	phd		; 0B
	ora [$27.b],Y		; 17 27
	and $0C1E1F.l,X		; 3F 1F 1E 0C
	ora ($08.b,X)		; 01 08
	ora $07.b,S		; 03 07
	ora $BFDD7F.l		; 0F 7F DD BF
	plp		; 28
	lda $40F7C0.l		; AF C0 F7 40
	sbc #$80.b		; E9 80
	cmp $91.b,S		; C3 91
	and [$01.b]		; 27 01
	lsr $0286.w		; 4E 86 02
	cpy #$1C.b		; C0 1C
	rti		; 40

	and $80.b,S		; 23 80
	eor ($83.b,X)		; 41 83
	asl $0C.b		; 06 0C
	ora $2257.w,X		; 1D 57 22
	rol A		; 2A
	ora $01.b		; 05 01
	ora ($0E.b,X)		; 01 0E
	ora $020601.l		; 0F 01 06 02
	ora ($03.b,X)		; 01 03
	tsb $04.b		; 04 04
	cop $01.b		; 02 01
	adc ($7F.b,S),Y		; 73 7F
	jsl $E019A2.l		; 22 A2 19 E0
	pld		; 2B
	jsr $4701.w		; 20 01 47
	eor ($92.b,X)		; 41 92
	bra  14.b		; 80 0E
	cop $64.b		; 02 64
	inc $0603.w,X		; FE 03 06
	tsb $FF80.w		; 0C 80 FF
	sbc $094555.l,X		; FF 55 45 09
	tas		; 1B
	ora $161F.w,Y		; 19 1F 16
	pld		; 2B
	and $3C2D.w,X		; 3D 2D 3C
	and [$3B.b],Y		; 37 3B
	and $5716.w		; 2D 16 57
	adc ($5F.b,S),Y		; 73 5F
	mvp $1D,$06		; 44 06 1D
	bpl  11.b		; 10 0B
	asl $2C.b,X		; 16 2C
	ror $3FDF.w,X		; 7E DF 3F
	tsb $70.b		; 04 70
	lsr $9C.b		; 46 9C
	ora $84.b		; 05 84
	sty $48.b		; 84 48
	bmi   8.b		; 30 08
	php		; 08
	dey		; 88
	bpl  32.b		; 10 20
	bra -113.b		; 80 8F
	sta $8F.b,S		; 83 8F
	sty $80.b		; 84 80
	php		; 08
	sbc $11FF7F.l,X		; FF 7F FF 11
	bit $74.b,X		; 34 74
	ldx $22EE.w,Y		; BE EE 22
	lda ($7D.b,S),Y		; B3 7D
	bit $1614.w,X		; 3C 14 16
	.db $42, $04		; 42 04
	trb $18.b		; 14 18
	clc		; 18
	bpl  -1.b		; 10 FF
	bpl -128.b		; 10 80
	cpy #$60.b		; C0 60
	jsr $1110.w		; 20 10 11
	ora ($4F.b)		; 12 4F
	cmp [$1F.b],Y		; D7 1F
	adc $5E.b,S		; 63 5E
	lda $0860F0.l,X		; BF F0 60 08
	adc ($30.b),Y		; 71 30
	tsb $03.b		; 04 03
	clc		; 18
	clc		; 18
	and $402080.l,X		; 3F 80 20 40
	bra  16.b		; 80 10
	jsr $1820.w		; 20 20 18
	adc [$F7.b],Y		; 77 F7
	eor [$5F.b],Y		; 57 5F
	bit $26F5.w		; 2C F5 26
	ora $15.b,X		; 15 15
	php		; 08
	tas		; 1B
	ora ($C2.b),Y		; 11 C2
	cmp $3119.w,Y		; D9 19 31
	and ($EE.b),Y		; 31 EE
	asl $4080.w		; 0E 80 40
	ldy #$78.b		; A0 78
	php		; 08
	ora [$06.b]		; 07 06
	ora $FF31.w,Y		; 19 31 FF
	sbc [$F7.b],Y		; F7 F7
	adc ($F5.b),Y		; 71 F5
	sbc $0278.w,Y		; F9 78 02
	stx $06.b		; 86 06
	tsb $01.b		; 04 01
	ora ($02.b)		; 12 02
	rts		; 60

	adc $C0C003.l,X		; 7F 03 C0 C0
	sed		; F8
	ora $01.b,S		; 03 01
	and $02.b		; 25 02
	cpx #$01.b		; E0 01
	rep #$02		; C2 02
	ora ($C0.b,X)		; 01 C0
	sbc $5FFFFF.l,X		; FF FF FF 5F
	and ($B5.b)		; 32 B5
	sty $BC.b		; 84 BC
	sty $FC.b		; 84 FC
	cmp $849D.w,X		; DD 9D 84
	mvp $4E,$66		; 44 66 4E
	rtl		; 6B

	adc ($57.b,S),Y		; 73 57
	ror $0135.w		; 6E 35 01
	and $7901.w,Y		; 39 01 79
	ora ($41.b,X)		; 01 41
	ora ($43.b,X)		; 01 43
	cop $2B.b		; 02 2B
	ora ($19.b,X)		; 01 19
	and $FFF7.w,Y		; 39 F7 FF
	cmp $F44BFF.l,X		; DF FF 4B F4
	pha		; 48
	sta $04.b		; 85 04
	cmp $81.b,S		; C3 81
	eor #$80.b		; 49 80
	cmp ($12.b),Y		; D1 12
	bne  32.b		; D0 20
	eor $6FD2.w,Y		; 59 D2 6F
	eor $C04040.l		; 4F 40 40 C0
	ora ($01.b,X)		; 01 01
	jsr $5220.w		; 20 20 52
	sbc ($A0.b)		; F2 A0
	cpx #$D2.b		; E0 D2
	cmp ($FF.b)		; D2 FF
	adc $9155FF.l,X		; 7F FF 55 91
	stz $DD0B.w		; 9C 0B DD
	cpy #$3A.b		; C0 3A
	ora ($7C.b),Y		; 11 7C
	tsb $FF.b		; 04 FF
	phd		; 0B
	and [$FD.b],Y		; 37 FD
	pld		; 2B
	nop		; EA
	adc $03.b,S		; 63 03
	jsl $C5C502.l		; 22 02 C5 C5
	lda ($83.b,S),Y		; B3 83
	bmi -64.b		; 30 C0
	cpy #$DD.b		; C0 DD
	sbc $5555FF.l,X		; FF FF 55 55
	pla		; 68
	phy		; 5A
	cmp ($EA.b)		; D2 EA
	tsx		; BA
	stx $66.b,Y		; 96 66
	mvn $AC,$34		; 54 34 AC
	sty $C8C8.w		; 8C C8 C8
	tya		; 98
	tya		; 98
	cpx #$2C.b		; E0 2C
	sec		; 38
	bit $9830.w		; 2C 30 98
	rti		; 40

	bvc  96.b		; 50 60
	lsr A		; 4A
	stz $C30C.w,X		; 9E 0C C3
	ora ($03.b,X)		; 01 03
	ora ($06.b,X)		; 01 06
	ora ($01.b,X)		; 01 01
	cop $0C.b		; 02 0C
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	sbc $C7FFCF.l,X		; FF CF FF C7
	sbc $30.b		; E5 30
	and ($20.b,X)		; 21 20
	sta [$81.b]		; 87 81
	ora $02.b,S		; 03 02
	cop $05.b		; 02 05
	ora $02.b,S		; 03 02
	rep #$8A		; C2 8A
	cmp $2020CF.l		; CF CF 20 20
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	cop $0A.b		; 02 0A
	php		; 08
	inc $F73F.w,X		; FE 3F F7
	ora [$3B.b],Y		; 17 3B
	sta [$0B.b],Y		; 97 0B
	cld		; D8
	and ($40.b,X)		; 21 40
	adc ($30.b),Y		; 71 30
	bra  32.b		; 80 20
	ldy #$20.b		; A0 20
	cpy #$C4.b		; C0 C4
	cpy #$0B.b		; C0 0B
	and ($20.b,X)		; 21 20
	adc ($60.b),Y		; 71 60
	bra -128.b		; 80 80
	ldy #$C0.b		; A0 C0
	sbc $555507.l,X		; FF 07 55 55
	sbc [$08.b],Y		; F7 08
	tsb $040C.w		; 0C 0C 04
	mvp $38,$F4		; 44 F4 38
	txa		; 8A
	sta [$81.b]		; 87 81
	sbc ($08.b,S),Y		; F3 08
	mvp $B7,$38		; 44 38 B7
	lsr $7801.w		; 4E 01 78
	cmp $28AAFD.l,X		; DF FD AA 28
	txs		; 9A
	tsb $38.b		; 04 38
	php		; 08
	sta ($76.b),Y		; 91 76
	trb $20.b		; 14 20
	cpx #$20.b		; E0 20
	phk		; 4B
	php		; 08
	eor ($40.b,X)		; 41 40
	sbc $600130.l		; EF 30 01 60
	cpy #$03.b		; C0 03
	adc [$73.b],Y		; 77 73
	jsl $710A20.l		; 22 20 0A 71
	bra -106.b		; 80 96
	bcc   2.b		; 90 02
	asl A		; 0A
	cop $2C.b		; 02 2C
	jsr $FD14.w		; 20 14 FD
	asl $0C.b		; 06 0C
	bra  -1.b		; 80 FF
	ora ($55.b,X)		; 01 55
	ora $03.b,S		; 03 03
	cpx $27.b		; E4 27
	stp		; DB
	stx $FF.b,Y		; 96 FF
	eor $CAF6.w		; 4D F6 CA
	ora $E4.b,S		; 03 E4
	ora $FF0B.w,Y		; 19 0B FF
	sbc $64FD51.l,X		; FF 51 FD 64
	sbc [$DA.b],Y		; F7 DA
	phx		; DA
	tda		; 7B
	cmp $65FFFC.l,X		; DF FC FF 65
	adc $E338.w		; 6D 38 E3
	ply		; 7A
	trb $77EA.w		; 1C EA 77
	beq  36.b		; F0 24
	ora $08.b,S		; 03 08
	stp		; DB
	clc		; 18
	.db $62, $62, $81		; 62 62 81
	sta ($E0.b,X)		; 81 E0
	ldx $65C2.w,Y		; BE C2 65
	rti		; 40

	rti		; 40

	jsr $8040.w		; 20 40 80
	bcs -80.b		; B0 B0
	dey		; 88
	bpl -128.b		; 10 80
	bra -128.b		; 80 80
	rti		; 40

	ldy #$80.b		; A0 80
	bpl  64.b		; 10 40
	tad		; 5B
	sbc ($FF.b,X)		; E1 FF
	ora ($02.b,X)		; 01 02
	tsb $08.b		; 04 08
	bpl  34.b		; 10 22
	and $0101.w,X		; 3D 01 01
	ora [$04.b]		; 07 04
	tsb $1808.w		; 0C 08 18
	ora ($31.b),Y		; 11 31
	and [$67.b]		; 27 67
	xce		; FB
	and $D2A157.l		; 2F 57 A1 D2
	cmp $1801.w,X		; DD 01 18
	php		; 08
	asl $04.b		; 06 04
	mvn $98,$10		; 54 10 98
	rti		; 40

	bra -108.b		; 80 94
	cpx #$40.b		; E0 40
	cpy #$04.b		; C0 04
	bpl  96.b		; 10 60
	bra  -1.b		; 80 FF
	and $F4554F.l,X		; 3F 4F 55 F4
	ldx $AD5C.w		; AE 5C AD
	cld		; D8
	bit #$88.b		; 89 88
	bra -122.b		; 80 86
	ora #$50.b		; 09 50
	cpx #$22.b		; E0 22
	ora ($01.b)		; 12 01
	ora ($75.b,X)		; 01 75
	ora ($80.b,X)		; 01 80
	php		; 08
	cpx #$D2.b		; E0 D2
	jsr $FFFF.w		; 20 FF FF
	eor ($F5.b),Y		; 51 F5
	asl $02F3.w		; 0E F3 02
	ora ($04.b,X)		; 01 04
	bpl -108.b		; 10 94
	tsb $0C.b		; 04 0C
	jsr $08A8.w		; 20 A8 08
	cli		; 58
	mvp $98,$A4		; 44 A4 98
	cpx $C4B0.w		; EC B0 C4
	jsr $C408.w		; 20 08 C4
	tsb $98.b		; 04 98
	php		; 08
	ldx $DF.b,Y		; B6 DF
	cmp $C0.b,S		; C3 C0
	phd		; 0B
	tsb $01.b		; 04 01
	ora ($18.b,X)		; 01 18
	tsb $04.b		; 04 04
	asl A		; 0A
	cop $01.b		; 02 01
	tsb $073C.w		; 0C 3C 07
	ora [$08.b]		; 07 08
	php		; 08
	bpl  16.b		; 10 10
	sbc $4157FF.l,X		; FF FF 57 41
	ldx #$9C.b		; A2 9C
	lda $A5ABAA.l,X		; BF AA AB A5
	and $24.b		; 25 24
	adc $22.b		; 65 22
	adc $41.b,S		; 63 41
	eor ($40.b,X)		; 41 40
	cpy #$40.b		; C0 40
	ora ($01.b,X)		; 01 01
	tsb $06.b		; 04 06
	ora ($43.b,X)		; 01 43
	bra  -9.b		; 80 F7
	sbc $FF5F55.l,X		; FF 55 5F FF
	rti		; 40

	ora $0FA0BF.l,X		; 1F BF A0 0F
	cpx #$1F.b		; E0 1F
	bmi  39.b		; 30 27
	bcs  15.b		; B0 0F
	sei		; 78
	ora $08.b,S		; 03 08
	lda $1F5FFF.l,X		; BF FF 5F 1F
	cmp $404FC0.l		; CF C0 4F 40
	ora [$07.b]		; 07 07
	adc [$7D.b],Y		; 77 7D
	ora $55.b,X		; 15 55
	bmi  -1.b		; 30 FF
	sty $8083.w		; 8C 83 80
	bra  96.b		; 80 60
	rti		; 40

	rti		; 40

	eor ($20.b),Y		; 51 20
	jsl $814779.l		; 22 79 47 81
	jsr $3040.w		; 20 40 30
	ora ($AB.b,X)		; 01 AB
	plb		; AB
	tax		; AA
	ldx $AB.b		; A6 AB
	ldx $AA.b		; A6 AA
	ldx $AB.b		; A6 AB
	nop		; EA
	txs		; 9A
	sbc $99.b,X		; F5 99
	tsx		; BA
	tax		; AA
	stp		; DB
	tax		; AA
	plx		; FA
	ldx $9E02.w		; AE 02 9E
	brk $11.b		; 00 11
	eor ($00.b)		; 52 00
	clv		; B8
	ora [$1F.b]		; 07 1F
	sbc $01FF7E.l,X		; FF 7E FF 01
	ora [$03.b]		; 07 03
	php		; 08
	asl $05.b		; 06 05
	ora $05.b,S		; 03 05
	ora $12350D.l,X		; 1F 0D 35 12
	.db $62, $03, $01		; 62 03 01
	ora $02.b		; 05 02
	cop $03.b		; 02 03
	ora $07.b,S		; 03 07
	tsb $100C.w		; 0C 0C 10
	bpl  32.b		; 10 20
	jsr $FFFF.w		; 20 FF FF
	eor $D041.w,X		; 5D 41 D0
	sec		; 38
	iny		; C8
	jmp.w [$D2EC]		; DC EC D2
	stx $7D.b		; 86 7D
	and [$FE.b]		; 27 FE
	sbc [$FF.b]		; E7 FF
	cmp [$FF.b]		; C7 FF
	sbc ($ED.b,X)		; E1 ED
	trb $E010.w		; 1C 10 E0
	trb $01C2.w		; 1C C2 01
	tsb $FFF8.w		; 0C F8 FF
	eor ($41.b),Y		; 51 41
	sec		; 38
	plp		; 28
	dec $BA.b,X		; D6 BA
	adc $FFC8.w,X		; 7D C8 FF
	cmp ($FF.b)		; D2 FF
	sbc #$FF.b		; E9 FF
	trb $CCDD.w		; 1C DD CC
	sec		; 38
	dec $01.b		; C6 01
	cpy #$80.b		; C0 80
	sbc $87F501.l,X		; FF 01 F5 87
	sty $6B.b		; 84 6B
	plp		; 28
	cmp $BFE8F8.l,X		; DF F8 E8 BF
	sbc [$C7.b],Y		; F7 C7
	sta [$67.b]		; 87 67
	ora ($06.b),Y		; 11 06
	tsb $0003.w		; 0C 03 00
	brk $00.b		; 00 00
	dey		; 88
	ora ($02.b,X)		; 01 02
	adc $FEBFFF.l,X		; 7F FF BF FE
	php		; 08
	adc ($02.b)		; 72 02
	ror $10.b,X		; 76 10
	stz $3F.b		; 64 3F
	ora $DAE745.l,X		; 1F 45 E7 DA
	stp		; DB
	ldy $BFF8.w,X		; BC F8 BF
	and $393D.w,X		; 3D 3D 39
	and $3B3B.w,Y		; 39 3B 3B
	rti		; 40

	sbc [$18.b]		; E7 18
	cmp $BC.b,S		; C3 BC
	sta ($3E.b,X)		; 81 3E
	bra  -1.b		; 80 FF
	sbc $DF55.w,X		; FD 55 DF
	eor $F313C0.l,X		; 5F C0 13 F3
	ora ($9C.b,X)		; 01 9C
	sbc $D705.w,Y		; F9 05 D7
	sbc $D303.w		; ED 03 D3
	ora $3F3F8F.l		; 0F 8F 3F 3F
	tsb $0203.w		; 0C 03 02
	tsb $13E0.w		; 0C E0 13
	cpy #$2F.b		; C0 2F
	cmp $6FFFC0.l,X		; DF C0 FF 6F
	sbc $AD.b,X		; F5 AD
	cli		; 58
	mvp $CC,$B7		; 44 B7 CC
	ldy #$FA.b		; A0 FA
	bcc  87.b		; 90 57
	cpy #$C7.b		; C0 C7
	beq  22.b		; F0 16
	ora $03.b		; 05 03
	clv		; B8
	iny		; C8
	beq   7.b		; F0 07
	ldy #$08.b		; A0 08
	cpy #$10.b		; C0 10
	ora #$03.b		; 09 03
	asl $FD.b		; 06 FD
	sbc $F85FE8.l,X		; FF E8 5F F8
	tsb $0860.w		; 0C 60 08
	cpx #$04.b		; E0 04
	ldy $5B18.w,X		; BC 18 5B
	sei		; 78
	sbc $BDFFFB.l,X		; FF FB FF BD
	clv		; B8
	sed		; F8
	dec A		; 3A
	jsr $607D.w		; 20 7D 60
	cpy #$D0.b		; C0 D0
	bra -16.b		; 80 F0
	sed		; F8
	sbc $F3CFF3.l,X		; FF F3 CF F3
	tsb $62.b		; 04 62
	and $12.b,S		; 23 12
	bit $40.b		; 24 40
	bpl   8.b		; 10 08
	cop $0C.b		; 02 0C
	ora ($26.b),Y		; 11 26
	tsb $1F8B.w		; 0C 8B 1F
	ora $081010.l,X		; 1F 10 10 08
	php		; 08
	tsb $068C.w		; 0C 8C 06
	lsr $0B.b		; 46 0B
	phd		; 0B
	ora $33037F.l,X		; 1F 7F 03 33
	ora ($30.b,S),Y		; 13 30
	bpl  32.b		; 10 20
	cop $08.b		; 02 08
	php		; 08
	php		; 08
	bpl   5.b		; 10 05
	tsb $04.b		; 04 04
	ora $08080F.l		; 0F 0F 08 08
	tsb $04.b		; 04 04
	cmp ($DE.b)		; D2 DE
	ora $03.b,S		; 03 03
	bne  32.b		; D0 20
	bra -128.b		; 80 80
	clc		; 18
	jsr $1020.w		; 20 20 10
	rti		; 40

	rti		; 40

	cpx #$E0.b		; E0 E0
	bpl  16.b		; 10 10
	sbc $77.b,X		; F5 77
	txa		; 8A
	rol A		; 2A
	lda $6E.b		; A5 6E
	ora [$02.b]		; 07 02
	lsr $06.b,X		; 56 06
	and $3FD00C.l,X		; 3F 0C D0 3F
	clc		; 18
	and ($7B.b,X)		; 21 7B
	tsb $3118.w		; 0C 18 31
	rti		; 40

	and $FF.b,S		; 23 FF
	sbc [$AF.b],Y		; F7 AF
	cop $6F.b		; 02 6F
	sec		; 38
	and ($0A.b)		; 32 0A
	lda ($20.b),Y		; B1 20
	adc $8150.w,Y		; 79 50 81
	ora ($80.b,X)		; 01 80
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	php		; 08
	tsx		; BA
	php		; 08
	tsb $38E1.w		; 0C E1 38
	bra -33.b		; 80 DF
	sbc $28AA.w,X		; FD AA 28
	eor $1C20.w,Y		; 59 20 1C
	bpl -119.b		; 10 89
	ror $0428.w		; 6E 28 04
	ora [$04.b]		; 07 04
	cmp ($10.b)		; D2 10
	.db $82, $02, $F7		; 82 02 F7
	tsb $0680.w		; 0C 80 06
	ora $C0.b,S		; 03 C0
	sbc $228AFF.l,X		; FF FF 8A 22
	dey		; 88
	rts		; 60

	jmp $101840.l		; 5C 40 18 10
	rol $20.b		; 26 20
	sta $040608.l		; 8F 08 06 04
	eor ($10.b),Y		; 51 10
	ora $02.b,S		; 03 02
	sbc [$0C.b],Y		; F7 0C
	asl $03.b		; 06 03
	ora ($FF.b,X)		; 01 FF
	sbc $277D55.l,X		; FF 55 7D 27
	adc [$5D.b]		; 67 5D
	sta $BD8F.w		; 8D 8F BD
	sta $AAFAFF.l,X		; 9F FF FA AA
	clv		; B8
	lda $4676B5.l,X		; BF B5 76 46
	tad		; 5B
	stz $50.b,X		; 74 50
	and ($60.b)		; 32 60
	bvc   7.b		; 50 07
	cop $41.b		; 02 41
	ora ($1C.b,X)		; 01 1C
	sbc $9FFFFF.l,X		; FF FF FF 9F
	.db $42, $93		; 42 93
	jmp $07A2.w		; 4C A2 07
	bcs -111.b		; B0 91
	bit $2798.w		; 2C 98 27
	ror $0F.b,X		; 76 0F
	bit $DF.b		; 24 DF
	clv		; B8
	adc $DDE0EC.l		; 6F EC E0 DD
	cpy #$CF.b		; C0 CF
	cpy #$D3.b		; C0 D3
	bne -40.b		; D0 D8
	cld		; D8
	dec $D0.b,X		; D6 D0
	asl $60.b		; 06 60
	sbc $F53FFF.l,X		; FF FF 3F F5
	eor $6E3D.w,Y		; 59 3D 6E
	bit $AEA2.w		; 2C A2 AE
	and ($FB.b,S),Y		; 33 FB
	eor ($F5.b,S),Y		; 53 F5
	dec $40FA.w		; CE FA 40
	sta $DF3CD3.l,X		; 9F D3 3C DF
	bra -62.b		; 80 C2
	cpy #$C0.b		; C0 C0
	cpy #$A6.b		; C0 A6
	bit $40C7.w,X		; 3C C7 40
	sta $80.b,S		; 83 80
	eor $FF0FFF.l,X		; 5F FF 0F FF
	adc $8187.w,Y		; 79 87 81
	sty $05.b		; 84 05
	rti		; 40

	ora ($02.b,X)		; 01 02
	bvc -128.b		; 50 80
	ldy $90.b,X		; B4 90
	bvc 113.b		; 50 71
	xce		; FB
	sbc $0506.w,Y		; F9 06 05
	ora $02.b,S		; 03 02
	bra -128.b		; 80 80
	bcc -112.b		; 90 90
	adc ($71.b),Y		; 71 71
	xce		; FB
	lda $0275F6.l,X		; BF F6 75 02
	cop $01.b		; 02 01
	ora ($09.b,X)		; 01 09
	php		; 08
	ora ($01.b)		; 12 01
	ora #$04.b		; 09 04
	bit $37.b,X		; 34 37
	eor [$20.b]		; 47 20
	ora [$02.b]		; 07 02
	cop $01.b		; 02 01
	tsb $06.b		; 04 06
	ora #$14.b		; 09 14
	ora ($06.b,X)		; 01 06
	jsr $F777.w		; 20 77 F7
	eor ($5D.b,S),Y		; 53 5D
	ldy $797E.w,X		; BC 7E 79
	stx $82.b		; 86 82
	bra  35.b		; 80 23
	cop $19.b		; 02 19
	plx		; FA
	cop $0E.b		; 02 0E
	asl $017D.w		; 0E 7D 01
	bcc  28.b		; 90 1C
	tsb $0103.w		; 0C 03 01
	cop $0E.b		; 02 0E
	adc [$F7.b],Y		; 77 F7
	eor [$5F.b],Y		; 57 5F
	cmp ($BF.b),Y		; D1 BF
	bcc -96.b		; 90 A0
	ldy #$40.b		; A0 40
	.db $62, $20, $0C		; 62 20 0C
	adc $303060.l		; 6F 60 30 30
	cmp $0804C0.l,X		; DF C0 04 08
	trb $78.b		; 14 78
	rti		; 40

	bra -128.b		; 80 80
	rts		; 60

	bmi 127.b		; 30 7F
	cmp [$1F.b]		; C7 1F
	adc ($E8.b,S),Y		; 73 E8
	pea $193D.w		; F4 3D 19
	ora ($03.b,X)		; 01 03
	.db $42, $38		; 42 38
	and ($81.b),Y		; 31 81
	rts		; 60

	rts		; 60

	beq   7.b		; F0 07
	bpl   8.b		; 10 08
	tsb $22.b		; 04 22
	bpl   1.b		; 10 01
	bpl  96.b		; 10 60
	sbc $11FF7F.l,X		; FF 7F FF 11
	bcs -72.b		; B0 B8
	cmp $DC.b,X		; D5 DC
	and ($34.b)		; 32 34
	sed		; F8
	beq -96.b		; F0 A0
	ldy #$08.b		; A0 08
	bra -96.b		; 80 A0
	rts		; 60

	rts		; 60

	jsr $63FF.w		; 20 FF 63
	ora [$4C.b]		; 07 4C
	clc		; 18
	bpl  32.b		; 10 20
	jsr $7F20.w		; 20 20 7F
	sbc $020F3F.l,X		; FF 3F 0F 02
	and $E589.w,Y		; 39 89 E5
	.db $82, $86, $85		; 82 86 85
	lsr A		; 4A
	and ($40.b,S),Y		; 33 40
	eor ($47.b,X)		; 41 47
	cop $20.b		; 02 20
	bpl   6.b		; 10 06
	dec $05.b		; C6 05
	cmp $86.b		; C5 86
	asl $03.b		; 06 03
	ora $41.b,S		; 03 41
	ora ($E2.b,X)		; 01 E2
	ora $0A03F3.l,X		; 1F F3 03 0A
	ora $02.b,S		; 03 02
	ora ($04.b,X)		; 01 04
	tsb $05.b		; 04 05
	php		; 08
	cop $05.b		; 02 05
	ora $03.b		; 05 03
	ora $01.b,S		; 03 01
	ora ($04.b,X)		; 01 04
	tsb $FF.b		; 04 FF
	sbc $C85445.l,X		; FF 45 54 C8
	pea $747C.w		; F4 7C 74
	jmp $BC3C7C.l		; 5C 7C 3C BC
	ldy $BC.b,X		; B4 BC
	dey		; 88
	phy		; 5A
	lsr $DA5A.w,X		; 5E 5A DA
	tsx		; BA
	phx		; DA
	php		; 08
	bra -64.b		; 80 C0
	tsb $60.b		; 04 60
	sbc [$D5.b],Y		; F7 D5
	txa		; 8A
	asl A		; 0A
	txs		; 9A
	and ($46.b,X)		; 21 46
	rol A		; 2A
	jsr $0282.w		; 20 82 02
	bvc  60.b		; 50 3C
	trb $04.b		; 14 04
	tsb $7D.b		; 04 7D
	asl $40.b		; 06 40
	jsr $031C.w		; 20 1C 03
	tsb $0002.w		; 0C 02 00
	mvn $80,$83		; 54 83 80
	bra -17.b		; 80 EF
	adc [$73.b],Y		; 77 73
	jsl $8E5020.l		; 22 20 50 8E
	ora ($69.b,X)		; 01 69
	ora #$40.b		; 09 40
	bvc  64.b		; 50 40
	bit $04.b,X		; 34 04
	plp		; 28
	lda $733060.l,X		; BF 60 30 73
	adc $98A222.l,X		; 7F 22 A2 98
	ora [$D4.b]		; 07 D4
	tsb $80.b		; 04 80
	sep #$82		; E2 82
	eor #$01.b		; 49 01
	bvs  64.b		; 70 40
	rol $7F.b		; 26 7F
	cpy #$60.b		; C0 60
	bmi   1.b		; 30 01
	and $7CFFFC.l,X		; 3F FC FF 7C
	cop $59.b		; 02 59
	ora ($60.b),Y		; 11 60
	trb $12.b		; 14 12
	plp		; 28
	eor ($28.b)		; 52 28
	and #$09.b		; 29 09
	ora $24.b,S		; 03 24
	and ($20.b,X)		; 21 20
	jsr $1011.w		; 20 11 10
	cop $02.b		; 02 02
	bpl  18.b		; 10 12
	plp		; 28
	and ($03.b,X)		; 21 03
	sbc $65BFF7.l,X		; FF F7 BF 65
	clv		; B8
	cmp #$5F.b		; C9 5F
	adc ($08.b,X)		; 61 08
	plp		; 28
	bvs  72.b		; 70 48
	cli		; 58
	and $1028.w,Y		; 39 28 10
	sbc ($80.b,X)		; E1 80
	bpl   6.b		; 10 06
	cpx #$A0.b		; E0 A0
	ora ($20.b),Y		; 11 20
	jsr $4920.w		; 20 20 49
	jsr $10F1.w		; 20 F1 10
	sbc $F1FEBD.l,X		; FF BD FE F1
	sty $1B.b		; 84 1B
	ror $2587.w,X		; 7E 87 25
	jsl LC080E0.l		; 22 E0 80 C0
	bra -63.b		; 80 C1
	bra   1.b		; 80 01
	inc $9178.w,X		; FE 78 91
	cmp $89.b		; C5 89
	ora $04.b,S		; 03 04
	rti		; 40

	jsl $0202C3.l		; 22 C3 02 02
	jsr ($FFFF.w,X)		; FC FF FF
	eor $FD.b,X		; 55 FD
	bit $25.b,X		; 34 25
	ora $2129.w,Y		; 19 29 21
	cmp ($D1.b,X)		; C1 D1
	sta ($11.b,X)		; 81 11
	adc ($41.b,X)		; 61 41
	sta ($82.b)		; 92 82
	tax		; AA
.INDEX 16
	rep #$96		; C2 96
	ldy #$E030.w		; A0 30 E0
	bvc 112.b		; 50 70
	cmp ($C0.b,S),Y		; D3 C0
	inx		; E8
	cpx #$B0B4.w		; E0 B4 B0
	lda $5451FF.l		; AF FF 51 54
	ora ($04.b,X)		; 01 04
	asl $08.b		; 06 08
	tsb $18.b		; 04 18
	ora $1220.w,Y		; 19 20 12
	bvc  44.b		; 50 2C
	bcc  49.b		; 90 31
	ora $0403.w		; 0D 03 04
	php		; 08
	bpl 112.b		; 10 70
	sbc $FF7F.w,X		; FD 7F FF
	and [$FB.b],Y		; 37 FB
	cmp $0A.b,X		; D5 0A
	eor [$07.b]		; 47 07
	inc A		; 1A
	inc A		; 1A
	bra  71.b		; 80 47
	jmp $3002.w		; 4C 02 30
	cmp $4F87A2.l		; CF A2 87 4F
	dex		; CA
	jsr $0A07.w		; 20 07 0A
	bpl  68.b		; 10 44
	php		; 08
	jsr $0482.w		; 20 82 04
	ora ($12.b,X)		; 01 12
	cmp $0A8F0B.l,X		; DF 0B 8F 0A
	ora $08080F.l		; 0F 0F 08 08
	tsb $02.b		; 04 02
	tsb $01.b		; 04 01
	cop $01.b		; 02 01
	ora $1F.b,S		; 03 1F
	ora $10.b,S		; 03 10
	php		; 08
	tsb $02.b		; 04 02
	stp		; DB
	stz $5F.b,X		; 74 5F
	ora ($E3.b),Y		; 11 E3
	sbc $10.b,S		; E3 10
	bpl  16.b		; 10 10
	clc		; 18
	tay		; A8
	bra  48.b		; 80 30
	cop $C1.b		; 02 C1
	sbc [$20.b],Y		; F7 20
	php		; 08
	sta ($40.b,X)		; 81 40
	jsr $7F40.w		; 20 40 7F
	lsr $37.b		; 46 37
	sbc [$86.b],Y		; F7 86
	adc $8CC5.w,X		; 7D C5 8C
	asl $D20F.w		; 0E 0F D2
	ora ($A0.b,X)		; 01 A0
	rti		; 40

	adc ($0C.b,X)		; 61 0C
	bra  33.b		; 80 21
	ora ($42.b)		; 12 42
	and ($04.b,X)		; 21 04
	sta ($40.b,X)		; 81 40
	php		; 08
	bra  -1.b		; 80 FF
	sbc $62CDD5.l,X		; FF D5 CD 62
	sta $7070.w,X		; 9D 70 70
	stz $CE1E.w,X		; 9E 1E CE
	asl $80E9.w		; 0E E9 80
	cmp [$C4.b],Y		; D7 C4
	tay		; A8
	ora $3F.b,S		; 03 3F
	adc $719D.w		; 6D 9D 71
	asl $010E.w,X		; 1E 0E 01
	bra  68.b		; 80 44
	.db $82, $28, $44		; 82 28 44
	ora ($40.b,X)		; 01 40
	ora ($C0.b,X)		; 01 C0
	sbc $030101.l,X		; FF 01 01 03
	ora $57.b,S		; 03 57
	sbc $FCD547.l,X		; FF 47 D5 FC
	sbc $010103.l,X		; FF 03 01 01
	ora $03.b,S		; 03 03
	ora $7E1F.w,X		; 1D 1F 7E
	jmp ($E1E2.w,X)		; 7C E2 E1
	beq  -1.b		; F0 FF
	bpl  16.b		; 10 10
	php		; 08
	sec		; 38
	dec $0136.w		; CE 36 01
	plx		; FA
	cmp $BF55FF.l,X		; DF FF 55 BF
	ora $11.b,S		; 03 11
	adc [$96.b],Y		; 77 96
	tsb $D888.w		; 0C 88 D8
	bmi  96.b		; 30 60
	pha		; 48
	ora $3908.w		; 0D 08 39
	cpy #$0319.w		; C0 19 03
	plp		; 28
	bit $09.b		; 24 09
	clc		; 18
	cop $03.b		; 02 03
	jsr $1F10.w		; 20 10 1F
	sbc $A55F.w,X		; FD 5F A5
	bit $437F.w,X		; 3C 7F 43
	bra -128.b		; 80 80
	ora ($0E.b,X)		; 01 0E
	ora [$30.b]		; 07 30
	clc		; 18
	cpy #$18E0.w		; C0 E0 18
	jsr ($0326.w,X)		; FC 26 03
	cpy #$700E.w		; C0 0E 70
	bra   7.b		; 80 07
	clc		; 18
	ora ($F6.b,S),Y		; 13 F6
	eor $FF7EB5.l		; 4F B5 7E FF
	.db $82, $01, $04		; 82 01 04
	iny		; C8
	.db $82, $30, $E4		; 82 30 E4
	sei		; 78
	ror $8108.w,X		; 7E 08 81
	bra  16.b		; 80 10
	ldy #$0140.w		; A0 40 01
	cop $C7.b		; 02 C7
	sbc [$41.b],Y		; F7 41
	bpl -98.b		; 10 9E
	bra -127.b		; 80 81
	bvc  64.b		; 50 40
	rti		; 40

	bra   8.b		; 80 08
	jsr $2420.w		; 20 20 24
	rti		; 40

	adc $DF2040.l,X		; 7F 40 20 DF
	sbc $0A7F47.l,X		; FF 47 7F 0A
	eor ($05.b)		; 52 05
	cop $08.b		; 02 08
	php		; 08
	php		; 08
	jmp $446490.l		; 5C 90 64 44
	rol $28.b		; 26 28
	eor ($02.b,X)		; 41 02
	and $0220.w		; 2D 20 02
	php		; 08
	bpl  16.b		; 10 10
	mvp $08,$40		; 44 40 08
	php		; 08
	cop $3D.b		; 02 3D
	brk $15.b		; 00 15
	brk $FF.b		; 00 FF
	bpl  32.b		; 10 20
	bpl  32.b		; 10 20
	sbc $7F2020.l,X		; FF 20 20 7F
	sbc $8F5555.l,X		; FF 55 55 8F
	cpx #$70D7.w		; E0 D7 70
	xba		; EB
	php		; 08
	inc $FD.b,X		; F6 FD
	ora ($FA.b,X)		; 01 FA
	cop $FC.b		; 02 FC
	ora [$F0.b]		; 07 F0
	tsb $1F.b		; 04 1F
	sta $FEFFF7.l		; 8F F7 FF FE
	sbc $F8F8.w,X		; FD F8 F8
	sbc $05552F.l,X		; FF 2F 55 05
	sta $982F.w,Y		; 99 2F 98
	and $ADA0.w		; 2D A0 AD
	bne -39.b		; D0 D9
	rts		; 60

	and ($80.b),Y		; 31 80
	rts		; 60

	bra -48.b		; 80 D0
	bne  80.b		; D0 50
	jsr $80C0.w		; 20 C0 80
	sbc [$89.b],Y		; F7 89
	sbc $CF.b,X		; F5 CF
	cpy $CCFF.w		; CC FF CC
	rts		; 60

	ora $67.b,S		; 03 67
	ora $18.b,S		; 03 18
	cpy #$EC20.w		; C0 20 EC
	adc $B203F3.l		; 6F F3 03 B2
	tsb $30C5.w		; 0C C5 30
	php		; 08
	rti		; 40

	php		; 08
	rti		; 40

	sta [$B7.b]		; 87 B7
	sta ($F2.b)		; 92 F2
	asl $87.b		; 06 87
	ora ($80.b,X)		; 01 80
	tsb $80.b		; 04 80
	bra  64.b		; 80 40
	mvp $0F,$20		; 44 20 0F
	ora ($80.b,X)		; 01 80
	rti		; 40

	bra  40.b		; 80 28
	rti		; 40

	bpl -58.b		; 10 C6
	sbc $018DF2.l,X		; FF F2 8D 01
	ora ($0A.b,X)		; 01 0A
	asl A		; 0A
	tsb $04.b		; 04 04
	ora #$08.b		; 09 08
	asl $01.b		; 06 01
	ora ($06.b,X)		; 01 06
	ora $01.b,S		; 03 01
	php		; 08
	php		; 08
	trb $0F.b		; 14 0F
	asl $10.b		; 06 10
	php		; 08
	xce		; FB
	sbc $C92267.l,X		; FF 67 22 C9
	stp		; DB
	asl $54.b		; 06 54
	bpl  41.b		; 10 29
	rti		; 40

	clv		; B8
	phd		; 0B
	lsr $80.b		; 46 80
	jmp.w [$8B04]		; DC 04 8B
	ora ($C0.b,X)		; 01 C0
	sbc $801040.l,X		; FF 40 10 80
	clc		; 18
	trb $0003.w		; 1C 03 00
	eor [$00.b],Y		; 57 00
	sbc $FF0FFF.l,X		; FF FF 0F FF
	bpl -96.b		; 10 A0
	rti		; 40

	ora $455B40.l,X		; 1F 40 5B 45
	cmp [$EF.b],Y		; D7 EF
	sec		; 38
	bpl  16.b		; 10 10
	ora ($80.b,X)		; 01 80
	sbc $204010.l		; EF 10 40 20
	php		; 08
	bpl   8.b		; 10 08
	sbc $FFD7FF.l,X		; FF FF D7 FF
	jsr ($0DFD.w,X)		; FC FD 0D
	asl $16.b		; 06 16
	tsb $1908.w		; 0C 08 19
	jsr $5132.w		; 20 32 51
	stz $A3.b		; 64 A3
	asl A		; 0A
	eor #$D1.b		; 49 D1
	bvs  -1.b		; 70 FF
	ora ($23.b),Y		; 11 23
	asl $01.b		; 06 01
	jmp $1002.w		; 4C 02 10
	ora [$28.b]		; 07 28
	tsb $1810.w		; 0C 10 18
	cmp $AAAFFF.l,X		; DF FF AF AA
	sbc $80F8F0.l		; EF F0 F8 80
	pea $106A.w		; F4 6A 10
	rol $18.b		; 26 18
	lda ($0C.b),Y		; B1 0C
	txs		; 9A
	tsb $59.b		; 04 59
	asl $C0.b		; 06 C0
	sbc ($80.b),Y		; F1 80
	sta [$7B.b]		; 87 7B
	sbc $7EFD.w,X		; FD FD 7E
	adc $FFDFBF.l,X		; 7F BF DF FF
	eor [$75.b]		; 47 75
	bit $417B.w,X		; 3C 7B 41
	rti		; 40

	eor $07.b,S		; 43 07
	ora $2A.b		; 05 2A
	ora ($2C.b,X)		; 01 2C
	and ($A1.b,X)		; 21 A1
	ora $13.b,S		; 03 13
	asl $30.b,X		; 16 30
	sbc $012808.l,X		; FF 08 28 01
	ora $1E.b,S		; 03 1E
	bra  13.b		; 80 0D
	inc $FE.b		; E6 FE
	lda ($48.b,S),Y		; B3 48
	bcs -128.b		; B0 80
	bvs  64.b		; 70 40
	ldy #$B060.w		; A0 60 B0
	cpy #$5080.w		; C0 80 50
	bvc -16.b		; 50 F0
	jsr $20C0.w		; 20 C0 20
	jsr $0810.w		; 20 10 08
	jsr $FE83.w		; 20 83 FE
	txa		; 8A
	stz $80.b,X		; 74 80
	cpx #$0320.w		; E0 20 03
	bit #$04.b		; 89 04
	asl $3A48.w,X		; 1E 48 3A
	bpl  -8.b		; 10 F8
	php		; 08
	bpl   3.b		; 10 03
	tsb $1020.w		; 0C 20 10
	cmp $F541E7.l,X		; DF E7 41 F5
	ora ($30.b,S),Y		; 13 30
	ora ($20.b)		; 12 20
	ora ($08.b,X)		; 01 08
	wai		; CB
	ora #$34.b		; 09 34
	cmp ($08.b,X)		; C1 08
	cli		; 58
	sei		; 78
	ora $07C70B.l		; 0F 0B C7 07
	ora $18.b		; 05 18
	phk		; 4B
	rts		; 60

	sbc $713FFF.l,X		; FF FF 3F 71
	trb $C9.b		; 14 C9
	asl $64.b		; 06 64
	ora ($01.b),Y		; 11 01
	dey		; 88
	pha		; 48
	.db $82, $82, $84		; 82 82 84
	tsb $59.b		; 04 59
	ora ($50.b),Y		; 11 50
	rti		; 40

	rol $203E.w,X		; 3E 3E 20
	jsr $0101.w		; 20 01 01
	bra  16.b		; 80 10
	bpl  64.b		; 10 40
	plx		; FA
	sbc $401551.l,X		; FF 51 15 40
	jsr $A060.w		; 20 60 A0
	ldy #$E060.w		; A0 60 E0
	bne -48.b		; D0 D0
	bcs -16.b		; B0 F0
	bne -64.b		; D0 C0
	iny		; C8
	tya		; 98
	cpy #$20C0.w		; C0 C0 20
	rts		; 60

	jsr $FF6B.w		; 20 6B FF
	and $E840FF.l,X		; 3F FF 40 E8
	bpl  16.b		; 10 10
	bra  80.b		; 80 50
	bmi -80.b		; 30 B0
	pla		; 68
	jsr $20C0.w		; 20 C0 20
	cpx #$50D0.w		; E0 D0 50
	bpl  16.b		; 10 10
	bvc  16.b		; 50 10
	bcs -16.b		; B0 F0
	rts		; 60

	cpx #$C0C0.w		; E0 C0 C0
	cpx #$7BE0.w		; E0 E0 7B
	dec $C30F.w,X		; DE 0F C3
	cpy #$3020.w		; C0 20 30
	rti		; 40

	rti		; 40

	jsr $2018.w		; 20 18 20
	jsr $C010.w		; 20 10 C0
	jmp $C0C0.w		; 4C C0 C0
	jsr $1020.w		; 20 20 10
	bpl   8.b		; 10 08
	php		; 08
	sbc $4141FF.l,X		; FF FF 41 41
	rti		; 40

	stz $7C.b,X		; 74 7C
	jmp ($7C5C.w,X)		; 7C 5C 7C
	bit $B23A.w,X		; 3C 3A B2
	dec A		; 3A
	ldx $9EBE.w		; AE BE 9E
	stz $9DD2.w,X		; 9E D2 9D
	and $8004.w,X		; 3D 04 80
	.db $42, $22		; 42 22
	and ($30.b,X)		; 21 30
	bmi -128.b		; 30 80
	cpy #$6080.w		; C0 80 60
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	sbc $4555FF.l,X		; FF FF 55 45
	rti		; 40

	rts		; 60

	rts		; 60

	cpx #$50A0.w		; E0 A0 50
	beq -48.b		; F0 D0
	beq -80.b		; F0 B0
	bvs -48.b		; 70 D0
	ldy #$38A8.w		; A0 A8 38
	inx		; E8
	dey		; 88
	bra -32.b		; 80 E0
	jsr $A040.w		; 20 40 A0
	bne  94.b		; D0 5E
	eor $22.b,X		; 55 22
	tax		; AA
	bmi  74.b		; 30 4A
	bmi 118.b		; 30 76
	plp		; 28
	trb $8018.w		; 1C 18 80
	beq  -4.b		; F0 FC
	tsb $08.b		; 04 08
	bpl -128.b		; 10 80
	cpx #$AF1D.w		; E0 1D AF
	jsl $80A02A.l		; 22 2A A0 80
	bra 112.b		; 80 70
	beq -128.b		; F0 80
	rts		; 60

	jsr $8040.w		; 20 40 80
	cpy #$2020.w		; C0 20 20
	rti		; 40

	bra  -9.b		; 80 F7
	phd		; 0B
	sbc ($0F.b,S),Y		; F3 0F
	ora ($06.b,X)		; 01 06
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	cop $01.b		; 02 01
	ora ($06.b,X)		; 01 06
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	sbc $1145FF.l,X		; FF FF 45 11
	sty $AE.b		; 84 AE
.INDEX 8
	sep #$DE		; E2 DE
	dec $D6.b,X		; D6 D6
	bvc  77.b		; 50 4D
	and $A9A9AD.l		; 2F AD A9 A9
	tsa		; 3B
	sbc [$D7.b],Y		; F7 D7
	cmp [$99.b],Y		; D7 99
	bmi  24.b		; 30 18
	.db $82, $CC, $80		; 82 CC 80
	inc $FF00.w,X		; FE 00 FF
	bra  96.b		; 80 60
	rti		; 40

	bcc -96.b		; 90 A0
	bne -64.b		; D0 C0
	inx		; E8
	bra -128.b		; 80 80
	rts		; 60

	rts		; 60

	jsr $90A0.w		; 20 A0 90
	bne  -9.b		; D0 F7
	ora $620BB7.l		; 0F B7 0B 62
	inc $D072.w,X		; FE 72 D0
	tsb $40.b		; 04 40
	sec		; 38
	sta ($C1.b,X)		; 81 C1
	ora ($02.b,X)		; 01 02
	sbc ($01.b),Y		; F1 01
	iny		; C8
	sec		; 38
	cpy #$30.b		; C0 30
	ora ($31.b,X)		; 01 31
	cpy #$37.b		; C0 37
	cmp ($03.b,S),Y		; D3 03
	ora $C8.b,S		; 03 C8
	and ($80.b)		; 32 80
	bit $5428.w		; 2C 28 54
	ora [$22.b],Y		; 17 22
	php		; 08
	php		; 08
	jsr ($02FC.w,X)		; FC FC 02
	cop $08.b		; 02 08
	jsr $0000.w		; 20 00 00
	ora ($01.b,X)		; 01 01
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	and $F757FF.l,X		; 3F FF 57 F7
	eor [$C6.b],Y		; 57 C6
	and ($24.b),Y		; 31 24
	jsr $6961.w		; 20 61 69
	sbc ($84.b)		; F2 84
	sbc ($02.b),Y		; F1 02
	bra  -8.b		; 80 F8
	sed		; F8
	cmp $68200F.l		; CF 0F 20 68
	php		; 08
	jsr ($F604.w,X)		; FC 04 F6
	cop $FC.b		; 02 FC
	sty $73F0.w		; 8C F0 73
	dec $C303.w,X		; DE 03 C3
	rts		; 60

	dey		; 88
	rti		; 40

	rti		; 40

	bpl  12.b		; 10 0C
	ldy #$A0.b		; A0 A0
	php		; 08
	rti		; 40

	lsr $F0.b		; 46 F0
	beq   8.b		; F0 08
	php		; 08
	tsb $04.b		; 04 04
	inc $AA96.w,X		; FE 96 AA
	tax		; AA
	lda [$AA.b],Y		; B7 AA
	nop		; EA
	tax		; AA
	nop		; EA
	tax		; AA
	tsx		; BA
	tax		; AA
	phy		; 5A
	tax		; AA
	ror A		; 6A
	tax		; AA
	ldx $7ABB.w		; AE BB 7A
	ror A		; 6A
	asl A		; 0A
	ora ($59.b),Y		; 11 59
	brk $1F.b		; 00 1F
	php		; 08
	inc $55FF.w,X		; FE FF 55
	eor $0C.b,X		; 55 0C
	php		; 08
	ora [$1B.b],Y		; 17 1B
	and $425B3F.l		; 2F 3F 5B 42
	eor $9748.w		; 4D 48 97
	txy		; 9B
	ldx $DEB4.w		; AE B4 DE
	cmp $23100C.l		; CF 0C 10 23
	ora $60305C.l		; 0F 5C 30 60
	inc $55FF.w,X		; FE FF 55
	sbc $54CC.w,X		; FD CC 54
	tsx		; BA
	jmp ($90DF.w)		; 6C DF 90
	cmp $0EA140.l,X		; DF 40 A1 0E
	lsr $9919.w		; 4E 19 99
	sta $CF99.w,Y		; 99 99 CF
	cpx $CF32.w		; EC 32 CF
	sbc $D60E61.l,X		; FF 61 0E D6
	ora ($21.b,X)		; 01 21
	and ($FF.b,X)		; 21 FF
	sbc $080455.l,X		; FF 55 04 08
	bpl  26.b		; 10 1A
	trb $1316.w		; 1C 16 13
	trb $1F.b		; 14 1F
	phd		; 0B
	and $2E2F3F.l		; 2F 3F 2F 2E
	rol $3E3E.w		; 2E 3E 3E
	and $06.b,S		; 23 06
	ora $0B.b		; 05 0B
	bpl  -1.b		; 10 FF
	ora $FF.b,S		; 03 FF
	ora $01.b,S		; 03 01
	ora $0F100B.l,X		; 1F 0B 10 0F
	sbc ($B5.b)		; F2 B5
	ora $9090.w		; 0D 90 90
	cpx #$E0.b		; E0 E0
	bpl  16.b		; 10 10
	sbc ($F2.b)		; F2 F2
	ora $900D.w		; 0D 0D 90
	bcc   0.b		; 90 00
	inx		; E8
	brk $F0.b		; 00 F0
	ora $0C.b,S		; 03 0C
	ora [$30.b]		; 07 30
	ora $03.b,S		; 03 03
	ora $EFFE0F.l		; 0F 0F FE EF
	trb $15.b		; 14 15
	ora ($01.b,X)		; 01 01
	asl $07.b		; 06 07
	ora #$03.b		; 09 03
	ora ($0B.b,S),Y		; 13 0B
	adc $09.b,S		; 63 09
	sta ($F8.b,X)		; 81 F8
	sbc $0601FF.l,X		; FF FF 01 06
	php		; 08
	php		; 08
	sed		; F8
	adc $003F54.l,X		; 7F 54 3F 00
	bpl -126.b		; 10 82
	sbc $0A86.w		; ED 86 0A
	tsb $08.b		; 04 08
	rti		; 40

	cpy #$60.b		; C0 60
	adc $867D.w,X		; 7D 7D 86
	stx $04.b		; 86 04
	tsb $FF.b		; 04 FF
	pea $00FF.w		; F4 FF 00
	asl $1F.b		; 06 1F
	inc $18.b		; E6 18
	ora $03.b,X		; 15 03
	asl $0404.w		; 0E 04 04
	trb $E31C.w		; 1C 1C E3
	sbc $E3.b,S		; E3 E3
	cpx $1B.b		; E4 1B
	trb $0303.w		; 1C 03 03
	tsb $04.b		; 04 04
	sbc $157FFF.l,X		; FF FF 7F 15
	php		; 08
	pea $FFFC.w		; F4 FC FF
	sbc $D7FB3C.l,X		; FF 3C FB D7
	sbc ($EB.b,S),Y		; F3 EB
	sbc [$FB.b],Y		; F7 FB
	sbc $FF3FFB.l,X		; FF FB 3F FF
	cpx #$28.b		; E0 28
	php		; 08
	php		; 08
	wai		; CB
	bpl  60.b		; 10 3C
	clc		; 18
	tsb $F804.w		; 0C 04 F8
	sbc $804551.l,X		; FF 51 45 80
	bra 112.b		; 80 70
	bcc -20.b		; 90 EC
	pea $FEFA.w		; F4 FA FE
	sbc $E3E3.w,X		; FD E3 E3
	and ($0D.b),Y		; 31 0D
	and $7080.w,X		; 3D 80 70
	tsb $3C02.w		; 0C 02 3C
	eor [$B7.b]		; 47 B7
	ora $F3.b,S		; 03 F3
	eor $E0.b,S		; 43 E0
	tsb $48.b		; 04 48
	bra  32.b		; 80 20
	bra  16.b		; 80 10
	rti		; 40

	bra  31.b		; 80 1F
	eor $40E020.l,X		; 5F 20 E0 40
	cpy #$80.b		; C0 80
	bra  -1.b		; 80 FF
	sbc $C00001.l,X		; FF 01 00 C0
	sbc $7FFFBF.l,X		; FF BF FF 7F
	sbc $7FFFBF.l,X		; FF BF FF 7F
	sbc $EFFFF6.l,X		; FF F6 FF EF
	sbc $DBFFFD.l,X		; FF FD FF DB
	sbc $0003F3.l,X		; FF F3 03 00
	ora $FC.b,S		; 03 FC
	trb $201C.w		; 1C 1C 20
	jsr $4040.w		; 20 40 40
	bra -128.b		; 80 80
	ora $03.b,S		; 03 03
	tsb $04.b		; 04 04
	sbc $FFFFFF.l,X		; FF FF FF FF
	eor $41.b,X		; 55 41
	sbc [$F3.b],Y		; F7 F3
	sbc $EF.b,S		; E3 EF
	sta $077FB7.l		; 8F B7 7F 07
	and $FFFF77.l,X		; 3F 77 FF FF
	rol $A0FE.w,X		; 3E FE A0
	sbc ($7A.b,X)		; E1 7A
	tsb $7838.w		; 0C 38 78
	pha		; 48
	ora ($55.b,X)		; 01 55
	sbc $FFC003.l,X		; FF 03 C0 FF
	clc		; 18
	asl $FD07.w,X		; 1E 07 FD
	jsr ($E2E2.w,X)		; FC E2 E2
	cmp $3619.w,Y		; D9 19 36
	inc $FF.b		; E6 FF
	sbc $51E0E0.l,X		; FF E0 E0 51
	sbc $FC03.w,X		; FD 03 FC
	sbc $900706.l,X		; FF 06 07 90
	sta $2C40.w,X		; 9D 40 2C
	tsb $62.b		; 04 62
	rts		; 60

	sbc $4040FF.l,X		; FF FF 40 40
	tsb $04.b		; 04 04
	rts		; 60

	rts		; 60

	sbc $4155FF.l,X		; FF FF 55 41
	bit $A1BD.w,X		; 3C BD A1
	lda [$85.b]		; A7 85
	txy		; 9B
	sta ($AF.b),Y		; 91 AF
	lda $DE.b,X		; B5 DE
	cpy #$4C.b		; C0 4C
	rti		; 40

	rti		; 40

	rti		; 40

	jsr $065E.w		; 20 5E 06
	asl $6138.w,X		; 1E 38 61
	jsr $F5FB.w		; 20 FB F5
	eor [$F3.b],Y		; 57 F3
	dec $06F1.w		; CE F1 06
	cop $04.b		; 02 04
	trb $B80C.w		; 1C 0C B8
	mvp $80,$1C		; 44 1C 80
	bit $C740.w,X		; 3C 40 C7
	cpy #$11.b		; C0 11
	ora [$88.b]		; 07 88
	eor [$A0.b],Y		; 57 A0
	stx $40D1.w		; 8E D1 40
	adc $0FF37F.l		; 6F 7F F3 0F
	brk $32.b		; 00 32
	jmp ($2020.w)		; 6C 20 20
	tsb $04.b		; 04 04
	jsl $401010.l		; 22 10 10 40
	bra   8.b		; 80 08
	php		; 08
	ora $20201F.l,X		; 1F 1F 20 20
	sbc $5141FF.l,X		; FF FF 41 51
	jsr $2040.w		; 20 40 20
	jsr $2020.w		; 20 20 20
	bmi  32.b		; 30 20
	rts		; 60

	jsr $3030.w		; 20 30 30
	dec A		; 3A
	bmi 120.b		; 30 78
	plp		; 28
	sbc $10.b,X		; F5 10
	rti		; 40

	asl A		; 0A
	rti		; 40

	sbc $D555FF.l,X		; FF FF 55 D5
	ora $BE7E5F.l,X		; 1F 5F 7E BE
	sta $1B01.w,X		; 9D 01 1B
	sbc [$EF.b],Y		; F7 EF
	eor $23AF4F.l,X		; 5F 4F AF 23
	tda		; 7B
	ldx $A0.b,Y		; B6 A0
	cmp ($40.b),Y		; D1 40
	stz $B0EC.w		; 9C EC B0
	cpx #$D8.b		; E0 D8
	asl $C0.b,X		; 16 C0
	ora $FF.b,X		; 15 FF
	ora $00.b,S		; 03 00
	sbc $02C0C0.l,X		; FF C0 C0 02
	cop $06.b		; 02 06
	asl $19.b		; 06 19
	ora $22A2.w,Y		; 19 A2 22
	sbc $FD55FF.l,X		; FF FF 55 FD
	ora $00.b,S		; 03 00
	sbc [$6C.b]		; E7 6C
	ror $07.b,X		; 76 07
	ora $70.b		; 05 70
	bvs -80.b		; 70 B0
	bcs  64.b		; B0 40
	rti		; 40

	sbc $0FFFFF.l,X		; FF FF FF 0F
	ora $00.b,S		; 03 00
	cpx #$1F.b		; E0 1F
	rol $322E.w		; 2E 2E 32
	and ($04.b)		; 32 04
	tsb $0F.b		; 04 0F
	ora $FF0808.l		; 0F 08 08 FF
	sbc $01FFFF.l,X		; FF FF FF 01
	brk $7E.b		; 00 7E
	inc $FF83.w,X		; FE 83 FF
	sbc $FDFF.w,Y		; F9 FF FD
	sbc $7CFF7B.l,X		; FF 7B FF 7C
	sbc $7FFF80.l,X		; FF 80 FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora $54.b		; 05 54
	jsr ($FDFF.w,X)		; FC FF FD
	inc $FFFF.w,X		; FE FF FF
	sbc $F8F8FF.l,X		; FF FF F8 F8
	jsr ($F0F2.w,X)		; FC F2 F0
	sbc $FCFFFE.l,X		; FF FE FF FC
	ora $0E.b,S		; 03 0E
	ora $FFFF01.l		; 0F 01 FF FF
	eor $15.b,X		; 55 15
	ora $1F9F1F.l,X		; 1F 1F 9F 1F
	cmp $6F4F9F.l,X		; DF 9F 4F 6F
	cmp $1B.b,S		; C3 1B
	asl $3930.w		; 0E 30 39
	and $FF3D3D.l,X		; 3F 3D 3D FF
	bra  64.b		; 80 40
	jsr $3ED8.w		; 20 D8 3E
	asl $3F.b		; 06 3F
	sbc [$03.b],Y		; F7 03
	brk $FB.b		; 00 FB
	tsb $04.b		; 04 04
	tsb $01.b		; 04 01
	ora ($02.b,X)		; 01 02
	cop $80.b		; 02 80
	ldy $20.b		; A4 20
	rts		; 60

	rts		; 60

	sbc $FCCFFF.l,X		; FF FF CF FC
	ora $0C.b,S		; 03 0C
	clv		; B8
	eor [$C1.b]		; 47 C1
	cmp ($A0.b,X)		; C1 A0
	bra  52.b		; 80 34
	bit $61.b		; 24 61
	ora ($0A.b,X)		; 01 0A
	cop $FF.b		; 02 FF
	sbc $FF2020.l,X		; FF 20 20 FF
	sbc $C0CFF5.l,X		; FF F5 CF C0
	cmp $A29C.w,X		; DD 9C A2
	lda ($BC.b,X)		; A1 BC
	ora $6E43.w		; 0D 43 6E
	lsr $4041.w,X		; 5E 41 40
	cmp ($FF.b,X)		; C1 FF
	sbc $BF.b,S		; E3 BF
	cmp ($3E.b,X)		; C1 3E
	ora $4F01.w,X		; 1D 01 4F
	ora $3E3F3F.l		; 0F 3F 3F 3E
	rol $015D.w,X		; 3E 5D 01
	sbc $F5F5FF.l,X		; FF FF F5 F5
	ora $33.b,S		; 03 33
	and ($E9.b),Y		; 31 E9
	and ($AD.b,X)		; 21 AD
	ror $7A5C.w,X		; 7E 5C 7A
	ldx $FABA.w,Y		; BE BA FA
	cmp ($F4.b)		; D2 F4
	lda $38.b		; A5 38
	ldx $D8.b,Y		; B6 D8
	sty $A280.w		; 8C 80 A2
	bra  68.b		; 80 44
	rti		; 40

	inc $C0.b		; E6 C0
	sbc $FF60.w,X		; FD 60 FF
	sbc $495515.l,X		; FF 15 55 49
	xba		; EB
	dec $F6DE.w		; CE DE F6
	cmp $55.b,X		; D5 55
	cmp $D3.b,X		; D5 D3
	cmp ($B6.b),Y		; D1 B6
	sta ($7F.b)		; 92 7F
	rol $C8.b		; 26 C8
	eor $1022.w,Y		; 59 22 10
	and $02.b,S		; 23 02
	bit $59.b		; 24 59
	sta ($FF.b),Y		; 91 FF
	sbc $321451.l,X		; FF 51 14 32
	tda		; 7B
	adc $2C6D.w		; 6D 6D 2C
	ldx $B6EF.w		; AE EF B6
	phx		; DA
	phx		; DA
	cmp $DEDD.w,Y		; D9 DD DE
	sbc $ADAD.w		; ED AD AD
	sta ($02.b,S),Y		; 93 02
	eor $3204.w,Y		; 59 04 32
	sbc $000FC7.l,X		; FF C7 0F 00
	tya		; 98
	ldy $88C8.w		; AC C8 88
	rti		; 40

	rti		; 40

	ldy #$20.b		; A0 20
	bra -128.b		; 80 80
	bpl  64.b		; 10 40
	rti		; 40

	bvs 112.b		; 70 70
	dey		; 88
	dey		; 88
	ora $000333.l,X		; 1F 33 03 00
	phd		; 0B
	bit $08.b		; 24 08
	php		; 08
	ora ($04.b),Y		; 11 04
	tsb $22.b		; 04 22
	rti		; 40

	ora $FFFF1F.l,X		; 1F 1F FF FF
	ora $15.b,X		; 15 15
	bpl  10.b		; 10 0A
	tas		; 1B
	inc A		; 1A
	tsa		; 3B
	ora $2929.w,Y		; 19 29 29
	adc $6828.w,Y		; 79 28 68
	pha		; 48
	cld		; D8
	pha		; 48
	tya		; 98
	tya		; 98
	and $2001.w,Y		; 39 01 20
	bvc  32.b		; 50 20
	bcc -57.b		; 90 C7
	lda ($C3.b,S),Y		; B3 C3
	cmp $80.b,S		; C3 80
	bra -128.b		; 80 80
	bpl  16.b		; 10 10
	rti		; 40

	rti		; 40

	bvc -128.b		; 50 80
	rts		; 60

	adc $10107F.l,X		; 7F 7F 10 10
	rti		; 40

	rti		; 40

	jsr $FF20.w		; 20 20 FF
	inc $DD55.w,X		; FE 55 DD
	php		; 08
	bpl  26.b		; 10 1A
	tsb $070E.w		; 0C 0E 07
	ora [$01.b]		; 07 01
	asl $07.b		; 06 07
	cop $02.b		; 02 02
	and $4601.w,Y		; 39 01 46
	sta $0916.w,Y		; 99 16 09
	asl $06.b		; 06 06
	ora $01.b		; 05 01
	dec A		; 3A
	eor [$01.b]		; 47 01
	sbc $D95FFC.l,X		; FF FC 5F D9
	and ($47.b,S),Y		; 33 47
	tsb $20.b		; 04 20
	ora ($10.b,X)		; 01 10
	and ($40.b,X)		; 21 40
	tsb $180C.w		; 0C 0C 18
	plp		; 28
	asl $06.b		; 06 06
	ora $1F.b,S		; 03 1F
	ora ($10.b,X)		; 01 10
	tsb $02.b		; 04 02
	ora [$08.b]		; 07 08
	asl A		; 0A
	ora ($04.b,X)		; 01 04
	sbc $55571E.l,X		; FF 1E 57 55
	and ($7B.b,S),Y		; 33 7B
	mvp $90,$0C		; 44 0C 90
	bra   9.b		; 80 09
	ora $1010.w,Y		; 19 10 10
	ora ($01.b,X)		; 01 01
	and ($FF.b,S),Y		; 33 FF
	bpl  69.b		; 10 45
	bra   8.b		; 80 08
	jsl $FB0330.l		; 22 30 03 FB
	sbc $0C555F.l,X		; FF 5F 55 0C
	rol $090C.w,X		; 3E 0C 09
	sed		; F8
	sta $011C80.l		; 8F 80 1C 01
	and ($07.b),Y		; 31 07
	sta [$9E.b],Y		; 97 9E
	and $C0C108.l,X		; 3F 08 C1 C0
	sbc ($F0.b,S),Y		; F3 F0
	ora [$7F.b]		; 07 7F
	inc $60F8.w,X		; FE F8 60
	sbc ($FF.b),Y		; F1 FF
	sbc $3CEBD5.l,X		; FF D5 EB 3C
	asl $61.b		; 06 61
	tsb $3AEB.w		; 0C EB 3A
	asl $7E79.w,X		; 1E 79 7E
	sbc [$F9.b]		; E7 F9
	stx $FD.b		; 86 FD
	ora $C7.b,S		; 03 C7
	sec		; 38
	sbc $C4F3.w,Y		; F9 F3 C4
	bra   1.b		; 80 01
	cop $07.b		; 02 07
	ora [$7F.b]		; 07 7F
	cmp [$38.b]		; C7 38
	sta $555659.l,X		; 9F 59 56 55
	ora ($81.b,X)		; 01 81
	pha		; 48
	cpx $8024.w		; EC 24 80
	bra   2.b		; 80 02
	cop $08.b		; 02 08
	sbc $244801.l,X		; FF 01 48 24
	ora ($80.b,X)		; 01 80
	php		; 08
	ora $F3.b,S		; 03 F3
	ora [$57.b]		; 07 57
	ora $BB.b,X		; 15 BB
	tyx		; BB
	asl $06.b		; 06 06
	rts		; 60

	rts		; 60

	ora $22.b,S		; 03 22
	and ($B3.b,X)		; 21 B3
	sbc $05200A.l,X		; FF 0A 20 05
	rti		; 40

	cop $21.b		; 02 21
	ora ($28.b,X)		; 01 28
	sta ($30.b),Y		; 91 30
	sbc $FF8080.l,X		; FF 80 80 FF
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	and #$F4.b		; 29 F4
	ora $50.b,X		; 15 50
	sbc $010202.l,X		; FF 02 02 01
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	sbc $010202.l,X		; FF 02 02 01
	cop $FF.b		; 02 FF
	sbc $DFD9D7.l,X		; FF D7 D9 DF
	ldx $41.b		; A6 41
	stx $5946.w		; 8E 46 59
	xba		; EB
	asl $93.b,X		; 16 93
	lda [$A7.b]		; A7 A7
	eor $203018.l		; 4F 18 30 20
	cpy #$40.b		; C0 40
	ora $014080.l,X		; 1F 80 40 01
	jsr $4081.w		; 20 81 40
	ora $F58010.l		; 0F 10 80 F5
	sbc $A05F6A.l,X		; FF 6A 5F A0
	ldy #$C0.b		; A0 C0
	cpx #$20.b		; E0 20
	bpl -40.b		; 10 D8
	iny		; C8
	bcs -12.b		; B0 F4
	jmp ($1438.w)		; 6C 38 14
	tsb $30C0.w		; 0C C0 30
	php		; 08
	cpx #$F0.b		; E0 F0
	tsb $10.b		; 04 10
	cop $80.b		; 02 80
	rts		; 60

	sbc $1515FF.l,X		; FF FF 15 15
	ora ($B7.b)		; 12 B7
	lda ($DB.b,S),Y		; B3 DB
	cmp $EBE9DB.l,X		; DF DB E9 EB
	xba		; EB
	plb		; AB
	lda [$B7.b]		; A7 B7
	sbc $F7F7F7.l,X		; FF F7 F7 F7
	iny		; C8
	pla		; 68
	tsb $40.b		; 04 40
	bpl   8.b		; 10 08
	sbc ($C0.b,S),Y		; F3 C0
	ora $C0.b,S		; 03 C0
	rts		; 60

	sty $24.b		; 84 24
	cop $80.b		; 02 80
	bra   4.b		; 80 04
	tsb $F8.b		; 04 F8
	sed		; F8
	tsb $04.b		; 04 04
	xce		; FB
	jmp ($0CCF.w,X)		; 7C CF 0C
	tsb $58.b		; 04 58
	ora ($28.b,X)		; 01 28
	php		; 08
	tsb $03.b		; 04 03
	ora ($06.b,X)		; 01 06
	clc		; 18
	bpl   3.b		; 10 03
	and $01013F.l,X		; 3F 3F 01 01
	ora $03.b,S		; 03 03
	asl $06.b		; 06 06
	inc $51FF.w,X		; FE FF 51
	eor ($98.b),Y		; 51 98
	clc		; 18
	clc		; 18
	dey		; 88
	plp		; 28
	clv		; B8
	tay		; A8
	clv		; B8
	cld		; D8
	bvc  84.b		; 50 54
	bit $B4.b,X		; 34 B4
	pei ($B4.b)		; D4 B4
	cpy $10A0.w		; CC A0 10
	rts		; 60

	bra  64.b		; 80 40
	sbc $005107.l,X		; FF 07 51 00
	php		; 08
	bmi  48.b		; 30 30
	bpl  28.b		; 10 1C
	php		; 08
	ora $0706.w		; 0D 06 07
	ora ($01.b,X)		; 01 01
	ora [$04.b]		; 07 04
	ora $DF.b,S		; 03 DF
	sbc $63EFC5.l,X		; FF C5 EF 63
	sbc $32.b,S		; E3 32
	bit $EB1C.w,X		; 3C 1C EB
	and $57B7.w,Y		; 39 B7 57
	ldy $7EEC.w,X		; BC EC 7E
	ror $B8.b,X		; 76 B8
	sec		; 38
	trb $383C.w		; 1C 3C 38
	ora ($14.b,X)		; 01 14
	.db $42, $0D		; 42 0D
	jsr $0214.w		; 20 14 02
	pha		; 48
	lda $057B3F.l,X		; BF 3F 7B 05
	php		; 08
	ora $130A.w,Y		; 19 0A 13
	ora $03.b,S		; 03 03
	tsb $0101.w		; 0C 01 01
	cop $02.b		; 02 02
	cop $04.b		; 02 04
	tsb $03.b		; 04 03
	cop $02.b		; 02 02
	ora ($04.b,X)		; 01 04
	ora ($02.b,X)		; 01 02
	sbc $6017FF.l,X		; FF FF 17 60
	sbc $80C0FF.l,X		; FF FF C0 80
	bmi  96.b		; 30 60
	pha		; 48
	sei		; 78
	and [$1C.b],Y		; 37 1C
	pha		; 48
	asl $84.b		; 06 84
	cmp $A2.b,S		; C3 A2
	bra  63.b		; 80 3F
	sbc $800738.l,X		; FF 38 07 80
	bra -47.b		; 80 D1
	sbc $3F57C1.l,X		; FF C1 57 3F
	jsr $445A.w		; 20 5A 44
	cmp $57FC.w,X		; DD FC 57
	adc [$5F.b],Y		; 77 5F
	adc $FF0B2B.l,X		; 7F 2B 0B FF
	jsr ($83B8.w,X)		; FC B8 83
	eor [$44.b]		; 47 44
	mvp $89,$91		; 44 91 89
	cmp ($45.b),Y		; D1 45
	sbc $0202FF.l,X		; FF FF 02 02
	sta ($42.b,X)		; 81 42
	and $FF81.w,X		; 3D 81 FF
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	bra -128.b		; 80 80
	cop $02.b		; 02 02
	rti		; 40

	rti		; 40

	adc [$7F.b],Y		; 77 7F
	eor [$55.b],Y		; 57 55
	sbc [$F7.b]		; E7 F7
	trb $08.b		; 14 08
	tsb $0102.w		; 0C 02 01
	asl $08.b		; 06 08
	ora $0E.b,S		; 03 0E
	ora ($81.b,X)		; 01 81
	sbc $FF.b,S		; E3 FF
	jsr $803B.w		; 20 3B 80
	pha		; 48
	bvc  92.b		; 50 5C
	jsl $1765FF.l		; 22 FF 65 17
	eor $FF.b,X		; 55 FF
	sbc $C01B3F.l,X		; FF 3F 1B C0
	adc $4164BE.l,X		; 7F BE 64 41
	bra -128.b		; 80 80
	rti		; 40

	inc $7EFF.w,X		; FE FF 7E
	bra 126.b		; 80 7E
	.db $42, $03		; 42 03
	jsr $FFFB.w		; 20 FB FF
	sbc $57.b,X		; F5 57
	sbc $0FC080.l,X		; FF 80 C0 0F
	rti		; 40

	ror $06.b,X		; 76 06
	lda #$69.b		; A9 69
	jsr $38A0.w		; 20 A0 38
	sed		; F8
	bra -128.b		; 80 80
	adc $0747C0.l,X		; 7F C0 47 07
	ply		; 7A
	sei		; 78
	ldy $80.b		; A4 80
	and ($20.b,X)		; 21 20
	trb $FF.b		; 14 FF
	sbc $FC42FF.l,X		; FF FF 42 FC
	asl $94.b		; 06 94
	lsr A		; 4A
	tax		; AA
	cmp $0F.b,X		; D5 0F
	bvs -43.b		; 70 D5
.ACCU 8
	sep #$60		; E2 60
	ora $80C0.w,Y		; 19 C0 80
	php		; 08
	and [$F8.b],Y		; 37 F8
	ora ($48.b,X)		; 01 48
	cop $D0.b		; 02 D0
	sty $60.b		; 84 60
	clc		; 18
	rts		; 60

	bra  -1.b		; 80 FF
	cmp $7F5557.l,X		; DF 57 55 7F
	sbc $33078F.l,X		; FF 8F 07 33
	ora $3078CC.l,X		; 1F CC 78 30
	cpx #$40.b		; E0 40
	bra -128.b		; 80 80
	ora $FF380F.l,X		; 1F 0F 38 FF
	cli		; 58
	rts		; 60

	ora [$18.b]		; 07 18
	jsr $704F.w		; 20 4F 70
	sbc $4577DF.l,X		; FF DF 77 45
	sed		; F8
	jsr ($80C4.w,X)		; FC C4 80
	jsr $D0E2.w		; 20 E2 D0
	bvs  58.b		; 70 3A
	clc		; 18
	tsb $0C.b		; 04 0C
	asl A		; 0A
	bra   6.b		; 80 06
	bvs  -2.b		; 70 FE
	rts		; 60

	clc		; 18
	ora ($88.b,X)		; 01 88
	rti		; 40

	jsr $FFD0.w		; 20 D0 FF
	adc ($C7.b),Y		; 71 C7
	cpy $D0.b		; C4 D0
	cmp $14.b		; C5 14
	php		; 08
	jsr $0223.w		; 20 23 02
	ora ($08.b,X)		; 01 08
	jsl $801130.l		; 22 30 11 80
	sbc $012040.l,X		; FF 40 20 01
	jsr $0240.w		; 20 40 02
	sbc $007F11.l,X		; FF 11 7F 00
	bit #$C9.b		; 89 C9
	lda $E9.b		; A5 E9
	lda ($A0.b)		; B2 A0
	lda ($80.b,X)		; A1 80
	rti		; 40

	bra   6.b		; 80 06
	beq  25.b		; F0 19
	bmi  96.b		; 30 60
	cpy #$80.b		; C0 80
	brk $5C.b		; 00 5C
	brk $A0.b		; 00 A0
	rti		; 40

	bra 120.b		; 80 78
	eor $003840.l		; 4F 40 38 00
	inc $5401.w,X		; FE 01 54
	ora $21330F.l		; 0F 0F 33 21
	lsr $BF6D.w,X		; 5E 6D BF
	stz $330C.w,X		; 9E 0C 33
	rti		; 40

	brk $FE.b		; 00 FE
	ora ($54.b,X)		; 01 54
	cpy #$C0.b		; C0 C0
	bmi  80.b		; 30 50
	inx		; E8
	clv		; B8
	stz $44.b,X		; 74 44
	cpy #$B0.b		; C0 B0
	iny		; C8
	ldx #$8A.b		; A2 8A
	sbc ($CF.b,S),Y		; F3 CF
	cop $06.b		; 02 06
	ora ($03.b,X)		; 01 03
	cop $1B.b		; 02 1B
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	sbc $D755FF.l,X		; FF FF 55 D7
	cpy #$DE.b		; C0 DE
	ora ($6D.b)		; 12 6D
	pha		; 48
	tsx		; BA
	cpy #$74.b		; C0 74
	sty $F4.b,X		; 94 F4
	lda ($E9.b,X)		; A1 E9
	ora #$39.b		; 09 39
	and $1EFD.w,X		; 3D FD 1E
	adc $0186E3.l,X		; 7F E3 86 01
	ora ($0D.b,X)		; 01 0D
	bmi -57.b		; 30 C7
	ora [$7E.b]		; 07 7E
	inc $59FF.w		; EE FF 59
	pea $08F0.w		; F4 F0 08
	sei		; 78
	cop $BC.b		; 02 BC
	ora ($46.b,X)		; 01 46
	bvs  48.b		; 70 30
	bpl  32.b		; 10 20
	php		; 08
	php		; 08
	sed		; F8
	sed		; F8
	php		; 08
	sei		; 78
	cpy $BC.b		; C4 BC
	tsb $36.b		; 04 36
	dey		; 88
	sec		; 38
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	jsr ($FBE8.w,X)		; FC E8 FB
	eor ($50.b),Y		; 51 50
	bra -64.b		; 80 C0
	cpy #$A0.b		; C0 A0
	rts		; 60

	rts		; 60

	bpl  48.b		; 10 30
	bcc -112.b		; 90 90
	bvc  80.b		; 50 50
	bra  64.b		; 80 40
	ldy #$C0.b		; A0 C0
	sbc $5511FF.l,X		; FF FF 11 55
	bra -96.b		; 80 A0
	cpx #$E0.b		; E0 E0
	cpx #$D0.b		; E0 D0
	beq -16.b		; F0 F0
	bmi  40.b		; 30 28
	tya		; 98
	clc		; 18
	dey		; 88
	pha		; 48
	iny		; C8
	tay		; A8
	inx		; E8
	jsr $8010.w		; 20 10 80
	cpy #$60.b		; C0 60
	sbc $11057F.l,X		; FF 7F 05 11
	bra -88.b		; 80 A8
	sed		; F8
	inx		; E8
	sei		; 78
	bvs  48.b		; 70 30
	bmi 112.b		; 30 70
	jsr $4060.w		; 20 60 40
	rti		; 40

	bra -128.b		; 80 80
	bne  16.b		; D0 10
	rti		; 40

	bra  -1.b		; 80 FF
	adc $3D5441.l,X		; 7F 41 54 3D
	and $3939.w,X		; 3D 39 39
	ora $1A19.w,Y		; 19 19 1A
	clc		; 18
	clc		; 18
	clc		; 18
	ora #$08.b		; 09 08
	phd		; 0B
	ora #$01.b		; 09 01
	sbc $020102.l,X		; FF 02 01 02
	ora ($FF.b,X)		; 01 FF
	sbc $325505.l,X		; FF 05 55 32
	sbc ($FB.b,S),Y		; F3 FB
	sbc ($E3.b,S),Y		; F3 E3
	sbc $69.b,S		; E3 69
	sbc #$DC.b		; E9 DC
	sbc $743C.w,Y		; F9 3C 74
	trb $0E3A.w		; 1C 3A 0E
	sta $087E.w		; 8D 7E 08
	tsb $08.b		; 04 08
	asl $83.b		; 06 83
	sbc $FD55FF.l,X		; FF FF 55 FD
	cmp $B3.b,S		; C3 B3
	sbc ($D1.b),Y		; F1 D1
	bne -40.b		; D0 D8
	phx		; DA
	cpx $B3E2.w		; EC E2 B3
	ldx $39A0.w		; AE A0 39
	bpl -103.b		; 10 99
	ora $2003.w		; 0D 03 20
	php		; 08
	rol $51.b,X		; 36 51
	asl $270E.w		; 0E 0E 27
	ora [$93.b]		; 07 93
	ora $BF.b,S		; 03 BF
	sbc $5C57FF.l,X		; FF FF 57 5C
	lda $C4.b,S		; A3 C4
	ora ($62.b,S),Y		; 13 62
	ora #$07.b		; 09 07
	lda ($BF.b,X)		; A1 BF
	ora $01FEE0.l		; 0F E0 FE 01
	sed		; F8
	asl $DD.b		; 06 DD
	jmp.w [$ECED]		; DC ED EC
	inc $F6.b,X		; F6 F6
	sed		; F8
	sed		; F8
	rti		; 40

	rti		; 40

	ora $77F9FE.l,X		; 1F FE F9 77
	ora $0483.w,X		; 1D 83 04
	stz $A0BE.w		; 9C BE A0
	ora $C0.b		; 05 C0
	cop $40.b		; 02 40
	cop $02.b		; 02 02
	php		; 08
	ora ($FC.b,X)		; 01 FC
	tsb $02.b		; 04 02
	ora ($41.b,X)		; 01 41
	ora ($00.b,X)		; 01 00
	sbc $FF0201.l,X		; FF 01 02 FF
	cmp $D555DF.l,X		; DF DF 55 D5
	cpy #$FF.b		; C0 FF
	sbc [$0F.b]		; E7 0F
	bvs  90.b		; 70 5A
	ora ($DD.b),Y		; 11 DD
	rol $9F2E.w,X		; 3E 2E 9F
	cmp $41.b		; C5 41
	cmp $E0.b		; C5 E0
	ora $3ED120.l		; 0F 20 D1 3E
	sta $01C603.l,X		; 9F 03 C6 01
	sbc $FF15FF.l,X		; FF FF 15 FF
	phy		; 5A
	cmp $F2.b,S		; C3 F2
	ora $D2.b,S		; 03 D2
	ora ($9E.b,S),Y		; 13 9E
	sbc ($38.b,S),Y		; F3 38
	sta $3DF3.w		; 8D F3 3D
	inc $18.b		; E6 18
	cmp $FC3C30.l,X		; DF 30 3C FC
	cpx $0C42.w		; EC 42 0C
	ora ($3C.b)		; 12 3C
	ora [$F8.b]		; 07 F8
	ora $EBFFF0.l		; 0F F0 FF EB
	adc $3C1842.l,X		; 7F 42 18 3C
	mvn $60,$60		; 54 60 60
	bvs  40.b		; 70 28
	jsr $1804.w		; 20 04 18
	tsb $04.b		; 04 04
	bit $28.b		; 24 28
	bpl  -1.b		; 10 FF
	bcc -64.b		; 90 C0
	rti		; 40

	jsr $1120.w		; 20 20 11
	jsr $CDCF.w		; 20 CF CD
	eor $4A.b,S		; 43 4A
	bit $2C.b		; 24 2C
	plp		; 28
	bpl  84.b		; 10 54
	rti		; 40

	rti		; 40

	jsr $8804.w		; 20 04 88
	bra -64.b		; 80 C0
	asl $2040.w,X		; 1E 40 20
	cop $80.b		; 02 80
	adc ($77.b),Y		; 71 77
	brk $FC.b		; 00 FC
	php		; 08
	trb $0808.w		; 1C 08 08
	rol $14.b,X		; 36 14
	trb $7B.b		; 14 7B
	jsl $101032.l		; 22 32 10 10
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	sbc $05537F.l,X		; FF 7F 53 05
	ldx $7F.b,Y		; B6 7F
	cmp [$7F.b]		; C7 7F
	sbc $F97D.w,X		; FD 7D F9
	adc $41C1.w,Y		; 79 C1 41
	jsl $3E5D63.l		; 22 63 5D 3E
	trb $3030.w		; 1C 30 30
	cop $06.b		; 02 06
	rol $011C.w,X		; 3E 1C 01
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
	bra -65.b		; 80 BF
	lda $AEEF.w		; AD EF AE
	xba		; EB
	plb		; AB
	lda $AEEBFE.l,X		; BF FE EB AE
	lda $AA.b		; A5 AA
	xba		; EB
	plb		; AB
	tax		; AA
	tax		; AA
	nop		; EA
	tyx		; BB
	sbc $6A7F.w,X		; FD 7F 6A
	ror A		; 6A
	cop $01.b		; 02 01
	lsr $00.b,X		; 56 00
	sbc $0008.w		; ED 08 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $1505.w		; 0D 05 15
	ora $57152F.l		; 0F 2F 15 57
	plp		; 28
	ror $9F10.w		; 6E 10 9F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $03.b		; 02 03
	phd		; 0B
	asl A		; 0A
	ora ($19.b,S),Y		; 13 19
	and $183B.w		; 2D 3B 18
	and [$7E.b],Y		; 37 7E
	adc $A0F000.l		; 6F 00 F0 A0
	tay		; A8
	bne -40.b		; D0 D8
	bne -40.b		; D0 D8
	bcs -72.b		; B0 B8
	rts		; 60

	pla		; 68
	cpx #$E8.b		; E0 E8
	rts		; 60

	sbc ($00.b,S),Y		; F3 00
	brk $50.b		; 00 50
	bvs  32.b		; 70 20
	bcs -32.b		; B0 E0
	bmi -96.b		; 30 A0
	bne 112.b		; D0 70
	bne -48.b		; D0 D0
	bcc  64.b		; 90 40
	bra   0.b		; 80 00
	sta $00.b,S		; 83 00
	ora ($01.b,X)		; 01 01
	ora ($F0.b,X)		; 01 F0
	ora ($78.b,X)		; 01 78
	sei		; 78
	cpy $E2AC.w		; CC AC E2
	nop		; EA
	lda [$F7.b]		; A7 F7
	sbc ($55.b),Y		; F1 55
	eor $C3.b,S		; 43 C3
	sta $FEBF.w		; 8D BF FE
	ldx $0078.w,Y		; BE 78 00
	sty $E278.w		; 8C 78 E2
	trb $7EA7.w		; 1C A7 7E
	eor ($FE.b),Y		; 51 FE
	eor $FE.b,S		; 43 FE
	sta $BEFE.w		; 8D FE BE
	jsr ($3DFF.w,X)		; FC FF 3D
	cmp $724030.l,X		; DF 30 40 72
	.db $42, $3B		; 42 3B
	stx $80.b		; 86 80
	sta $4D.b		; 85 4D
	ora ($02.b,X)		; 01 02
	bra   2.b		; 80 02
	asl $8D.b		; 06 8D
	ora $0B0B.w		; 0D 0B 0B
	bra   5.b		; 80 05
	ora $02.b		; 05 02
	cop $C6.b		; 02 C6
	cmp ($86.b,X)		; C1 86
	sta ($0E.b,X)		; 81 0E
	ora ($0C.b,X)		; 01 0C
	.db $82, $1C, $82		; 82 1C 82
	sei		; 78
	sty $B0.b		; 84 B0
	pha		; 48
	ldy #$50.b		; A0 50
	rol $7EFE.w,X		; 3E FE 7E
	inc $FEFE.w,X		; FE FE FE
	jmp ($7C7C.w,X)		; 7C 7C 7C
	jmp ($7878.w,X)		; 7C 78 78
	bcs -80.b		; B0 B0
	ldy #$A0.b		; A0 A0
	adc $F337F7.l		; 6F F7 37 F3
	and ($41.b,X)		; 21 41
	and ($01.b,X)		; 21 01
	ora ($02.b,X)		; 01 02
	ora $03.b,S		; 03 03
	ora $26.b		; 05 26
	asl $20.b		; 06 20
	rts		; 60

	rol $013F.w,X		; 3E 3F 01
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	asl $06.b		; 06 06
	jsr $2520.w		; 20 20 25
	adc #$0B.b		; 69 0B
	sta ($83.b,S),Y		; 93 83
	ora ($17.b,S),Y		; 13 17
	and [$07.b]		; 27 07
	and [$27.b]		; 27 27
	eor [$87.b]		; 47 87
	eor [$47.b]		; 47 47
	sta [$96.b]		; 87 96
	lda [$6C.b],Y		; B7 6C
	adc $D8EFEC.l		; 6F EC EF D8
	cmp $B8DFD8.l,X		; DF D8 DF B8
	lda $78BFB8.l,X		; BF B8 BF 78
	adc $FCFEFE.l,X		; 7F FE FE FC
	sbc $FAF9.w,X		; FD F9 FA
	sbc ($F4.b)		; F2 F4
	sbc $F8.b,X		; F5 F8
	cpx #$E9.b		; E0 E9
	nop		; EA
	sbc ($C0.b),Y		; F1 C0
	cmp ($01.b)		; D2 01
	sbc $05FE02.l,X		; FF 02 FE 05
	sbc $FB0B.w,X		; FD 0B FB
	ora [$F7.b]		; 07 F7
	asl $F6.b,X		; 16 F6
	asl $2CEE.w		; 0E EE 2C
	cpx $0BFF.w		; EC FF 0B
	sbc $4F00.w,X		; FD 00 4F
	bcc -81.b		; 90 AF
	cli		; 58
	eor $38.b,S		; 43 38
	sta ($44.b,X)		; 81 44
	ora ($83.b,X)		; 01 83
	ora ($6F.b,X)		; 01 6F
	lda [$80.b]		; A7 80
	cmp [$C0.b]		; C7 C0
	sta $80.b,S		; 83 80
	inx		; E8
	bmi -64.b		; 30 C0
	ora ($F0.b),Y		; 11 F0
	ora $0FF9.w,Y		; 19 F9 0F
	tda		; 7B
	cop $6F.b		; 02 6F
	cpx #$00.b		; E0 00
	adc $CF0805.l,X		; 7F 05 08 CF
	ora $E60EEE.l		; 0F EE 0E E6
	asl $F0.b		; 06 F0
	brk $FD.b		; 00 FD
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$78.b]		; 07 78
	.db $82, $FC, $87		; 82 FC 87
	ply		; 7A
	ora $19F4.w		; 0D F4 19
	sbc $39.b		; E5 39
	asl A		; 0A
	adc ($1A.b,S),Y		; 73 1A
	sbc $D2.b,S		; E3 D2
	and $7C.b,S		; 23 7C
	brk $78.b		; 00 78
	brk $F2.b		; 00 F2
	ora $E6.b,S		; 03 E6
	ora [$CF.b]		; 07 CF
	ora $5E1E9E.l		; 0F 9E 1E 5E
	lsr $DEDE.w,X		; 5E DE DE
	ora ($04.b,X)		; 01 04
	brk $06.b		; 00 06
	cop $05.b		; 02 05
	tsb $0A0A.w		; 0C 0A 0A
	ora $171A.w		; 0D 1A 17
	asl $1617.w,X		; 1E 17 16
	ora $010303.l,X		; 1F 03 03 01
	ora ($02.b,X)		; 01 02
	cop $09.b		; 02 09
	ora $08.b		; 05 08
	asl $12.b		; 06 12
	ora $160F16.l		; 0F 16 0F 16
	ora $01D851.l		; 0F 51 D8 01
	sei		; 78
	ora ($88.b),Y		; 11 88
	ora $78.b,S		; 03 78
	and $8792.w		; 2D 92 87
	sei		; 78
	rol $79E1.w,X		; 3E E1 79
	ldx $20.b		; A6 20
	brk $80.b		; 00 80
	bra 112.b		; 80 70
	bvs -128.b		; 70 80
	bra  99.b		; 80 63
	adc $0F.b,S		; 63 0F
	sta $3DDE3E.l		; 8F 3E DE 3D
	cmp $0BEF.w,X		; DD EF 0B
	cmp $03.b,S		; C3 03
	bvc  40.b		; 50 28
	rti		; 40

	ora ($06.b,X)		; 01 06
	txs		; 9A
	dec A		; 3A
	txa		; 8A
	xba		; EB
	inc $D0D0.w,X		; FE D0 D0
	dec A		; 3A
	dec A		; 3A
	nop		; EA
	nop		; EA
	and [$7C.b],Y		; 37 7C
	dec A		; 3A
	adc $5A1F.w,X		; 7D 1F 5A
	ora $47324C.l		; 0F 4C 32 47
	ror $C5.b,X		; 76 C5
	ply		; 7A
	cmp ($3B.b,X)		; C1 3B
	.db $82, $35, $19		; 82 35 19
	ora $2A0D.w,Y		; 19 0D 2A
	tsb $34.b		; 04 34
	cop $3B.b		; 02 3B
	ora ($39.b,X)		; 01 39
	ora ($3D.b,X)		; 01 3D
	ora ($7C.b,X)		; 01 7C
	brk $02.b		; 00 02
	stp		; DB
	brk $3D.b		; 00 3D
	sta ($8F.b,X)		; 81 8F
	cpy #$C6.b		; C0 C6
	beq -15.b		; F0 F1
	sbc $EFEFFF.l,X		; FF FF EF EF
	and [$77.b],Y		; 37 77
	and $CFCF3F.l,X		; 3F 3F CF CF
	adc [$F6.b],Y		; 77 F6
	and $0EF9.w,Y		; 39 F9 0E
	inc $FF00.w,X		; FE 00 FF
	bpl 127.b		; 10 7F
	dey		; 88
	lda $C79C82.l,X		; BF 82 9C C7
	sbc [$8F.b],Y		; F7 8F
	lda $11DF9F.l		; AF 9F DF 11
	cmp ($47.b),Y		; D1 47
	and [$8F.b]		; 27 8F
	sta $E3F1C2.l,X		; 9F C2 F1 E3
	adc $88.b,S		; 63 88
	eor $205F50.l		; 4F 50 5F 20
	and $D83F2E.l,X		; 3F 2E 3F D8
	cmp $0EEF60.l,X		; DF 60 EF 0E
	stx $CED3.w		; 8E D3 CE
	inc $FEFF.w,X		; FE FF FE
	sbc $FDFDFF.l,X		; FF FF FD FD
	sbc $8BFBFF.l,X		; FF FF FB 8B
	sta $32F71F.l		; 8F 1F F7 32
	sbc ($02.b),Y		; F1 02
	sbc $FD02.w,X		; FD 02 FD
	ora $FB.b		; 05 FB
	ora $FB.b		; 05 FB
	phd		; 0B
	sbc [$7B.b],Y		; F7 7B
	sbc [$17.b],Y		; F7 17
	ora $F8FCF4.l		; 0F F4 FC F8
	inx		; E8
	bcc -16.b		; 90 F0
	bcs -48.b		; B0 D0
	bcs -24.b		; B0 E8
	inx		; E8
	ldy $74.b		; A4 74
	sbc ($78.b)		; F2 78
	plx		; FA
	pea $E8F8.w		; F4 F8 E8
	beq -112.b		; F0 90
	cpx #$90.b		; E0 90
	cpx #$B0.b		; E0 B0
	bne -72.b		; D0 B8
	cld		; D8
	jmp $44BC.w		; 4C BC 44
	ldy $00BF.w,X		; BC BF 00
	and $020100.l,X		; 3F 00 01 02
	ora $44.b,S		; 03 44
	tsb $7B.b		; 04 7B
	bit $0101.w,X		; 3C 01 01
	ora $03.b,S		; 03 03
	tsb $04.b		; 04 04
	phd		; 0B
	brk $03.b		; 00 03
	brk $80.b		; 00 80
	rts		; 60

	cpy #$80.b		; C0 80
	bra 119.b		; 80 77
	xce		; FB
	and ($F3.b,S),Y		; 33 F3
	cop $24.b		; 02 24
	bpl  17.b		; 10 11
	bmi   8.b		; 30 08
	php		; 08
	clc		; 18
	php		; 08
	cop $06.b		; 02 06
	ora ($03.b,X)		; 01 03
	tas		; 1B
	tas		; 1B
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	cmp $77.b,S		; C3 77
	eor $31.b,S		; 43 31
	ora [$87.b]		; 07 87
	mvp $02,$04		; 44 04 02
	cop $20.b		; 02 20
	cmp ($C1.b,X)		; C1 C1
	bpl 120.b		; 10 78
	adc $C10204.l,X		; 7F 04 02 C1
	cpy #$FF.b		; C0 FF
	ora $D407DF.l,X		; 1F DF 07 D4
.INDEX 8
	sep #$14		; E2 14
	asl $40.b		; 06 40
	rti		; 40

	plp		; 28
	rts		; 60

	php		; 08
	tsb $8080.w		; 0C 80 80
	bpl  28.b		; 10 1C
	jmp.w [$0404]		; DC 04 04
	rti		; 40

	rts		; 60

	rts		; 60

	php		; 08
	php		; 08
	bra -24.b		; 80 E8
	sbc $01FFF0.l,X		; FF F0 FF 01
	ora [$02.b]		; 07 02
	ora $1E1B.w		; 0D 1B 1E
	and $7F27.w,X		; 3D 27 7F
	phy		; 5A
	tad		; 5B
	jmp ($0101.w)		; 6C 01 01
	cop $07.b		; 02 07
	tas		; 1B
	ora $25.b,S		; 03 25
	ora $2C5A.w,Y		; 19 5A 2C
	eor #$35.b		; 49 35
	ora $38.b		; 05 38
	bpl -17.b		; 10 EF
	inc $10.b		; E6 10
	cmp [$11.b]		; C7 11
	stx $C598.w		; 8E 98 C5
	eor #$E3.b		; 49 E3
	asl A		; 0A
	cmp $070720.l,X		; DF 20 07 07
	bmi  48.b		; 30 30
	sbc $E0EEE0.l		; EF E0 EE E0
	sbc [$E0.b]		; E7 E0
	inc $F0.b,X		; F6 F0
	trb $10.b		; 14 10
	cpx #$E0.b		; E0 E0
	ldx #$43.b		; A2 43
	bit $B3C3.w		; 2C C3 B3
	cmp $906F.w		; CD 6F 90
	eor ($A1.b)		; 52 A1
	txa		; 8A
	adc ($31.b,X)		; 61 31
	dex		; CA
	lda [$58.b]		; A7 58
	ldx $30BE.w,Y		; BE BE 30
	and ($2D.b)		; 32 2D
	bit $5D5C.w		; 2C 5C 5D
	bit $7C3D.w,X		; 3C 3D 7C
	adc $FEFE.w,X		; 7D FE FE
	ror $167E.w,X		; 7E 7E 16
	ora $2C2F3E.l,X		; 1F 3E 2F 2C
	and $7D3E2D.l,X		; 3F 2D 3E 7D
	eor $5A7D5F.l,X		; 5F 5F 7D 5A
	ror $BAFE.w,X		; 7E FE BA
	asl $0F.b,X		; 16 0F
	rol $2C1F.w		; 2E 1F 2C
	ora $5D1F2C.l,X		; 1F 2C 1F 5D
	rol $3E5D.w,X		; 3E 5D 3E
	phy		; 5A
	bit $7CBA.w,X		; 3C BA 7C
	.db $42, $DC		; 42 DC
	cpy $58.b		; C4 58
	dey		; 88
	bcc -119.b		; 90 89
	bcc   7.b		; 90 07
	php		; 08
	cop $05.b		; 02 05
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	phk		; 4B
	phb		; 8B
	eor [$87.b]		; 47 87
	sta $0F8F0F.l		; 8F 0F 8F 0F
	ora [$07.b]		; 07 07
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	jsr $00E0.w		; 20 E0 00
	cpy #$01.b		; C0 01
	cop $02.b		; 02 02
	asl $02.b		; 06 02
	cop $37.b		; 02 37
	cmp $3B4511.l,X		; DF 11 45 3B
	.db $82, $08, $C7		; 82 08 C7
	tsb $94.b		; 04 94
	.db $82, $09, $08		; 82 09 08
	jsr $84C8.w		; 20 C8 84
	jmp ($8004.w,X)		; 7C 04 80
	php		; 08
	bra  48.b		; 80 30
	ora $CD3E40.l		; 0F 40 3E CD
	and ($62.b)		; 32 62
	sta $04DB.w,X		; 9D DB 04
	lda $4A.b,X		; B5 4A
	eor #$B6.b		; 49 B6
	lda [$48.b],Y		; B7 48
	sbc $FBFC.w,X		; FD FC FB
	sbc $E1E3.w,Y		; F9 E3 E1
	sbc $7CF8.w,Y		; F9 F8 7C
	jmp ($7A7A.w,X)		; 7C 7A 7A
	ldx $B6.b,Y		; B6 B6
	cpy $43CD.w		; CC CD 43
	ldy $D8A5.w,X		; BC A5 D8
	and $5A.b		; 25 5A
	adc $E786.w,Y		; 79 86 E7
	clc		; 18
	and $CA.b,X		; 35 CA
	ply		; 7A
	pea $B3CC.w		; F4 CC B3
	ldx $36.b,Y		; B6 36
	dec $DE8E.w		; CE 8E DE
	stz $0686.w,X		; 9E 86 06
	clc		; 18
	cli		; 58
	ora $8777EF.l		; 0F EF 77 87
	sta $7B.b,S		; 83 7B
	ror $DD.b		; 66 DD
	adc ($EF.b,S),Y		; 73 EF
	txy		; 9B
	ror $CD.b,X		; 76 CD
	tsa		; 3B
	stz $3967.w,X		; 9E 67 39
	cmp $54.b		; C5 54
	bit #$2A.b		; 89 2A
	ora ($C4.b),Y		; 11 C4
	tyx		; BB
	sbc $9C.b,S		; E3 9C
	eor ($4F.b)		; 52 4F
	sbc #$E7.b		; E9 E7
	dec $BBD9.w,X		; DE D9 BB
	tsx		; BA
	ror $76.b,X		; 76 76
	inc $FDEE.w		; EE EE FD
	sbc $B5FF7A.l,X		; FF 7A FF B5
	sbc $F67FCB.l,X		; FF CB 7F F6
	lda $BFDD6C.l,X		; BF 6C DD BF
	plx		; FA
	phy		; 5A
	ror $FD.b,X		; 76 FD
	inc $FD7A.w,X		; FE 7A FD
	lda $7B.b,X		; B5 7B
	phk		; 4B
	ldx $B6.b,Y		; B6 B6
	cpy $FA4E.w		; CC 4E FA
	lda $D977.w,X		; BD 77 D9
	plb		; AB
	eor $F5F6.w,Y		; 59 F6 F5
	tax		; AA
	cmp $314EE0.l,X		; DF E0 4E 31
	lda [$18.b]		; A7 18
	cmp ($0C.b,S),Y		; D3 0C
	adc #$86.b		; 69 86
	ldy $43.b		; A4 43
	lsr $E6.b,X		; 56 E6
	tsx		; BA
	phx		; DA
	jsr ($DF3C.w,X)		; FC 3C DF
	cmp $F7EFEF.l,X		; DF EF EF F7
	sbc [$7B.b],Y		; F7 7B
	tda		; 7B
	lda $50BD.w,X		; BD BD 50
	ldy #$60.b		; A0 60
	bra  32.b		; 80 20
	cpy #$C0.b		; C0 C0
	brk $A0.b		; 00 A0
	rti		; 40

	sed		; F8
	brk $F4.b		; 00 F4
	php		; 08
	beq   8.b		; F0 08
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	sed		; F8
	sed		; F8
	beq -16.b		; F0 F0
	sta [$8F.b],Y		; 97 8F
	lda $17A797.l		; AF 97 A7 17
	adc $FF0F9F.l		; 6F 9F 0F FF
	adc $FF60FF.l		; 6F FF 60 FF
	adc ($E1.b,X)		; 61 E1
	bvs  -9.b		; 70 F7
	pla		; 68
	sbc $60EFE8.l		; EF E8 EF 60
	adc $000F00.l		; 6F 00 0F 00
	ora $1E0000.l		; 0F 00 00 1E
	brk $7F.b		; 00 7F
	sbc ($37.b,S),Y		; F3 37
	adc ($19.b),Y		; 71 19
	phy		; 5A
	tsb $04.b		; 04 04
	ora $03.b,S		; 03 03
	cop $A2.b		; 02 A2
	cop $BE.b		; 02 BE
	ldy #$B8.b		; A0 B8
	ora [$A5.b]		; 07 A5
	lda $0304.w,X		; BD 04 03
	ora $02.b,S		; 03 02
	ldy #$BE.b		; A0 BE
	ora [$80.b]		; 07 80
	ldx $FF00.w,Y		; BE 00 FF
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	cop $0E.b		; 02 0E
	clc		; 18
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	asl $04.b		; 06 04
	php		; 08
	php		; 08
	xce		; FB
	and ($F0.b,S),Y		; 33 F0
	ora ($01.b,S),Y		; 13 01
	ora $1C.b,S		; 03 1C
	ora $D13372.l		; 0F 72 33 D1
	cmp $42.b,S		; C3 42
	ora ($01.b,X)		; 01 01
	ora ($1E.b)		; 12 1E
	eor ($61.b),Y		; 51 61
	.db $42, $80		; 42 80
	ora ($C3.b,X)		; 01 C3
	lda $037B43.l		; AF 43 7B 03
	and ($47.b,S),Y		; 33 47
	sbc [$8D.b]		; E7 8D
	adc $4D0D.w		; 6D 0D 4D
	asl $045E.w,X		; 1E 5E 04
	adc $B8.b		; 65 B8
	tda		; 7B
	pea $CCB7.w		; F4 B7 CC
	cmp $921F18.l		; CF 18 1F 92
	sta $A1BFB2.l,X		; 9F B2 BF A1
	lda $9E9A.w		; AD 9A 9E
	lsr $6E.b,X		; 56 6E
	eor $78.b,S		; 43 78
	ldy #$BF.b		; A0 BF
	brk $5F.b		; 00 5F
	bra -65.b		; 80 BF
	cpx #$FF.b		; E0 FF
	sta $1FFC.w		; 8D FC 1F
	bmi -111.b		; 30 91
	bne -121.b		; D0 87
	cpy #$48.b		; C0 48
	rts		; 60

	lda $4DA1.w		; AD A1 4D
	cmp ($00.b,X)		; C1 00
	rts		; 60

	ora $80.b,S		; 03 80
	cpy #$C0.b		; C0 C0
	sty $3D.b		; 84 3D
	ora #$7B.b		; 09 7B
	cop $FF.b		; 02 FF
	sta $F1.b		; 85 F1
	tas		; 1B
	cpx #$34.b		; E0 34
	.db $82, $FD, $08		; 82 FD 08
	tda		; 7B
	brk $C2.b		; 00 C2
	asl $A4.b		; 06 A4
	ora $0030.w		; 0D 30 00
	rol $9C80.w		; 2E 80 9C
	bra 121.b		; 80 79
	brk $F3.b		; 00 F3
	brk $F7.b		; 00 F7
	brk $EB.b		; 00 EB
	xba		; EB
	txy		; 9B
	tyx		; BB
	plp		; 28
	plx		; FA
	cmp #$EB.b		; C9 EB
	sbc ($15.b),Y		; F1 15
	ldx #$DA.b		; A2 DA
	bit #$3D.b		; 89 3D
	bne  20.b		; D0 14
	trb $DF.b		; 14 DF
	mvp $05,$CD		; 44 CD 05
	ora $1D14.w		; 0D 14 1D
	rol A		; 2A
	tas		; 1B
	ora $07.b		; 05 07
	rep #$02		; C2 02
	xba		; EB
	ora $24.b,S		; 03 24
	cli		; 58
	eor [$27.b],Y		; 57 27
	stx $A6.b		; 86 A6
	and $4C4D.w		; 2D 4D 4C
	and $20E281.l		; 2F 81 E2 20
	eor [$02.b]		; 47 02
	cpy $A7.b		; C4 A7
	lda [$D8.b]		; A7 D8
	cmp $B35F59.l,X		; DF 59 5F B3
	ldx $DCD0.w,Y		; BE D0 DC
	ora $B81D.w,X		; 1D 1D B8
	clv		; B8
	tsa		; 3B
	tsa		; 3B
	tad		; 5B
	adc $BDFB.w,X		; 7D FB BD
	lda ($FF.b)		; B2 FF
	ror $FA.b,X		; 76 FA
	eor [$BB.b]		; 47 BB
	ora $6D.b,X		; 15 6D
	ora $4B1397.l		; 0F 97 13 4B
	cmp $B9BE.w,Y		; D9 BE B9
	ror $7CB2.w,X		; 7E B2 7C
	adc ($FD.b,S),Y		; 73 FD
	cop $7D.b		; 02 7D
	stx $9B.b		; 86 9B
	stz $6B.b		; 64 6B
	ldy $B7.b,X		; B4 B7
	adc $44BB91.l		; 6F 91 BB 44
	dec $E5A1.w		; CE A1 E5
	txy		; 9B
	adc $F347.w,Y		; 79 47 F3
	eor $7DEF73.l		; 4F 73 EF 7D
	stp		; DB
	sbc $7CFC.w,X		; FD FC 7C
	adc $3BB8.w,X		; 7D B8 3B
	sta $415B.w,Y		; 99 5B 41
	and [$43.b]		; 27 43
	and $D99FE3.l,X		; 3F E3 9F D9
	lda [$1F.b]		; A7 1F
	bne  31.b		; D0 1F
	bpl -73.b		; 10 B7
	sei		; 78
	wai		; CB
	sta [$83.b]		; 87 83
	ora ($01.b,X)		; 01 01
	ora ($30.b,X)		; 01 30
	jsr ($034C.w,X)		; FC 4C 03
	sta $01.b,S		; 83 01
	ror $15.b		; 66 15
	cmp $AC2A.w,Y		; D9 2A AC
	lsr A		; 4A
	sta $755B.w,X		; 9D 5B 75
	lda ($B3.b,S),Y		; B3 B3
	and $69.b,X		; 35 69
	adc $EB.b		; 65 EB
	sbc [$EA.b]		; E7 EA
	inc $DDD5.w		; EE D5 DD
	lda $BD.b,X		; B5 BD
	ldy $BD.b		; A4 BD
	jmp $CA7D.w		; 4C 7D CA
	xce		; FB
	txs		; 9A
	xce		; FB
	clc		; 18
	xce		; FB
	sbc $C4D7CD.l,X		; FF CD D7 C4
	sbc ($A5.b),Y		; F1 A5
	ply		; 7A
	php		; 08
	ora ($01.b,X)		; 01 01
	asl $06.b		; 06 06
	tsb $05.b		; 04 05
	tsb $03.b		; 04 03
	ora $7A.b,S		; 03 7A
	stp		; DB
	plp		; 28
	ora ($06.b,X)		; 01 06
	asl $04.b		; 06 04
	ora $03.b,S		; 03 03
	cmp $CCCFDD.l,X		; DF DD CF CC
	and ($41.b)		; 32 41
	sbc $E1.b,S		; E3 E1
	eor #$74.b		; 49 74
	bvs  34.b		; 70 22
	lda $10B8.w,Y		; B9 B8 10
	ora $BE1D.w,X		; 1D 1D BE
	ldx $61E1.w,Y		; BE E1 61
	bvs  48.b		; 70 30
	clv		; B8
	clc		; 18
	ora $600D.w,X		; 1D 0D 60
	tya		; 98
	brk $F0.b		; 00 F0
	bra  96.b		; 80 60
	rti		; 40

	bmi  32.b		; 30 20
	bpl  64.b		; 10 40
	jsr $4080.w		; 20 80 40
	brk $80.b		; 00 80
	beq -16.b		; F0 F0
	rts		; 60

	rts		; 60

	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	adc [$00.b],Y		; 77 00
	ora ($00.b,X)		; 01 00
	lsr $C0.b		; 46 C0
	ora #$40.b		; 09 40
	bra  16.b		; 80 10
	and $15333F.l,X		; 3F 3F 33 15
	ora ($B3.b),Y		; 11 B3
	beq  20.b		; F0 14
	bpl -120.b		; 10 88
	bra  48.b		; 80 30
	jsr $8080.w		; 20 80 80
	ora $208010.l		; 0F 10 80 20
	bra 119.b		; 80 77
	adc [$33.b],Y		; 77 33
	sta ($17.b,S),Y		; 93 17
	and [$10.b]		; 27 10
	plp		; 28
	pla		; 68
	jsr $C040.w		; 20 40 C0
	rti		; 40

	php		; 08
	php		; 08
	ora ($18.b,X)		; 01 18
	ora $402028.l,X		; 1F 28 20 40
	rti		; 40

	php		; 08
	ora ($FC.b,X)		; 01 FC
	sbc $FAF9.w,X		; FD F9 FA
	beq  -4.b		; F0 FC
	dec $D6.b		; C6 D6
	dey		; 88
	plb		; AB
	and ($75.b),Y		; 31 75
	and $AB.b,S		; 23 AB
	eor [$57.b]		; 47 57
	cop $FE.b		; 02 FE
	ora $FD.b		; 05 FD
	ora $F3.b,S		; 03 F3
	and #$EF.b		; 29 EF
	mvn $8A,$DC		; 54 DC 8A
	tyx		; BB
	mvn $A8,$77		; 54 77 A8
	sbc $2CC302.l		; EF 02 C3 2C
	jmp $2744.w		; 4C 44 27
	brk $E1.b		; 00 E1
	pei ($27.b)		; D4 27
	tay		; A8
	sta ($D0.b),Y		; 91 D0
	dec $E4E1.w		; CE E1 E4
	bit $B33E.w,X		; 3C 3E B3
	tyx		; BB
	cld		; D8
	jmp.w [$1E1E]		; DC 1E 1E
	cld		; D8
	cld		; D8
	ror $31EE.w		; 6E EE 31
	beq  27.b		; F0 1B
	sed		; F8
	sbc $5455FD.l,X		; FF FD 55 54
	and ($EB.b)		; 32 EB
	mvp $99,$4B		; 44 4B 99
	jsr $A0B0.w		; 20 B0 A0
	jsr $A481.w		; 20 81 A4
	cmp $15.b		; C5 15
	ora $11.b,X		; 15 11
	tsb $4B.b		; 04 4B
	bpl -128.b		; 10 80
	ldy $15.b		; A4 15
	ora ($BF.b),Y		; 11 BF
	cmp $B73D55.l,X		; DF 55 3D B7
	php		; 08
	dey		; 88
	cpy #$C0.b		; C0 C0
	dey		; 88
	rti		; 40

	eor $C0A03E.l,X		; 5F 3E A0 C0
	ora ($0C.b,X)		; 01 0C
	tsb $4077.w		; 0C 77 40
	dey		; 88
	rti		; 40

	rol $1CDC.w,X		; 3E DC 1C
	rts		; 60

	rts		; 60

	sbc $15553F.l,X		; FF 3F 55 15
	beq   7.b		; F0 07
	phd		; 0B
	cop $03.b		; 02 03
	lda ($92.b,X)		; A1 92
	ldx #$92.b		; A2 92
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	asl A		; 0A
	sed		; F8
	cop $A1.b		; 02 A1
	ldx #$03.b		; A2 03
	cop $08.b		; 02 08
	rti		; 40

	sta $069909.l		; 8F 09 99 06
	bcc  95.b		; 90 5F
	bcs  15.b		; B0 0F
	cpx #$3E.b		; E0 3E
	rts		; 60

	asl $7C40.w,X		; 1E 40 7C
	cpy #$70.b		; C0 70
	bvs 102.b		; 70 66
	rts		; 60

	adc $404F60.l		; 6F 60 4F 40
	ora $001F00.l,X		; 1F 00 1F 00
	and $003F00.l,X		; 3F 00 3F 00
	ora [$2F.b],Y		; 17 2F
	adc [$97.b]		; 67 97
	lda $6F4FDF.l		; AF DF 4F 6F
	ora $DF9F5F.l,X		; 1F 5F 9F DF
	ora $9747AF.l		; 0F AF 47 97
	bne -41.b		; D0 D7
	pla		; 68
	adc $902F20.l		; 6F 20 2F 90
	ora $203FA0.l,X		; 1F A0 3F 20
	and $685F50.l,X		; 3F 50 5F 68
	adc $6C6AD8.l		; 6F D8 6A 6C
	ldx $6EF4.w,Y		; BE F4 6E
	tsx		; BA
	inc $7E.b,X		; F6 7E
	nop		; EA
	cpy $7CF4.w		; CC F4 7C
	cpx $B8.b		; E4 B8
	cli		; 58
	jmp $28B0.w		; 4C B0 28
	bne 100.b		; D0 64
	cld		; D8
	lda ($6C.b)		; B2 6C
	ror A		; 6A
	ldy $C4.b,X		; B4 C4
	clv		; B8
	stz $D8.b		; 64 D8
	clc		; 18
	cpx #$BF.b		; E0 BF
	brk $3F.b		; 00 3F
	brk $38.b		; 00 38
	cpy #$1E.b		; C0 1E
	jsr $1807.w		; 20 07 18
	ora [$3F.b]		; 07 3F
	and $071F1F.l,X		; 3F 1F 1F 07
	ora [$C8.b]		; 07 C8
	sec		; 38
	plp		; 28
	cld		; D8
	cli		; 58
	tay		; A8
	cli		; 58
	tay		; A8
	clv		; B8
	pha		; 48
	sbc ($10.b,S),Y		; F3 10
	sbc $12.b,X		; F5 12
	sbc $0876.w,Y		; F9 76 08
	bmi -56.b		; 30 C8
	bne -24.b		; D0 E8
	cpx #$E8.b		; E0 E8
	cpx #$C8.b		; E0 C8
	bne -112.b		; D0 90
	ldy #$12.b		; A0 12
	.db $62, $76, $06		; 62 76 06
	sbc [$18.b],Y		; F7 18
	clc		; 18
	bne  26.b		; D0 1A
	pei ($22.b)		; D4 22
	jsr ($BC63.w,X)		; FC 63 BC
	adc ($BC.b,S),Y		; 73 BC
	inc $9E49.w,X		; FE 49 9E
	sbc #$1F.b		; E9 1F
	sbc $1FEF1F.l		; EF 1F EF 1F
	sbc $27DF3F.l		; EF 3F DF 27
	cmp [$3F.b]		; C7 3F
	cmp $8FB74F.l		; CF 4F B7 8F
	adc [$01.b],Y		; 77 01
	bit $00.b,X		; 34 00
	bmi -128.b		; 30 80
	bvs  64.b		; 70 40
	rti		; 40

	rts		; 60

	rts		; 60

	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	tsb $370F.w		; 0C 0F 37
	and $2F2F3D.l,X		; 3F 3D 2F 2F
	tsa		; 3B
	pld		; 2B
	dec A		; 3A
	ora ($19.b,S),Y		; 13 19
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	tsb $3703.w		; 0C 03 37
	ora $2B1F2D.l		; 0F 2D 1F 2B
	ora $111F2A.l,X		; 1F 2A 1F 11
	ora $58F868.l		; 0F 68 F8 58
	inx		; E8
	bne -16.b		; D0 F0
	beq -48.b		; F0 D0
	ldy #$E0.b		; A0 E0
	cpx #$20.b		; E0 20
	rts		; 60

	jsr $4040.w		; 20 40 40
	pla		; 68
	beq  72.b		; F0 48
	beq -48.b		; F0 D0
	cpx #$D0.b		; E0 D0
	cpx #$A0.b		; E0 A0
	cpy #$20.b		; C0 20
	cpy #$20.b		; C0 20
	cpy #$40.b		; C0 40
	bra  47.b		; 80 2F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	ora $01.b		; 05 01
	cop $01.b		; 02 01
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	brk $3F.b		; 00 3F
	and $3393FF.l,X		; 3F FF 93 33
	ora $BF3FDF.l,X		; 1F DF 3F BF
	asl $3E.b		; 06 3E
	tsa		; 3B
	eor [$0D.b]		; 47 0D
	sbc ($00.b,S),Y		; F3 00
	brk $00.b		; 00 00
	and $20CFCC.l,X		; 3F CC CF 20
	and $C17F40.l,X		; 3F 40 7F C1
	cmp [$B8.b]		; C7 B8
	tyx		; BB
	tsb $FF0D.w		; 0C 0D FF
	and [$F7.b],Y		; 37 F7
	ora ($68.b,S),Y		; 13 68
	stz $18.b		; 64 18
	bpl -32.b		; 10 E0
	jmp ($7810.w,X)		; 7C 10 78
	cpy #$90.b		; C0 90
	bra -128.b		; 80 80
	bra -104.b		; 80 98
	sed		; F8
	bpl 120.b		; 10 78
	php		; 08
	bvs 112.b		; 70 70
	bra -128.b		; 80 80
	bra   3.b		; 80 03
	tsb $0001.w		; 0C 01 00
	rti		; 40

	rts		; 60

	rti		; 40

	jsr $0F80.w		; 20 80 0F
	brk $07.b		; 00 07
	brk $15.b		; 00 15
	ora $0E0E.w,X		; 1D 0E 0E
	ora $0A.b,X		; 15 0A
	asl $0FCE.w		; 0E CE 0F
	eor [$03.b]		; 47 03
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($D0.b,X)		; 01 D0
	jmp.w [$AAA8]		; DC A8 AA
	ror $DD7F.w,X		; 7E 7F DD
	cmp $6E6A.w,X		; DD 6A 6E
	sbc ($E7.b,X)		; E1 E7
	cmp ($F7.b),Y		; D1 F7
	stz $7D.b		; 64 7D
	jsr $54E0.w		; 20 E0 54
	jmp.w [$80F0]		; DC F0 80
	lsr $EB33.w,X		; 5E 33 EB
	lda $BE61.w,X		; BD 61 BE
	eor [$BE.b],Y		; 57 BE
	ldx $E09E.w		; AE 9E E0
	sbc $0FEFC0.l,X		; FF C0 EF 0F
	ora [$B7.b]		; 07 B7
	sta $3FDD.w,X		; 9D DD 3F
	lda $7AFF7C.l,X		; BF 7C FF 7A
	adc $0F08.w,X		; 7D 08 0F
	jsl $7F40BE.l		; 22 BE 40 7F
	jmp ($FA82.w,X)		; 7C 82 FA
	cmp $DD0DDF.l,X		; DF DF 0D DD
	adc $4010E0.l		; 6F E0 10 40
	ora ($42.b,X)		; 01 42
	rti		; 40

	eor ($01.b),Y		; 51 01
	lda $10.b,X		; B5 10
	pla		; 68
	lsr A		; 4A
	txa		; 8A
	eor $414060.l,X		; 5F 60 40 41
	ldy #$20.b		; A0 20
	rts		; 60

	dex		; CA
	cpy #$E8.b		; C0 E8
	cpx $F0.b		; E4 F0
	pea $B234.w		; F4 34 B2
	tya		; 98
	phy		; 5A
	pha		; 48
	rol A		; 2A
	rol A		; 2A
	ora $9180.w,Y		; 19 80 91
	bcc -119.b		; 90 89
	clc		; 18
	sed		; F8
	php		; 08
	sed		; F8
	jmp $A47C.w		; 4C 7C A4
	ldy $DCD4.w,X		; BC D4 DC
	inc $EE.b		; E6 EE
	ror $76EE.w		; 6E EE 76
	inc $77.b,X		; F6 77
	adc $C01F33.l,X		; 7F 33 1F C0
	cmp #$04.b		; C9 04
	tsb $020C.w		; 0C 0C 02
	cop $03.b		; 02 03
	tsb $04.b		; 04 04
	rti		; 40

	rti		; 40

	bpl  54.b		; 10 36
	inc $0C.b,X		; F6 0C
	tsb $0202.w		; 0C 02 02
	tsb $04.b		; 04 04
	rti		; 40

	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	ror $5B1A.w,X		; 7E 1A 5B
	bit $3C.b		; 24 3C
	adc ($77.b),Y		; 71 77
	brk $FC.b		; 00 FC
	php		; 08
	trb $0808.w		; 1C 08 08
	rol $14.b,X		; 36 14
	trb $7B.b		; 14 7B
	jsl $101032.l		; 22 32 10 10
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	sbc $05537F.l,X		; FF 7F 53 05
	ldx $7F.b,Y		; B6 7F
	cmp [$7F.b]		; C7 7F
	sbc $F97D.w,X		; FD 7D F9
	adc $41C1.w,Y		; 79 C1 41
	jsl $3E5D63.l		; 22 63 5D 3E
	trb $3030.w		; 1C 30 30
	cop $06.b		; 02 06
	rol $011C.w,X		; 3E 1C 01
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
	bra -17.b		; 80 EF
	inc $EFF7.w		; EE F7 EF
	sbc $AFF6A5.l,X		; FF A5 F6 AF
	sbc $FFFABF.l,X		; FF BF FA FF
	tyx		; BB
	ldx $FABE.w		; AE BE FA
	sbc [$7E.b],Y		; F7 7E
	rtl		; 6B

	stz $099B.w,X		; 9E 9B 09
	ora ($E2.b),Y		; 11 E2
	ora ($68.b,X)		; 01 68
	rol A		; 2A
	ldx $DE13.w,Y		; BE 13 DE
	ora $7F.b,X		; 15 7F
	rts		; 60

	cpx #$60.b		; E0 60
	rts		; 60

	sbc $40407F.l,X		; FF 7F 40 40
	adc $7F807F.l,X		; 7F 7F 80 7F
	adc $024180.l,X		; 7F 80 41 02
	cop $82.b		; 02 82
	ora ($56.b,X)		; 01 56
	ora $FF.b		; 05 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $0487FF.l,X		; FF FF 87 04
	ldx $DE13.w,Y		; BE 13 DE
	eor $7F.b		; 45 7F
	rts		; 60

	cpx #$60.b		; E0 60
	rts		; 60

	sbc $40407F.l,X		; FF 7F 40 40
	adc $7F807F.l,X		; 7F 7F 80 7F
	adc $054380.l,X		; 7F 80 43 05
	asl $82.b		; 06 82
	ora ($56.b,X)		; 01 56
	ora $FF.b		; 05 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $A4C7FF.l,X		; FF FF C7 A4
	ldx $DE13.w,Y		; BE 13 DE
	eor $7F.b		; 45 7F
	rts		; 60

	cpx #$60.b		; E0 60
	rts		; 60

	sbc $40407F.l,X		; FF 7F 40 40
	adc $7F807F.l,X		; 7F 7F 80 7F
	adc $054380.l,X		; 7F 80 43 05
	asl $82.b		; 06 82
	ora ($56.b,X)		; 01 56
	ora $FF.b		; 05 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $A4C7FF.l,X		; FF FF C7 A4
	ldx $DE13.w,Y		; BE 13 DE
	eor $7F.b,X		; 55 7F
	rts		; 60

	cpx #$60.b		; E0 60
	rts		; 60

	sbc $40407F.l,X		; FF 7F 40 40
	adc $7F807F.l,X		; 7F 7F 80 7F
	adc $014080.l,X		; 7F 80 40 01
	ora $04.b,S		; 03 04
	.db $82, $01, $56		; 82 01 56
	ora $FF.b		; 05 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $04C7FF.l,X		; FF FF C7 04
	ldx $DE13.w,Y		; BE 13 DE
	eor $7F.b		; 45 7F
	rts		; 60

	cpx #$60.b		; E0 60
	rts		; 60

	sbc $40407F.l,X		; FF 7F 40 40
	adc $7F807F.l,X		; 7F 7F 80 7F
	adc $014780.l,X		; 7F 80 47 01
	ora ($82.b,X)		; 01 82
	ora ($56.b,X)		; 01 56
	eor $FF.b,X		; 55 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $C4E7FF.l,X		; FF FF E7 C4
	jsr $BEC0.w		; 20 C0 BE
	ora ($DE.b,S),Y		; 13 DE
	eor $7F.b		; 45 7F
	rts		; 60

	cpx #$60.b		; E0 60
	rts		; 60

	sbc $40407F.l,X		; FF 7F 40 40
	adc $7F807F.l,X		; 7F 7F 80 7F
	adc $054380.l,X		; 7F 80 43 05
	ora ($82.b,X)		; 01 82
	ora ($56.b,X)		; 01 56
	eor $FF.b,X		; 55 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $A4C7FF.l,X		; FF FF C7 A4
	rts		; 60

	cpy #$BE.b		; C0 BE
	ora ($DE.b,S),Y		; 13 DE
	eor $7F.b		; 45 7F
	rts		; 60

	cpx #$60.b		; E0 60
	rts		; 60

	sbc $40407F.l,X		; FF 7F 40 40
	adc $7F807F.l,X		; 7F 7F 80 7F
	adc $014780.l,X		; 7F 80 47 01
	asl $82.b		; 06 82
	ora ($56.b,X)		; 01 56
	eor $FF.b		; 45 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $84E7FF.l,X		; FF FF E7 84
	jsr $13BE.w		; 20 BE 13
	dec $7F05.w,X		; DE 05 7F
	rts		; 60

	cpx #$60.b		; E0 60
	rts		; 60

	sbc $40407F.l,X		; FF 7F 40 40
	adc $7F807F.l,X		; 7F 7F 80 7F
	adc $054380.l,X		; 7F 80 43 05
	.db $82, $01, $56		; 82 01 56
	ora $FF.b		; 05 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $A4C7FF.l,X		; FF FF C7 A4
	cmp $D4.b		; C5 D4
	eor $C5.b,S		; 43 C5
	and $202020.l,X		; 3F 20 20 20
	jsr $1F1F.w		; 20 1F 1F
	and $203F3E.l,X		; 3F 3E 3F 20
	cop $03.b		; 02 03
	ora $D00120.l,X		; 1F 20 01 D0
	ora $45.b,S		; 03 45
	sbc $FFFFFF.l,X		; FF FF FF FF
	jmp ($44FF.w,X)		; 7C FF 44
	cmp [$FF.b]		; C7 FF
	cmp $D4.b		; C5 D4
	eor [$C5.b],Y		; 57 C5
	and $202020.l,X		; 3F 20 20 20
	jsr $1F1F.w		; 20 1F 1F
	and $023F3E.l,X		; 3F 3E 3F 02
	ora $20.b		; 05 20
	ora ($07.b,X)		; 01 07
	ora $D00120.l,X		; 1F 20 01 D0
	eor [$45.b]		; 47 45
	sbc $FFFFFF.l,X		; FF FF FF FF
	bit $C0FF.w,X		; 3C FF C0
	jsr $E7C4.w		; 20 C4 E7
	sbc $57D4C5.l,X		; FF C5 D4 57
	cmp $3F.b		; C5 3F
	jsr $2020.w		; 20 20 20
	jsr $1F1F.w		; 20 1F 1F
	and $013F3E.l,X		; 3F 3E 3F 01
	asl $20.b		; 06 20
	ora $03.b		; 05 03
	ora $D00120.l,X		; 1F 20 01 D0
	ora [$45.b]		; 07 45
	sbc $FFFFFF.l,X		; FF FF FF FF
	bit $A0FF.w,X		; 3C FF A0
	ldy $C7.b		; A4 C7
	sbc $57D4C5.l,X		; FF C5 D4 57
	cmp $3F.b		; C5 3F
	jsr $2020.w		; 20 20 20
	jsr $1F1F.w		; 20 1F 1F
	and $013F39.l,X		; 3F 39 3F 01
	ora [$20.b]		; 07 20
	ora ($01.b,X)		; 01 01
	ora $D00120.l,X		; 1F 20 01 D0
	ora [$45.b],Y		; 17 45
	sbc $FFFFFF.l,X		; FF FF FF FF
	bit $20FF.w,X		; 3C FF 20
	jsr $E724.w		; 20 24 E7
	sbc $57D4C5.l,X		; FF C5 D4 57
	cmp $3F.b		; C5 3F
	jsr $2020.w		; 20 20 20
	jsr $1F1F.w		; 20 1F 1F
	and $063F39.l,X		; 3F 39 3F 06
	asl $20.b		; 06 20
	ora $03.b		; 05 03
	ora $D00120.l,X		; 1F 20 01 D0
	ora $45.b,S		; 03 45
	sbc $FFFFFF.l,X		; FF FF FF FF
	stz $A4FF.w		; 9C FF A4
	cmp [$FF.b]		; C7 FF
	cmp $D4.b		; C5 D4
	eor $C5.b,S		; 43 C5
	and $202020.l,X		; 3F 20 20 20
	jsr $1F1F.w		; 20 1F 1F
	and $203F39.l,X		; 3F 39 3F 20
	ora $03.b		; 05 03
	ora $D00120.l,X		; 1F 20 01 D0
	ora $45.b,S		; 03 45
	sbc $FFFFFF.l,X		; FF FF FF FF
	stz $A4FF.w		; 9C FF A4
	cmp [$FF.b]		; C7 FF
	cmp $D4.b		; C5 D4
	eor [$C5.b]		; 47 C5
	and $202020.l,X		; 3F 20 20 20
	jsr $1F1F.w		; 20 1F 1F
	and $013F3F.l,X		; 3F 3F 3F 01
	jsr $0302.w		; 20 02 03
	ora $D00120.l,X		; 1F 20 01 D0
	ora $45.b,S		; 03 45
	sbc $FFFFFF.l,X		; FF FF FF FF
	jmp ($44FF.w,X)		; 7C FF 44
	cmp [$FF.b]		; C7 FF
	cmp $D4.b		; C5 D4
	eor [$C5.b]		; 47 C5
	and $202020.l,X		; 3F 20 20 20
	jsr $1F1F.w		; 20 1F 1F
	and $053F3C.l,X		; 3F 3C 3F 05
	jsr $0305.w		; 20 05 03
	ora $D00120.l,X		; 1F 20 01 D0
	ora [$45.b]		; 07 45
	sbc $FFFFFF.l,X		; FF FF FF FF
	bit $A0FF.w,X		; 3C FF A0
	ldy $C7.b		; A4 C7
	sbc $DE13BE.l,X		; FF BE 13 DE
	ora $7F.b		; 05 7F
	rts		; 60

	cpx #$60.b		; E0 60
	rts		; 60

	sbc $40407F.l,X		; FF 7F 40 40
	adc $7F807F.l,X		; 7F 7F 80 7F
	adc $054380.l,X		; 7F 80 43 05
	.db $82, $01, $56		; 82 01 56
	eor $FF.b		; 45 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $A4C7FF.l,X		; FF FF C7 A4
	rts		; 60

	sbc $5455FF.l,X		; FF FF 55 54
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	adc ($72.b)		; 72 72
	lsr $6C7C.w		; 4E 7C 6C
	rts		; 60

	ora ($33.b)		; 12 33
	mvp $80,$66		; 44 66 80
	cpy $79.b		; C4 79
	cop $70.b		; 02 70
	tsb $4140.w		; 0C 40 41
	.db $82, $FF, $FF		; 82 FF FF
	eor $54.b,X		; 55 54
	bra -128.b		; 80 80
	rti		; 40

	cpy #$4E.b		; C0 4E
	lsr $3E72.w		; 4E 72 3E
	rol $06.b,X		; 36 06
	pha		; 48
	cpy $6622.w		; CC 22 66
	ora $21.b,S		; 03 21
	stz $0E40.w,X		; 9E 40 0E
	bmi   2.b		; 30 02
	.db $82, $41, $55		; 82 41 55
	eor ($FF.b),Y		; 51 FF
	sbc ($04.b,S),Y		; F3 04
	inc A		; 1A
	and ($30.b,X)		; 21 30
	clc		; 18
	php		; 08
	rts		; 60

	bit $1D3C.w,X		; 3C 3C 1D
	ora $0101.w,X		; 1D 01 01
	bmi  48.b		; 30 30
	php		; 08
	php		; 08
	sec		; 38
	sec		; 38
	ldy #$A0.b		; A0 A0
	eor $05.b,X		; 55 05
	ora $7E3CFF.l		; 0F FF 3C 7E
	sbc $81C3FF.l,X		; FF FF C3 81
	.db $42, $42		; 42 42
	sta ($81.b,X)		; 81 81
	bit $423C.w,X		; 3C 3C 42
	.db $42, $81		; 42 81
	sta ($81.b,X)		; 81 81
	sta ($00.b,X)		; 81 00
	jsr ($5401.w,X)		; FC 01 54
	asl $090E.w		; 0E 0E 09
	ora $030401.l		; 0F 01 04 03
	asl $0801.w		; 0E 01 08
	bpl  -9.b		; 10 F7
	bmi -13.b		; 30 F3
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	stx $02.b		; 86 02
	sbc ($80.b)		; F2 80
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	sty $84.b		; 84 84
	bvs 112.b		; 70 70
	stz $77.b,X		; 74 77
	bit $80F3.w,X		; 3C F3 80
	cpy #$80.b		; C0 80
	bra  96.b		; 80 60
	rti		; 40

	rti		; 40

	bmi  32.b		; 30 20
	and [$80.b]		; 27 80
	bra  64.b		; 80 40
	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl   7.b		; 10 07
	ora [$00.b]		; 07 00
	jsr ($5401.w,X)		; FC 01 54
	sec		; 38
	sec		; 38
	iny		; C8
	sed		; F8
	rti		; 40

	bcc -32.b		; 90 E0
	sec		; 38
	cpy #$08.b		; C0 08
	lda $1155FF.l,X		; BF FF 55 11
	eor $380860.l,X		; 5F 60 08 38
	cop $0E.b		; 02 0E
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	ora $02.b,S		; 03 02
	cop $7E.b		; 02 7E
	rti		; 40

	bmi  12.b		; 30 0C
	cop $02.b		; 02 02
	cmp $FD.b,S		; C3 FD
	cmp $3C.b,S		; C3 3C
	cpx #$C0.b		; E0 C0
	bmi  32.b		; 30 20
	jsr $101C.w		; 20 1C 10
	ora [$0C.b],Y		; 17 0C
	tsb $03.b		; 04 03
	cpx #$E0.b		; E0 E0
	bpl  16.b		; 10 10
	tsb $030C.w		; 0C 0C 03
	ora $C3.b,S		; 03 C3
	sbc $3CC3.w,X		; FD C3 3C
	ora $01.b,S		; 03 01
	asl $02.b		; 06 02
	cop $1C.b		; 02 1C
	tsb $F4.b		; 04 F4
	clc		; 18
	bpl -32.b		; 10 E0
	ora $03.b,S		; 03 03
	tsb $04.b		; 04 04
	clc		; 18
	clc		; 18
	cpx #$E0.b		; E0 E0
	lda $1155FF.l,X		; BF FF 55 11
	sbc $0803.w,X		; FD 03 08
	asl $3820.w		; 0E 20 38
	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	jsr $2060.w		; 20 60 20
	jsr $013F.w		; 20 3F 01
	asl $18.b		; 06 18
	jsr $FE20.w		; 20 20 FE
	cmp ($DE.b,S),Y		; D3 DE
	ora $FE.b		; 05 FE
	asl $0E07.w		; 0E 07 0E
	asl $0C.b		; 06 0C
	sbc $0A0EF6.l,X		; FF F6 0E 0A
	tsb $04.b		; 04 04
	inc $01FE.w,X		; FE FE 01
	inc $01FE.w,X		; FE FE 01
.INDEX 8
	sep #$D0		; E2 D0
	cmp [$DC.b]		; C7 DC
	eor [$C5.b]		; 47 C5
	pea $0408.w		; F4 08 04
	tsb $04.b		; 04 04
	tsb $F808.w		; 0C 08 F8
	sed		; F8
	jsr ($FC1C.w,X)		; FC 1C FC
	cpx #$04.b		; E0 04
	bra -128.b		; 80 80
	sed		; F8
	tsb $C5.b		; 04 C5
	pei ($43.b)		; D4 43
	cmp $3F.b		; C5 3F
	jsr $2020.w		; 20 20 20
	jsr $1F1F.w		; 20 1F 1F
	and $203F39.l,X		; 3F 39 3F 20
	ora $03.b		; 05 03
	ora $D00120.l,X		; 1F 20 01 D0
	ora ($45.b,S),Y		; 13 45
	sbc $FFFFFF.l,X		; FF FF FF FF
	jsr ($60FF.w,X)		; FC FF 60
	ldy $C7.b		; A4 C7
	sbc $55BFFF.l,X		; FF FF BF 55
	mvn $C4,$BC		; 54 BC C4
	jsl $331166.l		; 22 66 11 33
	eor ($60.b,X)		; 41 60
	bvs 124.b		; 70 7C
	rti		; 40

	adc ($03.b)		; 72 03
	ora $01.b,S		; 03 01
	jsr ($4182.w,X)		; FC 82 41
	rti		; 40

	tsb $0270.w		; 0C 70 02
	sbc $5455BF.l,X		; FF BF 55 54
	and $4423.w,X		; 3D 23 44
	ror $88.b		; 66 88
	cpy $0682.w		; CC 82 06
	asl $023E.w		; 0E 3E 02
	lsr $C0C0.w		; 4E C0 C0
	bra  63.b		; 80 3F
	eor ($82.b,X)		; 41 82
	cop $30.b		; 02 30
	asl $5540.w		; 0E 40 55
	eor $FF.b,X		; 55 FF
	sbc $2F3F7F.l,X		; FF 7F 3F 2F
	ora [$0F.b],Y		; 17 0F
	and $80041E.l,X		; 3F 1E 04 80
	bra  64.b		; 80 40
	rti		; 40

	bmi  48.b		; 30 30
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	jsr $2120.w		; 20 20 21
	and ($3C.b,X)		; 21 3C
	bit $5150.w,X		; 3C 50 51
	sbc ($F3.b,S),Y		; F3 F3
	sta ($42.b,X)		; 81 42
	bit $4281.w,X		; 3C 81 42
	sta ($81.b,X)		; 81 81
	cmp $C3.b,S		; C3 C3
	ror $3C7E.w,X		; 7E 7E 3C
	bit $8181.w,X		; 3C 81 81
	cmp $C3.b,S		; C3 C3
	tyx		; BB
	sbc $055445.l,X		; FF 45 54 05
	asl $02.b		; 06 02
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $0F.b,S		; 03 0F
	tsb $3834.w		; 0C 34 38
	php		; 08
	tsb $02.b		; 04 02
	cop $0C.b		; 02 0C
	bmi  -9.b		; 30 F7
	inc $1141.w		; EE 41 11
	xba		; EB
	trb $0408.w		; 1C 08 04
	ora [$10.b]		; 07 10
	trb $3010.w		; 1C 10 30
	bmi  32.b		; 30 20
	jsr $3F20.w		; 20 20 3F
	ora $0C.b,S		; 03 0C
	bpl  -9.b		; 10 F7
	inc $1141.w		; EE 41 11
	xba		; EB
	trb $1008.w		; 1C 08 10
	beq   4.b		; F0 04
	trb $0604.w		; 1C 04 06
	asl $02.b		; 06 02
	cop $02.b		; 02 02
	inc $18E0.w,X		; FE E0 18
	tsb $BB.b		; 04 BB
	sbc $D05445.l,X		; FF 45 54 D0
	bmi  32.b		; 30 20
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	rts		; 60

	rts		; 60

	cli		; 58
	sec		; 38
	asl $0E.b,X		; 16 0E
	php		; 08
	bpl  32.b		; 10 20
	jsr $0618.w		; 20 18 06
	sbc $015100.l,X		; FF 00 51 01
	ora $06.b		; 05 06
	tsb $04.b		; 04 04
	asl A		; 0A
	ora $070E08.l		; 0F 08 0E 07
	php		; 08
	ora ($0E.b,X)		; 01 0E
	lda $44553B.l,X		; BF 3B 55 44
	xba		; EB
	trb $F480.w		; 1C 80 F4
	asl $86.b		; 06 86
	cop $03.b		; 02 03
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	sbc $847008.l,X		; FF 08 70 84
	cop $01.b		; 02 01
	tyx		; BB
	tyx		; BB
	eor $44.b,X		; 55 44
	xba		; EB
	trb $3017.w		; 1C 17 30
	bmi  32.b		; 30 20
	rts		; 60

	rts		; 60

	rti		; 40

	cpy #$C0.b		; C0 C0
	bra  -1.b		; 80 FF
	php		; 08
	ora [$10.b]		; 07 10
	jsr $FF40.w		; 20 40 FF
	brk $51.b		; 00 51
	ora ($D0.b,X)		; 01 D0
	bmi -112.b		; 30 90
	bcc  40.b		; 90 28
	sed		; F8
	php		; 08
	sec		; 38
	beq   8.b		; F0 08
	cpy #$38.b		; C0 38
	inc $DED3.w,X		; FE D3 DE
	ora $FE.b		; 05 FE
	asl $0E07.w		; 0E 07 0E
	asl $0C.b		; 06 0C
	sbc $0A0EF6.l,X		; FF F6 0E 0A
	tsb $04.b		; 04 04
	inc $01FE.w,X		; FE FE 01
	inc $01FE.w,X		; FE FE 01
.INDEX 8
	sep #$D0		; E2 D0
	cmp [$DC.b]		; C7 DC
	eor [$C5.b]		; 47 C5
	pea $0408.w		; F4 08 04
	tsb $04.b		; 04 04
	tsb $F808.w		; 0C 08 F8
	sed		; F8
	jsr ($FC1C.w,X)		; FC 1C FC
	cpx #$04.b		; E0 04
	bra -128.b		; 80 80
	sed		; F8
	tsb $FE.b		; 04 FE
	cmp ($DE.b,S),Y		; D3 DE
	ora $FE.b		; 05 FE
	asl $0E07.w		; 0E 07 0E
	asl $0C.b		; 06 0C
	sbc $0A0EF6.l,X		; FF F6 0E 0A
	tsb $04.b		; 04 04
	inc $01FE.w,X		; FE FE 01
	inc $01FE.w,X		; FE FE 01
.INDEX 8
	sep #$D0		; E2 D0
	cmp [$DC.b]		; C7 DC
	eor [$C5.b]		; 47 C5
	pea $0408.w		; F4 08 04
	tsb $04.b		; 04 04
	tsb $F808.w		; 0C 08 F8
	sed		; F8
	jsr ($FC1C.w,X)		; FC 1C FC
	cpx #$04.b		; E0 04
	bra -128.b		; 80 80
	sed		; F8
	tsb $FE.b		; 04 FE
	cmp ($DE.b,S),Y		; D3 DE
	ora $FE.b		; 05 FE
	asl $0E07.w		; 0E 07 0E
	asl $0C.b		; 06 0C
	sbc $0A0EF6.l,X		; FF F6 0E 0A
	tsb $04.b		; 04 04
	inc $01FE.w,X		; FE FE 01
	inc $01FE.w,X		; FE FE 01
.INDEX 8
	sep #$D0		; E2 D0
	cmp [$DC.b]		; C7 DC
	eor [$C5.b]		; 47 C5
	pea $0408.w		; F4 08 04
	tsb $04.b		; 04 04
	tsb $F808.w		; 0C 08 F8
	sed		; F8
	jsr ($FC1C.w,X)		; FC 1C FC
	cpx #$04.b		; E0 04
	bra -128.b		; 80 80
	sed		; F8
	tsb $FE.b		; 04 FE
	cmp ($DE.b,S),Y		; D3 DE
	ora $FE.b		; 05 FE
	asl $0E07.w		; 0E 07 0E
	asl $0C.b		; 06 0C
	sbc $0A0EF6.l,X		; FF F6 0E 0A
	tsb $04.b		; 04 04
	inc $01FE.w,X		; FE FE 01
	inc $01FE.w,X		; FE FE 01
.INDEX 8
	sep #$D0		; E2 D0
	cmp [$DC.b]		; C7 DC
	eor [$C5.b]		; 47 C5
	pea $0408.w		; F4 08 04
	tsb $04.b		; 04 04
	tsb $F808.w		; 0C 08 F8
	sed		; F8
	jsr ($FC1C.w,X)		; FC 1C FC
	cpx #$04.b		; E0 04
	bra -128.b		; 80 80
	sed		; F8
	tsb $FE.b		; 04 FE
	cmp ($DE.b,S),Y		; D3 DE
	ora $FE.b		; 05 FE
	asl $0E07.w		; 0E 07 0E
	asl $0C.b		; 06 0C
	sbc $0A0EF6.l,X		; FF F6 0E 0A
	tsb $04.b		; 04 04
	inc $01FE.w,X		; FE FE 01
	inc $01FE.w,X		; FE FE 01
.INDEX 8
	sep #$D0		; E2 D0
	cmp [$DC.b]		; C7 DC
	eor [$C5.b]		; 47 C5
	pea $0408.w		; F4 08 04
	tsb $04.b		; 04 04
	tsb $F808.w		; 0C 08 F8
	sed		; F8
	jsr ($FC1C.w,X)		; FC 1C FC
	cpx #$04.b		; E0 04
	bra -128.b		; 80 80
	sed		; F8
	tsb $FE.b		; 04 FE
	cmp ($DE.b,S),Y		; D3 DE
	ora $FE.b		; 05 FE
	asl $0E07.w		; 0E 07 0E
	asl $0C.b		; 06 0C
	sbc $0A0EF6.l,X		; FF F6 0E 0A
	tsb $04.b		; 04 04
	inc $01FE.w,X		; FE FE 01
	inc $01FE.w,X		; FE FE 01
.INDEX 8
	sep #$D0		; E2 D0
	cmp [$DC.b]		; C7 DC
	eor [$C5.b]		; 47 C5
	pea $0408.w		; F4 08 04
	tsb $04.b		; 04 04
	tsb $F808.w		; 0C 08 F8
	sed		; F8
	jsr ($FC1C.w,X)		; FC 1C FC
	cpx #$04.b		; E0 04
	bra -128.b		; 80 80
	sed		; F8
	tsb $FE.b		; 04 FE
	cmp ($DE.b,S),Y		; D3 DE
	ora $FE.b		; 05 FE
	asl $0E07.w		; 0E 07 0E
	asl $0C.b		; 06 0C
	sbc $0A0EF6.l,X		; FF F6 0E 0A
	tsb $04.b		; 04 04
	inc $01FE.w,X		; FE FE 01
	inc $01FE.w,X		; FE FE 01
.INDEX 8
	sep #$D0		; E2 D0
	cmp [$DC.b]		; C7 DC
	eor [$C5.b]		; 47 C5
	pea $0408.w		; F4 08 04
	tsb $04.b		; 04 04
	tsb $F808.w		; 0C 08 F8
	sed		; F8
	jsr ($FC1C.w,X)		; FC 1C FC
	cpx #$04.b		; E0 04
	bra -128.b		; 80 80
	sed		; F8
	tsb $FE.b		; 04 FE
	cmp ($DE.b,S),Y		; D3 DE
	ora $FE.b		; 05 FE
	asl $0E07.w		; 0E 07 0E
	asl $0C.b		; 06 0C
	sbc $0A0EF6.l,X		; FF F6 0E 0A
	tsb $04.b		; 04 04
	inc $01FE.w,X		; FE FE 01
	inc $01FE.w,X		; FE FE 01
.INDEX 8
	sep #$D0		; E2 D0
	cmp [$DC.b]		; C7 DC
	eor [$C5.b]		; 47 C5
	pea $0408.w		; F4 08 04
	tsb $04.b		; 04 04
	tsb $F808.w		; 0C 08 F8
	sed		; F8
	jsr ($FC1C.w,X)		; FC 1C FC
	cpx #$04.b		; E0 04
	bra -128.b		; 80 80
	sed		; F8
	tsb $3F.b		; 04 3F
	brk $45.b		; 00 45
	ora ($7E.b,X)		; 01 7E
	ror $1818.w,X		; 7E 18 18
	bit $423C.w,X		; 3C 3C 42
	ror $3C.b		; 66 3C
	clc		; 18
	ora $33.b,S		; 03 33
	brk $00.b		; 00 00
	rol $011C.w,X		; 3E 1C 01
	cop $20.b		; 02 20
	bpl  64.b		; 10 40
	sbc $7C4500.l,X		; FF 00 45 7C
	jsr ($F870.w,X)		; FC 70 F8
	cpx #$FC.b		; E0 FC
	sed		; F8
	pea $08F0.w		; F4 F0 08
	bpl   8.b		; 10 08
	cmp $0000CE.l		; CF CE 00 00
	ora $031005.l,X		; 1F 05 10 03
	php		; 08
	tsb $01.b		; 04 01
	tsb $02.b		; 04 02
	cop $01.b		; 02 01
	ora $000175.l,X		; 1F 75 01 00
	bne -64.b		; D0 C0
	beq -32.b		; F0 E0
	cpx #$80.b		; E0 80
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	jsr $CEC3.w		; 20 C3 CE
	brk $00.b		; 00 00
	asl $0104.w		; 0E 04 01
	cop $01.b		; 02 01
	php		; 08
	tsb $04.b		; 04 04
	cop $55.b		; 02 55
	and $0000.w,Y		; 39 00 00
	and ($78.b),Y		; 31 78
	ora $C0A006.l		; 0F 06 A0 C0
	bpl  32.b		; 10 20
	brk $FD.b		; 00 FD
	brk $00.b		; 00 00
	cpy #$E0.b		; C0 E0
	rti		; 40

	bvs  32.b		; 70 20
	sec		; 38
	bpl   0.b		; 10 00
	bvc   0.b		; 50 00
	brk $04.b		; 00 04
	cop $00.b		; 02 00
	pei ($00.b)		; D4 00
	bpl  32.b		; 10 20
	bvc -128.b		; 50 80
	rti		; 40

	jsr $3FCF.w		; 20 CF 3F
	eor $00.b		; 45 00
	rol $4310.w,X		; 3E 10 43
	bit $0202.w		; 2C 02 02
	bra  64.b		; 80 40
	ora ($1E.b,X)		; 01 1E
	asl $90.b		; 06 90
	php		; 08
	asl A		; 0A
	cop $2B.b		; 02 2B
	nop		; EA
	brk $00.b		; 00 00
	sed		; F8
	beq -64.b		; F0 C0
	cpx #$40.b		; E0 40
	bra -64.b		; 80 C0
	tsb $D0.b		; 04 D0
	brk $F5.b		; 00 F5
	brk $00.b		; 00 00
	rts		; 60

	sta ($13.b),Y		; 91 13
	ora ($17.b,X)		; 01 17
	ora $0F.b,S		; 03 0F
	adc $270000.l,X		; 7F 00 00 27
	ora $68.b,S		; 03 68
	tsb $70.b		; 04 70
	php		; 08
	bmi   8.b		; 30 08
	php		; 08
	ora [$07.b]		; 07 07
	mvn $00,$D5		; 54 D5 00
	brk $70.b		; 00 70
	dey		; 88
	php		; 08
	bpl  32.b		; 10 20
	and ($1F.b,X)		; 21 1F
	ora ($D4.b,X)		; 01 D4
	cmp $4410.w,X		; DD 10 44
	php		; 08
	trb $20.b		; 14 20
	bpl   2.b		; 10 02
	eor $2C.b,S		; 43 2C
	bra   2.b		; 80 02
	.db $82, $08, $0A		; 82 08 0A
	cop $F7.b		; 02 F7
	dec $0000.w,X		; DE 00 00
	ora $01.b,S		; 03 01
	tsb $38.b		; 04 38
	cop $40.b		; 02 40
	bit $8F1F.w,X		; 3C 1F 8F
	rts		; 60

	bpl  32.b		; 10 20
	rti		; 40

	sbc $000007.l,X		; FF 07 00 00
	sbc $C0FEBE.l,X		; FF BE FE C0
	sed		; F8
	beq  -2.b		; F0 FE
	tya		; 98
	sta $000706.l,X		; 9F 06 07 00
	ldy $00.b,X		; B4 00
	brk $E1.b		; 00 E1
	asl $1EE1.w,X		; 1E E1 1E
	sbc $01.b,S		; E3 01
	brk $00.b		; 00 00
	sbc $F0D0DF.l,X		; FF DF D0 F0
	ora $51D50F.l		; 0F 0F D5 51
	brk $00.b		; 00 00
	bvs  -8.b		; 70 F8
	sta ($1A.b,X)		; 81 1A
	ora ($34.b,X)		; 01 34
	bit $F418.w,X		; 3C 18 F4
	phd		; 0B
	brk $00.b		; 00 00
	beq  12.b		; F0 0C
	beq   2.b		; F0 02
	tsb $2201.w		; 0C 01 22
	and ($75.b),Y		; 31 75
	and ($04.b,S),Y		; 33 04
	ora ($10.b),Y		; 11 10
	plp		; 28
	rti		; 40

	jsr $8604.w		; 20 04 86
	cli		; 58
	tsb $04.b		; 04 04
	bpl  20.b		; 10 14
	tsb $FF.b		; 04 FF
	ora $030000.l,X		; 1F 00 00 03
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	ora [$0F.b]		; 07 0F
	asl $07.b		; 06 07
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	tda		; 7B
	sbc [$00.b],Y		; F7 00
	brk $FF.b		; 00 FF
	cmp $986045.l,X		; DF 45 60 98
	bcc   1.b		; 90 01
	asl $C0.b		; 06 C0
	jsr $02C0.w		; 20 C0 02
	cpy $05.b		; C4 05
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	bra -17.b		; 80 EF
	plx		; FA
	adc $FD77EC.l,X		; 7F EC 77 FD
	asl $09.b,X		; 16 09
	ora ($01.b,X)		; 01 01
	asl $02.b		; 06 02
	ora ($10.b,X)		; 01 10
	php		; 08
	adc ($82.b),Y		; 71 82
	jsr $0250.w		; 20 50 02
	bpl  64.b		; 10 40
	rti		; 40

	cop $40.b		; 02 40
	rti		; 40

	ora ($20.b),Y		; 11 20
	eor ($7D.b,S),Y		; 53 7D
	sbc $E7A57D.l		; EF 7D A5 E7
	bit $9981.w,X		; 3C 81 99
	sta ($7E.b,X)		; 81 7E
	lda $2481.w,X		; BD 81 24
	sbc [$3C.b]		; E7 3C
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	cmp $99.b,S		; C3 99
	sbc [$FF.b]		; E7 FF
	ror $C318.w,X		; 7E 18 C3
	sbc [$EF.b]		; E7 EF
	plx		; FA
	adc $BFEEEC.l,X		; 7F EC EE BF
	pla		; 68
	bcc -128.b		; 90 80
	bra  96.b		; 80 60
	rti		; 40

	bra   8.b		; 80 08
	bpl -114.b		; 10 8E
	eor ($04.b),Y		; 51 04
	rol A		; 2A
	rti		; 40

	plp		; 28
	cop $02.b		; 02 02
	rti		; 40

	cop $02.b		; 02 02
	dey		; 88
	tsb $CA.b		; 04 CA
	cmp $FFD59F.l,X		; DF 9F D5 FF
	asl $0F.b		; 06 0F
	ora $0D0110.l		; 0F 10 01 0D
	bpl  14.b		; 10 0E
	bpl  22.b		; 10 16
	jsr $0206.w		; 20 06 02
	asl $09.b		; 06 09
	ora ($0A.b,X)		; 01 0A
	ora ($05.b,X)		; 01 05
	phd		; 0B
	php		; 08
	asl $1410.w,X		; 1E 10 14
	ora #$09.b		; 09 09
	asl $FCE8.w,X		; 1E E8 FC
	sbc $C03B3F.l		; EF 3F 3B C0
	cpy $0A.b		; C4 0A
	ora $12080C.l,X		; 1F 0C 08 12
	and #$69.b		; 29 69
	lda $8484.w		; AD 84 84
	lsr A		; 4A
	lsr A		; 4A
	sbc $EF.b,X		; F5 EF
	ora $4C.b		; 05 4C
	cpy #$DF.b		; C0 DF
	sta $18FFF5.l,X		; 9F F5 FF 18
	bit $C23C.w,X		; 3C 3C C2
	cpx #$2C.b		; E0 2C
	cop $1C.b		; 02 1C
	cop $1A.b		; 02 1A
	ora ($18.b,X)		; 01 18
	bpl  24.b		; 10 18
	bit $A0.b		; 24 A0
	rti		; 40

	mvn $A8,$60		; 54 60 A8
	ldy $C4.b,X		; B4 C4
	dec $1A22.w,X		; DE 22 1A
	ldy $D4.b		; A4 D4
	sbc $BFFFFF.l,X		; FF FF FF BF
	and [$3D.b],Y		; 37 3D
	cmp ($44.b,X)		; C1 44
	and ($65.b),Y		; 31 65
	bpl -65.b		; 10 BF
	pha		; 48
	cmp ($64.b,S),Y		; D3 64
	sbc ($71.b)		; F2 71
	plx		; FA
	ora $7E.b,S		; 03 7E
	jsr $42D0.w		; 20 D0 42
	beq  34.b		; F0 22
	sed		; F8
	clc		; 18
	bvs  92.b		; 70 5C
	jsr $432C.w		; 20 2C 43
	bit $53.b		; 24 53
	ora ($7D.b,X)		; 01 7D
	sbc $E7A57D.l		; EF 7D A5 E7
	bit $9981.w,X		; 3C 81 99
	sta ($7E.b,X)		; 81 7E
	lda $2481.w,X		; BD 81 24
	sbc [$3C.b]		; E7 3C
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	cmp $99.b,S		; C3 99
	sbc [$FF.b]		; E7 FF
	ror $C318.w,X		; 7E 18 C3
	sbc [$EF.b]		; E7 EF
	plx		; FA
	adc $BFEEEC.l,X		; 7F EC EE BF
	pla		; 68
	bcc -128.b		; 90 80
	bra  96.b		; 80 60
	rti		; 40

	bra   8.b		; 80 08
	bpl -114.b		; 10 8E
	eor ($04.b),Y		; 51 04
	rol A		; 2A
	rti		; 40

	plp		; 28
	cop $02.b		; 02 02
	rti		; 40

	cop $02.b		; 02 02
	dey		; 88
	tsb $CA.b		; 04 CA
	cmp $FFD59F.l,X		; DF 9F D5 FF
	asl $0F.b		; 06 0F
	ora $0D0110.l		; 0F 10 01 0D
	bpl  14.b		; 10 0E
	bpl  22.b		; 10 16
	jsr $0206.w		; 20 06 02
	asl $09.b		; 06 09
	ora ($0A.b,X)		; 01 0A
	ora ($05.b,X)		; 01 05
	phd		; 0B
	php		; 08
	asl $1410.w,X		; 1E 10 14
	ora #$09.b		; 09 09
	asl $FCE8.w,X		; 1E E8 FC
	sbc $C03B3F.l		; EF 3F 3B C0
	cpy $0A.b		; C4 0A
	ora $12080C.l,X		; 1F 0C 08 12
	and #$69.b		; 29 69
	lda $8484.w		; AD 84 84
	lsr A		; 4A
	lsr A		; 4A
	sbc $EF.b,X		; F5 EF
	ora $4C.b		; 05 4C
	cpx #$DF.b		; E0 DF
	sta $18FFF5.l,X		; 9F F5 FF 18
	bit $C23C.w,X		; 3C 3C C2
	cpx #$2C.b		; E0 2C
	cop $1C.b		; 02 1C
	cop $1A.b		; 02 1A
	ora ($18.b,X)		; 01 18
	bpl  24.b		; 10 18
	bit $A0.b		; 24 A0
	rti		; 40

	mvn $A8,$60		; 54 60 A8
	ldy $C4.b,X		; B4 C4
	dec $1A22.w,X		; DE 22 1A
	ldy $D4.b		; A4 D4
	sbc $BFFFFF.l,X		; FF FF FF BF
	and [$3D.b],Y		; 37 3D
	cmp ($44.b,X)		; C1 44
	and ($65.b),Y		; 31 65
	bpl -65.b		; 10 BF
	pha		; 48
	cmp ($64.b,S),Y		; D3 64
	sbc ($71.b)		; F2 71
	plx		; FA
	ora $7E.b,S		; 03 7E
	jsr $42D0.w		; 20 D0 42
	beq  34.b		; F0 22
	sed		; F8
	clc		; 18
	bvs  92.b		; 70 5C
	jsr $432C.w		; 20 2C 43
	bit $53.b		; 24 53
	ora ($7D.b,X)		; 01 7D
	sbc $E7A57D.l		; EF 7D A5 E7
	bit $9981.w,X		; 3C 81 99
	sta ($7E.b,X)		; 81 7E
	lda $2481.w,X		; BD 81 24
	sbc [$3C.b]		; E7 3C
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	cmp $99.b,S		; C3 99
	sbc [$FF.b]		; E7 FF
	ror $C318.w,X		; 7E 18 C3
	sbc [$FF.b]		; E7 FF
	sbc $ECBFFF.l,X		; FF FF BF EC
	ldy $2283.w,X		; BC 83 22
	sty $08A6.w		; 8C A6 08
	sbc $CB12.w,X		; FD 12 CB
	rol $4F.b		; 26 4F
	stx $C05F.w		; 8E 5F C0
	ror $2B04.w		; 6E 04 2B
	.db $42, $0F		; 42 0F
	mvp $18,$1F		; 44 1F 18
	asl $043A.w		; 0E 3A 04
	bit $C2.b,X		; 34 C2
	bit $CA.b		; 24 CA
	bra -33.b		; 80 DF
	sta $06FFD5.l,X		; 9F D5 FF 06
	ora $01100F.l		; 0F 0F 10 01
	ora $0E10.w		; 0D 10 0E
	bpl  22.b		; 10 16
	jsr $0206.w		; 20 06 02
	asl $09.b		; 06 09
	ora ($0A.b,X)		; 01 0A
	ora ($05.b,X)		; 01 05
	phd		; 0B
	php		; 08
	asl $1410.w,X		; 1E 10 14
	ora #$09.b		; 09 09
	asl $FCE8.w,X		; 1E E8 FC
	sbc $C03B3F.l		; EF 3F 3B C0
	cpy $0A.b		; C4 0A
	ora $12080C.l,X		; 1F 0C 08 12
	and #$69.b		; 29 69
	lda $8484.w		; AD 84 84
	lsr A		; 4A
	lsr A		; 4A
	sbc $EF.b,X		; F5 EF
	ora $4C.b		; 05 4C
	cpy #$DF.b		; C0 DF
	sta $18FFF5.l,X		; 9F F5 FF 18
	bit $C23C.w,X		; 3C 3C C2
	cpx #$2C.b		; E0 2C
	cop $1C.b		; 02 1C
	cop $1A.b		; 02 1A
	ora ($18.b,X)		; 01 18
	bpl  24.b		; 10 18
	bit $A0.b		; 24 A0
	rti		; 40

	mvn $A8,$60		; 54 60 A8
	ldy $C4.b,X		; B4 C4
	dec $1A22.w,X		; DE 22 1A
	ldy $D4.b		; A4 D4
	sbc $DFEFFF.l,X		; FF FF EF DF
	and $7F.b,S		; 23 7F
	bmi  65.b		; 30 41
	cop $40.b		; 02 40
	sec		; 38
	ora ($0D.b),Y		; 11 0D
	ora ($10.b),Y		; 11 10
	ora $06.b,S		; 03 06
	ora $2B.b		; 05 2B
	mvp $F2,$20		; 44 20 F2
	bmi -128.b		; 30 80
	ror A		; 6A
	sec		; 38
	ora $08.b		; 05 08
	ora $32.b,X		; 15 32
	plp		; 28
	ora $14.b		; 05 14
	sec		; 38
	sbc $7DEF.w,X		; FD EF 7D
	lda [$EF.b]		; A7 EF
	sbc ($08.b,S),Y		; F3 08
	sbc $3F08.w,Y		; F9 08 3F
	cpy #$9F.b		; C0 9F
	cmp [$0E.b]		; C7 0E
	sbc $3C.b,S		; E3 3C
	clc		; 18
	clc		; 18
	adc ($E1.b),Y		; 71 E1
	tsb $0EF9.w		; 0C F9 0E
	and $1C8038.l,X		; 3F 38 80 1C
.ACCU 16
	rep #$E4		; C2 E4
	sta [$00.b],Y		; 97 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra  79.b		; 80 4F
	sbc $AF45.w,X		; FD 45 AF
	ora $07.b,S		; 03 07
	tsb $08.b		; 04 08
	tsb $07.b		; 04 07
	asl A		; 0A
	bpl   3.b		; 10 03
	jsr $4008.w		; 20 08 40
	ora $04.b,S		; 03 04
	tsb $03.b		; 04 03
	tsb $04.b		; 04 04
	asl $3803.w		; 0E 03 38
	ror $7CC9.w,X		; 7E C9 7C
	cmp $C1BEBE.l		; CF BE BE C1
	ora ($80.b,X)		; 01 80
	cpy #$80.b		; C0 80
	bit $0C.b		; 24 0C
	and [$92.b],Y		; 37 92
	bit $2CAD.w		; 2C AD 2C
	rti		; 40

	ora ($92.b)		; 12 92
	ldy $80.b		; A4 80
	sta $B2.b		; 85 B2
	sed		; F8
	dex		; CA
	bne -73.b		; D0 B7
	bra -128.b		; 80 80
	rts		; 60

	rts		; 60

	bpl  64.b		; 10 40
	cpy #$20.b		; C0 20
	bne -128.b		; D0 80
	rti		; 40

	jsr $2060.w		; 20 60 20
	bra  32.b		; 80 20
	jsr $BF20.w		; 20 20 BF
	beq  35.b		; F0 23
	cpx $1F3D.w		; EC 3D 1F
	jsr $0520.w		; 20 20 05
	cop $01.b		; 02 01
	tsb $02.b		; 04 02
	bpl  32.b		; 10 20
	clc		; 18
	ora $05.b		; 05 05
	bpl  16.b		; 10 10
	tsb $08.b		; 04 08
	ora $FFFF.w,Y		; 19 FF FF
	sbc $F7E7.w,X		; FD E7 F7
	bra  -7.b		; 80 F9
	tsb $FC.b		; 04 FC
	tsb $9F.b		; 04 9F
	cpx #$4F.b		; E0 4F
	adc $07.b,S		; 63 07
	adc ($01.b),Y		; 71 01
	asl $038D.w,X		; 1E 8D 03
	sec		; 38
	bvs   6.b		; 70 06
	jmp ($1F07.w,X)		; 7C 07 1F
	bra  28.b		; 80 1C
	rti		; 40

	asl $0CE0.w		; 0E E0 0C
	bvs -53.b		; 70 CB
	sbc $C0FD01.l,X		; FF 01 FD C0
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	asl $63C0.w		; 0E C0 63
	stz $6653.w,X		; 9E 53 66
	lsr $98.b		; 46 98
	bra -128.b		; 80 80
	tsb $343F.w		; 0C 3F 34
	eor $D8.b,S		; 43 D8
	sty $DD4F.w		; 8C 4F DD
	eor $FF.b		; 45 FF
	ora ($03.b,X)		; 01 03
	cop $04.b		; 02 04
	cop $03.b		; 02 03
	ora $08.b		; 05 08
	ora ($08.b,X)		; 01 08
	bpl   1.b		; 10 01
	cop $02.b		; 02 02
	ora ($02.b,X)		; 01 02
	cop $07.b		; 02 07
	tsb $05.b		; 04 05
	cop $0A.b		; 02 0A
	adc $EF7DD9.l		; 6F D9 7D EF
	bra -33.b		; 80 DF
	eor $604060.l,X		; 5F 60 40 60
	cpy #$12.b		; C0 12
	bra   6.b		; 80 06
	tas		; 1B
	bra  73.b		; 80 49
	asl $56.b,X		; 16 56
	asl $20.b,X		; 16 20
	bit #$5249.w		; 89 49 52
	rti		; 40

	bra  66.b		; 80 42
	eor $CAF8.w,Y		; 59 F8 CA
	bne  -9.b		; D0 F7
	cpy #$C0.b		; C0 C0
	bmi  48.b		; 30 30
	php		; 08
	jsr $1060.w		; 20 60 10
	inx		; E8
	cpy #$20.b		; C0 20
	bpl  48.b		; 10 30
	bpl  64.b		; 10 40
	bpl  16.b		; 10 10
	bra  16.b		; 80 10
	txy		; 9B
	sbc $33FFA3.l,X		; FF A3 FF 33
	tda		; 7B
	ora ($02.b,X)		; 01 02
	ora $09.b,S		; 03 09
	ora $04.b		; 05 04
	cop $20.b		; 02 20
	rti		; 40

	trb $02.b		; 14 02
	bmi   2.b		; 30 02
	cop $01.b		; 02 01
	jsr $0829.w		; 20 29 08
	tsb $3010.w		; 0C 10 30
	php		; 08
	ora $EFFD.w,X		; 1D FD EF
	adc $EFE5.w,X		; 7D E5 EF
	sbc ($08.b,S),Y		; F3 08
	sbc $3F08.w,Y		; F9 08 3F
	cpy #$1F.b		; C0 1F
	eor [$0E.b]		; 47 0E
	.db $62, $1E, $8D		; 62 1E 8D
	ora $71.b,S		; 03 71
	sbc ($0C.b,X)		; E1 0C
	sbc $3F0E.w,Y		; F9 0E 3F
	sec		; 38
	trb $0CE0.w		; 1C E0 0C
	bvs -105.b		; 70 97
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	eor $BF45DD.l		; 4F DD 45 BF
	ora $07.b,S		; 03 07
	tsb $08.b		; 04 08
	tsb $07.b		; 04 07
	asl A		; 0A
	bpl   3.b		; 10 03
	trb $20.b		; 14 20
	ora $04.b,S		; 03 04
	tsb $03.b		; 04 03
	tsb $04.b		; 04 04
	asl $0F0C.w		; 0E 0C 0F
	trb $7E.b		; 14 7E
	cmp #$CF7C.w		; C9 7C CF
	ldx $C1BE.w,Y		; BE BE C1
	ora ($80.b,X)		; 01 80
	cpy #$80.b		; C0 80
	bit $0C.b		; 24 0C
	and [$92.b],Y		; 37 92
	bit $2CAD.w		; 2C AD 2C
	rti		; 40

	ora ($92.b)		; 12 92
	ldy $80.b		; A4 80
	sta $B2.b		; 85 B2
	sed		; F8
	dex		; CA
	bne -73.b		; D0 B7
	bra -128.b		; 80 80
	rts		; 60

	rts		; 60

	bpl  64.b		; 10 40
	cpy #$20.b		; C0 20
	bne -128.b		; D0 80
	rti		; 40

	jsr $2060.w		; 20 60 20
	bra  32.b		; 80 20
	jsr $EF20.w		; 20 20 EF
	plx		; FA
	adc $FD77EC.l,X		; 7F EC 77 FD
	asl $09.b,X		; 16 09
	ora ($01.b,X)		; 01 01
	asl $02.b		; 06 02
	ora ($10.b,X)		; 01 10
	php		; 08
	adc ($82.b),Y		; 71 82
	jsr $0250.w		; 20 50 02
	bpl  64.b		; 10 40
	rti		; 40

	cop $40.b		; 02 40
	rti		; 40

	ora ($20.b),Y		; 11 20
	eor ($55.b,S),Y		; 53 55
	sbc $E7A555.l		; EF 55 A5 E7
	phy		; 5A
	sbc $81BD7E.l,X		; FF 7E BD 81
	bit $E7.b		; 24 E7
	bit $1818.w,X		; 3C 18 18
	clc		; 18
	sbc $7EFF18.l,X		; FF 18 FF 7E
	clc		; 18
	cmp $E7.b,S		; C3 E7
	sbc $EC7FFA.l		; EF FA 7F EC
	inc $68BF.w		; EE BF 68
	bcc -128.b		; 90 80
	bra  96.b		; 80 60
	rti		; 40

	bra   8.b		; 80 08
	bpl -114.b		; 10 8E
	eor ($04.b),Y		; 51 04
	rol A		; 2A
	rti		; 40

	plp		; 28
	cop $02.b		; 02 02
	rti		; 40

	cop $02.b		; 02 02
	dey		; 88
	tsb $CA.b		; 04 CA
	cmp $FFD59F.l,X		; DF 9F D5 FF
	asl $0F.b		; 06 0F
	ora $0D0110.l		; 0F 10 01 0D
	bpl  14.b		; 10 0E
	bpl  22.b		; 10 16
	jsr $0206.w		; 20 06 02
	asl $09.b		; 06 09
	ora ($0A.b,X)		; 01 0A
	ora ($05.b,X)		; 01 05
	phd		; 0B
	php		; 08
	asl $1410.w,X		; 1E 10 14
	ora #$1E09.w		; 09 09 1E
	inx		; E8
	jsr ($3FEF.w,X)		; FC EF 3F
	tsa		; 3B
	cpy #$C4.b		; C0 C4
	asl A		; 0A
	ora $12080C.l,X		; 1F 0C 08 12
	and #$AD69.w		; 29 69 AD
	sty $84.b		; 84 84
	rti		; 40

	rti		; 40

	sbc $4C05E5.l,X		; FF E5 05 4C
	cpy #$DF.b		; C0 DF
	sta $18FFF5.l,X		; 9F F5 FF 18
	bit $C23C.w,X		; 3C 3C C2
	cpx #$2C.b		; E0 2C
	cop $1C.b		; 02 1C
	cop $1A.b		; 02 1A
	ora ($18.b,X)		; 01 18
	bpl  24.b		; 10 18
	bit $A0.b		; 24 A0
	rti		; 40

	mvn $A8,$60		; 54 60 A8
	ldy $C4.b,X		; B4 C4
	dec $1A22.w,X		; DE 22 1A
	ldy $D4.b		; A4 D4
	adc $FFD7.w,X		; 7D D7 FF
	ldy #$15.b		; A0 15
	ora ($01.b)		; 12 01
	ora $0A01.w		; 0D 01 0A
	ora [$01.b]		; 07 01
	ora $04.b,S		; 03 04
	asl A		; 0A
	tsb $0E.b		; 04 0E
	asl $0D0C.w		; 0E 0C 0D
	ora $03.b,S		; 03 03
	ora $04.b		; 05 04
	ora $05.b,S		; 03 05
	adc $7F5F.w,X		; 7D 5F 7F
	sbc $CE.b		; E5 CE
	adc $3202.w,Y		; 79 02 32
	cop $FD.b		; 02 FD
	tda		; 7B
	cop $CF.b		; 02 CF
	pha		; 48
	sei		; 78
	ora ($31.b,X)		; 01 31
	ora ($30.b,X)		; 01 30
	stx $33.b		; 86 33
	cmp $30FCFE.l		; CF FE FC 30
	sta [$30.b]		; 87 30
	inc $D155.w,X		; FE 55 D1
	cmp $20A080.l		; CF 80 A0 20
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	rti		; 40

	bra -64.b		; 80 C0
	cpy #$C0.b		; C0 C0
	cpy #$80.b		; C0 80
	bra -128.b		; 80 80
	bvc  21.b		; 50 15
	cpy #$0C.b		; C0 0C
	ora ($03.b,X)		; 01 03
	ora ($06.b,X)		; 01 06
	cop $01.b		; 02 01
	ora ($02.b,X)		; 01 02
	cop $F5.b		; 02 F5
	sbc [$3C.b],Y		; F7 3C
	jmp ($E93F.w,X)		; 7C 3F E9
	stz $AE31.w		; 9C 31 AE
	rol A		; 2A
	tad		; 5B
	tas		; 1B
	cmp $B5.b,X		; D5 B5
	asl A		; 0A
	jmp $3B08.w		; 4C 08 3B
	tsa		; 3B
	cpy $C4.b		; C4 C4
	asl A		; 0A
	asl A		; 0A
	sta $95.b,X		; 95 95
	tsb $5554.w		; 0C 54 55
	beq  60.b		; F0 3C
	cpy #$60.b		; C0 60
	bvs -96.b		; 70 A0
	cld		; D8
	bvc -128.b		; 50 80
	cpy #$C0.b		; C0 C0
	jsr $1020.w		; 20 20 10
	bpl  64.b		; 10 40
	rti		; 40

	sbc $FF7D.w,X		; FD 7D FF
	adc $40C90A.l,X		; 7F 0A C9 40
	rol $60.b,X		; 36 60
	ora $1B30.w,X		; 1D 30 1B
	ora $12.b		; 05 12
	ora $0A.b,S		; 03 0A
	ora $07.b		; 05 07
	cmp [$46.b]		; C7 46
	inc $21.b,X		; F6 21
	sbc $7A12.w,Y		; F9 12 7A
	tsb $0C30.w		; 0C 30 0C
	cop $06.b		; 02 06
	cop $02.b		; 02 02
	adc $7D5F.w,X		; 7D 5F 7D
	sbc $E7.b		; E5 E7
	bit $9981.w,X		; 3C 81 99
	sta ($7E.b,X)		; 81 7E
	lda $E781.w,X		; BD 81 E7
	bit $3C.b		; 24 3C
	bra  24.b		; 80 18
	clc		; 18
	cmp $99.b,S		; C3 99
	sbc [$FF.b]		; E7 FF
	ror $C318.w,X		; 7E 18 C3
	clc		; 18
	adc $FFD555.l,X		; 7F 55 D5 FF
	ldy #$50.b		; A0 50
	bcc  96.b		; 90 60
	ldy #$C0.b		; A0 C0
	bra  64.b		; 80 40
	ldy #$40.b		; A0 40
	cpx #$E0.b		; E0 E0
	rts		; 60

	rts		; 60

	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bra  64.b		; 80 40
	bvc  21.b		; 50 15
	cpy #$0C.b		; C0 0C
	ora ($03.b,X)		; 01 03
	ora ($06.b,X)		; 01 06
	cop $01.b		; 02 01
	ora ($02.b,X)		; 01 02
	cop $F5.b		; 02 F5
	sbc [$3C.b],Y		; F7 3C
	jmp ($E93F.w,X)		; 7C 3F E9
	stz $AE31.w		; 9C 31 AE
	rol A		; 2A
	tad		; 5B
	tas		; 1B
	sbc $95.b,X		; F5 95
	asl A		; 0A
	jmp $3B08.w		; 4C 08 3B
	tsa		; 3B
	cpy $C4.b		; C4 C4
	asl A		; 0A
	asl A		; 0A
	sta $95.b,X		; 95 95
	tsb $5554.w		; 0C 54 55
	beq  60.b		; F0 3C
	cpy #$60.b		; C0 60
	bvs -96.b		; 70 A0
	cld		; D8
	bvc -128.b		; 50 80
	cpy #$C0.b		; C0 C0
	jsr $1020.w		; 20 20 10
	bpl  64.b		; 10 40
	rti		; 40

	sbc $FF7D.w,X		; FD 7D FF
	adc $40C90A.l,X		; 7F 0A C9 40
	rol $60.b,X		; 36 60
	ora $1B30.w,X		; 1D 30 1B
	ora $12.b		; 05 12
	cop $0A.b		; 02 0A
	ora $07.b		; 05 07
	cmp [$46.b]		; C7 46
	inc $21.b,X		; F6 21
	sbc $7A12.w,Y		; F9 12 7A
	tsb $0C30.w		; 0C 30 0C
	cop $06.b		; 02 06
	ora $02.b,S		; 03 02
	adc $7D1F.w,X		; 7D 1F 7D
	sbc $E7.b		; E5 E7
	bit $9981.w,X		; 3C 81 99
	sta ($7E.b,X)		; 81 7E
	lda $E781.w,X		; BD 81 E7
	bit $3C.b		; 24 3C
	clc		; 18
	clc		; 18
	cmp $99.b,S		; C3 99
	sbc [$FF.b]		; E7 FF
	ror $C318.w,X		; 7E 18 C3
	clc		; 18
	sbc $FFFDFD.l,X		; FF FD FD FF
	lda $02B350.l,X		; BF 50 B3 02
	jmp ($B806.w)		; 6C 06 B8
	tsb $A0D8.w		; 0C D8 A0
	pha		; 48
	rti		; 40

	bpl -96.b		; 10 A0
	rti		; 40

	cpx #$E3.b		; E0 E3
	.db $42, $4F		; 42 4F
	sty $9F.b		; 84 9F
	pha		; 48
	lsr $0C30.w,X		; 5E 30 0C
	bmi  64.b		; 30 40
	jsr $4080.w		; 20 80 40
	mvn $F0,$55		; 54 55 F0
	bit $0603.w,X		; 3C 03 06
	asl $1B05.w		; 0E 05 1B
	asl A		; 0A
	ora ($03.b,X)		; 01 03
	ora $04.b,S		; 03 04
	tsb $08.b		; 04 08
	php		; 08
	cop $02.b		; 02 02
	sbc $F7.b,X		; F5 F7
	bit $FC7C.w,X		; 3C 7C FC
	lda [$71.b]		; A7 71
	cpy $B9.b		; C4 B9
	tay		; A8
	ror $D76C.w		; 6E 6C D7
	eor $28.b,X		; 55 28
	and ($20.b)		; 32 20
	cpx $13EC.w		; EC EC 13
	ora ($28.b,S),Y		; 13 28
	plp		; 28
	eor $55.b,X		; 55 55
	bmi  80.b		; 30 50
	ora $C0.b,X		; 15 C0
	tsb $C080.w		; 0C 80 C0
	bra  96.b		; 80 60
	rti		; 40

	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	cmp $7FDFFB.l,X		; DF FB DF 7F
	bit $31.b		; 24 31
	trb $28.b		; 14 28
	sec		; 38
	bpl  20.b		; 10 14
	trb $0801.w		; 1C 01 08
	asl $0C.b		; 06 0C
	ora $0C.b,S		; 03 0C
	ror A		; 6A
	ply		; 7A
	jmp ($3844.w,X)		; 7C 44 38
	bit $20.b		; 24 20
	clc		; 18
	tsb $19.b		; 04 19
	ora ($0C.b,S),Y		; 13 0C
	ora #$FD04.w		; 09 04 FD
	sbc $2FAD7D.l		; EF 7D AD 2F
	cmp ($08.b,S),Y		; D3 08
	adc $FF08.w,Y		; 79 08 FF
	bra  63.b		; 80 3F
	sta [$2E.b]		; 87 2E
	adc [$3E.b]		; 67 3E
	clc		; 18
	clc		; 18
	cmp ($E1.b),Y		; D1 E1
	tsb $0EF9.w		; 0C F9 0E
	adc $809878.l,X		; 7F 78 98 80
	cpy #$E4.b		; C0 E4
	lda $000300.l		; AF 00 03 00
	ldy #$80.b		; A0 80
	rti		; 40

	bra -128.b		; 80 80
	bra  64.b		; 80 40
	rti		; 40

	mvn $30,$D5		; 54 D5 30
	sbc ($01.b,S),Y		; F3 01
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	php		; 08
	and $010110.l,X		; 3F 10 01 01
	cop $02.b		; 02 02
	bmi  48.b		; 30 30
	rol $FD0E.w		; 2E 0E FD
	cmp $0C.b,X		; D5 0C
	cpy $197F.w		; CC 7F 19
	clc		; 18
	stx $17.b,Y		; 96 17
	sta $76A40F.l		; 8F 0F A4 76
	bra 126.b		; 80 7E
	tsb $FFFF.w		; 0C FF FF
	bit $24.b		; 24 24
	adc [$7B.b],Y		; 77 7B
	mvn $F0,$CD		; 54 CD F0
	ora $6060D0.l		; 0F D0 60 60
	sec		; 38
	bpl  64.b		; 10 40
	bpl -64.b		; 10 C0
	cpy #$C0.b		; C0 C0
	jsr $5020.w		; 20 20 50
	bvc -128.b		; 50 80
	bra  81.b		; 80 51
	trb $C3.b		; 14 C3
	tsb $020A.w		; 0C 0A 02
	tsb $0307.w		; 0C 07 03
	ora [$07.b]		; 07 07
	tsb $04.b		; 04 04
	ora $03.b,S		; 03 03
	sbc $BF7DFF.l,X		; FF FF 7D BF
	ora [$80.b],Y		; 17 80
	adc #$3C84.w		; 69 84 3C
	sty $7F.b		; 84 7F
	cpy #$1F.b		; C0 1F
	eor $17.b,S		; 43 17
	and ($C0.b,S),Y		; 33 C0
	asl $0D0D.w,X		; 1E 0D 0D
	pla		; 68
	bvs   6.b		; 70 06
	jmp ($3F07.w,X)		; 7C 07 3F
	ldy $CC80.w,X		; BC 80 CC
	cpy #$01.b		; C0 01
	and ($32.b,X)		; 21 32
	ora [$FF.b],Y		; 17 FF
	ora $40D0FF.l		; 0F FF D0 40
	bvs  32.b		; 70 20
	php		; 08
	cpy #$CC.b		; C0 CC
	asl $F670.w		; 0E 70 F6
	cpx $98.b		; E4 98
	ldy #$20.b		; A0 20
	jsr $8620.w		; 20 20 86
	asl $7133.w		; 0E 33 71
	sta [$81.b]		; 87 81
	ply		; 7A
	asl $54.b		; 06 54
	eor $3C.b,X		; 55 3C
	and ($02.b,S),Y		; 33 02
	ora [$03.b]		; 07 03
	ora $0C1D02.l		; 0F 02 1D 0C
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	sbc $3CC5.w,X		; FD C5 3C
	cpy $33FE.w		; CC FE 33
	bmi  44.b		; 30 2C
	rol $1E1E.w		; 2E 1E 1E
	pha		; 48
	cpx $19FC.w		; EC FC 19
	inc $01FE.w,X		; FE FE 01
	ora ($49.b,X)		; 01 49
	eor #$F6EE.w		; 49 EE F6
	mvn $F0,$CD		; 54 CD F0
	ora $A0.b,S		; 03 A0
	cpy #$C0.b		; C0 C0
	bvs  32.b		; 70 20
	bra  32.b		; 80 20
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	rti		; 40

	ldy #$A0.b		; A0 A0
	eor ($56.b,S),Y		; 53 56
	cmp $3F.b,S		; C3 3F
	trb $01.b		; 14 01
	tsb $18.b		; 04 18
	ora ($0E.b,X)		; 01 0E
	ora [$01.b]		; 07 01
	asl $080E.w		; 0E 0E 08
	php		; 08
	ora ($01.b,X)		; 01 01
	asl $06.b		; 06 06
	ora ($01.b,X)		; 01 01
	sbc $7DEF.w,X		; FD EF 7D
	lda $D32F.w		; AD 2F D3
	php		; 08
	adc $FF08.w,Y		; 79 08 FF
	bra  63.b		; 80 3F
	sta [$2E.b]		; 87 2E
	adc [$3E.b]		; 67 3E
	clc		; 18
	clc		; 18
	cmp ($E1.b),Y		; D1 E1
	tsb $0EF9.w		; 0C F9 0E
	adc $809878.l,X		; 7F 78 98 80
	cpy #$E4.b		; C0 E4
	lda $000300.l		; AF 00 03 00
	ldy #$80.b		; A0 80
	rti		; 40

	bra -128.b		; 80 80
	bra  64.b		; 80 40
	rti		; 40

	mvn $30,$55		; 54 55 30
	and ($01.b,S),Y		; 33 01
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	asl $0106.w		; 0E 06 01
	ora ($02.b,X)		; 01 02
	cop $04.b		; 02 04
	tsb $FD.b		; 04 FD
	cmp $0C.b,X		; D5 0C
	cpy $197F.w		; CC 7F 19
	clc		; 18
	stx $17.b,Y		; 96 17
	sta $76A40F.l		; 8F 0F A4 76
	bra 126.b		; 80 7E
	tsb $FFFF.w		; 0C FF FF
	bit $24.b		; 24 24
	adc [$7B.b],Y		; 77 7B
	mvn $F0,$CD		; 54 CD F0
	ora $6060D0.l		; 0F D0 60 60
	sec		; 38
	bpl  64.b		; 10 40
	bpl -64.b		; 10 C0
	cpy #$C0.b		; C0 C0
	jsr $5020.w		; 20 20 50
	bvc -128.b		; 50 80
	bra  84.b		; 80 54
	eor $F0.b,X		; 55 F0
	bit $0603.w,X		; 3C 03 06
	asl $1B05.w		; 0E 05 1B
	asl A		; 0A
	ora ($03.b,X)		; 01 03
	ora $04.b,S		; 03 04
	tsb $08.b		; 04 08
	php		; 08
	cop $02.b		; 02 02
	sbc $F7.b,X		; F5 F7
	bit $FC7C.w,X		; 3C 7C FC
	lda [$71.b]		; A7 71
	cpy $B9.b		; C4 B9
	tay		; A8
	ror $D76C.w		; 6E 6C D7
	eor $28.b,X		; 55 28
	and ($20.b)		; 32 20
	cpx $13EC.w		; EC EC 13
	ora ($28.b,S),Y		; 13 28
	plp		; 28
	eor $55.b,X		; 55 55
	bmi  80.b		; 30 50
	ora $C0.b,X		; 15 C0
	tsb $C080.w		; 0C 80 C0
	bra  96.b		; 80 60
	rti		; 40

	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	eor $D1.b,X		; 55 D1
	cmp $040580.l		; CF 80 05 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	cop $01.b		; 02 01
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($55.b,X)		; 01 55
	eor $73E577.l,X		; 5F 77 E5 73
	lda $BF7F.w		; AD 7F BF
	dec $F340.w,X		; DE 40 F3
	ora ($1E.b)		; 12 1E
	bra -116.b		; 80 8C
	bra 127.b		; 80 7F
	sty $7F80.w		; 8C 80 7F
	and $0CE10C.l,X		; 3F 0C E1 0C
	adc $FFD755.l,X		; 7F 55 D7 FF
	ldy #$A8.b		; A0 A8
	pha		; 48
	bcs  80.b		; B0 50
	cpx #$80.b		; E0 80
	cpy #$20.b		; C0 20
	bvc  32.b		; 50 20
	bvs 112.b		; 70 70
	bcs  48.b		; B0 30
	rti		; 40

	rti		; 40

	ldy #$20.b		; A0 20
	cpy #$A0.b		; C0 A0
	cmp $F7.b,X		; D5 F7
	brk $90.b		; 00 90
	ora $06070F.l		; 0F 0F 07 06
	ora ($0E.b,X)		; 01 0E
	ora ($0F.b,X)		; 01 0F
	asl $0C01.w		; 0E 01 0C
	cop $01.b		; 02 01
	ora $7F.b,S		; 03 7F
	sbc $E7557D.l		; EF 7D 55 E7
	bpl  24.b		; 10 18
	sbc [$99.b]		; E7 99
	sbc [$7E.b]		; E7 7E
	lda $5A81.w,X		; BD 81 5A
	cmp $FF.b,S		; C3 FF
	clc		; 18
	sbc $811808.l,X		; FF 08 18 81
	stp		; DB
	sta ($FF.b,X)		; 81 FF
	ror $C33C.w,X		; 7E 3C C3
	sbc [$D1.b]		; E7 D1
	jsr ($D000.w,X)		; FC 00 D0
	cpx #$10.b		; E0 10
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	rti		; 40

	cpy #$80.b		; C0 80
	bra -64.b		; 80 C0
	bvc -47.b		; 50 D1
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	php		; 08
	bpl   1.b		; 10 01
	ora ($D4.b,X)		; 01 D4
	sbc [$F0.b],Y		; F7 F0
	eor $553BEC.l		; 4F EC 3B 55
	mvp $20,$A1		; 44 A1 20
	xce		; FB
	sbc $34DB10.l,X		; FF 10 DB 34
	cpy $C4.b		; C4 C4
	tax		; AA
	inc $7E5E.w		; EE 5E 7E
	tsb $04.b		; 04 04
	bpl  64.b		; 10 40
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
	rti		; 40

	sbc $FEEF.w,X		; FD EF FE
	lda $40CF0F.l,X		; BF 0F CF 40
	and [$60.b],Y		; 37 60
	ora ($3D.b)		; 12 3D
	php		; 08
	ora ($04.b,S),Y		; 13 04
	ora ($0B.b,S),Y		; 13 0B
	asl A		; 0A
	ora [$C0.b]		; 07 C0
	rti		; 40

	beq  32.b		; F0 20
	sed		; F8
	clc		; 18
	bvs  28.b		; 70 1C
	jsr $020D.w		; 20 0D 02
	tsb $03.b		; 04 03
	ora ($7F.b,X)		; 01 7F
	sbc $E7557D.l		; EF 7D 55 E7
	bpl  24.b		; 10 18
	sbc [$99.b]		; E7 99
	sbc [$7E.b]		; E7 7E
	lda $5A81.w,X		; BD 81 5A
	cmp $FF.b,S		; C3 FF
	clc		; 18
	sbc $811808.l,X		; FF 08 18 81
	stp		; DB
	sta ($FF.b,X)		; 81 FF
	ror $C33C.w,X		; 7E 3C C3
	sbc [$D1.b]		; E7 D1
	jsr ($D000.w,X)		; FC 00 D0
	cpx #$10.b		; E0 10
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	rti		; 40

	cpy #$80.b		; C0 80
	bra -64.b		; 80 C0
	rti		; 40

	ora ($00.b),Y		; 11 00
	brk $01.b		; 00 01
	cop $04.b		; 02 04
	pei ($F7.b)		; D4 F7
	beq  79.b		; F0 4F
	tsa		; 3B
	dec $11D5.w		; CE D5 11
	inx		; E8
	php		; 08
	inc $04FF.w,X		; FE FF 04
	ldx $4D.b,Y		; B6 4D
	and ($31.b),Y		; 31 31
	rol A		; 2A
	tsa		; 3B
	ora [$1F.b],Y		; 17 1F
	ora ($01.b,X)		; 01 01
	tsb $50.b		; 04 50
	tsb $C0.b		; 04 C0
	tsb $A0C0.w		; 0C C0 A0
	bcc -128.b		; 90 80
	bra -128.b		; 80 80
	bra  -3.b		; 80 FD
	sbc $0FBFFE.l		; EF FE BF 0F
	cmp $603740.l		; CF 40 37 60
	ora ($3D.b)		; 12 3D
	php		; 08
	ora ($04.b,S),Y		; 13 04
	ora ($0B.b,S),Y		; 13 0B
	asl A		; 0A
	ora [$C0.b]		; 07 C0
	rti		; 40

	beq  32.b		; F0 20
	sed		; F8
	clc		; 18
	bvs  28.b		; 70 1C
	jsr $020D.w		; 20 0D 02
	tsb $03.b		; 04 03
	ora ($7F.b,X)		; 01 7F
	sbc $E7557D.l		; EF 7D 55 E7
	bpl  24.b		; 10 18
	sbc [$99.b]		; E7 99
	sbc [$7E.b]		; E7 7E
	lda $5A81.w,X		; BD 81 5A
	cmp $FF.b,S		; C3 FF
	clc		; 18
	sbc $811808.l,X		; FF 08 18 81
	stp		; DB
	sta ($FF.b,X)		; 81 FF
	ror $C33C.w,X		; 7E 3C C3
	sbc [$FD.b]		; E7 FD
	sbc $E0BFFE.l		; EF FE BF E0
	sbc $02.b,S		; E3 02
	cpx $4806.w		; EC 06 48
	ldy $C810.w,X		; BC 10 C8
	jsr $D0C8.w		; 20 C8 D0
	bvc -32.b		; 50 E0
	ora $02.b,S		; 03 02
	ora $181F04.l		; 0F 04 1F 18
	asl $0438.w		; 0E 38 04
	bcs  64.b		; B0 40
	jsr $80C0.w		; 20 C0 80
	bvc -47.b		; 50 D1
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	php		; 08
	bpl   1.b		; 10 01
	ora ($D4.b,X)		; 01 D4
	sbc [$F0.b],Y		; F7 F0
	eor $553BEC.l		; 4F EC 3B 55
	mvp $20,$A1		; 44 A1 20
	xce		; FB
	sbc $34DB10.l,X		; FF 10 DB 34
	cpy $C4.b		; C4 C4
	tax		; AA
	inc $7E5E.w		; EE 5E 7E
	tsb $04.b		; 04 04
	bpl  64.b		; 10 40
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
	rti		; 40

	sbc $FEFF.w,X		; FD FF FE
	lda $40CF0F.l,X		; BF 0F CF 40
	and [$60.b],Y		; 37 60
	ora ($3D.b)		; 12 3D
	php		; 08
	ora ($04.b,S),Y		; 13 04
	ora ($10.b,S),Y		; 13 10
	phd		; 0B
	inc A		; 1A
	ora [$C0.b]		; 07 C0
	rti		; 40

	beq  32.b		; F0 20
	sed		; F8
	clc		; 18
	bvs  28.b		; 70 1C
	jsr $020D.w		; 20 0D 02
	tsb $03.b		; 04 03
	ora ($FF.b,X)		; 01 FF
	lda $EF557D.l		; AF 7D 55 EF
	ora ($72.b,X)		; 01 72
	tsb $0E79.w		; 0C 79 0E
	lda $03DF40.l,X		; BF 40 DF 03
	cmp [$33.b],Y		; D7 33
	inc $10FC.w,X		; FE FC 10
	sbc ($08.b,X)		; E1 08
	sbc $3F08.w,X		; FD 08 3F
	bit $E00C.w,X		; 3C 0C E0
	jsr ($0095.w,X)		; FC 95 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	bvc   4.b		; 50 04
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	tsb $D5.b		; 04 D5
	cmp $01FFC1.l,X		; DF C1 FF 01
	sbc $08FAFF.l,X		; FF FF FA 08
	sbc #$DC09.w		; E9 09 DC
	bpl -37.b		; 10 DB
	lda ($09.b)		; B2 09
	ora ($05.b,X)		; 01 05
	ora $1F16.w		; 0D 16 1F
	and $33.b,S		; 23 33
	bit $24.b		; 24 24
	mvp $51,$40		; 44 40 51
	eor $01.b,X		; 55 01
	and $F0C080.l,X		; 3F 80 C0 F0
	bvs  56.b		; 70 38
	sei		; 78
	sed		; F8
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	cpy #$80.b		; C0 80
	bra   5.b		; 80 05
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	php		; 08
	sbc $7DBF.w,X		; FD BF 7D
	eor $F7.b,X		; 55 F7
	lda $BC06.w,Y		; B9 06 BC
	ora [$DF.b]		; 07 DF
	jsr $01EF.w		; 20 EF 01
	xba		; EB
	ora $7F80.w,Y		; 19 80 7F
	inc $7008.w,X		; FE 08 70
	tsb $7E.b		; 04 7E
	tsb $1F.b		; 04 1F
	asl $7006.w,X		; 1E 06 70
	sbc $04FEDF.l,X		; FF DF FE 04
	sbc $8080E0.l,X		; FF E0 80 80
	bra -96.b		; 80 A0
	rti		; 40

	rti		; 40

	cpy #$16.b		; C0 16
	rol $728C.w		; 2E 8C 72
	stz $808C.w,X		; 9E 8C 80
	bra  14.b		; 80 0E
	asl $11.b		; 06 11
	rol $D801.w,X		; 3E 01 D8
	cop $54.b		; 02 54
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	cop $04.b		; 02 04
	php		; 08
	pei ($DF.b)		; D4 DF
	cpy #$FF.b		; C0 FF
	inc $F5FF.w,X		; FE FF F5
	bpl -46.b		; 10 D2
	ora ($B8.b)		; 12 B8
	jsr $65B6.w		; 20 B6 65
	ora ($0A.b)		; 12 0A
	inc A		; 1A
	and $473F.w		; 2D 3F 47
	adc [$49.b]		; 67 49
	eor #$8088.w		; 49 88 80
	bvc  85.b		; 50 55
	brk $0C.b		; 00 0C
	bra -32.b		; 80 E0
	cpx #$70.b		; E0 70
	beq -16.b		; F0 F0
	bra -128.b		; 80 80
	ora $C0.b		; 05 C0
	brk $40.b		; 00 40
	ora $010110.l		; 0F 10 01 01
	ora ($FF.b,X)		; 01 FF
	lda $EF557D.l		; AF 7D 55 EF
	ora ($72.b,X)		; 01 72
	tsb $0E79.w		; 0C 79 0E
	lda $03DF40.l,X		; BF 40 DF 03
	cmp [$33.b],Y		; D7 33
	inc $10FC.w,X		; FE FC 10
	sbc ($08.b,X)		; E1 08
	sbc $3F08.w,X		; FD 08 3F
	bit $E00C.w,X		; 3C 0C E0
	jsr ($0095.w,X)		; FC 95 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	mvn $00,$44		; 54 44 00
	cpy #$03.b		; C0 03
	tsb $08.b		; 04 08
	bpl   1.b		; 10 01
	ora ($01.b,X)		; 01 01
	pei ($DF.b)		; D4 DF
	cpy #$7F.b		; C0 7F
	jsr ($EBFF.w,X)		; FC FF EB
	jsr $24A5.w		; 20 A5 24
	bvs  64.b		; 70 40
	adc $24CB.w		; 6D CB 24
	trb $34.b		; 14 34
	phy		; 5A
	ror $CF8F.w,X		; 7E 8F CF
	sta ($92.b)		; 92 92
	bpl  64.b		; 10 40
	tsb $00.b		; 04 00
	brk $C0.b		; 00 C0
	jsr $F7D5.w		; 20 D5 F7
	brk $90.b		; 00 90
	ora $06070F.l		; 0F 0F 07 06
	ora ($0E.b,X)		; 01 0E
	ora ($0F.b,X)		; 01 0F
	asl $0C01.w		; 0E 01 0C
	cop $01.b		; 02 01
	ora $57.b,S		; 03 57
	sbc $E75555.l		; EF 55 55 E7
	bpl  90.b		; 10 5A
	sbc $81BD7E.l,X		; FF 7E BD 81
	phy		; 5A
	cmp $FF.b,S		; C3 FF
	clc		; 18
	sbc $18FF08.l,X		; FF 08 FF 18
	sbc $C33C7E.l,X		; FF 7E 3C C3
	sbc [$D1.b]		; E7 D1
	jsr ($D000.w,X)		; FC 00 D0
	cpx #$10.b		; E0 10
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	rti		; 40

	cpy #$80.b		; C0 80
	bra -64.b		; 80 C0
	bvc -47.b		; 50 D1
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	php		; 08
	bpl   1.b		; 10 01
	ora ($D4.b,X)		; 01 D4
	sbc [$F0.b],Y		; F7 F0
	eor $553BEC.l		; 4F EC 3B 55
	mvp $20,$A1		; 44 A1 20
	xce		; FB
	sbc $34DB10.l,X		; FF 10 DB 34
	cpy $C4.b		; C4 C4
	tax		; AA
	inc $7E5E.w		; EE 5E 7E
	tsb $04.b		; 04 04
	bpl  64.b		; 10 40
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
	rti		; 40

	lda $B000A2.l,X		; BF A2 00 B0
	ora [$0F.b]		; 07 0F
	ora $06.b,S		; 03 06
	ora ($06.b,X)		; 01 06
	ora $01.b,S		; 03 01
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	ora $7F.b,S		; 03 7F
	sbc $F57D.w		; ED 7D F5
	sbc [$10.b]		; E7 10
	bit $99C3.w,X		; 3C C3 99
	sbc [$FF.b]		; E7 FF
	ror $C35A.w,X		; 7E 5A C3
	sbc $08FF18.l,X		; FF 18 FF 08
	phy		; 5A
	cmp $FF.b,S		; C3 FF
	sbc [$FF.b]		; E7 FF
	sbc $C3C33C.l,X		; FF 3C C3 C3
	sbc [$E7.b]		; E7 E7
	sbc $B000BF.l,X		; FF BF 00 B0
	bne -24.b		; D0 E8
	cld		; D8
	pla		; 68
	clv		; B8
	cli		; 58
	sec		; 38
	jmp.w [$BE54]		; DC 54 BE
	bcc  56.b		; 90 38
	jsr $60F0.w		; 20 F0 60
	bra -128.b		; 80 80
	cpy #$F8.b		; C0 F8
	and $081540.l,X		; 3F 40 15 08
	php		; 08
	ora [$06.b],Y		; 17 06
	ora ($0A.b,X)		; 01 0A
	ora ($09.b)		; 12 09
	ora ($02.b),Y		; 11 02
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $FE.b		; 02 FE
	and $015550.l,X		; 3F 50 55 01
	ora ($FA.b,X)		; 01 FA
	clv		; B8
	mvp $C0,$C3		; 44 C3 C0
	adc [$62.b]		; 67 62
	lda $FBE1.w,X		; BD E1 FB
	ora $40.b,S		; 03 40
	cpy #$62.b		; C0 62
	sbc ($03.b,X)		; E1 03
	clc		; 18
	rol $A0F3.w,X		; 3E F3 A0
	php		; 08
	cpy #$C0.b		; C0 C0
	jsr $10E0.w		; 20 E0 10
	bvc  72.b		; 50 48
	cpy #$60.b		; C0 60
	bpl   8.b		; 10 08
	bra -64.b		; 80 C0
	rti		; 40

	sbc $BFFEEF.l,X		; FF EF FE BF
	ora [$0F.b]		; 07 0F
	cmp $46.b,S		; C3 46
	and ($66.b),Y		; 31 66
	bpl  63.b		; 10 3F
	php		; 08
	ora ($04.b,S),Y		; 13 04
	ora ($0B.b,S),Y		; 13 0B
	cop $07.b		; 02 07
	cpy #$40.b		; C0 40
	beq  32.b		; F0 20
	sed		; F8
	clc		; 18
	bvs  28.b		; 70 1C
	jsr $030D.w		; 20 0D 03
	tsb $03.b		; 04 03
	ora ($7F.b,X)		; 01 7F
	sbc $F57D.w		; ED 7D F5
	sbc [$10.b]		; E7 10
	bit $99C3.w,X		; 3C C3 99
	sbc [$FF.b]		; E7 FF
	ror $C35A.w,X		; 7E 5A C3
	sbc $08FF18.l,X		; FF 18 FF 08
	phy		; 5A
	cmp $FF.b,S		; C3 FF
	sbc [$FF.b]		; E7 FF
	sbc $C3C33C.l,X		; FF 3C C3 C3
	sbc [$E7.b]		; E7 E7
	sbc $B000BF.l,X		; FF BF 00 B0
	beq -22.b		; F0 EA
	bne 123.b		; D0 7B
	lda ($5F.b)		; B2 5F
	rol $7CFF.w,X		; 3E FF 7C
	ldx $3E9C.w,Y		; BE 9C 3E
	jsr $60FC.w		; 20 FC 60
	bra -128.b		; 80 80
	cpy #$F8.b		; C0 F8
	and $081540.l,X		; 3F 40 15 08
	php		; 08
	ora [$06.b],Y		; 17 06
	ora ($0A.b,X)		; 01 0A
	ora ($09.b)		; 12 09
	ora ($02.b),Y		; 11 02
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $FE.b		; 02 FE
	and $015550.l,X		; 3F 50 55 01
	ora ($FA.b,X)		; 01 FA
	clv		; B8
	mvp $C0,$C3		; 44 C3 C0
	ror $63.b		; 66 63
	lda $FAE1.w,X		; BD E1 FA
	cop $40.b		; 02 40
	cpy #$63.b		; C0 63
	sbc ($02.b,X)		; E1 02
	clc		; 18
	rol $A0E3.w,X		; 3E E3 A0
	cop $C0.b		; 02 C0
	cpy #$20.b		; C0 20
	cpx #$10.b		; E0 10
	bne  72.b		; D0 48
	rts		; 60

	bpl   8.b		; 10 08
	bra -64.b		; 80 C0
	rti		; 40

	sbc $BFFEEF.l,X		; FF EF FE BF
	ora [$0F.b]		; 07 0F
	cmp $46.b,S		; C3 46
	and ($66.b),Y		; 31 66
	bpl  63.b		; 10 3F
	php		; 08
	ora ($04.b,S),Y		; 13 04
	ora ($0B.b,S),Y		; 13 0B
	cop $07.b		; 02 07
	cpy #$40.b		; C0 40
	beq  32.b		; F0 20
	sed		; F8
	clc		; 18
	bvs  28.b		; 70 1C
	jsr $030D.w		; 20 0D 03
	tsb $03.b		; 04 03
	ora ($7F.b,X)		; 01 7F
	sbc $F57D.w		; ED 7D F5
	sbc [$10.b]		; E7 10
	bit $99C3.w,X		; 3C C3 99
	sbc [$FF.b]		; E7 FF
	ror $C35A.w,X		; 7E 5A C3
	sbc $08FF18.l,X		; FF 18 FF 08
	phy		; 5A
	cmp $FF.b,S		; C3 FF
	sbc [$FF.b]		; E7 FF
	sbc $C3C33C.l,X		; FF 3C C3 C3
	sbc [$E7.b]		; E7 E7
	sbc $BFFEEF.l,X		; FF EF FE BF
	beq -24.b		; F0 E8
	cmp ($62.b,S),Y		; D3 62
	ldy $0846.w		; AC 46 08
	sbc $CA10.w,X		; FD 10 CA
	bit $CE.b		; 24 CE
	jmp.w [$E040]		; DC 40 E0
	ora $02.b,S		; 03 02
	ora $181F04.l		; 0F 04 1F 18
	asl $0438.w		; 0E 38 04
	bcs -64.b		; B0 C0
	jsr $80C0.w		; 20 C0 80
	sed		; F8
	and $081540.l,X		; 3F 40 15 08
	php		; 08
	ora [$06.b],Y		; 17 06
	ora ($0A.b,X)		; 01 0A
	ora ($09.b)		; 12 09
	ora ($02.b),Y		; 11 02
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $FE.b		; 02 FE
	and $015550.l,X		; 3F 50 55 01
	ora ($FA.b,X)		; 01 FA
	clv		; B8
	mvp $C0,$C3		; 44 C3 C0
	ror $63.b		; 66 63
	lda $FAE1.w,X		; BD E1 FA
	cop $40.b		; 02 40
	cpy #$63.b		; C0 63
	sbc ($02.b,X)		; E1 02
	clc		; 18
	rol $A0E3.w,X		; 3E E3 A0
	cop $C0.b		; 02 C0
	cpy #$20.b		; C0 20
	cpx #$10.b		; E0 10
	bne  72.b		; D0 48
	rts		; 60

	bpl   8.b		; 10 08
	bra -64.b		; 80 C0
	rti		; 40

	sbc $BFFEEF.l,X		; FF EF FE BF
	phd		; 0B
	and $354ECB.l,X		; 3F CB 4E 35
	ror $10.b		; 66 10
	and $1208.w,X		; 3D 08 12
	tsb $13.b		; 04 13
	phd		; 0B
	cop $07.b		; 02 07
	cpy #$40.b		; C0 40
	beq  32.b		; F0 20
	sed		; F8
	clc		; 18
	bvs  28.b		; 70 1C
	jsr $030D.w		; 20 0D 03
	tsb $03.b		; 04 03
	ora ($FF.b,X)		; 01 FF
	sbc $8EF57D.l,X		; FF 7D F5 8E
	bvs -13.b		; 70 F3
	jmp $4EF9.w		; 4C F9 4E
	sbc $C77FC0.l,X		; FF C0 7F C7
	and $FE2067.l		; 2F 67 20 FE
	jmp $A501E2.l		; 5C E2 01 A5
	tsb $0EBF.w		; 0C BF 0E
	and $821838.l,X		; 3F 38 18 82
	.db $82, $9E, $9E		; 82 9E 9E
	plb		; AB
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	cpx #$C0.b		; E0 C0
	bra -128.b		; 80 80
	ror $A0F8.w,X		; 7E F8 A0
	brk $07.b		; 00 07
	asl $08.b		; 06 08
	asl A		; 0A
	bpl   2.b		; 10 02
	cop $03.b		; 02 03
	cop $08.b		; 02 08
	bvc   1.b		; 50 01
	ora ($FA.b,X)		; 01 FA
	sbc $800158.l,X		; FF 58 01 80
	inc $EF2E.w,X		; FE 2E EF
	.db $42, $C2		; 42 C2
	sbc ($F1.b),Y		; F1 F1
	cmp $FFDBFF.l,X		; DF FF DB FF
	lda ($FF.b)		; B2 FF
	bra  16.b		; 80 10
	and $780E.w,X		; 3D 0E 78
	eor [$00.b]		; 47 00
	rti		; 40

	rts		; 60

	jsr $C090.w		; 20 90 C0
	bpl   8.b		; 10 08
	ldy #$E0.b		; A0 E0
	bra  -1.b		; 80 FF
	cop $00.b		; 02 00
	brk $05.b		; 00 05
	adc $3E7F3D.l,X		; 7F 3D 7F 3E
	adc $1C3E1C.l,X		; 7F 1C 3E 1C
	sbc $F57CFF.l,X		; FF FF 7C F5
	cmp [$B8.b]		; C7 B8
	sbc $FC26.w,Y		; F9 26 FC
	and [$7F.b]		; 27 7F
	cpx #$3F.b		; E0 3F
	adc $17.b,S		; 63 17
	and ($10.b,S),Y		; 33 10
	and $52732C.l,X		; 3F 2C 73 52
	asl $5F.b		; 06 5F
	ora [$1F.b]		; 07 1F
	trb $010C.w		; 1C 0C 01
	ora ($0F.b,X)		; 01 0F
	ora $FFEFFF.l		; 0F FF EF FF
	lda $837020.l,X		; BF 20 70 83
	.db $62, $8C, $46		; 62 8C 46
	dey		; 88
	jmp ($C890.w,X)		; 7C 90 C8
	jsr $D0C8.w		; 20 C8 D0
	rti		; 40

	cpx #$80.b		; E0 80
	ora $82.b,S		; 03 82
	ora [$84.b]		; 07 84
	ora $380E98.l		; 0F 98 0E 38
	tsb $B0.b		; 04 B0
	cpy #$20.b		; C0 20
	cpy #$80.b		; C0 80
	ror $00F8.w,X		; 7E F8 00
	brk $03.b		; 00 03
	ora $04.b,S		; 03 04
	ora $08.b		; 05 08
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	tsb $28.b		; 04 28
	plx		; FA
	sbc $C00178.l,X		; FF 78 01 C0
	sbc $21F717.l,X		; FF 17 F7 21
	sbc ($78.b,X)		; E1 78
	sed		; F8
	adc $FFEDFF.l		; 6F FF ED FF
	cmp $40FF.w,Y		; D9 FF 40
	php		; 08
	bra  30.b		; 80 1E
	ora [$F8.b]		; 07 F8
	eor [$40.b]		; 47 40
	eor ($30.b,X)		; 41 30
	bpl -56.b		; 10 C8
	rts		; 60

	bra -120.b		; 80 88
	sty $50.b		; 84 50
	beq -128.b		; F0 80
	bra  64.b		; 80 40
	sbc $000002.l,X		; FF 02 00 00
	phd		; 0B
	sbc $7DFE7B.l,X		; FF 7B FE 7D
	inc $7D38.w,X		; FE 38 7D
	sec		; 38
	sbc $F57DFF.l,X		; FF FF 7D F5
	stx $F370.w		; 8E 70 F3
	jmp $4EF9.w		; 4C F9 4E
	sbc $C77FC0.l,X		; FF C0 7F C7
	and $7E2067.l		; 2F 67 20 7E
	jmp $A501E2.l		; 5C E2 01 A5
	tsb $0EBF.w		; 0C BF 0E
	and $021838.l,X		; 3F 38 18 02
	cop $1E.b		; 02 1E
	asl $00AB.w,X		; 1E AB 00
	brk $00.b		; 00 00
	rti		; 40

	cpx #$C0.b		; E0 C0
	bra -128.b		; 80 80
	ror $A0F8.w,X		; 7E F8 A0
	brk $07.b		; 00 07
	asl $08.b		; 06 08
	asl A		; 0A
	bpl   2.b		; 10 02
	cop $03.b		; 02 03
	cop $08.b		; 02 08
	bvc   1.b		; 50 01
	ora ($FA.b,X)		; 01 FA
	sbc $800558.l,X		; FF 58 05 80
	inc $EF2E.w,X		; FE 2E EF
	.db $42, $C2		; 42 C2
	sbc ($F1.b),Y		; F1 F1
	eor $FFDB7F.l,X		; 5F 7F DB FF
	lda ($FF.b)		; B2 FF
	bra  16.b		; 80 10
	and $800E.w,X		; 3D 0E 80
	sei		; 78
	eor [$00.b]		; 47 00
	rti		; 40

	rts		; 60

	jsr $C090.w		; 20 90 C0
	bpl   8.b		; 10 08
	ldy #$E0.b		; A0 E0
	bra -65.b		; 80 BF
	ldx #$00.b		; A2 00
	bcs   7.b		; B0 07
	ora $010603.l		; 0F 03 06 01
	asl $03.b		; 06 03
	ora ($01.b,X)		; 01 01
	cop $01.b		; 02 01
	ora ($03.b,X)		; 01 03
	ora $F4557D.l,X		; 1F 7D 55 F4
	sbc [$10.b]		; E7 10
	lda $A510.w,X		; BD 10 A5
	sta ($24.b,X)		; 81 24
	cmp $5A.b,S		; C3 5A
	bit $0818.w,X		; 3C 18 08
	sbc [$E7.b],Y		; F7 E7
	sbc [$C3.b]		; E7 C3
	sbc $2424C3.l,X		; FF C3 24 24
	sbc $B000BF.l,X		; FF BF 00 B0
	beq -22.b		; F0 EA
	bne 123.b		; D0 7B
	lda ($5F.b)		; B2 5F
	rol $7CFF.w,X		; 3E FF 7C
	ldx $3E9C.w,Y		; BE 9C 3E
	jsr $60FC.w		; 20 FC 60
	bra -128.b		; 80 80
	cpy #$F8.b		; C0 F8
	and $081540.l,X		; 3F 40 15 08
	php		; 08
	ora [$06.b],Y		; 17 06
	ora ($0A.b,X)		; 01 0A
	ora ($09.b)		; 12 09
	ora ($02.b),Y		; 11 02
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $FE.b		; 02 FE
	and $015550.l,X		; 3F 50 55 01
	ora ($FA.b,X)		; 01 FA
	clv		; B8
	mvp $C0,$C3		; 44 C3 C0
	ror $63.b		; 66 63
	lda $FAE1.w,X		; BD E1 FA
	cop $40.b		; 02 40
	cpy #$63.b		; C0 63
	sbc ($02.b,X)		; E1 02
	clc		; 18
	rol $A0E3.w,X		; 3E E3 A0
	cop $C0.b		; 02 C0
	cpy #$20.b		; C0 20
	cpx #$10.b		; E0 10
	bne  72.b		; D0 48
	rts		; 60

	bpl   8.b		; 10 08
	bra -64.b		; 80 C0
	rti		; 40

	sbc $5C3FFC.l		; EF FC 3F 5C
	ora [$05.b]		; 07 05
	php		; 08
	ora $040503.l		; 0F 03 05 04
	ora ($1B.b,S),Y		; 13 1B
	cop $03.b		; 02 03
	ora $02020F.l		; 0F 0F 02 02
	asl $06.b		; 06 06
	cop $02.b		; 02 02
	ora #$0109.w		; 09 09 01
	cop $7D.b		; 02 7D
	sbc $E7D57D.l		; EF 7D D5 E7
	bit $9981.w,X		; 3C 81 99
	sta ($7E.b,X)		; 81 7E
	sbc $C35A81.l,X		; FF 81 5A C3
	sbc $18FF99.l,X		; FF 99 FF 18
	clc		; 18
	cmp $99.b,S		; C3 99
	sbc [$FF.b]		; E7 FF
	ror $813C.w,X		; 7E 3C 81
	.db $42, $81		; 42 81
	sbc $F515FF.l,X		; FF FF 15 F5
	cpx #$40.b		; E0 40
	bvc -96.b		; 50 A0
	bra  96.b		; 80 60
	cpx #$E0.b		; E0 E0
	inx		; E8
	beq  48.b		; F0 30
	beq -96.b		; F0 A0
	bvs -112.b		; 70 90
	bvs  24.b		; 70 18
	rts		; 60

	rti		; 40

	bpl -128.b		; 10 80
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	sbc ($FF.b)		; F2 FF
	lda $0C.b,X		; B5 0C
	ora [$01.b]		; 07 01
	phd		; 0B
	ora ($07.b,X)		; 01 07
	php		; 08
	tsb $10.b		; 04 10
	clc		; 18
	cop $02.b		; 02 02
	ora $01.b,S		; 03 01
	ora $02.b,S		; 03 02
	asl $03.b		; 06 03
	tsb $08.b		; 04 08
	php		; 08
	inc $3DFC.w,X		; FE FC 3D
	jsr ($78CF.w,X)		; FC CF 78
	cpy $ED68.w		; CC 68 ED
	bpl  17.b		; 10 11
	ldy $84.b,X		; B4 84
	ora ($85.b,X)		; 01 85
	cmp $7987CE.l		; CF CE 87 79
	jsr ($0301.w,X)		; FC 01 03
	bmi  48.b		; 30 30
	sty $B4.b		; 84 B4
	sty $84.b		; 84 84
	ldx #$0F.b		; A2 0F
	bcc  12.b		; 90 0C
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  32.b		; 80 20
	rts		; 60

	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	sbc $DBFFF7.l,X		; FF F7 FF DB
	ora [$05.b]		; 07 05
	iny		; C8
	eor $2D2BF8.l		; 4F F8 2B 2D
	jmp $1D2E02.l		; 5C 02 2E 1D
	trb $09.b		; 14 09
	cop $04.b		; 02 04
	cop $C2.b		; 02 C2
	lsr $36.b		; 46 36
	.db $62, $0A, $34		; 62 0A 34
	sty $1E.b		; 84 1E
	lsr A		; 4A
	and ($08.b,S),Y		; 33 08
	tsb $7D0A.w		; 0C 0A 7D
	sbc $E7D57D.l		; EF 7D D5 E7
	bit $9981.w,X		; 3C 81 99
	sta ($7E.b,X)		; 81 7E
	sbc $C35A81.l,X		; FF 81 5A C3
	sbc $18FF99.l,X		; FF 99 FF 18
	clc		; 18
	cmp $99.b,S		; C3 99
	sbc [$FF.b]		; E7 FF
	ror $813C.w,X		; 7E 3C 81
	.db $42, $81		; 42 81
	sbc $F515FF.l,X		; FF FF 15 F5
	cpx #$40.b		; E0 40
	bvc -96.b		; 50 A0
	bra  96.b		; 80 60
	cpx #$E0.b		; E0 E0
	inx		; E8
	beq  48.b		; F0 30
	beq -96.b		; F0 A0
	bvs -112.b		; 70 90
	bvs  24.b		; 70 18
	rts		; 60

	rti		; 40

	bpl -128.b		; 10 80
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	sbc ($FF.b)		; F2 FF
	lda $0C.b,X		; B5 0C
	ora [$01.b]		; 07 01
	phd		; 0B
	ora ($07.b,X)		; 01 07
	php		; 08
	tsb $10.b		; 04 10
	clc		; 18
	cop $02.b		; 02 02
	ora $01.b,S		; 03 01
	ora $02.b,S		; 03 02
	asl $03.b		; 06 03
	tsb $08.b		; 04 08
	php		; 08
	inc $3DFC.w,X		; FE FC 3D
	jsr ($78CF.w,X)		; FC CF 78
	cpy $ED68.w		; CC 68 ED
	bpl  17.b		; 10 11
	ldy $84.b,X		; B4 84
	ora ($85.b,X)		; 01 85
	cmp $7987CE.l		; CF CE 87 79
	jsr ($0301.w,X)		; FC 01 03
	bmi  48.b		; 30 30
	sty $B4.b		; 84 B4
	sty $84.b		; 84 84
	ldx #$0F.b		; A2 0F
	bcc  12.b		; 90 0C
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  32.b		; 80 20
	rts		; 60

	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	sbc $DBFFF7.l,X		; FF F7 FF DB
	ora [$05.b]		; 07 05
	iny		; C8
	eor $2D2BF8.l		; 4F F8 2B 2D
	jmp $1D2E02.l		; 5C 02 2E 1D
	trb $09.b		; 14 09
	cop $04.b		; 02 04
	cop $C2.b		; 02 C2
	lsr $36.b		; 46 36
	.db $62, $0A, $34		; 62 0A 34
	sty $1E.b		; 84 1E
	lsr A		; 4A
	and ($08.b,S),Y		; 33 08
	tsb $DD0A.w		; 0C 0A DD
	adc $E7F5F9.l,X		; 7F F9 F5 E7
	stp		; DB
	sta ($A5.b,X)		; 81 A5
	sbc [$81.b]		; E7 81
	sta ($81.b,X)		; 81 81
	lda $42.b		; A5 42
	phx		; DA
	bit $1819.w,X		; 3C 19 18
	cmp $81.b,S		; C3 81
	bit $66.b		; 24 66
	sbc [$81.b]		; E7 81
	.db $42, $3D		; 42 3D
	bra  67.b		; 80 43
	ora ($FF.b,X)		; 01 FF
	sbc [$FF.b],Y		; F7 FF
	stp		; DB
	cpx #$A0.b		; E0 A0
	ora ($F2.b,S),Y		; 13 F2
	and $1A94F4.l,X		; 3F F4 94 1A
	rti		; 40

	stz $B8.b,X		; 74 B8
	plp		; 28
	bcc  64.b		; 90 40
	jsr $4340.w		; 20 40 43
	.db $62, $6C, $46		; 62 6C 46
	bvc  44.b		; 50 2C
	and ($78.b,X)		; 21 78
	eor ($CC.b)		; 52 CC
	bpl  48.b		; 10 30
	bvc -14.b		; 50 F2
	sbc $070CB5.l,X		; FF B5 0C 07
	ora ($0B.b,X)		; 01 0B
	ora ($07.b,X)		; 01 07
	php		; 08
	tsb $10.b		; 04 10
	clc		; 18
	cop $02.b		; 02 02
	ora $01.b,S		; 03 01
	ora $02.b,S		; 03 02
	asl $03.b		; 06 03
	tsb $08.b		; 04 08
	php		; 08
	inc $3DFC.w,X		; FE FC 3D
	jsr ($78CF.w,X)		; FC CF 78
	cpy $ED68.w		; CC 68 ED
	bpl  17.b		; 10 11
	ldy $84.b,X		; B4 84
	ora ($85.b,X)		; 01 85
	cmp $7987CE.l		; CF CE 87 79
	jsr ($0301.w,X)		; FC 01 03
	bmi  48.b		; 30 30
	sty $B4.b		; 84 B4
	sty $84.b		; 84 84
	ldx #$0F.b		; A2 0F
	bcc  12.b		; 90 0C
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  32.b		; 80 20
	rts		; 60

	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	pea $55FF.w		; F4 FF 55
	eor $0C.b,X		; 55 0C
	asl $03.b		; 06 03
	ora $0307.w		; 0D 07 03
	ora [$35.b]		; 07 35
	ora [$23.b]		; 07 23
	ora $1F.b		; 05 1F
	ora $13.b,S		; 03 13
	ora $200804.l		; 0F 04 08 20
	bvs  98.b		; 70 62
	asl $FFFC.w,X		; 1E FC FF
	ora ($64.b),Y		; 11 64
	sty $FE.b		; 84 FE
	tda		; 7B
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $DBDADA.l,X		; FF DA DA DB
	sta ($FF.b,S),Y		; 93 FF
	and [$93.b]		; 27 93
	ora $25.b,S		; 03 25
	pha		; 48
	and [$E8.b]		; 27 E8
	xce		; FB
	eor ($05.b),Y		; 51 05
	rti		; 40

	cpx #$E0.b		; E0 E0
	cpx #$20.b		; E0 20
	cpy #$E0.b		; C0 E0
	ldy #$E0.b		; A0 E0
	ldy #$E0.b		; A0 E0
	ldy #$40.b		; A0 40
	bra  64.b		; 80 40
	rti		; 40

	sbc $FFF7FE.l,X		; FF FE F7 FF
	ora #$6D01.w		; 09 01 6D
	and ($7C.b,X)		; 21 7C
	ora ($14.b)		; 12 14
	and $0E16.w		; 2D 16 0E
	bpl  42.b		; 10 2A
	tsb $3A39.w		; 0C 39 3A
	asl $397E.w,X		; 1E 7E 39
	rol $02.b,X		; 36 02
	ora $2E40.w,Y		; 19 40 2E
	tsb $10.b		; 04 10
	ora #$484C.w		; 09 4C 48
	asl $05.b		; 06 05
	cmp $F7FFFB.l,X		; DF FB FF F7
	ldx $5D80.w		; AE 80 5D
	dey		; 88
	asl A		; 0A
	dec $88.b		; C6 88
	ldy #$C7.b		; A0 C7
	bcs 127.b		; B0 7F
	sbc #$1C1C.w		; E9 1C 1C
	adc ($10.b),Y		; 71 10
	bcc  28.b		; 90 1C
	clc		; 18
	cop $86.b		; 02 86
	asl $80C7.w		; 0E C7 80
	bcs 104.b		; B0 68
	rts		; 60

	trb $AB1C.w		; 1C 1C AB
	brk $03.b		; 00 03
	brk $40.b		; 00 40
	ldy #$C0.b		; A0 C0
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	sbc $517DFF.l,X		; FF FF 7D 51
	ora #$1508.w		; 09 08 15
	trb $1E1C.w		; 1C 1C 1E
	tsb $1F.b		; 04 1F
	asl $1B1F.w,X		; 1E 1F 1B
	ora $063F3F.l,X		; 1F 3F 3F 06
	and $012133.l,X		; 3F 33 21 01
	ora $01.b,S		; 03 01
	cop $01.b		; 02 01
	rti		; 40

	ora ($FF.b,X)		; 01 FF
	sbc $AEFF7F.l,X		; FF 7F FF AE
	bra -13.b		; 80 F3
	php		; 08
	sbc $3F08.w,Y		; F9 08 3F
	bra -98.b		; 80 9E
	eor [$9D.b]		; 47 9D
	adc [$62.b],Y		; 77 62
	sta $07F8.w,X		; 9D F8 07
	adc ($10.b),Y		; 71 10
	sbc ($0C.b,X)		; E1 0C
	sbc $7F0E.w,Y		; F9 0E 7F
	clv		; B8
	bra -120.b		; 80 88
	sta ($60.b,X)		; 81 60
	adc $F8.b,S		; 63 F8
	xce		; FB
	sbc $DBFFF6.l,X		; FF F6 FF DB
	rti		; 40

	ldy #$46.b		; A0 46
	stz $1E.b		; 64 1E
	pha		; 48
	plp		; 28
	stz $68.b,X		; 74 68
	bvs  64.b		; 70 40
	bmi -128.b		; 30 80
	rts		; 60

	rti		; 40

	lsr $44.b		; 46 44
	cli		; 58
	tsb $1820.w		; 0C 20 18
	cop $70.b		; 02 70
	bit $98.b		; 24 98
	jsr $8040.w		; 20 40 80
	pei ($7E.b)		; D4 7E
	eor $55.b,X		; 55 55
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora ($0D.b,X)		; 01 0D
	ora ($08.b,X)		; 01 08
	ora ($07.b,X)		; 01 07
	tsb $03.b		; 04 03
	ora ($02.b,X)		; 01 02
	php		; 08
	trb $0718.w		; 1C 18 07
	jsr ($05FF.w,X)		; FC FF 05
	stz $21.b,X		; 74 21
	and $7FFF9E.l,X		; 3F 9E FF 7F
	sbc $76FFFF.l,X		; FF FF FF 76
	inc $F6.b,X		; F6 F6
	stz $FF.b		; 64 FF
	cmp #$C0E4.w		; C9 E4 C0
	ora #$1280.w		; 09 80 12
	bit #$FFF8.w		; 89 F8 FF
	eor ($45.b),Y		; 51 45
	bcc -64.b		; 90 C0
	sed		; F8
	clv		; B8
	sed		; F8
	iny		; C8
	beq -128.b		; F0 80
	clv		; B8
	inx		; E8
	sed		; F8
	inx		; E8
	sed		; F8
	inx		; E8
	bne  32.b		; D0 20
	bpl  80.b		; 10 50
	cpy #$FF.b		; C0 FF
	sbc $13517D.l,X		; FF 7D 51 13
	bpl  42.b		; 10 2A
	and $3D39.w,Y		; 39 39 3D
	php		; 08
	and $373F3C.l,X		; 3F 3C 3F 37
	and $0C7F7E.l,X		; 3F 7E 7F 0C
	adc $034366.l,X		; 7F 66 43 03
	ora [$03.b]		; 07 03
	tsb $03.b		; 04 03
	sta ($03.b,X)		; 81 03
	cmp $F5FFFB.l,X		; DF FB FF F5
	jmp $10BA01.l		; 5C 01 BA 10
	trb $8C.b		; 14 8C
	bpl  64.b		; 10 40
	sta $D2FE60.l		; 8F 60 FE D2
	sec		; 38
	sec		; 38
.ACCU 8
	sep #$20		; E2 20
	jsr $3038.w		; 20 38 30
	tsb $0C.b		; 04 0C
	trb $608E.w		; 1C 8E 60
	bne -64.b		; D0 C0
	sec		; 38
	sec		; 38
	phd		; 0B
	brk $03.b		; 00 03
	brk $80.b		; 00 80
	rti		; 40

	bra -128.b		; 80 80
	bra -12.b		; 80 F4
	sbc $065555.l,X		; FF 55 55 06
	ora $01.b,S		; 03 01
	asl $03.b		; 06 03
	ora ($03.b,X)		; 01 03
	inc A		; 1A
	ora $11.b,S		; 03 11
	cop $0F.b		; 02 0F
	ora ($09.b,X)		; 01 09
	ora [$02.b]		; 07 02
	tsb $10.b		; 04 10
	sec		; 38
	and ($0F.b),Y		; 31 0F
	bit $3FE4.w,X		; 3C E4 3F
	cpx $3D42.w		; EC 42 3D
	.db $42, $C2		; 42 C2
	ora ($24.b)		; 12 24
	rol $6C.b,X		; 36 6C
	ror $807E.w,X		; 7E 7E 80
	bra   1.b		; 80 01
	ora ($12.b,X)		; 01 12
	ora ($24.b)		; 12 24
	and [$13.b],Y		; 37 13
	sed		; F8
	xce		; FB
	eor ($45.b),Y		; 51 45
	jsr $F080.w		; 20 80 F0
	bvs -16.b		; 70 F0
	bcc -32.b		; 90 E0
	bvs -48.b		; 70 D0
	beq -48.b		; F0 D0
	beq -48.b		; F0 D0
	ldy #$40.b		; A0 40
	jsr $80A0.w		; 20 A0 80
	sbc $5C3FFC.l		; EF FC 3F 5C
	ora [$05.b]		; 07 05
	php		; 08
	ora $040503.l		; 0F 03 05 04
	ora ($1B.b,S),Y		; 13 1B
	cop $03.b		; 02 03
	ora $02020F.l		; 0F 0F 02 02
	asl $06.b		; 06 06
	cop $02.b		; 02 02
	ora #$09.b		; 09 09
	ora ($02.b,X)		; 01 02
	eor $EF.b,X		; 55 EF
	eor $D5.b,X		; 55 D5
	sbc [$5A.b]		; E7 5A
	sbc $81FF7E.l,X		; FF 7E FF 81
	phy		; 5A
	cmp $FF.b,S		; C3 FF
	sta $18FF.w,Y		; 99 FF 18
	sbc $7EFF18.l,X		; FF 18 FF 7E
	bit $4281.w,X		; 3C 81 42
	sta ($FF.b,X)		; 81 FF
	sbc $E0F515.l,X		; FF 15 F5 E0
	rti		; 40

	bvc -96.b		; 50 A0
	bra  96.b		; 80 60
	cpx #$E0.b		; E0 E0
	inx		; E8
	beq  48.b		; F0 30
	beq -96.b		; F0 A0
	bvs -112.b		; 70 90
	bvs  24.b		; 70 18
	rts		; 60

	rti		; 40

	bpl -128.b		; 10 80
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	sbc ($FF.b)		; F2 FF
	lda $0C.b,X		; B5 0C
	ora [$01.b]		; 07 01
	phd		; 0B
	ora ($07.b,X)		; 01 07
	php		; 08
	tsb $10.b		; 04 10
	clc		; 18
	cop $02.b		; 02 02
	ora $01.b,S		; 03 01
	ora $02.b,S		; 03 02
	asl $03.b		; 06 03
	tsb $08.b		; 04 08
	php		; 08
	inc $3DFC.w,X		; FE FC 3D
	jsr ($78CF.w,X)		; FC CF 78
	cpy $ED68.w		; CC 68 ED
	bpl  17.b		; 10 11
	ldy $84.b,X		; B4 84
	ora ($85.b,X)		; 01 85
	cmp $7987CE.l		; CF CE 87 79
	jsr ($0301.w,X)		; FC 01 03
	bmi  48.b		; 30 30
	sty $B4.b		; 84 B4
	sty $84.b		; 84 84
	ldx #$0F.b		; A2 0F
	bcc  12.b		; 90 0C
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  32.b		; 80 20
	rts		; 60

	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	sbc $ABFFBF.l,X		; FF BF FF AB
	adc $FF.b,X		; 75 FF
	adc $FE.b,S		; 63 FE
	eor ($FF.b),Y		; 51 FF
	eor ($FA.b),Y		; 51 FA
	and $1C7C.w,Y		; 39 7C 1C
	rol $1D01.w,X		; 3E 01 1D
	cop $82.b		; 02 82
	stz $14.b,X		; 74 14
	.db $62, $2A, $50		; 62 2A 50
	plp		; 28
	bvc   4.b		; 50 04
	sec		; 38
	trb $0301.w		; 1C 01 03
	lda $F97F.w,X		; BD 7F F9
	pei ($E7.b)		; D4 E7
	txy		; 9B
	cmp [$E5.b]		; C7 E5
	jsr $E781.w		; 20 81 E7
	ror $A5.b		; 66 A5
	.db $42, $DB		; 42 DB
	lda $1899.w,X		; BD 99 18
	cmp $A3.b		; C5 A3
	mvp $81,$44		; 44 44 81
	cmp $FF.b,S		; C3 FF
	lda $81.b		; A5 81
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	ora ($01.b,X)		; 01 01
	adc $FFFF5F.l,X		; 7F 5F FF FF
	bpl  56.b		; 10 38
	php		; 08
	tsb $0C.b		; 04 0C
	ora $1D.b,S		; 03 1D
	inc A		; 1A
	rti		; 40

	mvn $2A,$80		; 54 80 2A
	bra   8.b		; 80 08
	bpl  12.b		; 10 0C
	php		; 08
	ora $1B0C.w		; 0D 0C 1B
	ora $1A56.w,X		; 1D 56 1A
	cpx $3A54.w		; EC 54 3A
	rol A		; 2A
	bra -127.b		; 80 81
	sei		; 78
	eor $F4.b,X		; 55 F4
	sbc $874878.l,X		; FF 78 48 87
	ldx $01.b,Y		; B6 01
	ldy $01.b,X		; B4 01
	ldy $78.b,X		; B4 78
	dec $B748.w		; CE 48 B7
	ldx $01.b,Y		; B6 01
	ora ($B4.b,X)		; 01 B4
	ldy $01.b,X		; B4 01
	ora ($84.b,X)		; 01 84
	dec $DF5F.w		; CE 5F DF
	sbc $7020FF.l,X		; FF FF 20 70
	rti		; 40

	bra -64.b		; 80 C0
	cpx #$60.b		; E0 60
	php		; 08
	tay		; A8
	tsb $50.b		; 04 50
	tsb $02.b		; 04 02
	rti		; 40

	jsr $40C0.w		; 20 C0 40
	cpy #$C0.b		; C0 C0
	rts		; 60

	cpx #$A8.b		; E0 A8
	rts		; 60

	jmp.w [$70A8]		; DC A8 70
	bvc   6.b		; 50 06
	tsb $7F.b		; 04 7F
	cmp $08FFFF.l,X		; DF FF FF 08
	trb $0204.w		; 1C 04 02
	asl $01.b		; 06 01
	asl $200D.w		; 0E 0D 20
	rol A		; 2A
	rti		; 40

	ora $40.b,X		; 15 40
	bra   4.b		; 80 04
	php		; 08
	asl $04.b		; 06 04
	asl $06.b		; 06 06
	ora $2B0E.w		; 0D 0E 2B
	ora $2A76.w		; 0D 76 2A
	ora $C015.w,X		; 1D 15 C0
	rti		; 40

	sbc $BFFFEF.l,X		; FF EF FF BF
	and $3F.b,X		; 35 3F
	cmp $4E.b,S		; C3 4E
	and ($67.b),Y		; 31 67
	ora ($BE.b),Y		; 11 BE
	ora #$52.b		; 09 52
	ora $33.b		; 05 33
	tas		; 1B
	cop $07.b		; 02 07
	cop $F4.b		; 02 F4
	mvp $22,$F2		; 44 F2 22
	sed		; F8
	clc		; 18
	bvs  28.b		; 70 1C
	jsr $030C.w		; 20 0C 03
	tsb $03.b		; 04 03
	ora ($FF.b,X)		; 01 FF
	lda $AEABFF.l,X		; BF FF AB AE
	sbc $8A7FC6.l,X		; FF C6 7F 8A
	sbc $9C5F8A.l,X		; FF 8A 5F 9C
	rol $7C38.w,X		; 3E 38 7C
	bra -72.b		; 80 B8
	rti		; 40

	eor ($2E.b,X)		; 41 2E
	plp		; 28
	lsr $54.b		; 46 54
	asl A		; 0A
	trb $0A.b		; 14 0A
	jsr $381C.w		; 20 1C 38
	bra -64.b		; 80 C0
	asl $3DD1.w,X		; 1E D1 3D
	lda ($3C.b,S),Y		; B3 3C
	bit $C3.b		; 24 C3
	stp		; DB
	phy		; 5A
	phy		; 5A
	clc		; 18
	sbc $24E73C.l,X		; FF 3C E7 24
	stp		; DB
	stp		; DB
	phy		; 5A
	phy		; 5A
	.db $42, $E7		; 42 E7
	.db $42, $7F		; 42 7F
	and $7C3D5F.l,X		; 3F 5F 3D 7C
	cmp [$99.b]		; C7 99
	sbc [$99.b]		; E7 99
	ror $7E.b		; 66 7E
	stp		; DB
	.db $42, $80		; 42 80
	sbc $18FF99.l,X		; FF 99 FF 18
	cmp $BB.b		; C5 BB
	sta ($FF.b,X)		; 81 FF
	sbc $80433C.l,X		; FF 3C 43 80
	ror $81.b		; 66 81
	brk $F8.b		; 00 F8
	brk $B4.b		; 00 B4
	bit $FF24.w,X		; 3C 24 FF
	sbc $DB3CFF.l,X		; FF FF 3C DB
	bit $FF.b		; 24 FF
	sbc $BFFFEF.l,X		; FF EF FF BF
	and $3F.b,X		; 35 3F
	cmp $4E.b,S		; C3 4E
	and ($67.b),Y		; 31 67
	ora ($BE.b),Y		; 11 BE
	ora #$52.b		; 09 52
	ora $33.b		; 05 33
	tas		; 1B
	cop $07.b		; 02 07
	cop $F4.b		; 02 F4
	mvp $22,$F2		; 44 F2 22
	sed		; F8
	clc		; 18
	bvs  28.b		; 70 1C
	jsr $030C.w		; 20 0C 03
	tsb $03.b		; 04 03
	ora ($BD.b,X)		; 01 BD
	adc $E774F9.l,X		; 7F F9 74 E7
	txy		; 9B
	cmp [$E5.b]		; C7 E5
	jsr $E781.w		; 20 81 E7
	ror $A5.b		; 66 A5
	.db $42, $5A		; 42 5A
	lda $1818.w,X		; BD 18 18
	cmp $A3.b		; C5 A3
	mvp $81,$44		; 44 44 81
	cmp $7E.b,S		; C3 7E
	sta ($24.b,X)		; 81 24
	eor $DF.b,S		; 43 DF
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	tsb $05.b		; 04 05
	php		; 08
	cop $08.b		; 02 08
	bpl   1.b		; 10 01
	ora ($01.b,X)		; 01 01
	ora $01.b		; 05 01
	asl $0305.w		; 0E 05 03
	cop $18.b		; 02 18
	php		; 08
	ror $FD55.w,X		; 7E 55 FD
	sbc $478080.l,X		; FF 80 80 47
	cpy $38.b		; C4 38
	stp		; DB
	ldy #$A04B.w		; A0 4B A0
	phd		; 0B
	bra -57.b		; 80 C7
	bra -36.b		; 80 DC
	cpy $BB.b		; C4 BB
	stp		; DB
	rts		; 60

	ldy #$4BCB.w		; A0 CB 4B
	ldy #$08A0.w		; A0 A0 08
	trb $557F.w		; 1C 7F 55
	sbc $0702FF.l,X		; FF FF 02 07
	tsb $88.b		; 04 88
	sty $6E70.w		; 8C 70 6E
	asl $4A.b,X		; 16 4A
	ora $40.b,X		; 15 40
	tsb $02.b		; 04 02
	sty $EC04.w		; 8C 04 EC
	sty $6E76.w		; 8C 76 6E
	inc A		; 1A
	asl $4D.b,X		; 16 4D
	lsr A		; 4A
	ora [$15.b],Y		; 17 15
	rti		; 40

	cpx #$CE00.w		; E0 00 CE
	brk $CD.b		; 00 CD
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	jsr $C080.w		; 20 80 C0
	bra  96.b		; 80 60
	rti		; 40

	dec $FDD7.w,X		; DE D7 FD
	sbc $011E3E.l,X		; FF 3E 1E 01
	ora $5C403F.l		; 0F 3F 40 5C
	bra   3.b		; 80 03
	trb $68.b		; 14 68
	rts		; 60

	rol $1E3F.w,X		; 3E 3F 1E
	ora $3F4F0F.l		; 0F 0F 4F 3F
	cmp ($5C.b,X)		; C1 5C
	tsb $9403.w		; 0C 03 94
	trb $08.b		; 14 08
	php		; 08
	sei		; 78
	mvn $A8,$F4		; 54 F4 A8
	and $C0C03F.l,X		; 3F 3F C0 C0
	ora #$0540.w		; 09 40 05
	bit $3FFC.w,X		; 3C FC 3F
	cpy #$09C0.w		; C0 C0 09
	rti		; 40

	ora $3E.b		; 05 3E
	sbc ($28.b,S),Y		; F3 28
	sbc ($80.b)		; F2 80
	bra  96.b		; 80 60
	rts		; 60

	bpl  80.b		; 10 50
	php		; 08
	bne   8.b		; D0 08
	rts		; 60

	bcc -128.b		; 90 80
	rts		; 60

	bvc  64.b		; 50 40
	bcc -128.b		; 90 80
	jsr $2BFF.w		; 20 FF 2B
	sbc $533205.l,X		; FF 05 32 53
	tsb $0458.w		; 0C 58 04
	and $011402.l		; 2F 02 14 01
	tsb $02.b		; 04 02
	ora ($10.b,X)		; 01 10
	rol $3E08.w,X		; 3E 08 3E
	asl $1C.b		; 06 1C
	ora [$08.b]		; 07 08
	ora $01.b,S		; 03 01
	sbc $AF7FFF.l,X		; FF FF 7F AF
	lda [$F8.b]		; A7 F8
	cmp $3E23.w,X		; DD 23 3E
	sta $4E.b,S		; 83 4E
	lda ($67.b,X)		; A1 67
	bne  53.b		; D0 35
	cpx $FFBC.w		; EC BC FF
	adc $A0043F.l,X		; 7F 3F 04 A0
	cli		; 58
	ora $7E.b,S		; 03 7E
	cop $1F.b		; 02 1F
	ora $E003C0.l		; 0F C0 03 E0
	jmp ($3F3F.w,X)		; 7C 3F 3F
	adc $801015.l		; 6F 15 10 80
	bmi  64.b		; 30 40
	bpl -128.b		; 10 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	cpx #$80C0.w		; E0 C0 80
	rts		; 60

	jsr $C080.w		; 20 80 C0
	sbc $00FF02.l,X		; FF 02 FF 00
	rol $7F.b,X		; 36 7F
	bit $7E.b,X		; 34 7E
	clc		; 18
	rol $1F06.w,X		; 3E 06 1F
	ora [$08.b]		; 07 08
	rol $08.b,X		; 36 08
	bit $04.b,X		; 34 04
	clc		; 18
	ora ($06.b,X)		; 01 06
	sbc $35FF3F.l,X		; FF 3F FF 35
	lda [$F8.b]		; A7 F8
	ply		; 7A
	stp		; DB
	sbc $A0.b,S		; E3 A0
	bmi -30.b		; 30 E2
	ora #$32F1.w		; 09 F1 32
	stz $3349.w		; 9C 49 33
	tsb $A0.b		; 04 A0
	jmp $0126A3.l		; 5C A3 26 01
	adc ($02.b,X)		; 61 02
	bpl  13.b		; 10 0D
	asl A		; 0A
	and $FFFF.w,X		; 3D FF FF
	sbc $30801F.l,X		; FF 1F 80 30
	cmp $22.b,S		; C3 22
	jmp $48A6.w		; 4C A6 48
	ldy $4890.w,X		; BC 90 48
	jsr $4088.w		; 20 88 40
	bcc  64.b		; 90 40
	cpx #$0360.w		; E0 60 03
	.db $42, $0F		; 42 0F
	cpy $1F.b		; C4 1F
	cld		; D8
	asl $0438.w		; 0E 38 04
	bvs -128.b		; 70 80
	rts		; 60

	dec $53.b,X		; D6 53
	sbc $0FF7.w,X		; FD F7 0F
	ora [$03.b]		; 07 03
	ora $201710.l		; 0F 10 17 20
	ora $02.b		; 05 02
	ora $03070F.l		; 0F 0F 07 03
	ora $13.b,S		; 03 13
	ora $031730.l		; 0F 30 17 03
	and $05.b		; 25 05
	cop $02.b		; 02 02
	ror $FD54.w,X		; 7E 54 FD
	lda #$8080.w		; A9 80 80
	eor $F030CF.l		; 4F CF 30 F0
.INDEX 16
	rep #$10		; C2 10
	ora ($80.b,X)		; 01 80
	cmp $CFFF80.l		; CF 80 FF CF
	beq -16.b		; F0 F0
	rti		; 40

.INDEX 16
	rep #$10		; C2 10
	ora ($F8.b,X)		; 01 F8
	cpy $C8A0.w		; CC A0 C8
	cpx #$18E0.w		; E0 E0 18
	clc		; 18
	tsb $54.b		; 04 54
	cop $74.b		; 02 74
	cop $E0.b		; 02 E0
	clc		; 18
	mvn $64,$10		; 54 10 64
	sbc $00FF02.l,X		; FF 02 FF 00
	adc $69FF.w		; 6D FF 69
	jsr ($7D30.w,X)		; FC 30 7D
	tsb $0F3E.w		; 0C 3E 0F
	bpl 109.b		; 10 6D
	bpl 104.b		; 10 68
	php		; 08
	bmi   2.b		; 30 02
	tsb $FFFF.w		; 0C FF FF
	adc $F04FA5.l,X		; 7F A5 4F F0
	tyx		; BB
	lsr $7C.b		; 46 7C
	ora [$1C.b]		; 07 1C
	cmp $0F.b,S		; C3 0F
	jsr $196A.w		; 20 6A 19
	sed		; F8
	ror $7EFF.w,X		; 7E FF 7E
	php		; 08
	rti		; 40

	bcs   6.b		; B0 06
	sbc $3F04.w,X		; FD 04 3F
	ora $7E7807.l,X		; 1F 07 78 7E
	and $100B2C.l		; 2F 2C 0B 10
	jsr $A070.w		; 20 70 A0
	bpl  32.b		; 10 20
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	jsr $8020.w		; 20 20 80
	dec $57.b,X		; D6 57
	sbc $1FFF.w,X		; FD FF 1F
	ora $201F07.l		; 0F 07 1F 20
	rol $0140.w		; 2E 40 01
	asl A		; 0A
	tsb $1F.b		; 04 1F
	ora $07070F.l,X		; 1F 0F 07 07
	and [$1F.b]		; 27 1F
	rts		; 60

	rol $0106.w		; 2E 06 01
	lsr A		; 4A
	asl A		; 0A
	tsb $04.b		; 04 04
	sei		; 78
	mvn $A9,$F4		; 54 F4 A9
	sta $E0609F.l,X		; 9F 9F 60 E0
	sty $20.b		; 84 20
	cop $9E.b		; 02 9E
	inc $E09F.w,X		; FE 9F E0
	cpx #$8480.w		; E0 80 84
	jsr $F802.w		; 20 02 F8
	cpy $C8A0.w		; CC A0 C8
	cpy #$30C0.w		; C0 C0 30
	bmi   8.b		; 30 08
	tay		; A8
	tsb $E8.b		; 04 E8
	tsb $C0.b		; 04 C0
	bmi -88.b		; 30 A8
	jsr $FFC8.w		; 20 C8 FF
	lda $75BFFF.l,X		; BF FF BF 75
	sbc $51FE63.l,X		; FF 63 FE 51
	sbc $39FA51.l,X		; FF 51 FA 39
	jmp ($3E1C.w,X)		; 7C 1C 3E
	ora ($1D.b,X)		; 01 1D
	cop $82.b		; 02 82
	stz $94.b,X		; 74 94
	.db $62, $AA, $50		; 62 AA 50
	tay		; A8
	bvc  68.b		; 50 44
	sec		; 38
	jsl $011C1C.l		; 22 1C 1C 01
	ora $15.b,S		; 03 15
	adc $D455.w,X		; 7D 55 D4
	sbc [$BD.b]		; E7 BD
	lda $81.b		; A5 81
	lda $42.b		; A5 42
	stp		; DB
	lda $1899.w,X		; BD 99 18
	sbc [$E7.b]		; E7 E7
	sbc [$C3.b]		; E7 C3
	sbc $0081A5.l,X		; FF A5 81 00
	bra   0.b		; 80 00
	rti		; 40

	ora ($01.b,X)		; 01 01
	adc $FFFF5F.l,X		; 7F 5F FF FF
	bpl  56.b		; 10 38
	php		; 08
	tsb $0C.b		; 04 0C
	ora $1D.b,S		; 03 1D
	inc A		; 1A
	rti		; 40

	mvn $2A,$80		; 54 80 2A
	bra   8.b		; 80 08
	bpl  12.b		; 10 0C
	php		; 08
	ora $1B0C.w		; 0D 0C 1B
	ora $1A56.w,X		; 1D 56 1A
	cpx $3A54.w		; EC 54 3A
	rol A		; 2A
	bra -127.b		; 80 81
	sei		; 78
	eor $F4.b,X		; 55 F4
	sbc $874878.l,X		; FF 78 48 87
	ldx $01.b,Y		; B6 01
	ldy $01.b,X		; B4 01
	ldy $78.b,X		; B4 78
	dec $B748.w		; CE 48 B7
	ldx $01.b,Y		; B6 01
	ora ($B4.b,X)		; 01 B4
	ldy $01.b,X		; B4 01
	ora ($84.b,X)		; 01 84
	dec $DF5F.w		; CE 5F DF
	sbc $7020FF.l,X		; FF FF 20 70
	rti		; 40

	bra -64.b		; 80 C0
	cpx #$0860.w		; E0 60 08
	tay		; A8
	tsb $50.b		; 04 50
	tsb $02.b		; 04 02
	rti		; 40

	jsr $40C0.w		; 20 C0 40
	cpy #$60C0.w		; C0 C0 60
	cpx #$60A8.w		; E0 A8 60
	jmp.w [$70A8]		; DC A8 70
	bvc   6.b		; 50 06
	tsb $D0.b		; 04 D0
	and $033FC0.l,X		; 3F C0 3F 03
	ora [$03.b]		; 07 03
	ora $0305.w		; 0D 05 03
	ora $18.b,S		; 03 18
	php		; 08
	ora $03.b,S		; 03 03
	ora $05.b		; 05 05
	ora $03.b,S		; 03 03
	php		; 08
	php		; 08
	sbc $D455FF.l,X		; FF FF 55 D4
	trb $E21C.w		; 1C 1C E2
	inc $FF43.w,X		; FE 43 FF
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sta $F1FF.w,X		; 9D FF F1
	sbc $E2F37F.l,X		; FF 7F F3 E2
	inc $1C41.w,X		; FE 41 1C
	inc $2E1D.w,X		; FE 1D 2E
	bra  29.b		; 80 1D
	tsb $D350.w		; 0C 50 D3
	brk $C3.b		; 00 C3
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	jsr $4040.w		; 20 40 40
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	sbc $D095FF.l,X		; FF FF 95 D0
	and $3F.b,S		; 23 3F
	phd		; 0B
	asl $0C06.w,X		; 1E 06 0C
	ora $0E0F0E.l		; 0F 0E 0F 0E
	ora $1D0F.w		; 0D 0F 1D
	trb $181A.w		; 1C 1A 18
	asl $0815.w,X		; 1E 15 08
	ora ($03.b,X)		; 01 03
	asl $04.b		; 06 04
	sbc $F57DEF.l,X		; FF EF 7D F5
	dec $FF01.w,X		; DE 01 FF
	ora $33.b,S		; 03 33
	cmp $FE01FC.l		; CF FC 01 FE
	ora $B5.b,S		; 03 B5
	stx $78.b		; 86 78
	and ($31.b),Y		; 31 31
	bmi -70.b		; 30 BA
	txa		; 8A
	and ($02.b)		; 32 02
	inc $78FC.w,X		; FE FC 78
	sta [$87.b]		; 87 87
	dec $33CE.w		; CE CE 33
	rti		; 40

	and ($40.b,S),Y		; 33 40
	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra  -1.b		; 80 FF
	sbc $1157FF.l,X		; FF FF 57 11
	asl $444B.w		; 0E 4B 44
	and [$61.b],Y		; 37 61
	inc A		; 1A
	and $18.b,X		; 35 18
	ora $07.b,S		; 03 07
	ora ($01.b)		; 12 01
	ora #$0A.b		; 09 0A
	asl $0E.b		; 06 0E
	dec $F444.w		; CE 44 F4
	jsr $10F8.w		; 20 F8 10
	bvs  12.b		; 70 0C
	jsr $060C.w		; 20 0C 06
	ora ($7D.b,X)		; 01 7D
	sbc $EFF57D.l		; EF 7D F5 EF
	sbc $E79981.l,X		; FF 81 99 E7
	ror $81FF.w,X		; 7E FF 81
	phy		; 5A
	cmp $3C.b,S		; C3 3C
	clc		; 18
	clc		; 18
	clc		; 18
	cmp $99C5.w,X		; DD C5 99
	sta ($FF.b,X)		; 81 FF
	ror $C33C.w,X		; 7E 3C C3
	cmp $E7.b,S		; C3 E7
	sbc [$77.b]		; E7 77
	jmp.w [$F033]		; DC 33 F0
	jsr $80C0.w		; 20 C0 80
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	bne  63.b		; D0 3F
	cpy #$3F.b		; C0 3F
	ora ($03.b,X)		; 01 03
	ora ($06.b,X)		; 01 06
	cop $01.b		; 02 01
	ora ($0C.b,X)		; 01 0C
	tsb $01.b		; 04 01
	ora ($02.b,X)		; 01 02
	cop $01.b		; 02 01
	ora ($04.b,X)		; 01 04
	tsb $FF.b		; 04 FF
	sbc $0ED555.l,X		; FF 55 D5 0E
	asl $7F71.w		; 0E 71 7F
	lda ($FF.b,X)		; A1 FF
	adc ($FF.b),Y		; 71 FF
	lsr $78FF.w		; 4E FF 78
	sbc $F1F9BF.l,X		; FF BF F9 F1
	sbc $7F0EA0.l,X		; FF A0 0E 7F
	stx $9780.w		; 8E 80 97
	rti		; 40

	asl $D006.w		; 0E 06 D0
	cmp ($C0.b,S),Y		; D3 C0
	cmp $C0.b,S		; C3 C0
	ldy #$80.b		; A0 80
	rti		; 40

	rti		; 40

	bpl -96.b		; 10 A0
	jsr $8080.w		; 20 80 80
	rti		; 40

	rti		; 40

	ldy #$A0.b		; A0 A0
	sbc $57FFFF.l,X		; FF FF FF 57
	ora ($0E.b),Y		; 11 0E
	phk		; 4B
	mvp $61,$37		; 44 37 61
	inc A		; 1A
	and $18.b,X		; 35 18
	ora $07.b,S		; 03 07
	ora ($01.b)		; 12 01
	ora #$0A.b		; 09 0A
	asl $0E.b		; 06 0E
	dec $F444.w		; CE 44 F4
	jsr $10F8.w		; 20 F8 10
	bvs  12.b		; 70 0C
	jsr $060C.w		; 20 0C 06
	ora ($7D.b,X)		; 01 7D
	sbc $EFF57D.l		; EF 7D F5 EF
	sbc $E79981.l,X		; FF 81 99 E7
	ror $81FF.w,X		; 7E FF 81
	phy		; 5A
	cmp $3C.b,S		; C3 3C
	clc		; 18
	clc		; 18
	clc		; 18
	cmp $99C5.w,X		; DD C5 99
	sta ($FF.b,X)		; 81 FF
	ror $C33C.w,X		; 7E 3C C3
	cmp $E7.b,S		; C3 E7
	sbc [$FF.b]		; E7 FF
	sbc $2057FF.l,X		; FF FF 57 20
	cpy #$A3.b		; C0 A3
.ACCU 16
	rep #$EC		; C2 EC
	stx $58.b		; 86 58
	ldy $C018.w		; AC 18 C0
	cpx #$48.b		; E0 48
	bra -112.b		; 80 90
	rti		; 40

	rts		; 60

	rti		; 40

	eor $42.b,S		; 43 42
	eor $081F04.l		; 4F 04 1F 08
	asl $0430.w		; 0E 30 04
	bmi  96.b		; 30 60
	bra -48.b		; 80 D0
	and $013FC0.l,X		; 3F C0 3F 01
	ora $01.b,S		; 03 01
	asl $02.b		; 06 02
	ora ($01.b,X)		; 01 01
	tsb $0104.w		; 0C 04 01
	ora ($02.b,X)		; 01 02
	cop $01.b		; 02 01
	ora ($04.b,X)		; 01 04
	tsb $FF.b		; 04 FF
	sbc $0ED555.l,X		; FF 55 D5 0E
	asl $7F71.w		; 0E 71 7F
	lda ($FF.b,X)		; A1 FF
	adc ($FF.b),Y		; 71 FF
	lsr $78FF.w		; 4E FF 78
	sbc $F1F9BF.l,X		; FF BF F9 F1
	sbc $7F0EA0.l,X		; FF A0 0E 7F
	stx $9780.w		; 8E 80 97
	rti		; 40

	asl $D006.w		; 0E 06 D0
	cmp ($C0.b,S),Y		; D3 C0
	cmp $C0.b,S		; C3 C0
	ldy #$80.b		; A0 80
	rti		; 40

	rti		; 40

	bpl -96.b		; 10 A0
	jsr $8080.w		; 20 80 80
	rti		; 40

	rti		; 40

	ldy #$A0.b		; A0 A0
	jsr ($51FF.w,X)		; FC FF 51
	ora $07.b,X		; 15 07
	ora [$09.b]		; 07 09
	ora $1C1F17.l		; 0F 17 1F 1C
	ora $050F09.l,X		; 1F 09 0F 05
	ora $010F0F.l		; 0F 0F 0F 01
	asl $08.b		; 06 08
	ora $06.b,S		; 03 06
	asl A		; 0A
	jsr ($55FF.w,X)		; FC FF 55
	sbc $7F6F.w,X		; FD 6F 7F
	bcs  -1.b		; B0 FF
	adc $FF.b,S		; 63 FF
	phx		; DA
	sbc $FBFEF4.l,X		; FF F4 FE FB
	inc $FED7.w,X		; FE D7 FE
	cpy #$10.b		; C0 10
	adc $130180.l		; 6F 80 01 13
	ora ($05.b,X)		; 01 05
	ora ($2D.b,X)		; 01 2D
	ora $D0.b		; 05 D0
	ora $C00FC0.l		; 0F C0 0F C0
	bra -128.b		; 80 80
	rts		; 60

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	sbc $7BDFFE.l,X		; FF FE DF 7B
	asl $01.b		; 06 01
	ora [$13.b],Y		; 17 13
	trb $0B0A.w		; 1C 0A 0B
	ora $0D.b,X		; 15 0D
	ora $0A1904.l		; 0F 04 19 0A
	cop $03.b		; 02 03
	ora ($31.b,X)		; 01 31
	ora ($0F.b,S),Y		; 13 0F
	inc A		; 1A
	tsb $0722.w		; 0C 22 07
	trb $08.b		; 14 08
	asl $010C.w		; 0E 0C 01
	sbc $7CFF.w,X		; FD FF 7C
	sbc $5FFF.w,X		; FD FF 5F
	ldy $3C.b		; A4 3C
	cmp [$9F.b]		; C7 9F
	rti		; 40

	ora $F187E3.l		; 0F E3 87 F1
	rti		; 40

	lsr $8180.w		; 4E 80 81
	ldy $A4.b,X		; B4 A4
	ldy $3F84.w,X		; BC 84 3F
	trb $404E.w		; 1C 4E 40
	bcs  48.b		; B0 30
	ror $173E.w,X		; 7E 3E 17
	lda ($01.b)		; B2 01
	ora ($B0.b,X)		; 01 B0
	rti		; 40

	bpl  32.b		; 10 20
	cpy #$80.b		; C0 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cmp $30CF30.l		; CF 30 CF 30
	asl $01.b		; 06 01
	ora $010107.l		; 0F 07 01 01
	clc		; 18
	php		; 08
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	ora ($01.b,X)		; 01 01
	php		; 08
	php		; 08
	sbc $7CAF.w,X		; FD AF 7C
	sbc $A45FFF.l,X		; FF FF 5F A4
	bit $9FC7.w,X		; 3C C7 9F
	rti		; 40

	ora $F107E3.l		; 0F E3 07 F1
	dec $B481.w		; CE 81 B4
	ldy $BC.b		; A4 BC
	sty $3F.b		; 84 3F
	stz $CE80.w		; 9C 80 CE
	cpy #$B0.b		; C0 B0
	bcs 126.b		; B0 7E
	ror $FEFF.w,X		; 7E FF FE
	sbc $40B05B.l,X		; FF 5B B0 40
	ora ($02.b,S),Y		; 13 02
	and $2A1404.l		; 2F 04 14 2A
	ldy $0878.w		; AC 78 08
	rts		; 60

	cli		; 58
	cpy #$F0.b		; C0 F0
	bra   3.b		; 80 03
	cop $0C.b		; 02 0C
	asl $10.b		; 06 10
	tsb $B811.w		; 0C 11 B8
	asl A		; 0A
	tsb $50.b		; 04 50
	cpx #$FC.b		; E0 FC
	sbc $071551.l,X		; FF 51 15 07
	ora [$09.b]		; 07 09
	ora $1C1F17.l		; 0F 17 1F 1C
	ora $050F09.l,X		; 1F 09 0F 05
	ora $010F0F.l		; 0F 0F 0F 01
	asl $08.b		; 06 08
	ora $06.b,S		; 03 06
	asl A		; 0A
	jsr ($55FF.w,X)		; FC FF 55
	sbc $7F6F.w,X		; FD 6F 7F
	bcs  -1.b		; B0 FF
	adc $FF.b,S		; 63 FF
	phx		; DA
	sbc $FBFEF4.l,X		; FF F4 FE FB
	inc $FED7.w,X		; FE D7 FE
	cpy #$10.b		; C0 10
	adc $130180.l		; 6F 80 01 13
	ora ($05.b,X)		; 01 05
	ora ($2D.b,X)		; 01 2D
	ora $D0.b		; 05 D0
	ora $C00FC0.l		; 0F C0 0F C0
	bra -128.b		; 80 80
	rts		; 60

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	cmp $F3CF33.l		; CF 33 CF F3
	ora $1F02.w		; 0D 02 1F
	ora $010303.l		; 0F 03 03 01
	ora ($30.b,X)		; 01 30
	bpl   2.b		; 10 02
	cop $0F.b		; 02 0F
	ora $010303.l		; 0F 03 03 01
	ora ($10.b,X)		; 01 10
	bpl   1.b		; 10 01
	ora ($FD.b,X)		; 01 FD
	lda $FFFD7D.l		; AF 7D FD FF
	lda $8E7948.l,X		; BF 48 79 8E
	and $C71F80.l,X		; 3F 80 1F C7
	ora $039CE3.l		; 0F E3 9C 03
	ora ($69.b,X)		; 01 69
	pha		; 48
	adc $7F08.w,Y		; 79 08 7F
	sec		; 38
	stz $6080.w		; 9C 80 60
	rts		; 60

	jsr ($17FC.w,X)		; FC FC 17
	cop $00.b		; 02 00
	brk $60.b		; 00 60
	bra  32.b		; 80 20
	rti		; 40

	bra -12.b		; 80 F4
	eor $030FF0.l,X		; 5F F0 0F 03
	tsb $03.b		; 04 03
	php		; 08
	ora [$09.b]		; 07 09
	asl $02.b		; 06 02
	ora $07.b		; 05 07
	ora [$03.b]		; 07 03
	ora $07.b,S		; 03 07
	ora [$06.b]		; 07 06
	asl $05.b		; 06 05
	ora $FC.b		; 05 FC
	sbc $B7D555.l,X		; FF 55 D5 B7
	lda $B1FFD8.l,X		; BF D8 FF B1
	sbc $FAFF6D.l,X		; FF 6D FF FA
	sbc $EBFFFD.l,X		; FF FD FF EB
	sbc $3708E0.l,X		; FF E0 08 37
	rti		; 40

	bra   9.b		; 80 09
	cop $16.b		; 02 16
	cop $F4.b		; 02 F4
	sbc $800FF0.l,X		; FF F0 0F 80
	cpx #$80.b		; E0 80
	rti		; 40

	rti		; 40

	bcs -96.b		; B0 A0
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	ldy #$A0.b		; A0 A0
	cpy #$40.b		; C0 40
	bne  63.b		; D0 3F
	cpy #$3F.b		; C0 3F
	ora $07.b,S		; 03 07
	ora $0D.b,S		; 03 0D
	ora $03.b		; 05 03
	ora $18.b,S		; 03 18
	php		; 08
	ora $03.b,S		; 03 03
	ora $05.b		; 05 05
	ora $03.b,S		; 03 03
	php		; 08
	php		; 08
	sbc $D455FF.l,X		; FF FF 55 D4
	trb $E21C.w		; 1C 1C E2
	inc $FF43.w,X		; FE 43 FF
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sta $F1FF.w,X		; 9D FF F1
	sbc $E2F37F.l,X		; FF 7F F3 E2
	inc $1C41.w,X		; FE 41 1C
	inc $2E1D.w,X		; FE 1D 2E
	bra  29.b		; 80 1D
	tsb $D350.w		; 0C 50 D3
	brk $C3.b		; 00 C3
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	jsr $4040.w		; 20 40 40
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	sbc $F04FDF.l,X		; FF DF 4F F0
	and $1C.b,S		; 23 1C
	asl $08.b,X		; 16 08
	ora $020C02.l		; 0F 02 0C 02
	ora $0E03.w		; 0D 03 0E
	ora ($1C.b,X)		; 01 1C
	inc A		; 1A
	cop $1C.b		; 02 1C
	trb $0809.w		; 1C 09 08
	ora ($03.b,X)		; 01 03
	ora $05.b,S		; 03 05
	ora ($FF.b,X)		; 01 FF
	sbc $DEF555.l		; EF 55 F5 DE
	ora ($B5.b,X)		; 01 B5
	ora ($B3.b,X)		; 01 B3
	eor $01FC.w		; 4D FC 01
	inc $B503.w,X		; FE 03 B5
	stx $78.b		; 86 78
	and ($31.b),Y		; 31 31
	bmi  -2.b		; 30 FE
	bmi  -2.b		; 30 FE
	jsr ($8778.w,X)		; FC 78 87
	sta [$CE.b]		; 87 CE
	dec $4033.w		; CE 33 40
	and ($40.b,S),Y		; 33 40
	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -16.b		; 80 F0
	sbc $035150.l,X		; FF 50 51 03
	ora $06.b,S		; 03 06
	asl $05.b		; 06 05
	ora $06.b		; 05 06
	ora [$0E.b]		; 07 0E
	ora $020B0B.l		; 0F 0B 0B 02
	ora [$06.b]		; 07 06
	php		; 08
	tsb $3FD4.w		; 0C D4 3F
	jsr ($FF70.w,X)		; FC 70 FF
	eor $1F.b,X		; 55 1F
	.db $42, $A1		; 42 A1
	lda ($57.b,X)		; A1 57
	adc $9E.b,S		; 63 9E
	stz $8888.w		; 9C 88 88
	sbc $8888FF.l,X		; FF FF 88 88
	trb $1C1C.w		; 1C 1C 1C
	mvn $FC,$55		; 54 55 FC
	sbc $40C080.l,X		; FF 80 C0 40
	cpx #$A0.b		; E0 A0
	beq -48.b		; F0 D0
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	ldy #$A0.b		; A0 A0
	cpy #$C0.b		; C0 C0
	bne -48.b		; D0 D0
	cpx #$E0.b		; E0 E0
	sbc $D485FF.l,X		; FF FF 85 D4
	rol $2D3E.w,X		; 3E 3E 2D
	rol $3A38.w		; 2E 38 3A
	and ($32.b),Y		; 31 32
	and ($32.b,S),Y		; 33 32
	and ($31.b,S),Y		; 33 31
	rol A		; 2A
	pld		; 2B
	and $2F3D.w,X		; 3D 3D 2F
	and ($01.b)		; 32 01
	cop $02.b		; 02 02
	bit $FD02.w,X		; 3C 02 FD
	sbc $CC8D7F.l,X		; FF 7F 8D CC
	inc $FF03.w,X		; FE 03 FF
	cop $FC.b		; 02 FC
	ora ($FE.b,X)		; 01 FE
	ora $B4.b,S		; 03 B4
	stx $87.b		; 86 87
	sei		; 78
	inc $3330.w,X		; FE 30 33
	ora $32.b,S		; 03 32
	cop $32.b		; 02 32
	cop $FE.b		; 02 FE
	jsr ($0179.w,X)		; FC 79 01
	ora ($55.b,X)		; 01 55
	pei ($0F.b)		; D4 0F
	cpy #$F0.b		; C0 F0
	jsr $40A0.w		; 20 A0 40
	rti		; 40

	jsr $8020.w		; 20 20 80
	bne -48.b		; D0 D0
	bmi  48.b		; 30 30
	beq 112.b		; F0 70
	sbc $FFFF.w,X		; FD FF FF
	sbc $C61F.w,X		; FD 1F C6
	eor ($35.b,X)		; 41 35
	sei		; 78
	jsr $0825.w		; 20 25 08
	and $05.b,S		; 23 05
	ora ($10.b)		; 12 10
	phd		; 0B
	inc A		; 1A
	ora [$17.b]		; 07 17
	cmp [$4E.b],Y		; D7 4E
	inc $E626.w,X		; FE 26 E6
	inc A		; 1A
	.db $42, $1C		; 42 1C
	tsb $0402.w		; 0C 02 04
	ora $10.b,S		; 03 10
	ora ($CD.b),Y		; 11 CD
	sbc $6615C3.l,X		; FF C3 15 66
	sta $8181.w,Y		; 99 81 81
	sta ($81.b,X)		; 81 81
	sta ($A5.b,X)		; 81 A5
	.db $42, $99		; 42 99
	sbc $99243C.l,X		; FF 3C 24 99
	sta ($66.b,X)		; 81 66
	sta ($81.b,X)		; 81 81
	.db $42, $3C		; 42 3C
	sbc $0FDC.w,X		; FD DC 0F
	jsr ($1078.w,X)		; FC 78 10
	bra -48.b		; 80 D0
	bra -96.b		; 80 A0
	bra  32.b		; 80 20
	bra -112.b		; 80 90
	bcc  64.b		; 90 40
	inx		; E8
	inx		; E8
	tya		; 98
	tya		; 98
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	sei		; 78
	clv		; B8
	bvc  85.b		; 50 55
	beq -13.b		; F0 F3
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	tsb $02.b		; 04 02
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	tsb $04.b		; 04 04
	asl $06.b		; 06 06
	pei ($3F.b)		; D4 3F
	jsr ($7F70.w,X)		; FC 70 7F
	tax		; AA
	sta $50D021.l		; 8F 21 D0 50
	plb		; AB
	lda ($CF.b),Y		; B1 CF
	dec $4444.w		; CE 44 44
	adc $C4C47F.l,X		; 7F 7F C4 C4
	asl $0E0E.w		; 0E 0E 0E
	jsr ($54FF.w,X)		; FC FF 54
	eor $C0.b,X		; 55 C0
	cpy #$60.b		; C0 60
	rts		; 60

	ldy #$A0.b		; A0 A0
	bvs -16.b		; 70 F0
	bvc -48.b		; 50 D0
	sed		; F8
	sed		; F8
	inx		; E8
	inx		; E8
	rti		; 40

	cpx #$60.b		; E0 60
	bpl  48.b		; 10 30
	php		; 08
	clc		; 18
	sbc $FFFF.w,X		; FD FF FF
	sbc $C61F.w,X		; FD 1F C6
	eor ($35.b,X)		; 41 35
	sei		; 78
	jsr $0825.w		; 20 25 08
	and $05.b,S		; 23 05
	ora ($10.b)		; 12 10
	phd		; 0B
	inc A		; 1A
	ora [$17.b]		; 07 17
	cmp [$4E.b],Y		; D7 4E
	inc $E626.w,X		; FE 26 E6
	inc A		; 1A
	.db $42, $1C		; 42 1C
	tsb $0402.w		; 0C 02 04
	ora $10.b,S		; 03 10
	ora ($CD.b),Y		; 11 CD
	sbc $6615C3.l,X		; FF C3 15 66
	sta $8181.w,Y		; 99 81 81
	sta ($81.b,X)		; 81 81
	sta ($A5.b,X)		; 81 A5
	.db $42, $99		; 42 99
	sbc $99243C.l,X		; FF 3C 24 99
	sta ($66.b,X)		; 81 66
	sta ($81.b,X)		; 81 81
	.db $42, $3C		; 42 3C
	sbc $FFFF.w,X		; FD FF FF
	sbc $6378.w,X		; FD 78 63
	txa		; 8A
	ldy $041E.w		; AC 1E 04
	ldy $10.b		; A4 10
	cpy $A0.b		; C4 A0
	pha		; 48
	php		; 08
	bne  88.b		; D0 58
	cpx #$E8.b		; E0 E8
	xba		; EB
	adc ($77.b)		; 72 77
	stz $67.b		; 64 67
	cli		; 58
	.db $42, $38		; 42 38
	bmi  64.b		; 30 40
	jsr $08C0.w		; 20 C0 08
	dey		; 88
	jsr ($54FF.w,X)		; FC FF 54
	eor ($01.b),Y		; 51 01
	ora ($07.b,X)		; 01 07
	ora [$0D.b]		; 07 0D
	ora $0B0A.w		; 0D 0A 0B
	ora $1C0F.w		; 0D 0F 1C
	ora $011717.l,X		; 1F 17 17 01
	ora $0F.b		; 05 0F
	tsb $1810.w		; 0C 10 18
	pei ($3F.b)		; D4 3F
	jsr ($FF70.w,X)		; FC 70 FF
	tax		; AA
	and $424384.l,X		; 3F 84 43 42
	ldx $3CC6.w		; AE C6 3C
	sec		; 38
	ora ($11.b),Y		; 11 11
	sbc $1111FF.l,X		; FF FF 11 11
	sec		; 38
	sec		; 38
	sec		; 38
	bvc  85.b		; 50 55
	bmi  -1.b		; 30 FF
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	cpx #$A0.b		; E0 A0
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	ldy #$A0.b		; A0 A0
	cpy #$C0.b		; C0 C0
	sbc $FFFF7F.l,X		; FF 7F FF FF
	cmp $783740.l		; CF 40 37 78
	jsl $220924.l		; 22 24 09 22
	and $12.b		; 25 12
	bmi  11.b		; 30 0B
	inc A		; 1A
	ora [$06.b]		; 07 06
	eor [$F7.b]		; 47 F7
	and [$E7.b]		; 27 E7
	tas		; 1B
	eor $1D.b,S		; 43 1D
	ora ($0C.b,X)		; 01 0C
	cop $24.b		; 02 24
	and $10.b,S		; 23 10
	ora ($05.b),Y		; 11 05
	ora $DD.b		; 05 DD
	tda		; 7B
	cmp $68E7FF.l		; CF FF E7 68
	tsb $80.b		; 04 80
	cpy #$04.b		; C0 04
	bvc   3.b		; 50 03
	asl A		; 0A
	pla		; 68
	ora #$FD.b		; 09 FD
	sed		; F8
	sed		; F8
	tsb $030C.w		; 0C 0C 03
	tsb $1B.b		; 04 1B
	bpl -118.b		; 10 8A
	bra 110.b		; 80 6E
	rts		; 60

	jsr ($57F4.w,X)		; FC F4 57
	and ($FF.b)		; 32 FF
	ora ($18.b,X)		; 01 18
	rti		; 40

	tay		; A8
	bpl  32.b		; 10 20
	cpy #$80.b		; C0 80
	bra -88.b		; 80 A8
	plp		; 28
	sec		; 38
	sec		; 38
	bmi  48.b		; 30 30
	jsr $8020.w		; 20 20 80
	mvn $FC,$45		; 54 45 FC
	sta $010201.l		; 8F 01 02 01
	ora $02.b		; 05 02
	cop $01.b		; 02 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $04.b,S		; 03 04
	tsb $06.b		; 04 06
	asl $60.b		; 06 60
	cmp $7F.b,X		; D5 7F
	bit $7E00.w,X		; 3C 00 7E
	sta [$87.b]		; 87 87
	sbc $627C.w,X		; FD 7C 62
	.db $62, $26, $26		; 62 26 26
	and $0638.w,Y		; 39 38 06
	asl $06.b		; 06 06
	sbc $54F9.w,Y		; F9 F9 54
	cmp $FC.b,X		; D5 FC
	and $F0D8E0.l,X		; 3F E0 D8 F0
	bit $28.b,X		; 34 28
	pha		; 48
	pha		; 48
	rti		; 40

	jsr $E820.w		; 20 20 E8
	inx		; E8
	sec		; 38
	sec		; 38
	tsb $04.b		; 04 04
	jmp $C04C.w		; 4C 4C C0
	bra  85.b		; 80 55
	eor $3F.b,X		; 55 3F
	jsr ($140F.w,X)		; FC 0F 14
	tsb $0808.w		; 0C 08 08
	tsb $0C14.w		; 0C 14 0C
	phd		; 0B
	phd		; 0B
	trb $181C.w		; 1C 1C 18
	clc		; 18
	clc		; 18
	clc		; 18
	ora $0A0A1F.l,X		; 1F 1F 0A 0A
	cmp $CF7F.w,X		; DD 7F CF
	sbc [$F3.b],Y		; F7 F3
	bit $02.b,X		; 34 02
	cpy #$E0.b		; C0 E0
	cop $28.b		; 02 28
	ora ($C0.b,X)		; 01 C0
	ora $F4.b		; 05 F4
	tsb $FE.b		; 04 FE
	jsr ($06FC.w,X)		; FC FC 06
	asl $01.b		; 06 01
	cop $0D.b		; 02 0D
	php		; 08
	ora $F7.b		; 05 F7
	beq  -2.b		; F0 FE
	plx		; FA
	sbc $BDFFEF.l,X		; FF EF FF BD
	sty $D320.w		; 8C 20 D3
	rol A		; 2A
	cpy $C43E.w		; CC 3E C4
	bit $90.b		; 24 90
	cpy $A0.b		; C4 A0
	pha		; 48
	bne  64.b		; D0 40
	cpx #$54.b		; E0 54
	ora [$42.b],Y		; 17 42
	ora [$44.b]		; 07 44
	ora [$D8.b]		; 07 D8
	cop $38.b		; 02 38
	bmi  64.b		; 30 40
	jsr $80C0.w		; 20 C0 80
	mvn $FC,$45		; 54 45 FC
	ora $030503.l		; 0F 03 05 03
	asl A		; 0A
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	php		; 08
	php		; 08
	tsb $D50C.w		; 0C 0C D5
	adc $FC303C.l,X		; 7F 3C 30 FC
	ora $F8FB0F.l		; 0F 0F FB F8
	cpy $C4.b		; C4 C4
	jmp $724C.w		; 4C 4C 72
	bvs  12.b		; 70 0C
	tsb $F30C.w		; 0C 0C F3
	sbc ($01.b,S),Y		; F3 01
	ora ($54.b,X)		; 01 54
	cmp $FC.b,X		; D5 FC
	ora $E0B0C0.l,X		; 1F C0 B0 E0
	pla		; 68
	bvc -112.b		; 50 90
	bcc -128.b		; 90 80
	rti		; 40

	rti		; 40

	bne -48.b		; D0 D0
	bvs 112.b		; 70 70
	php		; 08
	php		; 08
	tya		; 98
	tya		; 98
	bra  85.b		; 80 55
	eor $3F.b,X		; 55 3F
	jsr ($281F.w,X)		; FC 1F 28
	ora $1011.w,Y		; 19 11 10
	ora $1929.w,Y		; 19 29 19
	ora [$17.b],Y		; 17 17
	sec		; 38
	sec		; 38
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	and $15153F.l,X		; 3F 3F 15 15
	cmp $CF7F.w,X		; DD 7F CF
	sbc [$E7.b],Y		; F7 E7
	pla		; 68
	tsb $80.b		; 04 80
	cpy #$04.b		; C0 04
	bvc   3.b		; 50 03
	bra  10.b		; 80 0A
	inx		; E8
	ora #$FD.b		; 09 FD
	sed		; F8
	sed		; F8
	tsb $030C.w		; 0C 0C 03
	tsb $1B.b		; 04 1B
	bpl  10.b		; 10 0A
	inc $FCE0.w		; EE E0 FC
	pea $3257.w		; F4 57 32
	sbc $401801.l,X		; FF 01 18 40
	tay		; A8
	bpl  32.b		; 10 20
	cpy #$80.b		; C0 80
	bra -88.b		; 80 A8
	plp		; 28
	sec		; 38
	sec		; 38
	bmi  48.b		; 30 30
	jsr $8020.w		; 20 20 80
	mvn $FC,$45		; 54 45 FC
	ora $010201.l		; 0F 01 02 01
	ora $02.b		; 05 02
	cop $01.b		; 02 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $04.b,S		; 03 04
	tsb $06.b		; 04 06
	asl $D5.b		; 06 D5
	adc $7E003C.l,X		; 7F 3C 00 7E
	sta [$87.b]		; 87 87
	sbc $627C.w,X		; FD 7C 62
	.db $62, $26, $26		; 62 26 26
	and $0638.w,Y		; 39 38 06
	asl $06.b		; 06 06
	sbc $54F9.w,Y		; F9 F9 54
	cmp $FC.b,X		; D5 FC
	and $F0D8E0.l,X		; 3F E0 D8 F0
	bit $28.b,X		; 34 28
	pha		; 48
	pha		; 48
	rti		; 40

	jsr $E820.w		; 20 20 E8
	inx		; E8
	sec		; 38
	sec		; 38
	tsb $04.b		; 04 04
	jmp $C04C.w		; 4C 4C C0
	bra  -3.b		; 80 FD
	cli		; 58
	ora $091FFC.l		; 0F FC 1F 09
	ora ($0B.b,X)		; 01 0B
	ora ($05.b,X)		; 01 05
	ora ($01.b,X)		; 01 01
	ora $170B.w		; 0D 0B 17
	ora [$19.b],Y		; 17 19
	ora $0101.w,Y		; 19 01 01
	ora ($01.b,X)		; 01 01
	asl $551F.w,X		; 1E 1F 55
	sbc $660557.l,X		; FF 57 05 66
	phy		; 5A
	sbc $81FF7E.l,X		; FF 7E FF 81
	phy		; 5A
	cmp $C3.b,S		; C3 C3
	bit $18FF.w,X		; 3C FF 18
	sta $FF81.w,Y		; 99 81 FF
	clc		; 18
	sbc $FD3C7E.l,X		; FF 7E 3C FD
	jmp.w [$FC0F]		; DC 0F FC
	sei		; 78
	bpl -128.b		; 10 80
	bne -128.b		; D0 80
	ldy #$80.b		; A0 80
	jsr $9080.w		; 20 80 90
	bcc  64.b		; 90 40
	inx		; E8
	inx		; E8
	tya		; 98
	tya		; 98
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	sei		; 78
	clv		; B8
	jsr ($54FF.w,X)		; FC FF 54
	eor ($01.b),Y		; 51 01
	ora ($07.b,X)		; 01 07
	ora [$0D.b]		; 07 0D
	ora $0B0A.w		; 0D 0A 0B
	ora $1C0F.w		; 0D 0F 1C
	ora $011717.l,X		; 1F 17 17 01
	ora $0F.b		; 05 0F
	tsb $1810.w		; 0C 10 18
	pei ($3F.b)		; D4 3F
	jsr ($FF70.w,X)		; FC 70 FF
	tax		; AA
	and $424384.l,X		; 3F 84 43 42
	ldx $3CC6.w		; AE C6 3C
	sec		; 38
	ora ($11.b),Y		; 11 11
	sbc $1111FF.l,X		; FF FF 11 11
	sec		; 38
	sec		; 38
	sec		; 38
	bvc  85.b		; 50 55
	bmi  -1.b		; 30 FF
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	cpx #$A0.b		; E0 A0
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	ldy #$A0.b		; A0 A0
	cpy #$C0.b		; C0 C0
	lda $801492.l		; AF 92 14 80
	ora ($0F.b,X)		; 01 0F
	ora ($0C.b,X)		; 01 0C
	ora $03.b		; 05 03
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	cop $03.b		; 02 03
	cmp #$FF.b		; C9 FF
	cmp $FF15.w		; CD 15 FF
	sta ($81.b,X)		; 81 81
	sta ($81.b,X)		; 81 81
	sta ($A5.b,X)		; 81 A5
	.db $42, $99		; 42 99
	sbc $18243C.l,X		; FF 3C 24 18
	sta ($81.b,X)		; 81 81
	ror $81.b		; 66 81
	sta ($42.b,X)		; 81 42
	bit $92AF.w,X		; 3C AF 92
	ora [$80.b],Y		; 17 80
	bra  96.b		; 80 60
	bra  32.b		; 80 20
	ldy #$C0.b		; A0 C0
	bra -128.b		; 80 80
	rti		; 40

	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	cpy #$E0.b		; C0 E0
	phb		; 8B
	cpy #$9B.b		; C0 9B
	ora $05.b		; 05 05
	ora $020702.l		; 0F 02 07 02
	tsb $05.b		; 04 05
	ora $02.b		; 05 02
	ora [$02.b]		; 07 02
	cop $04.b		; 02 04
	inc $FCFE.w,X		; FE FE FC
	inc $0E0E.w,X		; FE 0E 0E
	adc [$71.b],Y		; 77 71
	cmp [$80.b]		; C7 80
	eor ($22.b,X)		; 41 22
	lsr $32.b		; 46 32
	cld		; D8
	eor $2F0F.w,X		; 5D 0F 2F
	asl $7106.w		; 0E 06 71
	eor [$80.b]		; 47 80
	eor ($22.b,X)		; 41 22
	lsr $DC32.w		; 4E 32 DC
	eor ($03.b),Y		; 51 03
	and ($E0.b,X)		; 21 E0
	sbc $C0.b,S		; E3 C0
	sbc [$C0.b]		; E7 C0
	cpy #$60.b		; C0 60
	jsr $2070.w		; 20 70 20
	rti		; 40

	bra -64.b		; 80 C0
	rti		; 40

	jsr $8060.w		; 20 60 80
	jsr $80C0.w		; 20 C0 80
	cpx #$8B.b		; E0 8B
	cpy #$9B.b		; C0 9B
	cop $02.b		; 02 02
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	ora ($02.b,X)		; 01 02
	inc $FCFE.w,X		; FE FE FC
	inc $0707.w,X		; FE 07 07
	tsa		; 3B
	sec		; 38
	sbc $C0.b,S		; E3 C0
	ldy #$91.b		; A0 91
	and $19.b,S		; 23 19
	jmp ($072E.w)		; 6C 2E 07
	ora [$07.b],Y		; 17 07
	ora $38.b,S		; 03 38
	and $C0.b,S		; 23 C0
	ldy #$91.b		; A0 91
	and [$19.b]		; 27 19
	ror $0128.w		; 6E 28 01
	bpl  -8.b		; 10 F8
	sbc $F0.b,S		; E3 F0
	sbc [$80.b]		; E7 80
	bra -32.b		; 80 E0
	rts		; 60

	bcs  16.b		; B0 10
	sec		; 38
	bcc -96.b		; 90 A0
	cpy #$80.b		; C0 80
	bra  96.b		; 80 60
	ldy #$10.b		; A0 10
	bmi  64.b		; 30 40
	bcc -32.b		; 90 E0
	cpy #$FE.b		; C0 FE
	sbc $073DFE.l		; EF FE 3D 07
	rts		; 60

	rol $18.b		; 26 18
	rol $1310.w,X		; 3E 10 13
	tsb $11.b		; 04 11
	cop $09.b		; 02 09
	ora $01.b		; 05 01
	ora $60.b,S		; 03 60
	and ($78.b,X)		; 21 78
	ora ($70.b),Y		; 11 70
	tsb $0E20.w		; 0C 20 0E
	asl $01.b		; 06 01
	cop $01.b		; 02 01
	xce		; FB
	sbc $FF35CD.l,X		; FF CD 35 FF
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	cmp ($A1.b)		; D2 A1
	cpy $1EFF.w		; CC FF 1E
	ora ($0C.b)		; 12 0C
	rti		; 40

	rti		; 40

	and ($40.b,S),Y		; 33 40
	rti		; 40

	and ($1E.b,X)		; 21 1E
	bra -65.b		; 80 BF
	stp		; DB
	adc $30C080.l,X		; 7F 80 C0 30
	cpy #$90.b		; C0 90
	bra -48.b		; 80 D0
	rts		; 60

	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra  32.b		; 80 20
	rti		; 40

	rti		; 40

	ldy #$80.b		; A0 80
	ldy #$80.b		; A0 80
	bra  96.b		; 80 60
	sbc $BDFEEF.l,X		; FF EF FE BD
	ora ($0F.b,X)		; 01 0F
	cmp ($4C.b,X)		; C1 4C
	bmi 125.b		; 30 7D
	jsr $0827.w		; 20 27 08
	and $05.b,S		; 23 05
	ora ($0B.b)		; 12 0B
	cop $07.b		; 02 07
	cpy #$42.b		; C0 42
	beq  34.b		; F0 22
	cpx #$18.b		; E0 18
	rti		; 40

	trb $020C.w		; 1C 0C 02
	tsb $03.b		; 04 03
	ora ($C9.b,X)		; 01 C9
	sbc $FF15CD.l,X		; FF CD 15 FF
	sta ($81.b,X)		; 81 81
	sta ($81.b,X)		; 81 81
	sta ($A5.b,X)		; 81 A5
	.db $42, $99		; 42 99
	sbc $18243C.l,X		; FF 3C 24 18
	sta ($81.b,X)		; 81 81
	ror $81.b		; 66 81
	sta ($42.b,X)		; 81 42
	bit $EFFF.w,X		; 3C FF EF
	sbc $6080BD.l,X		; FF BD 80 60
	sta $22.b,S		; 83 22
	tsb $04BE.w		; 0C BE 04
	cpx $10.b		; E4 10
	cpy $A0.b		; C4 A0
	pha		; 48
	bne  64.b		; D0 40
	cpx #$80.b		; E0 80
	sta $42.b,S		; 83 42
	ora $180744.l		; 0F 44 07 18
	cop $38.b		; 02 38
	bmi  64.b		; 30 40
	jsr $80C0.w		; 20 C0 80
	cpx #$8B.b		; E0 8B
	cpy #$9B.b		; C0 9B
	ora $05.b		; 05 05
	ora $020702.l		; 0F 02 07 02
	tsb $05.b		; 04 05
	ora $02.b		; 05 02
	ora [$02.b]		; 07 02
	cop $04.b		; 02 04
	inc $FCFE.w,X		; FE FE FC
	inc $0E0E.w,X		; FE 0E 0E
	adc [$71.b],Y		; 77 71
	cmp [$80.b]		; C7 80
	eor ($22.b,X)		; 41 22
	lsr $32.b		; 46 32
	cld		; D8
	eor $2F0F.w,X		; 5D 0F 2F
	asl $7106.w		; 0E 06 71
	eor [$80.b]		; 47 80
	eor ($22.b,X)		; 41 22
	lsr $DC32.w		; 4E 32 DC
	eor ($03.b),Y		; 51 03
	and ($E0.b,X)		; 21 E0
	sbc $C0.b,S		; E3 C0
	sbc [$C0.b]		; E7 C0
	cpy #$60.b		; C0 60
	jsr $2070.w		; 20 70 20
	rti		; 40

	bra -64.b		; 80 C0
	rti		; 40

	jsr $8060.w		; 20 60 80
	jsr $80C0.w		; 20 C0 80
	sbc $AF7F7B.l,X		; FF 7B 7F AF
	dec $354D.w		; CE 4D 35
	ror $2621.w,X		; 7E 21 26
	php		; 08
	and $05.b,S		; 23 05
	ora ($0B.b)		; 12 0B
	cop $07.b		; 02 07
	tsb $4E.b		; 04 4E
	sbc ($25.b)		; F2 25
	cpx #$19.b		; E0 19
	rti		; 40

	trb $020C.w		; 1C 0C 02
	tsb $03.b		; 04 03
	ora ($03.b,X)		; 01 03
	sbc $857D1F.l,X		; FF 1F 7D 85
	and $FCC7.w,X		; 3D C7 FC
	and $FC.b,S		; 23 FC
	jsl $FE02FC.l		; 22 FC 02 FE
	stz $4CFC.w		; 9C FC 4C
	sed		; F8
	ora ($A4.b,X)		; 01 A4
	jsr $20E4.w		; 20 E4 20
	jsr ($3062.w,X)		; FC 62 30
	cpx #$02.b		; E0 02
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	sed		; F8
	ldx $AEF0.w		; AE F0 AE
	ora ($01.b,X)		; 01 01
	ora [$06.b]		; 07 06
	ora $0804.w		; 0D 04 08
	clc		; 18
	php		; 08
	php		; 08
	ora ($01.b,X)		; 01 01
	asl $05.b		; 06 05
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	pla		; 68
	ldx $BCFE.w,Y		; BE FE BC
	inc $3939.w,X		; FE 39 39
	sbc $1A25C6.l,X		; FF C6 25 1A
	ora $02.b		; 05 02
	eor [$01.b]		; 47 01
	php		; 08
	asl $FE.b		; 06 FE
	and $C639.w,Y		; 39 39 C6
	and $1A.b		; 25 1A
	ora $02.b		; 05 02
	eor [$01.b]		; 47 01
	php		; 08
	asl $FE.b		; 06 FE
	rol $3C4F.w,X		; 3E 4F 3C
	eor [$80.b]		; 47 80
	bra -64.b		; 80 C0
	rti		; 40

	cpx #$40.b		; E0 40
	rts		; 60

	rti		; 40

	jsr $8040.w		; 20 40 80
	bra  64.b		; 80 40
	cpy #$40.b		; C0 40
	rti		; 40

	rti		; 40

	rti		; 40

	sbc $80F752.l,X		; FF 52 F7 80
	ora [$1E.b]		; 07 1E
	asl $0F.b		; 06 0F
	asl $0B.b		; 06 0B
	phd		; 0B
	tsb $03.b		; 04 03
	ora ($02.b,X)		; 01 02
	ora [$01.b]		; 07 01
	asl $06.b		; 06 06
	tsb $0B.b		; 04 0B
	phd		; 0B
	ora ($CF.b,X)		; 01 CF
	sbc $1EFDDC.l,X		; FF DC FD 1E
	sbc $E0.b,S		; E3 E0
	sbc ($80.b)		; F2 80
	bcc -126.b		; 90 82
	cmp $452C41.l		; CF 41 2C 45
	stz $F2.b		; 64 F2
	ora ($D2.b,X)		; 01 D2
	bpl  32.b		; 10 20
	sty $4F10.w		; 8C 10 4F
	plp		; 28
	cop $18.b		; 02 18
	tsb $01.b		; 04 01
	sbc ($FF.b)		; F2 FF
	pld		; 2B
	sbc $C08005.l,X		; FF 05 80 C0
	clc		; 18
	bcc  96.b		; 90 60
	beq  32.b		; F0 20
	jsr $2080.w		; 20 80 20
	rti		; 40

	bra -128.b		; 80 80
	clc		; 18
	bpl 120.b		; 10 78
	jsr $C038.w		; 20 38 C0
	bpl -64.b		; 10 C0
	bra -32.b		; 80 E0
	ldx $AEC0.w		; AE C0 AE
	ora $03.b,S		; 03 03
	asl $02.b		; 06 02
	tsb $0C.b		; 04 0C
	tsb $04.b		; 04 04
	ora $02.b,S		; 03 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $BE.b		; 04 BE
	inc $EEBC.w		; EE BC EE
	trb $FF1C.w		; 1C 1C FF
	sbc $92.b,S		; E3 92
	sta $0102.w		; 8D 02 01
	and $04.b,S		; 23 04
	ora $7F.b,S		; 03 7F
	trb $E31C.w		; 1C 1C E3
	sta ($8D.b)		; 92 8D
	cop $01.b		; 02 01
	and $04.b,S		; 23 04
	ora $7F.b,S		; 03 7F
	rol $3C5F.w,X		; 3E 5F 3C
	eor $E0C0C0.l,X		; 5F C0 C0 E0
	jsr $20F0.w		; 20 F0 20
	bcs  32.b		; B0 20
	bcc -128.b		; 90 80
	jsr $C0C0.w		; 20 C0 C0
	jsr $20E0.w		; 20 E0 20
	ldy #$20.b		; A0 20
	bra -128.b		; 80 80
	jsr $57FF.w		; 20 FF 57
	sbc [$80.b],Y		; F7 80
	asl $0D3D.w		; 0E 3D 0D
	asl $160D.w,X		; 1E 0D 16
	asl $09.b,X		; 16 09
	ora ($06.b,X)		; 01 06
	ora ($03.b,X)		; 01 03
	tsb $0E.b		; 04 0E
	cop $0D.b		; 02 0D
	ora $1608.w		; 0D 08 16
	asl $03.b,X		; 16 03
	sbc $857D1F.l,X		; FF 1F 7D 85
	and $FCC7.w,X		; 3D C7 FC
	and $FC.b,S		; 23 FC
	jsl $FE02FC.l		; 22 FC 02 FE
	stz $CC7C.w		; 9C 7C CC
	sed		; F8
	ora ($A4.b,X)		; 01 A4
	jsr $20E4.w		; 20 E4 20
	jsr ($3062.w,X)		; FC 62 30
	cpx #$02.b		; E0 02
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	sed		; F8
	ldx $AEF0.w		; AE F0 AE
	ora ($01.b,X)		; 01 01
	ora [$06.b]		; 07 06
	ora $0804.w		; 0D 04 08
	clc		; 18
	php		; 08
	php		; 08
	ora ($01.b,X)		; 01 01
	asl $05.b		; 06 05
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	ldx $BCFE.w,Y		; BE FE BC
	inc $3939.w,X		; FE 39 39
	sbc $1A25C6.l,X		; FF C6 25 1A
	ora $02.b		; 05 02
	eor [$01.b]		; 47 01
	php		; 08
	asl $FE.b		; 06 FE
	and $C639.w,Y		; 39 39 C6
	and $1A.b		; 25 1A
	ora $02.b		; 05 02
	eor [$01.b]		; 47 01
	php		; 08
	asl $FE.b		; 06 FE
	rol $3C4F.w,X		; 3E 4F 3C
	eor [$80.b]		; 47 80
	bra -64.b		; 80 C0
	rti		; 40

	cpx #$40.b		; E0 40
	rts		; 60

	rti		; 40

	jsr $8040.w		; 20 40 80
	bra  64.b		; 80 40
	cpy #$40.b		; C0 40
	rti		; 40

	rti		; 40

	rti		; 40

	lda $801492.l		; AF 92 14 80
	ora ($0F.b,X)		; 01 0F
	ora ($0C.b,X)		; 01 0C
	ora $03.b		; 05 03
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	cop $03.b		; 02 03
	eor $FF.b,X		; 55 FF
	eor $05.b,X		; 55 05
	sbc $7EFF5A.l,X		; FF 5A FF 7E
	sbc $C35A81.l,X		; FF 81 5A C3
	cmp $3C.b,S		; C3 3C
	sbc $FF1818.l,X		; FF 18 18 FF
	clc		; 18
	sbc $AF3C7E.l,X		; FF 7E 3C AF
	sta ($17.b)		; 92 17
	bra -128.b		; 80 80
	rts		; 60

	bra  32.b		; 80 20
	ldy #$C0.b		; A0 C0
	bra -128.b		; 80 80
	rti		; 40

	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	cpy #$E0.b		; C0 E0
	phb		; 8B
	cpy #$9B.b		; C0 9B
	ora $05.b		; 05 05
	ora $020702.l		; 0F 02 07 02
	tsb $05.b		; 04 05
	ora $02.b		; 05 02
	ora [$02.b]		; 07 02
	cop $04.b		; 02 04
	inc $FCFE.w,X		; FE FE FC
	inc $0E0E.w,X		; FE 0E 0E
	adc [$71.b],Y		; 77 71
	cmp [$80.b]		; C7 80
	eor ($22.b,X)		; 41 22
	lsr $32.b		; 46 32
	cld		; D8
	eor $2F0F.w,X		; 5D 0F 2F
	asl $7106.w		; 0E 06 71
	eor [$80.b]		; 47 80
	eor ($22.b,X)		; 41 22
	lsr $DC32.w		; 4E 32 DC
	eor ($03.b),Y		; 51 03
	and ($E0.b,X)		; 21 E0
	sbc $C0.b,S		; E3 C0
	sbc [$C0.b]		; E7 C0
	cpy #$60.b		; C0 60
	jsr $2070.w		; 20 70 20
	rti		; 40

	bra -64.b		; 80 C0
	rti		; 40

	jsr $8060.w		; 20 60 80
	jsr $80C0.w		; 20 C0 80
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	plx		; FA
	ldx $BE.b,Y		; B6 BE
	ldx $F9FA.w		; AE FA F9
	sbc $AAAAAF.l,X		; FF AF AA AA
	tax		; AA
	tsx		; BA
	sta $9A96.w,Y		; 99 96 9A
	adc #$AA.b		; 69 AA
	ror $A6.b		; 66 A6
	phy		; 5A
	tax		; AA
	sta $6A.b,X		; 95 6A
	lda #$A6.b		; A9 A6
	ror A		; 6A
	lda #$A6.b		; A9 A6
	phy		; 5A
	lda #$95.b		; A9 95
	phy		; 5A
	lda #$96.b		; A9 96
	ror A		; 6A
	tax		; AA
	stx $AA.b,Y		; 96 AA
	lsr $A5.b,X		; 56 A5
	eor $959A.w,Y		; 59 9A 95
	eor $A659.w,Y		; 59 59 A6
	adc $99.b		; 65 99
	lda $59.b		; A5 59
	lda #$95.b		; A9 95
	phy		; 5A
	lda #$95.b		; A9 95
	eor $9599.w,Y		; 59 99 95
	sta $B6A9.w,Y		; 99 A9 B6
	ror A		; 6A
	plb		; AB
	tax		; AA
	plx		; FA
	rtl		; 6B

	sbc [$BF.b]		; E7 BF
	sbc $9AB6.w		; ED B6 9A
	lda #$96.b		; A9 96
	sta $AA.b,X		; 95 AA
	ror A		; 6A
	sta $A5A9.w,Y		; 99 A9 A5
	txs		; 9A
	lda #$EE.b		; A9 EE
	eor $95BA.w,Y		; 59 BA 95
	xce		; FB
	txs		; 9A
	inc $6B.b		; E6 6B
	ldx $6E.b,Y		; B6 6E
	lda $A99D.w,Y		; B9 9D A9
	stz $A96D.w,X		; 9E 6D A9
	tax		; AA
	lda #$AA.b		; A9 AA
	ror A		; 6A
	ror $AA99.w		; 6E 99 AA
	ror $99.b		; 66 99
	phy		; 5A
	lda #$99.b		; A9 99
	phy		; 5A
	lda #$95.b		; A9 95
	asl A		; 0A
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
	cpx #$7F.b		; E0 7F
	mvp $00,$20		; 44 20 00
	adc $E07E80.l,X		; 7F 80 7E E0
	adc $007F80.l,X		; 7F 80 7F 00
	brk $44.b		; 00 44
	jsr $7F00.w		; 20 00 7F
	sbc $7FE07F.l,X		; FF 7F E0 7F
	bra 127.b		; 80 7F
	mvp $00,$20		; 44 20 00
	adc $E07FF0.l,X		; 7F F0 7F E0
	adc $447F80.l,X		; 7F 80 7F 44
	jsr $7E80.w		; 20 80 7E
	cpx #$7F.b		; E0 7F
	bra 127.b		; 80 7F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	mvp $FF,$20		; 44 20 FF
	adc $807FE0.l,X		; 7F E0 7F 80
	adc $447F00.l,X		; 7F 00 7F 44
	jsr $7FF0.w		; 20 F0 7F
	cpx #$7F.b		; E0 7F
	bra 127.b		; 80 7F
	brk $7F.b		; 00 7F
	mvp $E0,$20		; 44 20 E0
	adc $007F80.l,X		; 7F 80 7F 00
	adc $117E80.l,X		; 7F 80 7E 11
	rti		; 40

	brk $94.b		; 00 94
	ora $FD.b,S		; 03 FD
	eor $80.b,X		; 55 80
	eor [$FC.b],Y		; 57 FC
	.db $82, $7C, $7F		; 82 7C 7F
	rol $7F.b,X		; 36 7F
	and ($4D.b)		; 32 4D
	eor #$7E.b		; 49 7E
	jmp ($3204.w,X)		; 7C 04 32
	tsb $36.b		; 04 36
	bit $3D30.w,X		; 3C 30 3D
	ora ($00.b,S),Y		; 13 00
	ora ($FC.b,X)		; 01 FC
	sei		; 78
	sei		; 78
	jsr ($3048.w,X)		; FC 48 30
	bmi  48.b		; 30 30
	bmi  -3.b		; 30 FD
	eor $00.b,X		; 55 00
	eor $FF.b,X		; 55 FF
	sta ($7E.b,X)		; 81 7E
	adc $307E32.l,X		; 7F 32 7E 30
	lsr A		; 4A
	.db $42, $7E		; 42 7E
	ror $3C34.w,X		; 7E 34 3C
	bit $30.b,X		; 34 30
	and $0017.w,X		; 3D 17 00
	eor $1C.b		; 45 1C
	rol $1C1C.w,X		; 3E 1C 1C
	php		; 08
	trb $14.b		; 14 14
	adc ($26.b,S),Y		; 73 26
	trb $32.b		; 14 32
	clc		; 18
	sbc $00D5.w,X		; FD D5 00
	cmp $1A.b,X		; D5 1A
	and $1A.b		; 25 1A
	adc $327F36.l,X		; 7F 36 7F 32
	lsr $3E24.w		; 4E 24 3E
	adc $3002.w,X		; 7D 02 30
	clc		; 18
	tsb $0204.w		; 0C 04 02
	sbc $0055.w,X		; FD 55 00
	eor $FF.b,X		; 55 FF
	sta ($7E.b,X)		; 81 7E
	adc $307E32.l,X		; 7F 32 7E 30
	lsr A		; 4A
	.db $42, $7E		; 42 7E
	ror $3C34.w,X		; 7E 34 3C
	bit $30.b,X		; 34 30
	sbc $00D5.w,X		; FD D5 00
	cmp $1A.b,X		; D5 1A
	and $1A.b		; 25 1A
	adc $327F36.l,X		; 7F 36 7F 32
	lsr $3E24.w		; 4E 24 3E
	adc $3002.w,X		; 7D 02 30
	clc		; 18
	tsb $0204.w		; 0C 04 02
	sbc $0055.w,X		; FD 55 00
	eor $FF.b,X		; 55 FF
	sta ($7E.b,X)		; 81 7E
	adc $307E32.l,X		; 7F 32 7E 30
	lsr A		; 4A
	.db $42, $7E		; 42 7E
	ror $3C34.w,X		; 7E 34 3C
	bit $30.b,X		; 34 30
	and $0013.w,X		; 3D 13 00
	ora ($FC.b,X)		; 01 FC
	sei		; 78
	sei		; 78
	jsr ($3048.w,X)		; FC 48 30
	bmi  48.b		; 30 30
	bmi  -3.b		; 30 FD
	eor $00.b,X		; 55 00
	eor $FF.b,X		; 55 FF
	sta ($7E.b,X)		; 81 7E
	adc $307E32.l,X		; 7F 32 7E 30
	lsr A		; 4A
	.db $42, $7E		; 42 7E
	ror $3C34.w,X		; 7E 34 3C
	bit $30.b,X		; 34 30
	sbc $A8D7.w,X		; FD D7 A8
	cmp $3B.b,X		; D5 3B
	adc $1A.b		; 65 1A
	adc $22FF36.l,X		; 7F 36 FF 22
	sta ($40.b,S),Y		; 93 40
	bcc -16.b		; 90 F0
	sbc ($44.b)		; F2 44
	jsr $5008.w		; 20 08 50
	jsr $6060.w		; 20 60 60
	rts		; 60

	tsb $FD.b		; 04 FD
	ora ($00.b,S),Y		; 13 00
	ora ($FF.b,X)		; 01 FF
	ror $7E7E.w,X		; 7E 7E 7E
	bit $81.b		; 24 81
	.db $42, $5A		; 42 5A
	clc		; 18
	clc		; 18
	clc		; 18
	ora $00D3.w,X		; 1D D3 00
	eor ($6D.b,X)		; 41 6D
	sbc $6D6D6D.l,X		; FF 6D 6D 6D
	adc $016D.w		; 6D 6D 01
	ora ($6D.b,X)		; 01 6D
	ora ($3D.b)		; 12 3D
	ora ($00.b,S),Y		; 13 00
	ora ($3F.b,X)		; 01 3F
	stz $3F1E.w,X		; 9E 1E 3F
	ora ($0C.b)		; 12 0C
	tsb $0C0C.w		; 0C 0C 0C
	lda ($01.b,S),Y		; B3 01
	eor ($00.b),Y		; 51 00
	pha		; 48
	bmi -76.b		; 30 B4
	pha		; 48
	sei		; 78
	jsr ($4830.w,X)		; FC 30 48
	sei		; 78
	adc $001500.l,X		; 7F 00 15 00
	phk		; 4B
	bmi  77.b		; 30 4D
	and ($FF.b)		; 32 FF
	ror $30FF.w,X		; 7E FF 30
	and ($7E.b)		; 32 7E
	adc $001500.l,X		; 7F 00 15 00
	lsr $4D30.w		; 4E 30 4D
	and ($FF.b)		; 32 FF
	ror $30FF.w,X		; 7E FF 30
	and ($7E.b)		; 32 7E
	lda ($01.b,S),Y		; B3 01
	eor ($00.b),Y		; 51 00
	eor $A626.w,Y		; 59 26 A6
	bvc 118.b		; 50 76
	sbc $765026.l,X		; FF 26 50 76
	adc $001D00.l,X		; 7F 00 1D 00
	lda $9146.w,Y		; B9 46 91
	ror $5CFE.w		; 6E FE 5C
	jmp.w [$6646]		; DC 46 66
	php		; 08
	jmp $15007F.l		; 5C 7F 00 15
	brk $4E.b		; 00 4E
	bmi  77.b		; 30 4D
	and ($FF.b)		; 32 FF
	ror $30FF.w,X		; 7E FF 30
	and ($7E.b)		; 32 7E
	adc $001D00.l,X		; 7F 00 1D 00
	lda $9146.w,Y		; B9 46 91
	ror $5CFE.w		; 6E FE 5C
	jmp.w [$6646]		; DC 46 66
	php		; 08
	jmp $15007F.l		; 5C 7F 00 15
	brk $4E.b		; 00 4E
	bmi  77.b		; 30 4D
	and ($FF.b)		; 32 FF
	ror $30FF.w,X		; 7E FF 30
	and ($7E.b)		; 32 7E
	adc $001500.l,X		; 7F 00 15 00
	phk		; 4B
	bmi  77.b		; 30 4D
	and ($FF.b)		; 32 FF
	ror $30FF.w,X		; 7E FF 30
	and ($7E.b)		; 32 7E
	adc $001500.l,X		; 7F 00 15 00
	lsr $4D30.w		; 4E 30 4D
	and ($FF.b)		; 32 FF
	ror $30FF.w,X		; 7E FF 30
	and ($7E.b)		; 32 7E
	adc $003F00.l,X		; 7F 00 3F 00
	sta $62.b,X		; 95 62
	eor #$36.b		; 49 36
	ply		; 7A
	and $201C.w,X		; 3D 1C 20
	.db $42, $32		; 42 32
	tsb $1C.b		; 04 1C
	and ($B3.b,X)		; 21 B3
	ora ($51.b,X)		; 01 51
	brk $24.b		; 00 24
	clc		; 18
	phy		; 5A
	bit $3C.b		; 24 3C
	ror $2418.w,X		; 7E 18 24
	bit $007F.w,X		; 3C 7F 00
	and $00.b,X		; 35 00
	eor ($3E.b,X)		; 41 3E
	eor #$36.b		; 49 36
	adc $3636.w		; 6D 36 36
	rol $2436.w,X		; 3E 36 24
	ora ($B3.b)		; 12 B3
	ora ($51.b,X)		; 01 51
	brk $12.b		; 00 12
	tsb $122D.w		; 0C 2D 12
	asl $0C3F.w,X		; 1E 3F 0C
	ora ($1E.b)		; 12 1E
	sbc $0013.w,X		; FD 13 00
	ora ($FF.b,X)		; 01 FF
	ror $7E7E.w,X		; 7E 7E 7E
	bit $81.b		; 24 81
	.db $42, $5A		; 42 5A
	clc		; 18
	clc		; 18
	clc		; 18
	and $0057.w,X		; 3D 57 00
	ora $FF.b,X		; 15 FF
	tda		; 7B
	tda		; 7B
	sbc $31354A.l,X		; FF 4A 35 31
	asl $043F.w		; 0E 3F 04
	and ($0E.b),Y		; 31 0E
	asl $003D.w		; 0E 3D 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	bra -64.b		; 80 C0
	bra -67.b		; 80 BD
	ora ($00.b,S),Y		; 13 00
	ora ($0E.b,X)		; 01 0E
	trb $2C0C.w		; 1C 0C 2C
	bpl  16.b		; 10 10
	bit $0C0C.w		; 2C 0C 0C
	tsb $D7FD.w		; 0C FD D7
	tay		; A8
	cmp $3B.b,X		; D5 3B
	adc $1A.b		; 65 1A
	adc $22FF36.l,X		; 7F 36 FF 22
	sta ($40.b,S),Y		; 93 40
	bcc -16.b		; 90 F0
	sbc ($44.b)		; F2 44
	jsr $5008.w		; 20 08 50
	jsr $6060.w		; 20 60 60
	rts		; 60

	tsb $FD.b		; 04 FD
	eor $A8.b,X		; 55 A8
	adc $663C.w,X		; 7D 3C 66
	clc		; 18
	sbc $24FB3C.l,X		; FF 3C FB 24
	sta $B5.b,X		; 95 B5
	sbc [$F7.b],Y		; F7 F7
	bit $43.b		; 24 43
	eor ($62.b)		; 52 62
	.db $42, $20		; 42 20
	.db $42, $20		; 42 20
	.db $62, $FD, $75		; 62 FD 75
	brk $75.b		; 00 75
	sbc [$88.b],Y		; F7 88
	adc [$7F.b],Y		; 77 7F
	and ($7F.b)		; 32 7F
	dec A		; 3A
	eor $51.b		; 45 51
	adc [$08.b],Y		; 77 08
	adc $262E3A.l,X		; 7F 3A 2E 26
	php		; 08
	rol $FD.b		; 26 FD
	ora ($00.b,S),Y		; 13 00
	ora ($FF.b,X)		; 01 FF
	ror $7E7E.w,X		; 7E 7E 7E
	bit $81.b		; 24 81
	.db $42, $5A		; 42 5A
	clc		; 18
	clc		; 18
	clc		; 18
	lda $8017.w,X		; BD 17 80
	eor $7EFC.w,X		; 5D FC 7E
	jmp ($4AFD.w,X)		; 7C FD 4A
	tsb $32.b		; 04 32
	and ($04.b)		; 32 04
	and [$04.b],Y		; 37 04
	and ($04.b)		; 32 04
	tsb $0A.b		; 04 0A
	php		; 08
	sbc $A855.w,X		; FD 55 A8
	adc $331E.w,X		; 7D 1E 33
	tsb $1E7F.w		; 0C 7F 1E
	adc $4A12.w,X		; 7D 12 4A
	phy		; 5A
	tda		; 7B
	tda		; 7B
	ora ($61.b)		; 12 61
	and #$31.b		; 29 31
	and ($10.b,X)		; 21 10
	and ($10.b,X)		; 21 10
	and ($3D.b),Y		; 31 3D
	ora ($A0.b,S),Y		; 13 A0
	ora ($7E.b,X)		; 01 7E
	bit $FE3C.w,X		; 3C 3C FE
	bit $18.b		; 24 18
	clc		; 18
	clc		; 18
	bra -128.b		; 80 80
	clc		; 18
	and $0013.w,X		; 3D 13 00
	ora ($7E.b,X)		; 01 7E
	bit $7E3C.w,X		; 3C 3C 7E
	bit $18.b		; 24 18
	clc		; 18
	clc		; 18
	clc		; 18
	lda $0017.w,X		; BD 17 00
	eor $7F.b,X		; 55 7F
	and $267F3F.l,X		; 3F 3F 7F 26
	ora ($1A.b,X)		; 01 1A
	clc		; 18
	tsb $1E.b		; 04 1E
	inc A		; 1A
	tsb $04.b		; 04 04
	cop $FD.b		; 02 FD
	eor $80.b,X		; 55 80
	eor [$FE.b],Y		; 57 FE
	cmp ($3E.b,X)		; C1 3E
	sbc $193F1B.l,X		; FF 1B 3F 19
	rol $24.b		; 26 24
	and $19023F.l,X		; 3F 3F 02 19
	cop $1B.b		; 02 1B
	asl $101A.w,X		; 1E 1A 10
	bpl   0.b		; 10 00
	brk $80.b		; 00 80
	bra -77.b		; 80 B3
	ora ($51.b,X)		; 01 51
	brk $24.b		; 00 24
	clc		; 18
	phy		; 5A
	bit $3C.b		; 24 3C
	ror $2418.w,X		; 7E 18 24
	bit $01B3.w,X		; 3C B3 01
	eor ($00.b),Y		; 51 00
	lsr A		; 4A
	and ($B5.b),Y		; 31 B5
	lsr A		; 4A
	tda		; 7B
	sbc $7B4A31.l,X		; FF 31 4A 7B
	adc $00.b,X		; 75 00
	bpl   0.b		; 10 00
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	lda ($01.b,S),Y		; B3 01
	eor ($00.b),Y		; 51 00
	ora ($0C.b)		; 12 0C
	and $1E12.w		; 2D 12 1E
	and $1E120C.l,X		; 3F 0C 12 1E
	adc $003F00.l,X		; 7F 00 3F 00
	sta $62.b,X		; 95 62
	eor $7A36.w		; 4D 36 7A
	bit $201C.w,X		; 3C 1C 20
	.db $42, $34		; 42 34
	cop $18.b		; 02 18
	bit $7F.b		; 24 7F
	brk $3F.b		; 00 3F
	brk $89.b		; 00 89
	ror $80.b,X		; 76 80
	adc $3C3C5A.l,X		; 7F 5A 3C 3C
	jsr $3C56.w		; 20 56 3C
	eor $18.b,S		; 43 18
	bit $7F.b		; 24 7F
	brk $17.b		; 00 17
	brk $59.b		; 00 59
	rol $55.b		; 26 55
	jsl $FF77FF.l		; 22 FF 77 FF
	jsl $772204.l		; 22 04 22 77
	lda ($01.b,S),Y		; B3 01
	eor ($00.b),Y		; 51 00
	bit $18.b		; 24 18
	phx		; DA
	bit $3C.b		; 24 3C
	inc $2418.w,X		; FE 18 24
	bit $01B3.w,X		; 3C B3 01
	eor ($00.b),Y		; 51 00
	eor $B232.w		; 4D 32 B2
	eor #$7B.b		; 49 7B
	sbc $7B4932.l,X		; FF 32 49 7B
	tda		; 7B
	brk $3F.b		; 00 3F
	brk $44.b		; 00 44
	tsa		; 3B
	adc $9E1EAD.l,X		; 7F AD 1E 9E
	bpl  43.b		; 10 2B
	asl $0C61.w,X		; 1E 61 0C
	ora ($7F.b)		; 12 7F
	brk $1D.b		; 00 1D
	brk $A5.b		; 00 A5
	clc		; 18
	rol $99.b		; 26 99
	adc $187F3F.l,X		; 7F 3F 7F 18
	ora $3F80.w,Y		; 19 80 3F
	adc $001500.l,X		; 7F 00 15 00
	lda $18.b		; A5 18
	ldx $19.b		; A6 19
	sbc $18FF3F.l,X		; FF 3F FF 18
	ora $7F3F.w,Y		; 19 3F 7F
	brk $15.b		; 00 15
	brk $A7.b		; 00 A7
	clc		; 18
	ldx $19.b		; A6 19
	sbc $18FF3F.l,X		; FF 3F FF 18
	ora $7F3F.w,Y		; 19 3F 7F
	brk $15.b		; 00 15
	brk $26.b		; 00 26
	ora $19A6.w,Y		; 19 A6 19
	sbc $19FF3D.l,X		; FF 3D FF 19
	ora $753D.w,Y		; 19 3D 75
	brk $10.b		; 00 10
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -103.b		; 80 99
	eor $59.b		; 45 59
	ldx #$96.b		; A2 96
	eor $55.b		; 45 55
	sta ($AA.b)		; 92 AA
	sta $A6.b,X		; 95 A6
	rol $9A.b		; 26 9A
	sta $56.b,X		; 95 56
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $01.b		; 00 01
	tsb $02.b		; 04 02
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	brk $20.b		; 00 20
	bra   0.b		; 80 00
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
	brk $01.b		; 00 01
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
	php		; 08
	tsb $0C.b		; 04 0C
	asl A		; 0A
	sta ($12.b)		; 92 12
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
	brk $80.b		; 00 80
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	inc $FFFF.w,X		; FE FF FF
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
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFD.l		; EF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBF7F.l,X		; FF 7F BF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $000024.l,X		; FF 24 00 00
	brk $00.b		; 00 00
	bpl  32.b		; 10 20
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
	brk $10.b		; 00 10
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   1.b		; 10 01
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $10.b		; 00 10
	brk $80.b		; 00 80
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
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	php		; 08
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	rti		; 40

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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $82, $04, $00		; 82 04 00
	brk $80.b		; 00 80
	brk $81.b		; 00 81
	ora ($00.b,X)		; 01 00
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
	brk $18.b		; 00 18
	bpl   8.b		; 10 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
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
	bpl -128.b		; 10 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl -126.b		; 10 82
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $82.b		; 00 82
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $08.b		; 00 08
	php		; 08
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	brk $00.b		; 00 00
	inc $80.b		; E6 80
	sta $81.b,S		; 83 81
	and ($82.b)		; 32 82
	cmp #$82.b		; C9 82
	ror $83.b		; 66 83
	cmp [$83.b]		; C7 83
	ror A		; 6A
	sty $01.b		; 84 01
	sta $74.b		; 85 74
	sta $ED.b		; 85 ED
	sta $8A.b		; 85 8A
	stx $5D.b		; 86 5D
	sta [$FA.b]		; 87 FA
	sta [$9D.b]		; 87 9D
	dey		; 88
	plp		; 28
	bit #$AD.b		; 89 AD
	bit #$20.b		; 89 20
	txa		; 8A
	cmp $8A.b,X		; D5 8A
	rts		; 60

	phb		; 8B
	ora #$8C.b		; 09 8C
	ldy #$8C.b		; A0 8C
	eor $8D.b,S		; 43 8D
	sbc ($8D.b)		; F2 8D
	sta $8F328E.l		; 8F 8E 32 8F
	cmp $8F.b,X		; D5 8F
	rts		; 60

	bcc -39.b		; 90 D9
	bcc -114.b		; 90 8E
	sta ($49.b),Y		; 91 49
	sta ($DA.b)		; 92 DA
	sta ($4D.b)		; 92 4D
	sta ($D2.b,S),Y		; 93 D2
	sta ($6F.b,S),Y		; 93 6F
	sty $12.b,X		; 94 12
	sta $A9.b,X		; 95 A9
	sta $22.b,X		; 95 22
	stx $C5.b,Y		; 96 C5
	stx $74.b,Y		; 96 74
	sta [$DB.b],Y		; 97 DB
	sta [$60.b],Y		; 97 60
	tya		; 98
	ora #$99.b		; 09 99
	dex		; CA
	sta $9A3D.w,Y		; 99 3D 9A
	ldx $9A.b,Y		; B6 9A
	and $9B.b,X		; 35 9B
	ldy $9B.b,X		; B4 9B
	eor $9C.b		; 45 9C
	ora ($9D.b)		; 12 9D
	sta ($9D.b),Y		; 91 9D
	sed		; F8
	sta $9E8F.w,X		; 9D 8F 9E
	beq -98.b		; F0 9E
	sta ($9F.b,S),Y		; 93 9F
	pea $7F9F.w		; F4 9F 7F
	ldy #$E0.b		; A0 E0
	ldy #$77.b		; A0 77
	lda ($1A.b,X)		; A1 1A
	ldx #$A5.b		; A2 A5
	ldx #$2A.b		; A2 2A
	lda $9D.b,S		; A3 9D
	lda $1C.b,S		; A3 1C
	ldy $A1.b		; A4 A1
	ldy $14.b		; A4 14
	lda $7B.b		; A5 7B
	lda $2A.b		; A5 2A
	ldx $E5.b		; A6 E5
	ldx $76.b		; A6 76
	lda [$EF.b]		; A7 EF
	lda [$80.b]		; A7 80
	tay		; A8
	and #$A9.b		; 29 A9
	ldx $2DA9.w		; AE A9 2D
	tax		; AA
	bne -86.b		; D0 AA
	adc $ABF2AB.l,X		; 7F AB F2 AB
	sta $AC.b,S		; 83 AC
	cmp ($AC.b)		; D2 AC
	and [$AD.b]		; 27 AD
	stx $FBAD.w		; 8E AD FB
	lda $AE6E.w		; AD 6E AE
	plb		; AB
	ldx $AF6C.w		; AE 6C AF
	sbc [$AF.b],Y		; F7 AF
	txs		; 9A
	bcs  61.b		; B0 3D
	lda ($DA.b),Y		; B1 DA
	lda ($71.b),Y		; B1 71
	lda ($0E.b)		; B2 0E
	lda ($A5.b,S),Y		; B3 A5
	lda ($42.b,S),Y		; B3 42
	ldy $D9.b,X		; B4 D9
	ldy $76.b,X		; B4 76
	lda $0D.b,X		; B5 0D
	ldx $80.b,Y		; B6 80
	ldx $1D.b,Y		; B6 1D
	lda [$B4.b],Y		; B7 B4
	lda [$51.b],Y		; B7 51
	clv		; B8
	inx		; E8
	clv		; B8
	tad		; 5B
	lda $B9D4.w,Y		; B9 D4 B9
	bit #$BA.b		; 89 BA
	jsr $BDBB.w		; 20 BB BD
	tyx		; BB
	bit $BBBC.w,X		; 3C BC BB
	ldy $BD5E.w,X		; BC 5E BD
	sbc #$BD.b		; E9 BD
	bvc -66.b		; 50 BE
	sbc $B4BE.w,Y		; F9 BE B4
	lda $4EC075.l,X		; BF 75 C0 4E
	cmp ($1A.b,X)		; C1 1A
	sbc ($FD.b,S),Y		; F3 FD
	sta $0008.w,Y		; 99 08 00
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	cpx $B104.w		; EC 04 B1
	php		; 08
	tsb $48.b		; 04 48
	jsr ($B1F4.w,X)		; FC F4 B1
	php		; 08
	asl $48.b		; 06 48
	ora $F5.b,S		; 03 F5
	cmp #$00.b		; C9 00
	php		; 08
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp ($00.b),Y		; D1 00
	ora #$40.b		; 09 40
	xce		; FB
	sbc $00D1.w,X		; FD D1 00
	asl A		; 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b),Y		; D1 00
	phd		; 0B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	inc $00.b		; E6 00
	tsb $0340.w		; 0C 40 03
	sbc $99.b,X		; F5 99
	brk $0D.b		; 00 0D
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b,X)		; C1 00
	asl $0C40.w		; 0E 40 0C
	cpx $00B2.w		; EC B2 00
	ora $0CEC40.l		; 0F 40 EC 0C
	plx		; FA
	brk $18.b		; 00 18
	rti		; 40

	pea $DE04.w		; F4 04 DE
	brk $19.b		; 00 19
	rti		; 40

	tsb $F4.b		; 04 F4
	inx		; E8
	brk $1A.b		; 00 1A
	rti		; 40

	asl $F2.b		; 06 F2
	beq   0.b		; F0 00
	tas		; 1B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cmp $1C00.w,Y		; D9 00 1C
	rti		; 40

	ora $00F9E9.l		; 0F E9 F9 00
	ora $EF40.w,X		; 1D 40 EF
	ora #$F6.b		; 09 F6
	brk $1E.b		; 00 1E
	rti		; 40

	ora [$F1.b]		; 07 F1
	sed		; F8
	brk $1F.b		; 00 1F
	rti		; 40

	beq   8.b		; F0 08
	lda #$00.b		; A9 00
	jsr $F840.w		; 20 40 F8
	brk $A9.b		; 00 A9
	brk $21.b		; 00 21
	rti		; 40

	brk $F8.b		; 00 F8
	lda #$00.b		; A9 00
	jsl $08F040.l		; 22 40 F0 08
	inc $2300.w		; EE 00 23
	rti		; 40

	cop $F6.b		; 02 F6
	cmp $2400.w,Y		; D9 00 24
	rti		; 40

	cop $F6.b		; 02 F6
	sbc ($00.b,X)		; E1 00
	and $40.b		; 25 40
	ora $FBF5.w,X		; 1D F5 FB
	cmp ($08.b),Y		; D1 08
	brk $48.b		; 00 48
	inc $A902.w		; EE 02 A9
	php		; 08
	cop $48.b		; 02 48
	inc $A9F2.w,X		; FE F2 A9
	php		; 08
	tsb $48.b		; 04 48
	sbc $08B901.l		; EF 01 B9 08
	asl $48.b		; 06 48
	sbc ($05.b,S),Y		; F3 05
	cmp #$00.b		; C9 00
	php		; 08
	rti		; 40

	ora $F3.b		; 05 F3
	cmp ($00.b),Y		; D1 00
	ora #$40.b		; 09 40
	ora $F3.b		; 05 F3
	cmp $0A00.w,Y		; D9 00 0A
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	phd		; 0B
	rti		; 40

	sbc $E1FB.w,X		; FD FB E1
	brk $0C.b		; 00 0C
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	ora $ED40.w		; 0D 40 ED
	phd		; 0B
	plx		; FA
	brk $0E.b		; 00 0E
	rti		; 40

	inc $990A.w		; EE 0A 99
	brk $0F.b		; 00 0F
	rti		; 40

	inc $A10A.w		; EE 0A A1
	brk $18.b		; 00 18
	rti		; 40

	asl $A9EA.w		; 0E EA A9
	brk $19.b		; 00 19
	rti		; 40

	asl $F2.b		; 06 F2
	sbc #$00.b		; E9 00
	inc A		; 1A
	rti		; 40

	xce		; FB
	sbc $00C9.w,X		; FD C9 00
	tas		; 1B
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp #$00.b		; C9 00
	trb $E640.w		; 1C 40 E6
	ora ($9B.b)		; 12 9B
	brk $1D.b		; 00 1D
	rti		; 40

	inc $12.b		; E6 12
	lda $00.b,S		; A3 00
	asl $E640.w,X		; 1E 40 E6
	ora ($AB.b)		; 12 AB
	brk $1F.b		; 00 1F
	rti		; 40

	inc $F60A.w		; EE 0A F6
	brk $20.b		; 00 20
	rti		; 40

	jsr ($A3FC.w,X)		; FC FC A3
	brk $21.b		; 00 21
	rti		; 40

	sbc $00B9F9.l,X		; FF F9 B9 00
	jsl $F9FF40.l		; 22 40 FF F9
	cmp ($00.b,X)		; C1 00
	and $40.b,S		; 23 40
	sbc $00EE09.l		; EF 09 EE 00
	bit $40.b		; 24 40
	ora #$EF.b		; 09 EF
	beq   0.b		; F0 00
	and $40.b		; 25 40
	sbc ($06.b)		; F2 06
	sbc [$00.b]		; E7 00
	rol $40.b		; 26 40
	asl A		; 0A
	inc $00F8.w		; EE F8 00
	and [$40.b]		; 27 40
	ora ($E6.b)		; 12 E6
	sed		; F8
	brk $28.b		; 00 28
	rti		; 40

	ora $F000.w,Y		; 19 00 F0
	sta $0008.w,Y		; 99 08 00
	pha		; 48
	beq   0.b		; F0 00
	lda ($08.b),Y		; B1 08
	cop $48.b		; 02 48
	brk $F0.b		; 00 F0
	lda ($08.b),Y		; B1 08
	tsb $48.b		; 04 48
	sed		; F8
	sed		; F8
	cmp ($08.b),Y		; D1 08
	asl $48.b		; 06 48
	sbc ($FE.b)		; F2 FE
	cmp ($08.b,X)		; C1 08
	php		; 08
	pha		; 48
	sbc $03.b,X		; F5 03
	sbc $00.b		; E5 00
	asl A		; 0A
	rti		; 40

	asl $E2.b,X		; 16 E2
	plx		; FA
	brk $0B.b		; 00 0B
	rti		; 40

	asl $F3EA.w		; 0E EA F3
	brk $0C.b		; 00 0C
	rti		; 40

	sed		; F8
	brk $E1.b		; 00 E1
	brk $0D.b		; 00 0D
	rti		; 40

	php		; 08
	beq -31.b		; F0 E1
	brk $0E.b		; 00 0E
	rti		; 40

	pea $A904.w		; F4 04 A9
	brk $0F.b		; 00 0F
	rti		; 40

	jsr ($A9FC.w,X)		; FC FC A9
	brk $1A.b		; 00 1A
	rti		; 40

	tsb $F4.b		; 04 F4
	lda #$00.b		; A9 00
	tas		; 1B
	rti		; 40

	tsb $EDEC.w		; 0C EC ED
	brk $1C.b		; 00 1C
	rti		; 40

	php		; 08
	beq -47.b		; F0 D1
	brk $1D.b		; 00 1D
	rti		; 40

	php		; 08
	beq -39.b		; F0 D9
	brk $1E.b		; 00 1E
	rti		; 40

	beq   8.b		; F0 08
	sbc ($00.b,S),Y		; F3 00
	ora $E81040.l,X		; 1F 40 10 E8
	xce		; FB
	brk $20.b		; 00 20
	rti		; 40

	bpl -24.b		; 10 E8
	bcs   0.b		; B0 00
	and ($40.b,X)		; 21 40
	bpl -24.b		; 10 E8
	clv		; B8
	brk $22.b		; 00 22
	rti		; 40

	sbc $F90B.w		; ED 0B F9
	brk $23.b		; 00 23
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b,X)		; C1 00
	bit $40.b		; 24 40
	cop $F6.b		; 02 F6
	cmp #$00.b		; C9 00
	and $40.b		; 25 40
	asl A		; 0A
	inc $00E5.w		; EE E5 00
	rol $40.b		; 26 40
	sbc ($06.b)		; F2 06
	sbc $2700.w		; ED 00 27
	rti		; 40

	inc A		; 1A
	sbc $A903.w		; ED 03 A9
	php		; 08
	brk $48.b		; 00 48
	sbc $B903.w		; ED 03 B9
	php		; 08
	cop $48.b		; 02 48
	sbc $A5F3.w,X		; FD F3 A5
	php		; 08
	tsb $48.b		; 04 48
	sbc $08C901.l		; EF 01 C9 08
	asl $48.b		; 06 48
	sbc $13.b		; E5 13
	lda ($00.b),Y		; B1 00
	php		; 08
	rti		; 40

	sbc $13.b		; E5 13
	lda $0900.w,Y		; B9 00 09
	rti		; 40

	sbc $13.b		; E5 13
	cmp ($00.b,X)		; C1 00
	asl A		; 0A
	rti		; 40

	sbc $B5FB.w,X		; FD FB B5
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $BDFB.w,X		; FD FB BD
	brk $0C.b		; 00 0C
	rti		; 40

	ora $F3.b		; 05 F3
	lda $0D00.w,X		; BD 00 0D
	rti		; 40

	phd		; 0B
	sbc $00F5.w		; ED F5 00
	asl $0540.w		; 0E 40 05
	sbc ($E6.b,S),Y		; F3 E6
	brk $0F.b		; 00 0F
	rti		; 40

	inc $F10A.w		; EE 0A F1
	brk $18.b		; 00 18
	rti		; 40

	asl $F9EA.w		; 0E EA F9
	brk $19.b		; 00 19
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc $1A00.w,Y		; F9 00 1A
	rti		; 40

	sbc [$11.b]		; E7 11
	cmp #$00.b		; C9 00
	tas		; 1B
	rti		; 40

	sbc $F90B.w		; ED 0B F9
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $00CCF9.l,X		; FF F9 CC 00
	ora $FF40.w,X		; 1D 40 FF
	sbc $00D4.w,Y		; F9 D4 00
	asl $F040.w,X		; 1E 40 F0
	php		; 08
	sbc #$00.b		; E9 00
	ora $F00840.l,X		; 1F 40 08 F0
	inc $2000.w		; EE 00 20
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b,X)		; E1 00
	and ($40.b,X)		; 21 40
	ora ($F7.b,X)		; 01 F7
	stp		; DB
	brk $22.b		; 00 22
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp $2300.w,Y		; D9 00 23
	rti		; 40

	cop $F6.b		; 02 F6
	sep #$00		; E2 00
	bit $40.b		; 24 40
	asl A		; 0A
	inc $00BD.w		; EE BD 00
	and $40.b		; 25 40
	bpl -10.b		; 10 F6
	plx		; FA
	cpy #$08.b		; C0 08
	brk $48.b		; 00 48
	ora [$E9.b]		; 07 E9
	cmp ($08.b),Y		; D1 08
	cop $48.b		; 02 48
	ora [$E9.b]		; 07 E9
	sbc ($08.b,X)		; E1 08
	tsb $48.b		; 04 48
	sbc [$F9.b],Y		; F7 F9
	bne   8.b		; D0 08
	asl $48.b		; 06 48
	sbc [$F9.b],Y		; F7 F9
	cpx #$08.b		; E0 08
	php		; 08
	pha		; 48
	asl $E2.b,X		; 16 E2
	sbc $0A00.w,Y		; F9 00 0A
	rti		; 40

	asl $F9EA.w		; 0E EA F9
	brk $0B.b		; 00 0B
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b),Y		; F1 00
	tsb $0F40.w		; 0C 40 0F
	sbc #$F1.b		; E9 F1
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $00F309.l		; EF 09 F3 00
	asl $F740.w		; 0E 40 F7
	ora ($F3.b,X)		; 01 F3
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $00F0F9.l,X		; FF F9 F0 00
	inc A		; 1A
	rti		; 40

	sbc $00F8F9.l,X		; FF F9 F8 00
	tas		; 1B
	rti		; 40

	ora $00C9E9.l		; 0F E9 C9 00
	trb $1740.w		; 1C 40 17
	sbc ($E1.b,X)		; E1 E1
	brk $1D.b		; 00 1D
	rti		; 40

	sbc ($06.b)		; F2 06
	xce		; FB
	brk $1E.b		; 00 1E
	rti		; 40

	tas		; 1B
	sbc $0D.b,S		; E3 0D
	lda ($08.b,X)		; A1 08
	brk $48.b		; 00 48
	sbc $0D.b,S		; E3 0D
	lda ($08.b),Y		; B1 08
	cop $48.b		; 02 48
	inx		; E8
	php		; 08
	cmp ($08.b,X)		; C1 08
	tsb $48.b		; 04 48
	sed		; F8
	sed		; F8
	cmp ($08.b,X)		; C1 08
	asl $48.b		; 06 48
	sbc ($05.b,S),Y		; F3 05
	lda #$00.b		; A9 00
	php		; 08
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	lda ($00.b),Y		; B1 00
	ora #$40.b		; 09 40
	sbc ($05.b,S),Y		; F3 05
	lda $0A00.w,Y		; B9 00 0A
	rti		; 40

	xce		; FB
	sbc $00A6.w,X		; FD A6 00
	phd		; 0B
	rti		; 40

	ora $F5.b,S		; 03 F5
	ldx $00.b		; A6 00
	tsb $FB40.w		; 0C 40 FB
	sbc $00AE.w,X		; FD AE 00
	ora $1340.w		; 0D 40 13
	sbc $C8.b		; E5 C8
	brk $0E.b		; 00 0E
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	ora $F30540.l		; 0F 40 05 F3
	sbc #$00.b		; E9 00
	clc		; 18
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b),Y		; F1 00
	ora $1D40.w,Y		; 19 40 1D
	stp		; DB
	dec $1A00.w		; CE 00 1A
	rti		; 40

	and $D3.b		; 25 D3
	bne   0.b		; D0 00
	tas		; 1B
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b),Y		; D1 00
	trb $0640.w		; 1C 40 06
	sbc ($D9.b)		; F2 D9
	brk $1D.b		; 00 1D
	rti		; 40

	inx		; E8
	bpl -103.b		; 10 99
	brk $1E.b		; 00 1E
	rti		; 40

	xce		; FB
	sbc $00B9.w,X		; FD B9 00
	ora $05F340.l,X		; 1F 40 F3 05
	lda ($00.b,X)		; A1 00
	jsr $0840.w		; 20 40 08
	beq -63.b		; F0 C1
	brk $21.b		; 00 21
	rti		; 40

	php		; 08
	beq -55.b		; F0 C9
	brk $22.b		; 00 22
	rti		; 40

	bpl -24.b		; 10 E8
	cmp $00.b,S		; C3 00
	and $40.b,S		; 23 40
	plp		; 28
	bne -44.b		; D0 D4
	brk $24.b		; 00 24
	rti		; 40

	bmi -56.b		; 30 C8
	pei ($00.b)		; D4 00
	and $40.b		; 25 40
	inc A		; 1A
	dec $00CA.w,X		; DE CA 00
	rol $40.b		; 26 40
	ora $E50B.w,Y		; 19 0B E5
	sep #$08		; E2 08
	brk $48.b		; 00 48
	sbc $0D.b,S		; E3 0D
	xba		; EB
	php		; 08
	cop $48.b		; 02 48
	cmp ($1D.b,S),Y		; D3 1D
	sbc $0408.w		; ED 08 04
	pha		; 48
	xce		; FB
	sbc $00F2.w,X		; FD F2 00
	asl $40.b		; 06 40
	xce		; FB
	sbc $00FA.w,X		; FD FA 00
	ora [$40.b]		; 07 40
	tas		; 1B
	cmp $00E2.w,X		; DD E2 00
	php		; 08
	rti		; 40

	and $D5.b,S		; 23 D5
	sbc $00.b,S		; E3 00
	ora #$40.b		; 09 40
	pld		; 2B
	cmp $00E2.w		; CD E2 00
	asl A		; 0A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	xba		; EB
	brk $0B.b		; 00 0B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,S),Y		; F3 00
	tsb $E340.w		; 0C 40 E3
	ora $FB.b,X		; 15 FB
	brk $0D.b		; 00 0D
	rti		; 40

	xba		; EB
	ora $00FB.w		; 0D FB 00
	asl $F340.w		; 0E 40 F3
	ora $FB.b		; 05 FB
	brk $0F.b		; 00 0F
	rti		; 40

	tas		; 1B
	cmp $00EC.w,X		; DD EC 00
	asl $40.b,X		; 16 40
	ora $F5.b,S		; 03 F5
	sbc $00.b		; E5 00
	ora [$40.b],Y		; 17 40
	wai		; CB
	and $00ED.w		; 2D ED 00
	clc		; 18
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc $1900.w		; ED 00 19
	rti		; 40

	and $D5.b,S		; 23 D5
	sbc $1A00.w		; ED 00 1A
	rti		; 40

	xce		; FB
	sbc $00EA.w,X		; FD EA 00
	tas		; 1B
	rti		; 40

	cpx $DB0C.w		; EC 0C DB
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $E30B.w		; ED 0B E3
	brk $1D.b		; 00 1D
	rti		; 40

	dec $E52A.w		; CE 2A E5
	brk $1E.b		; 00 1E
	rti		; 40

	dec $22.b,X		; D6 22
	sbc $00.b		; E5 00
	ora $CF2940.l,X		; 1F 40 29 CF
	beq   0.b		; F0 00
	jsr $3140.w		; 20 40 31
	cmp [$F0.b]		; C7 F0
	brk $21.b		; 00 21
	rti		; 40

	ora ($23.b,S),Y		; 13 23
	cmp $08F2.w		; CD F2 08
	brk $48.b		; 00 48
	jmp.w [$F414]		; DC 14 F4
	php		; 08
	cop $48.b		; 02 48
	cpx $ED04.w		; EC 04 ED
	php		; 08
	tsb $48.b		; 04 48
	trb $DC.b		; 14 DC
	beq   8.b		; F0 08
	asl $48.b		; 06 48
	tsb $EC.b		; 04 EC
	beq   8.b		; F0 08
	php		; 08
	pha		; 48
	cpx $14.b		; E4 14
	cpx $0A00.w		; EC 00 0A
	rti		; 40

	and ($C5.b,S),Y		; 33 C5
	sbc $0B00.w,Y		; F9 00 0B
	rti		; 40

	cpy $F92C.w		; CC 2C F9
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($EDFC.w,X)		; FC FC ED
	brk $0D.b		; 00 0D
	rti		; 40

	jsr ($F5FC.w,X)		; FC FC F5
	brk $0E.b		; 00 0E
	rti		; 40

	cpx $FD0C.w		; EC 0C FD
	brk $0F.b		; 00 0F
	rti		; 40

	pea $FD04.w		; F4 04 FD
	brk $1A.b		; 00 1A
	rti		; 40

	jsr ($FDFC.w,X)		; FC FC FD
	brk $1B.b		; 00 1B
	rti		; 40

	pei ($24.b)		; D4 24
	sbc ($00.b)		; F2 00
	trb $D440.w		; 1C 40 D4
	bit $FA.b		; 24 FA
	brk $1D.b		; 00 1D
	rti		; 40

	tsb $F4.b		; 04 F4
	inx		; E8
	brk $1E.b		; 00 1E
	rti		; 40

	tsb $E8EC.w		; 0C EC E8
	brk $1F.b		; 00 1F
	rti		; 40

	trb $E4.b		; 14 E4
	inx		; E8
	brk $20.b		; 00 20
	rti		; 40

	dec $F12A.w		; CE 2A F1
	brk $21.b		; 00 21
	rti		; 40

	trb $0C.b		; 14 0C
	cpx $EB.b		; E4 EB
	php		; 08
	brk $48.b		; 00 48
	cpx $0C.b		; E4 0C
	sbc $0208.w		; ED 08 02
	pha		; 48
	pea $EDFC.w		; F4 FC ED
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FE.b)		; F2 FE
	cmp $08.b,X		; D5 08
	asl $48.b		; 06 48
	tsb $F4.b		; 04 F4
	sbc $0800.w		; ED 00 08
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $00.b,X		; F5 00
	ora #$40.b		; 09 40
	cpx $14.b		; E4 14
	sbc $0A00.w,X		; FD 00 0A
	rti		; 40

	cpx $FD0C.w		; EC 0C FD
	brk $0B.b		; 00 0B
	rti		; 40

	pea $FD04.w		; F4 04 FD
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($FDFC.w,X)		; FC FC FD
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $0E00.w,X		; FD 00 0E
	rti		; 40

	inc $12.b		; E6 12
	sbc $00.b		; E5 00
	ora $0AEE40.l		; 0F 40 EE 0A
	sbc $00.b		; E5 00
	clc		; 18
	rti		; 40

	inc $02.b,X		; F6 02
	sbc $00.b		; E5 00
	ora $1F40.w,Y		; 19 40 1F
	cmp $00F9.w,Y		; D9 F9 00
	inc A		; 1A
	rti		; 40

	and [$D1.b]		; 27 D1
	sbc $1B00.w,X		; FD 00 1B
	rti		; 40

	jsr $FED8.w		; 20 D8 FE
	brk $1C.b		; 00 1C
	rti		; 40

	clc		; 18
	cpx #$F7.b		; E0 F7
	brk $1D.b		; 00 1D
	rti		; 40

	nop		; EA
	asl $00DD.w		; 0E DD 00
	asl $0C40.w,X		; 1E 40 0C
	cpx $00FB.w		; EC FB 00
	ora $EB1A40.l,X		; 1F 40 1A EB
	ora $CE.b		; 05 CE
	php		; 08
	brk $48.b		; 00 48
	xce		; FB
	sbc $CF.b,X		; F5 CF
	php		; 08
	cop $48.b		; 02 48
	dec $1A.b,X		; D6 1A
	dec $0408.w,X		; DE 08 04
	pha		; 48
	inc $0A.b		; E6 0A
	dec $0608.w,X		; DE 08 06
	pha		; 48
	phd		; 0B
	sbc $00D3.w		; ED D3 00
	php		; 08
	rti		; 40

	phd		; 0B
	sbc $00DB.w		; ED DB 00
	ora #$40.b		; 09 40
	and $D5.b,S		; 23 D5
	stp		; DB
	brk $0A.b		; 00 0A
	rti		; 40

	and $D5.b,S		; 23 D5
	sbc $00.b,S		; E3 00
	phd		; 0B
	rti		; 40

	and $D5.b,S		; 23 D5
	xba		; EB
	brk $0C.b		; 00 0C
	rti		; 40

	tas		; 1B
	cmp $00D5.w,X		; DD D5 00
	ora $1B40.w		; 0D 40 1B
	cmp $00DD.w,X		; DD DD 00
	asl $1B40.w		; 0E 40 1B
	cmp $00E5.w,X		; DD E5 00
	ora $E51340.l		; 0F 40 13 E5
	dec $1800.w		; CE 00 18
	rti		; 40

	stp		; DB
	ora $00D6.w,X		; 1D D6 00
	ora $E340.w,Y		; 19 40 E3
	ora $D6.b,X		; 15 D6
	brk $1A.b		; 00 1A
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	dec $00.b,X		; D6 00
	tas		; 1B
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	dec $1C00.w,X		; DE 00 1C
	rti		; 40

	pld		; 2B
	cmp $00E1.w		; CD E1 00
	ora $3340.w,X		; 1D 40 33
	cmp $E1.b		; C5 E1
	brk $1E.b		; 00 1E
	rti		; 40

	dec $DD2A.w		; CE 2A DD
	brk $1F.b		; 00 1F
	rti		; 40

	dec $E52A.w		; CE 2A E5
	brk $20.b		; 00 20
	rti		; 40

	inc $E6FA.w,X		; FE FA E6
	brk $21.b		; 00 21
	rti		; 40

	pld		; 2B
	cmp $00E9.w		; CD E9 00
	jsl $ED0B40.l		; 22 40 0B ED
	wai		; CB
	brk $23.b		; 00 23
	rti		; 40

	inc $02.b,X		; F6 02
	dec $2400.w,X		; DE 00 24
	rti		; 40

	inc $02.b,X		; F6 02
	inc $00.b		; E6 00
	and $40.b		; 25 40
	and $F0.b,S		; 23 F0
	brk $8C.b		; 00 8C
	php		; 08
	brk $48.b		; 00 48
	cld		; D8
	clc		; 18
	cpx $0208.w		; EC 08 02
	pha		; 48
	inx		; E8
	php		; 08
	cpy $08.b		; C4 08
	tsb $48.b		; 04 48
	sed		; F8
	sed		; F8
	cpy $08.b		; C4 08
	asl $48.b		; 06 48
	cpx #$10.b		; E0 10
	jmp.w [$0808]		; DC 08 08
	pha		; 48
	brk $F0.b		; 00 F0
	pea $0A08.w		; F4 08 0A
	pha		; 48
	php		; 08
	inx		; E8
	cpx $08.b		; E4 08
	tsb $0048.w		; 0C 48 00
	beq -44.b		; F0 D4
	php		; 08
	asl $F048.w		; 0E 48 F0
	brk $D4.b		; 00 D4
	php		; 08
	jsr $F848.w		; 20 48 F8
	sed		; F8
	cpx $08.b		; E4 08
	jsl $07E948.l		; 22 48 E9 07
	stz $2408.w		; 9C 08 24
	pha		; 48
	sbc $9CF7.w,Y		; F9 F7 9C
	php		; 08
	rol $48.b		; 26 48
	nop		; EA
	asl $B4.b		; 06 B4
	php		; 08
	plp		; 28
	pha		; 48
	plx		; FA
	inc $B4.b,X		; F6 B4
	php		; 08
	rol A		; 2A
	pha		; 48
	inx		; E8
	bpl -44.b		; 10 D4
	brk $2C.b		; 00 2C
	rti		; 40

	beq   8.b		; F0 08
	cpx $00.b		; E4 00
	and $E840.w		; 2D 40 E8
	bpl -20.b		; 10 EC
	brk $2E.b		; 00 2E
	rti		; 40

	beq   8.b		; F0 08
	cpx $2F00.w		; EC 00 2F
	rti		; 40

	inx		; E8
	bpl -12.b		; 10 F4
	brk $3C.b		; 00 3C
	rti		; 40

	bpl -24.b		; 10 E8
	pea $3D00.w		; F4 00 3D
	rti		; 40

	bpl -24.b		; 10 E8
	jsr ($3E00.w,X)		; FC 00 3E
	rti		; 40

	brk $F8.b		; 00 F8
	sty $00.b,X		; 94 00
	and $F00840.l,X		; 3F 40 08 F0
	sty $00.b,X		; 94 00
	rti		; 40

	rti		; 40

	ora #$EF.b		; 09 EF
	stz $4100.w		; 9C 00 41
	rti		; 40

	ora #$EF.b		; 09 EF
	ldy $00.b		; A4 00
	.db $42, $40		; 42 40
	sbc #$0F.b		; E9 0F
	ldy DMAP0.w		; AC 00 43
	rti		; 40

	sbc ($07.b),Y		; F1 07
	ldy $4400.w		; AC 00 44
	rti		; 40

	sbc $ACFF.w,Y		; F9 FF AC
	brk $45.b		; 00 45
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ldy $4600.w		; AC 00 46
	rti		; 40

	ora #$EF.b		; 09 EF
	ldy $4700.w		; AC 00 47
	rti		; 40

	ora ($E6.b)		; 12 E6
	ldy $4800.w,X		; BC 00 48
	rti		; 40

	php		; 08
	beq -60.b		; F0 C4
	brk $49.b		; 00 49
	rti		; 40

	php		; 08
	beq -52.b		; F0 CC
	brk $4A.b		; 00 4A
	rti		; 40

	asl A		; 0A
	inc $00B4.w		; EE B4 00
	phk		; 4B
	rti		; 40

	asl A		; 0A
	inc $00BC.w		; EE BC 00
	jmp $1A40.w		; 4C 40 1A
	sbc ($FD.b,S),Y		; F3 FD
	cmp $08.b,X		; D5 08
	brk $48.b		; 00 48
	tsb $EC.b		; 04 EC
	sbc $08.b		; E5 08
	cop $48.b		; 02 48
	sbc [$F9.b],Y		; F7 F9
	sta $0408.w		; 8D 08 04
	pha		; 48
	ora [$E9.b]		; 07 E9
	sta $08.b,X		; 95 08
	asl $48.b		; 06 48
	ora [$E9.b]		; 07 E9
	lda $08.b		; A5 08
	php		; 08
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	sta $0A08.w,X		; 9D 08 0A
	pha		; 48
	sbc [$09.b]		; E7 09
	lda $08.b		; A5 08
	tsb $F748.w		; 0C 48 F7
	sbc $08AD.w,Y		; F9 AD 08
	asl $0748.w		; 0E 48 07
	sbc #$B5.b		; E9 B5
	php		; 08
	jsr $0748.w		; 20 48 07
	sbc #$C5.b		; E9 C5
	php		; 08
	jsl $09E748.l		; 22 48 E7 09
	lda $08.b,X		; B5 08
	bit $48.b		; 24 48
	sbc [$F9.b],Y		; F7 F9
	lda $2608.w,X		; BD 08 26
	pha		; 48
	cmp $08C511.l,X		; DF 11 C5 08
	plp		; 28
	pha		; 48
	ora [$E1.b],Y		; 17 E1
	lda $00.b,X		; B5 00
	rol A		; 2A
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp $00.b,X		; D5 00
	pld		; 2B
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp $2C00.w,X		; DD 00 2C
	rti		; 40

	jsr ($E5FC.w,X)		; FC FC E5
	brk $2D.b		; 00 2D
	rti		; 40

	tsb $F5EC.w		; 0C EC F5
	brk $2E.b		; 00 2E
	rti		; 40

	xba		; EB
	ora $00D5.w		; 0D D5 00
	and $09EF40.l		; 2F 40 EF 09
	sta $00.b,X		; 95 00
	dec A		; 3A
	rti		; 40

	sbc $009D09.l		; EF 09 9D 00
	tsa		; 3B
	rti		; 40

	cmp $00BD19.l,X		; DF 19 BD 00
	bit $EF40.w,X		; 3C 40 EF
	ora #$C5.b		; 09 C5
	brk $3D.b		; 00 3D
	rti		; 40

	sbc $00CD09.l		; EF 09 CD 00
	rol $F740.w,X		; 3E 40 F7
	ora ($CD.b,X)		; 01 CD
	brk $3F.b		; 00 3F
	rti		; 40

	sbc $00CDF9.l,X		; FF F9 CD 00
	rti		; 40

	rti		; 40

	tas		; 1B
	sbc $0B.b		; E5 0B
	lda $08.b,X		; B5 08
	brk $48.b		; 00 48
	sbc $FB.b,X		; F5 FB
	lda $08.b,X		; B5 08
	cop $48.b		; 02 48
	ora $EB.b		; 05 EB
	lda $08.b,X		; B5 08
	tsb $48.b		; 04 48
	inc $DDF2.w,X		; FE F2 DD
	php		; 08
	asl $48.b		; 06 48
	inc $9502.w		; EE 02 95
	php		; 08
	php		; 08
	pha		; 48
	inc $95F2.w,X		; FE F2 95
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc [$09.b]		; E7 09
	lda $08.b		; A5 08
	tsb $F748.w		; 0C 48 F7
	sbc $08A5.w,Y		; F9 A5 08
	asl $0748.w		; 0E 48 07
	sbc #$A5.b		; E9 A5
	php		; 08
	jsr $E948.w		; 20 48 E9
	ora [$CD.b]		; 07 CD
	php		; 08
	jsl $F7F948.l		; 22 48 F9 F7
	cmp $2408.w		; CD 08 24
	pha		; 48
	asl $9DEA.w		; 0E EA 9D
	brk $26.b		; 00 26
	rti		; 40

	inc $02.b,X		; F6 02
	cmp $2700.w,X		; DD 00 27
	rti		; 40

	asl $F2.b		; 06 F2
	sbc $2800.w		; ED 00 28
	rti		; 40

	sbc $13.b		; E5 13
	cmp $00.b		; C5 00
	and #$40.b		; 29 40
	sbc $C50B.w		; ED 0B C5
	brk $2A.b		; 00 2A
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp $00.b		; C5 00
	pld		; 2B
	rti		; 40

	sbc $008D09.l		; EF 09 8D 00
	bit $F740.w		; 2C 40 F7
	ora ($8D.b,X)		; 01 8D
	brk $2D.b		; 00 2D
	rti		; 40

	sbc $008DF9.l,X		; FF F9 8D 00
	rol $FD40.w		; 2E 40 FD
	xce		; FB
	cmp $00.b		; C5 00
	and $F30540.l		; 2F 40 05 F3
	cmp $00.b		; C5 00
	rol $40.b,X		; 36 40
	ora $C5EB.w		; 0D EB C5
	brk $37.b		; 00 37
	rti		; 40

	asl $EAEA.w		; 0E EA EA
	brk $38.b		; 00 38
	rti		; 40

	asl $F2EA.w		; 0E EA F2
	brk $39.b		; 00 39
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp $3A00.w		; CD 00 3A
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp $00.b,X		; D5 00
	tsa		; 3B
	rti		; 40

	ora [$EB.b],Y		; 17 EB
	ora $CF.b		; 05 CF
	php		; 08
	brk $48.b		; 00 48
	wai		; CB
	and $BF.b		; 25 BF
	php		; 08
	cop $48.b		; 02 48
	stp		; DB
	ora $BF.b,X		; 15 BF
	php		; 08
	tsb $48.b		; 04 48
	stp		; DB
	ora $CF.b,X		; 15 CF
	php		; 08
	asl $48.b		; 06 48
	cmp ($1E.b)		; D2 1E
	lda $480808.l		; AF 08 08 48
	xce		; FB
	sbc $00DA.w,X		; FD DA 00
	asl A		; 0A
	rti		; 40

	wai		; CB
	and $00CF.w		; 2D CF 00
	phd		; 0B
	rti		; 40

	cmp ($25.b,S),Y		; D3 25
	cmp $400C00.l		; CF 00 0C 40
	cmp ($25.b,S),Y		; D3 25
	cmp [$00.b],Y		; D7 00
	ora $DC40.w		; 0D 40 DC
	trb $00A7.w		; 1C A7 00
	asl $EC40.w		; 0E 40 EC
	tsb $00EF.w		; 0C EF 00
	ora $0BED40.l		; 0F 40 ED 0B
	sbc [$00.b]		; E7 00
	inc A		; 1A
	rti		; 40

	asl $F2.b		; 06 F2
	sbc $00.b		; E5 00
	tas		; 1B
	rti		; 40

	sbc $00DDF9.l,X		; FF F9 DD 00
	trb $EF40.w		; 1C 40 EF
	ora #$DF.b		; 09 DF
	brk $1D.b		; 00 1D
	rti		; 40

	php		; 08
	beq -20.b		; F0 EC
	brk $1E.b		; 00 1E
	rti		; 40

	bpl -24.b		; 10 E8
	cpx $1F00.w		; EC 00 1F
	rti		; 40

	sbc #$0F.b		; E9 0F
	sbc $00.b,X		; F5 00
	jsr $E940.w		; 20 40 E9
	ora $2100FD.l		; 0F FD 00 21
	rti		; 40

	cop $F6.b		; 02 F6
	sep #$00		; E2 00
	jsl $FDFB40.l		; 22 40 FB FD
	cmp ($00.b)		; D2 00
	and $40.b,S		; 23 40
.INDEX 8
	sep #$16		; E2 16
	lda $402400.l		; AF 00 24 40
.INDEX 8
	sep #$16		; E2 16
	lda [$00.b],Y		; B7 00
	and $40.b		; 25 40
	asl $F3.b,X		; 16 F3
	sbc $08C9.w,X		; FD C9 08
	brk $48.b		; 00 48
	ora $ED.b,S		; 03 ED
	cmp #$08.b		; C9 08
	cop $48.b		; 02 48
	xce		; FB
	sbc $D9.b,X		; F5 D9
	php		; 08
	tsb $48.b		; 04 48
	phd		; 0B
	sbc $D9.b		; E5 D9
	php		; 08
	asl $48.b		; 06 48
	tsb $EC.b		; 04 EC
	lda ($08.b),Y		; B1 08
	php		; 08
	pha		; 48
	sbc ($05.b,S),Y		; F3 05
	cmp $0A00.w,Y		; D9 00 0A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	pea $0B00.w		; F4 00 0B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	jsr ($0C00.w,X)		; FC 00 0C
	rti		; 40

	jsr ($B9FC.w,X)		; FC FC B9
	brk $0D.b		; 00 0D
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cmp ($00.b),Y		; D1 00
	asl $0D40.w		; 0E 40 0D
	xba		; EB
	sbc ($00.b),Y		; F1 00
	ora $EB0D40.l		; 0F 40 0D EB
	sbc $1A00.w,Y		; F9 00 1A
	rti		; 40

	ora $E3.b,X		; 15 E3
	sbc $1B00.w,Y		; F9 00 1B
	rti		; 40

	sbc $F70B.w		; ED 0B F7
	brk $1C.b		; 00 1C
	rti		; 40

	inc $E9FA.w,X		; FE FA E9
	brk $1D.b		; 00 1D
	rti		; 40

	asl $F2.b		; 06 F2
	sbc #$00.b		; E9 00
	asl $0E40.w,X		; 1E 40 0E
	nop		; EA
	sbc #$00.b		; E9 00
	ora $01F740.l,X		; 1F 40 F7 01
	cmp ($00.b,X)		; C1 00
	jsr $FF40.w		; 20 40 FF
	sbc $00C1.w,Y		; F9 C1 00
	and ($40.b,X)		; 21 40
	ora [$F1.b]		; 07 F1
	cmp ($00.b,X)		; C1 00
	jsl $00F840.l		; 22 40 F8 00
	sbc ($00.b),Y		; F1 00
	and $40.b,S		; 23 40
	brk $F8.b		; 00 F8
	sbc ($00.b),Y		; F1 00
	bit $40.b		; 24 40
	ora ($05.b,S),Y		; 13 05
	xba		; EB
	cmp $08.b,S		; C3 08
	brk $48.b		; 00 48
	sbc $FB.b,X		; F5 FB
	stp		; DB
	php		; 08
	cop $48.b		; 02 48
	ora $EB.b		; 05 EB
	stp		; DB
	php		; 08
	tsb $48.b		; 04 48
	cop $EE.b		; 02 EE
	sbc ($08.b,S),Y		; F3 08
	asl $48.b		; 06 48
	sbc $03.b,X		; F5 03
	xba		; EB
	brk $08.b		; 00 08
	rti		; 40

	sbc $EBFB.w,X		; FD FB EB
	brk $09.b		; 00 09
	rti		; 40

	ora $F3.b		; 05 F3
	xba		; EB
	brk $0A.b		; 00 0A
	rti		; 40

	ora $EBEB.w		; 0D EB EB
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $03.b,X		; F5 03
	inc $0C00.w,X		; FE 00 0C
	rti		; 40

	ora $E3.b,X		; 15 E3
	cpx #$00.b		; E0 00
	ora $1540.w		; 0D 40 15
	sbc $E8.b,S		; E3 E8
	brk $0E.b		; 00 0E
	rti		; 40

	plx		; FA
	inc $00D3.w,X		; FE D3 00
	ora $F60240.l		; 0F 40 02 F6
	cmp ($00.b,S),Y		; D3 00
	clc		; 18
	rti		; 40

	asl A		; 0A
	inc $00D3.w		; EE D3 00
	ora $1540.w,Y		; 19 40 15
	sbc $C9.b,S		; E3 C9
	brk $1A.b		; 00 1A
	rti		; 40

	plx		; FA
	inc $00F5.w,X		; FE F5 00
	tas		; 1B
	rti		; 40

	sbc ($06.b)		; F2 06
	inc $00.b,X		; F6 00
	trb $1240.w		; 1C 40 12
	inc $F0.b		; E6 F0
	brk $1D.b		; 00 1D
	rti		; 40

	ora ($E6.b)		; 12 E6
	sed		; F8
	brk $1E.b		; 00 1E
	rti		; 40

	asl $FCF4.w,X		; 1E F4 FC
	lda $0008.w,Y		; B9 08 00
	pha		; 48
	cpx $0C.b		; E4 0C
	lda ($08.b,X)		; A1 08
	cop $48.b		; 02 48
	inc $C902.w		; EE 02 C9
	php		; 08
	tsb $48.b		; 04 48
	ora ($E5.b,S),Y		; 13 E5
	plx		; FA
	brk $06.b		; 00 06
	rti		; 40

	xba		; EB
	ora $0099.w		; 0D 99 00
	ora [$40.b]		; 07 40
	sbc ($05.b,S),Y		; F3 05
	sta $0800.w,Y		; 99 00 08
	rti		; 40

	pea $A104.w		; F4 04 A1
	brk $09.b		; 00 09
	rti		; 40

	pea $A904.w		; F4 04 A9
	brk $0A.b		; 00 0A
	rti		; 40

	cpx $14.b		; E4 14
	lda ($00.b),Y		; B1 00
	phd		; 0B
	rti		; 40

	cpx $B10C.w		; EC 0C B1
	brk $0C.b		; 00 0C
	rti		; 40

	pea $B104.w		; F4 04 B1
	brk $0D.b		; 00 0D
	rti		; 40

	cpx $B90C.w		; EC 0C B9
	brk $0E.b		; 00 0E
	rti		; 40

	cpx $C10C.w		; EC 0C C1
	brk $0F.b		; 00 0F
	rti		; 40

	cpx $E30C.w		; EC 0C E3
	brk $16.b		; 00 16
	rti		; 40

	tsb $F4.b		; 04 F4
	cpx $00.b		; E4 00
	ora [$40.b],Y		; 17 40
	jsr ($9EFC.w,X)		; FC FC 9E
	brk $18.b		; 00 18
	rti		; 40

	jsr ($A6FC.w,X)		; FC FC A6
	brk $19.b		; 00 19
	rti		; 40

	jsr ($AEFC.w,X)		; FC FC AE
	brk $1A.b		; 00 1A
	rti		; 40

	phd		; 0B
	sbc $00FA.w		; ED FA 00
	tas		; 1B
	rti		; 40

	inc $C9FA.w,X		; FE FA C9
	brk $1C.b		; 00 1C
	rti		; 40

	inc $D1FA.w,X		; FE FA D1
	brk $1D.b		; 00 1D
	rti		; 40

	asl $F2.b		; 06 F2
	cpx $1E00.w		; EC 00 1E
	rti		; 40

	sbc $00DE09.l		; EF 09 DE 00
	ora $F80040.l,X		; 1F 40 00 F8
	cmp $2000.w,Y		; D9 00 20
	rti		; 40

	inx		; E8
	bpl -13.b		; 10 F3
	brk $21.b		; 00 21
	rti		; 40

	inx		; E8
	bpl  -5.b		; 10 FB
	brk $22.b		; 00 22
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b,X)		; E1 00
	and $40.b,S		; 23 40
	sbc #$0F.b		; E9 0F
	xba		; EB
	brk $24.b		; 00 24
	rti		; 40

	ora #$EF.b		; 09 EF
	sbc ($00.b,S),Y		; F3 00
	and $40.b		; 25 40
	sbc ($06.b)		; F2 06
	cmp $2600.w,Y		; D9 00 26
	rti		; 40

	ora [$03.b],Y		; 17 03
	sbc $08F3.w		; ED F3 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	stp		; DB
	php		; 08
	cop $48.b		; 02 48
	ora $ED.b,S		; 03 ED
	stp		; DB
	php		; 08
	tsb $48.b		; 04 48
	inc $C3F2.w,X		; FE F2 C3
	php		; 08
	asl $48.b		; 06 48
	xce		; FB
	sbc $00EB.w,X		; FD EB 00
	php		; 08
	rti		; 40

	ora $F5.b,S		; 03 F5
	xba		; EB
	brk $09.b		; 00 09
	rti		; 40

	phd		; 0B
	sbc $00EB.w		; ED EB 00
	asl A		; 0A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc $00.b,X		; F5 00
	phd		; 0B
	rti		; 40

	xce		; FB
	sbc $00F5.w,X		; FD F5 00
	tsb $F340.w		; 0C 40 F3
	ora $FD.b		; 05 FD
	brk $0D.b		; 00 0D
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cpx #$00.b		; E0 00
	asl $1340.w		; 0E 40 13
	sbc $E8.b		; E5 E8
	brk $0F.b		; 00 0F
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	beq   0.b		; F0 00
	clc		; 18
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	sed		; F8
	brk $19.b		; 00 19
	rti		; 40

	asl $E2.b,X		; 16 E2
	dex		; CA
	brk $1A.b		; 00 1A
	rti		; 40

	asl $E2.b,X		; 16 E2
	cmp ($00.b)		; D2 00
	tas		; 1B
	rti		; 40

	inc $02.b,X		; F6 02
	cmp ($00.b,S),Y		; D3 00
	trb $F340.w		; 1C 40 F3
	ora $EB.b		; 05 EB
	brk $1D.b		; 00 1D
	rti		; 40

	asl $C3EA.w		; 0E EA C3
	brk $1E.b		; 00 1E
	rti		; 40

	asl $CBEA.w		; 0E EA CB
	brk $1F.b		; 00 1F
	rti		; 40

	inc $D3FA.w,X		; FE FA D3
	brk $20.b		; 00 20
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b,S),Y		; D3 00
	and ($40.b,X)		; 21 40
	asl $D3EA.w		; 0E EA D3
	brk $22.b		; 00 22
	rti		; 40

	trb $FDF3.w		; 1C F3 FD
	lda #$08.b		; A9 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	inc $99F2.w,X		; FE F2 99
	php		; 08
	tsb $48.b		; 04 48
	ora $F5.b,S		; 03 F5
	lda ($00.b),Y		; B1 00
	asl $40.b		; 06 40
	ora $F5.b,S		; 03 F5
	cmp ($00.b,X)		; C1 00
	ora [$40.b]		; 07 40
	ora $F5.b,S		; 03 F5
	cmp #$00.b		; C9 00
	php		; 08
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc $00.b,S		; E3 00
	ora #$40.b		; 09 40
	phd		; 0B
	sbc $00C6.w		; ED C6 00
	asl A		; 0A
	rti		; 40

	asl $F2.b		; 06 F2
	cmp $0B00.w,Y		; D9 00 0B
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b,X)		; E1 00
	tsb $0340.w		; 0C 40 03
	sbc $A9.b,X		; F5 A9
	brk $0D.b		; 00 0D
	rti		; 40

	inc $02.b,X		; F6 02
	cmp $400E00.l,X		; DF 00 0E 40
	sbc $00F009.l		; EF 09 F0 00
	ora $09EF40.l		; 0F 40 EF 09
	sed		; F8
	brk $16.b		; 00 16
	rti		; 40

	inx		; E8
	bpl  -7.b		; 10 F9
	brk $17.b		; 00 17
	rti		; 40

	php		; 08
	beq -24.b		; F0 E8
	brk $18.b		; 00 18
	rti		; 40

	sbc $D1FF.w,Y		; F9 FF D1
	brk $19.b		; 00 19
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b),Y		; D1 00
	inc A		; 1A
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp ($00.b),Y		; D1 00
	tas		; 1B
	rti		; 40

	sbc $D9FF.w,Y		; F9 FF D9
	brk $1C.b		; 00 1C
	rti		; 40

	ora #$EF.b		; 09 EF
	beq   0.b		; F0 00
	ora $0940.w,X		; 1D 40 09
	sbc $1E00F8.l		; EF F8 00 1E
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sed		; F8
	brk $1F.b		; 00 1F
	rti		; 40

	sbc ($06.b)		; F2 06
	lda $2000.w,Y		; B9 00 20
	rti		; 40

	plx		; FA
	inc $00B9.w,X		; FE B9 00
	and ($40.b,X)		; 21 40
	cop $F6.b		; 02 F6
	lda $2200.w,Y		; B9 00 22
	rti		; 40

	sbc ($06.b)		; F2 06
	xba		; EB
	brk $23.b		; 00 23
	rti		; 40

	asl A		; 0A
	inc $00BE.w		; EE BE 00
	bit $40.b		; 24 40
	ora $FDF3.w,Y		; 19 F3 FD
	lda #$08.b		; A9 08
	brk $48.b		; 00 48
	inc $99F2.w,X		; FE F2 99
	php		; 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	cmp #$08.b		; C9 08
	tsb $48.b		; 04 48
	sbc ($FE.b)		; F2 FE
	lda $0608.w,Y		; B9 08 06
	pha		; 48
	asl $F2.b		; 06 F2
	cmp $0800.w,Y		; D9 00 08
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda #$00.b		; A9 00
	ora #$40.b		; 09 40
	ora $F5.b,S		; 03 F5
	lda ($00.b),Y		; B1 00
	asl A		; 0A
	rti		; 40

	asl $F2.b		; 06 F2
	cmp #$00.b		; C9 00
	phd		; 0B
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b),Y		; D1 00
	tsb $F640.w		; 0C 40 F6
	cop $DF.b		; 02 DF
	brk $0D.b		; 00 0D
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b,X)		; E1 00
	asl $EF40.w		; 0E 40 EF
	ora #$F1.b		; 09 F1
	brk $0F.b		; 00 0F
	rti		; 40

	sbc [$11.b]		; E7 11
	sbc $1800.w,Y		; F9 00 18
	rti		; 40

	sbc $00F909.l		; EF 09 F9 00
	ora $0840.w,Y		; 19 40 08
	beq -23.b		; F0 E9
	brk $1A.b		; 00 1A
	rti		; 40

	sbc $D9FF.w,Y		; F9 FF D9
	brk $1B.b		; 00 1B
	rti		; 40

	sbc ($07.b),Y		; F1 07
	xba		; EB
	brk $1C.b		; 00 1C
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc $00.b,S		; E3 00
	ora $0240.w,X		; 1D 40 02
	inc $B9.b,X		; F6 B9
	brk $1E.b		; 00 1E
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b,X)		; C1 00
	ora $EE0A40.l,X		; 1F 40 0A EE
	lda $2000.w,X		; BD 00 20
	rti		; 40

	asl A		; 0A
	inc $00C5.w		; EE C5 00
	and ($40.b,X)		; 21 40
	asl A		; 0A
	inc $00F0.w		; EE F0 00
	jsl $EE0A40.l		; 22 40 0A EE
	sed		; F8
	brk $23.b		; 00 23
	rti		; 40

	ora ($E6.b)		; 12 E6
	sed		; F8
	brk $24.b		; 00 24
	rti		; 40

	tas		; 1B
	xba		; EB
	ora $B0.b		; 05 B0
	php		; 08
	brk $48.b		; 00 48
	xce		; FB
	sbc $B0.b,X		; F5 B0
	php		; 08
	cop $48.b		; 02 48
	sbc [$F9.b],Y		; F7 F9
	tya		; 98
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FE.b)		; F2 FE
	cpy #$08.b		; C0 08
	asl $48.b		; 06 48
	pea $DE04.w		; F4 04 DE
	brk $08.b		; 00 08
	rti		; 40

	cpx $A80C.w		; EC 0C A8
	brk $09.b		; 00 09
	rti		; 40

	pea $A804.w		; F4 04 A8
	brk $0A.b		; 00 0A
	rti		; 40

	jsr ($A8FC.w,X)		; FC FC A8
	brk $0B.b		; 00 0B
	rti		; 40

	tsb $F4.b		; 04 F4
	tay		; A8
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $FB0B.w		; ED 0B FB
	brk $0D.b		; 00 0D
	rti		; 40

	ora $EDEB.w		; 0D EB ED
	brk $0E.b		; 00 0E
	rti		; 40

	ora $F3.b		; 05 F3
	cld		; D8
	brk $0F.b		; 00 0F
	rti		; 40

	inc $F60A.w		; EE 0A F6
	brk $18.b		; 00 18
	rti		; 40

	ora $00F5E9.l		; 0F E9 F5 00
	ora $EF40.w,Y		; 19 40 EF
	ora #$EE.b		; 09 EE
	brk $1A.b		; 00 1A
	rti		; 40

	sbc [$01.b],Y		; F7 01
	bne   0.b		; D0 00
	tas		; 1B
	rti		; 40

	sbc $00D0F9.l,X		; FF F9 D0 00
	trb $0740.w		; 1C 40 07
	sbc ($D0.b),Y		; F1 D0
	brk $1D.b		; 00 1D
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cld		; D8
	brk $1E.b		; 00 1E
	rti		; 40

	phd		; 0B
	sbc $00AA.w		; ED AA 00
	ora $F00840.l,X		; 1F 40 08 F0
	cmp $2000.w,X		; DD 00 20
	rti		; 40

	ora ($E6.b)		; 12 E6
	plx		; FA
	brk $21.b		; 00 21
	rti		; 40

	asl A		; 0A
	inc $00E5.w		; EE E5 00
	jsl $06F240.l		; 22 40 F2 06
	inc $00.b		; E6 00
	and $40.b,S		; 23 40
	phd		; 0B
	sbc $00B2.w		; ED B2 00
	bit $40.b		; 24 40
	cop $F6.b		; 02 F6
	cpy #$00.b		; C0 00
	and $40.b		; 25 40
	cop $F6.b		; 02 F6
	iny		; C8
	brk $26.b		; 00 26
	rti		; 40

	ora $05EB.w,X		; 1D EB 05
	ldy $08.b,X		; B4 08
	brk $48.b		; 00 48
	xce		; FB
	sbc $B4.b,X		; F5 B4
	php		; 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	ldy $08.b		; A4 08
	tsb $48.b		; 04 48
	xba		; EB
	ora $00FD.w		; 0D FD 00
	asl $40.b		; 06 40
	pea $E104.w		; F4 04 E1
	brk $07.b		; 00 07
	rti		; 40

	ora $EBEB.w		; 0D EB EB
	brk $08.b		; 00 08
	rti		; 40

	sbc $03.b,X		; F5 03
	cpy $0900.w		; CC 00 09
	rti		; 40

	sbc $CCFB.w,X		; FD FB CC
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F3.b		; 05 F3
	cpy $0B00.w		; CC 00 0B
	rti		; 40

	asl $F2.b		; 06 F2
	tax		; AA
	brk $0C.b		; 00 0C
	rti		; 40

	asl $F2.b		; 06 F2
	lda ($00.b)		; B2 00
	ora $EE40.w		; 0D 40 EE
	asl A		; 0A
	ldy $0E00.w		; AC 00 0E
	rti		; 40

	phd		; 0B
	sbc $00BA.w		; ED BA 00
	ora $0AEE40.l		; 0F 40 EE 0A
	sed		; F8
	brk $16.b		; 00 16
	rti		; 40

	ora $00F3E9.l		; 0F E9 F3 00
	ora [$40.b],Y		; 17 40
	sbc [$01.b],Y		; F7 01
	stz $1800.w		; 9C 00 18
	rti		; 40

	sbc [$01.b],Y		; F7 01
	pei ($00.b)		; D4 00
	ora $FF40.w,Y		; 19 40 FF
	sbc $00D4.w,Y		; F9 D4 00
	inc A		; 1A
	rti		; 40

	ora [$F1.b]		; 07 F1
	pei ($00.b)		; D4 00
	tas		; 1B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	jmp.w [$1C00]		; DC 00 1C
	rti		; 40

	sbc $009DF9.l,X		; FF F9 9D 00
	ora $EF40.w,X		; 1D 40 EF
	ora #$F0.b		; 09 F0
	brk $1E.b		; 00 1E
	rti		; 40

	ora #$EF.b		; 09 EF
	jmp.w [$1F00]		; DC 00 1F
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc #$00.b		; E9 00
	jsr $1240.w		; 20 40 12
	inc $FB.b		; E6 FB
	brk $21.b		; 00 21
	rti		; 40

	sbc ($06.b)		; F2 06
	cpy $00.b		; C4 00
	jsl $FEFA40.l		; 22 40 FA FE
	cpy $00.b		; C4 00
	and $40.b,S		; 23 40
	cop $F6.b		; 02 F6
	cpy $00.b		; C4 00
	bit $40.b		; 24 40
	asl A		; 0A
	inc $00E4.w		; EE E4 00
	and $40.b		; 25 40
	inc A		; 1A
	inc $A402.w		; EE 02 A4
	php		; 08
	brk $48.b		; 00 48
	inc $A4F2.w,X		; FE F2 A4
	php		; 08
	cop $48.b		; 02 48
	sbc [$F9.b],Y		; F7 F9
	sty $08.b,X		; 94 08
	tsb $48.b		; 04 48
	beq   0.b		; F0 00
	ldy $0608.w,X		; BC 08 06
	pha		; 48
	inc $02.b,X		; F6 02
	jmp.w [$0800]		; DC 00 08
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cpx $0900.w		; EC 00 09
	rti		; 40

	ora $F5.b,S		; 03 F5
	cpx $0A00.w		; EC 00 0A
	rti		; 40

	inc $B40A.w		; EE 0A B4
	brk $0B.b		; 00 0B
	rti		; 40

	inc $02.b,X		; F6 02
	ldy $00.b,X		; B4 00
	tsb $FE40.w		; 0C 40 FE
	plx		; FA
	ldy $00.b,X		; B4 00
	ora $0640.w		; 0D 40 06
	sbc ($B4.b)		; F2 B4
	brk $0E.b		; 00 0E
	rti		; 40

	inc $12.b		; E6 12
	bcs   0.b		; B0 00
	ora $09EF40.l		; 0F 40 EF 09
	xce		; FB
	brk $18.b		; 00 18
	rti		; 40

	sbc [$01.b],Y		; F7 01
	pei ($00.b)		; D4 00
	ora $F440.w,Y		; 19 40 F4
	tsb $E4.b		; 04 E4
	brk $1A.b		; 00 1A
	rti		; 40

	php		; 08
	beq  -6.b		; F0 FA
	brk $1B.b		; 00 1B
	rti		; 40

	tsb $F4.b		; 04 F4
	pea $1C00.w		; F4 00 1C
	rti		; 40

	brk $F8.b		; 00 F8
	ldy $1D00.w,X		; BC 00 1D
	rti		; 40

	brk $F8.b		; 00 F8
	cpy $00.b		; C4 00
	asl $F040.w,X		; 1E 40 F0
	php		; 08
	cpy $1F00.w		; CC 00 1F
	rti		; 40

	sed		; F8
	brk $CC.b		; 00 CC
	brk $20.b		; 00 20
	rti		; 40

	brk $F8.b		; 00 F8
	cpy INIDSP.w		; CC 00 21
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	pei ($00.b)		; D4 00
	jsl $F70140.l		; 22 40 01 F7
	jmp.w [$2300]		; DC 00 23
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cpx $00.b		; E4 00
	bit $40.b		; 24 40
	sbc ($06.b)		; F2 06
	pea $2500.w		; F4 00 25
	rti		; 40

	tas		; 1B
	sbc $A903.w		; ED 03 A9
	php		; 08
	brk $48.b		; 00 48
	sbc $A9F3.w,X		; FD F3 A9
	php		; 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	cpy #$08.b		; C0 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $99.b,X		; F6 99
	php		; 08
	asl $48.b		; 06 48
	pea $B904.w		; F4 04 B9
	brk $08.b		; 00 08
	rti		; 40

	jsr ($B9FC.w,X)		; FC FC B9
	brk $09.b		; 00 09
	rti		; 40

	tsb $F4.b		; 04 F4
	lda $0A00.w,Y		; B9 00 0A
	rti		; 40

	cpx $FC0C.w		; EC 0C FC
	brk $0B.b		; 00 0B
	rti		; 40

	trb $E4.b		; 14 E4
	ldx $00.b		; A6 00
	tsb $1440.w		; 0C 40 14
	cpx $AE.b		; E4 AE
	brk $0D.b		; 00 0D
	rti		; 40

	ora $B1EB.w		; 0D EB B1
	brk $0E.b		; 00 0E
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cpx $00.b		; E4 00
	ora $F50340.l		; 0F 40 03 F5
	bne   0.b		; D0 00
	clc		; 18
	rti		; 40

	sbc $03.b,X		; F5 03
	dec $1900.w,X		; DE 00 19
	rti		; 40

	ora $F3.b		; 05 F3
	inx		; E8
	brk $1A.b		; 00 1A
	rti		; 40

	ora $F5.b,S		; 03 F5
	cld		; D8
	brk $1B.b		; 00 1B
	rti		; 40

	asl $F2.b		; 06 F2
	cpy #$00.b		; C0 00
	trb $0640.w		; 1C 40 06
	sbc ($C8.b)		; F2 C8
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $00F609.l		; EF 09 F6 00
	asl $F740.w,X		; 1E 40 F7
	ora ($D8.b,X)		; 01 D8
	brk $1F.b		; 00 1F
	rti		; 40

	ora [$F1.b]		; 07 F1
	beq   0.b		; F0 00
	jsr $F040.w		; 20 40 F0
	php		; 08
	sbc $402100.l		; EF 00 21 40
	php		; 08
	beq  -8.b		; F0 F8
	brk $22.b		; 00 22
	rti		; 40

	bpl -24.b		; 10 E8
	sed		; F8
	brk $23.b		; 00 23
	rti		; 40

	sbc $D0FF.w,Y		; F9 FF D0
	brk $24.b		; 00 24
	rti		; 40

	ora $F5.b,S		; 03 F5
	cpx #$00.b		; E0 00
	and $40.b		; 25 40
	sbc ($06.b)		; F2 06
	nop		; EA
	brk $26.b		; 00 26
	rti		; 40

	tas		; 1B
	xce		; FB
	sbc $98.b,X		; F5 98
	php		; 08
	brk $48.b		; 00 48
	ora $EB.b		; 05 EB
	tay		; A8
	php		; 08
	cop $48.b		; 02 48
	sbc $FB.b,X		; F5 FB
	tay		; A8
	php		; 08
	tsb $48.b		; 04 48
	sbc $FB.b,X		; F5 FB
	clv		; B8
	php		; 08
	asl $48.b		; 06 48
	sbc ($05.b,S),Y		; F3 05
	cpx $00.b		; E4 00
	php		; 08
	rti		; 40

	tsb $F4.b		; 04 F4
	cld		; D8
	brk $09.b		; 00 09
	rti		; 40

	tsb $F4.b		; 04 F4
	cpx #$00.b		; E0 00
	asl A		; 0A
	rti		; 40

	tsb $F4.b		; 04 F4
	inx		; E8
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $F90B.w		; ED 0B F9
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $AA0B.w		; ED 0B AA
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $B20B.w		; ED 0B B2
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $03.b,X		; F5 03
	dec $0F00.w,X		; DE 00 0F
	rti		; 40

	phd		; 0B
	sbc $00A0.w		; ED A0 00
	clc		; 18
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	ldy #$00.b		; A0 00
	ora $0340.w,Y		; 19 40 03
	sbc $D0.b,X		; F5 D0
	brk $1A.b		; 00 1A
	rti		; 40

	ora $F3.b		; 05 F3
	clv		; B8
	brk $1B.b		; 00 1B
	rti		; 40

	ora $F3.b		; 05 F3
	cpy #$00.b		; C0 00
	trb $F540.w		; 1C 40 F5
	ora $C8.b,S		; 03 C8
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $C8FB.w,X		; FD FB C8
	brk $1E.b		; 00 1E
	rti		; 40

	ora $F3.b		; 05 F3
	iny		; C8
	brk $1F.b		; 00 1F
	rti		; 40

	asl $F2.b		; 06 F2
	beq   0.b		; F0 00
	jsr $0640.w		; 20 40 06
	sbc ($F8.b)		; F2 F8
	brk $21.b		; 00 21
	rti		; 40

	asl $F8EA.w		; 0E EA F8
	brk $22.b		; 00 22
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cld		; D8
	brk $23.b		; 00 23
	rti		; 40

	beq   8.b		; F0 08
	pea $2400.w		; F4 00 24
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cpx $2500.w		; EC 00 25
	rti		; 40

	sbc $D0FF.w,Y		; F9 FF D0
	brk $26.b		; 00 26
	rti		; 40

	ora [$F3.b],Y		; 17 F3
	sbc $08BA.w,X		; FD BA 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	dex		; CA
	php		; 08
	cop $48.b		; 02 48
	inc $AA02.w		; EE 02 AA
	php		; 08
	tsb $48.b		; 04 48
	inc $AAF2.w,X		; FE F2 AA
	php		; 08
	asl $48.b		; 06 48
	pea $A204.w		; F4 04 A2
	brk $08.b		; 00 08
	rti		; 40

	jsr ($A2FC.w,X)		; FC FC A2
	brk $09.b		; 00 09
	rti		; 40

	tsb $F4.b		; 04 F4
	ldx #$00.b		; A2 00
	asl A		; 0A
	rti		; 40

	pea $DA04.w		; F4 04 DA
	brk $0B.b		; 00 0B
	rti		; 40

	jsr ($DAFC.w,X)		; FC FC DA
	brk $0C.b		; 00 0C
	rti		; 40

	cpx $ED0C.w		; EC 0C ED
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $E2FB.w,X		; FD FB E2
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $FA0B.w		; ED 0B FA
	brk $0F.b		; 00 0F
	rti		; 40

	xba		; EB
	ora $00B5.w		; 0D B5 00
	clc		; 18
	rti		; 40

	xba		; EB
	ora $00BD.w		; 0D BD 00
	ora $EF40.w,Y		; 19 40 EF
	ora #$E5.b		; 09 E5
	brk $1A.b		; 00 1A
	rti		; 40

	sed		; F8
	brk $9A.b		; 00 9A
	brk $1B.b		; 00 1B
	rti		; 40

	brk $F8.b		; 00 F8
	txs		; 9A
	brk $1C.b		; 00 1C
	rti		; 40

	brk $F8.b		; 00 F8
	nop		; EA
	brk $1D.b		; 00 1D
	rti		; 40

	brk $F8.b		; 00 F8
	sbc ($00.b)		; F2 00
	asl $0040.w,X		; 1E 40 00
	sed		; F8
	plx		; FA
	brk $1F.b		; 00 1F
	rti		; 40

	php		; 08
	beq  -6.b		; F0 FA
	brk $20.b		; 00 20
	rti		; 40

	nop		; EA
	asl $00F4.w		; 0E F4 00
	and ($40.b,X)		; 21 40
	sbc ($06.b)		; F2 06
	cmp $402200.l,X		; DF 00 22 40
	trb $F3.b		; 14 F3
	sbc $08B9.w,X		; FD B9 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp #$08.b		; C9 08
	cop $48.b		; 02 48
	cpx $E104.w		; EC 04 E1
	php		; 08
	tsb $48.b		; 04 48
	inc $A902.w		; EE 02 A9
	php		; 08
	asl $48.b		; 06 48
	inc $A9F2.w,X		; FE F2 A9
	php		; 08
	php		; 08
	pha		; 48
	xba		; EB
	ora $00BC.w		; 0D BC 00
	asl A		; 0A
	rti		; 40

	xba		; EB
	ora $00C4.w		; 0D C4 00
	phd		; 0B
	rti		; 40

	pea $F104.w		; F4 04 F1
	brk $0C.b		; 00 0C
	rti		; 40

	pea $F904.w		; F4 04 F9
	brk $0D.b		; 00 0D
	rti		; 40

	jsr ($F9FC.w,X)		; FC FC F9
	brk $0E.b		; 00 0E
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp $0F00.w,Y		; D9 00 0F
	rti		; 40

	sbc $03.b,X		; F5 03
	lda ($00.b,X)		; A1 00
	inc A		; 1A
	rti		; 40

	sbc $A1FB.w,X		; FD FB A1
	brk $1B.b		; 00 1B
	rti		; 40

	ora $F3.b		; 05 F3
	lda ($00.b,X)		; A1 00
	trb $FB40.w		; 1C 40 FB
	sbc $00D9.w,X		; FD D9 00
	ora $EB40.w,X		; 1D 40 EB
	ora $00B4.w		; 0D B4 00
	asl $F840.w,X		; 1E 40 F8
	brk $99.b		; 00 99
	brk $1F.b		; 00 1F
	rti		; 40

	brk $F8.b		; 00 F8
	sta $2000.w,Y		; 99 00 20
	rti		; 40

	inx		; E8
	bpl -18.b		; 10 EE
	brk $21.b		; 00 21
	rti		; 40

	nop		; EA
	asl $00F6.w		; 0E F6 00
	jsl $FE1E40.l		; 22 40 1E FE
	sbc ($A9.b)		; F2 A9
	php		; 08
	brk $48.b		; 00 48
	inc $A902.w		; EE 02 A9
	php		; 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	cmp $480408.l		; CF 08 04 48
	xce		; FB
	sbc $00F5.w,X		; FD F5 00
	asl $40.b		; 06 40
	ora $F5.b,S		; 03 F5
	inc $00.b,X		; F6 00
	ora [$40.b]		; 07 40
	xce		; FB
	sbc $00C7.w,X		; FD C7 00
	php		; 08
	rti		; 40

	pea $A104.w		; F4 04 A1
	brk $09.b		; 00 09
	rti		; 40

	jsr ($A1FC.w,X)		; FC FC A1
	brk $0A.b		; 00 0A
	rti		; 40

	tsb $F4.b		; 04 F4
	lda ($00.b,X)		; A1 00
	phd		; 0B
	rti		; 40

	cpx $EC0C.w		; EC 0C EC
	brk $0C.b		; 00 0C
	rti		; 40

	cpx $F40C.w		; EC 0C F4
	brk $0D.b		; 00 0D
	rti		; 40

	cpx $FC0C.w		; EC 0C FC
	brk $0E.b		; 00 0E
	rti		; 40

	pea $FC04.w		; F4 04 FC
	brk $0F.b		; 00 0F
	rti		; 40

	jsr ($DDFC.w,X)		; FC FC DD
	brk $16.b		; 00 16
	rti		; 40

	inc $12.b		; E6 12
	lda ($00.b),Y		; B1 00
	ora [$40.b],Y		; 17 40
	inc $D10A.w		; EE 0A D1
	brk $18.b		; 00 18
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp #$00.b		; C9 00
	ora $FB40.w,Y		; 19 40 FB
	sbc $00E5.w,X		; FD E5 00
	inc A		; 1A
	rti		; 40

	inc $B90A.w		; EE 0A B9
	brk $1B.b		; 00 1B
	rti		; 40

	inc $02.b,X		; F6 02
	lda $1C00.w,Y		; B9 00 1C
	rti		; 40

	inc $B9FA.w,X		; FE FA B9
	brk $1D.b		; 00 1D
	rti		; 40

	inc $E40A.w		; EE 0A E4
	brk $1E.b		; 00 1E
	rti		; 40

	xce		; FB
	sbc $00ED.w,X		; FD ED 00
	ora $09EF40.l,X		; 1F 40 EF 09
	cmp ($00.b,X)		; C1 00
	jsr $F740.w		; 20 40 F7
	ora ($C1.b,X)		; 01 C1
	brk $21.b		; 00 21
	rti		; 40

	sbc $00BFF9.l,X		; FF F9 BF 00
	jsl $00F840.l		; 22 40 F8 00
	sta $2300.w,Y		; 99 00 23
	rti		; 40

	brk $F8.b		; 00 F8
	sta $2400.w,Y		; 99 00 24
	rti		; 40

	beq   8.b		; F0 08
	sbc ($00.b,X)		; E1 00
	and $40.b		; 25 40
	sbc ($07.b),Y		; F1 07
	cmp $2600.w,Y		; D9 00 26
	rti		; 40

	ora $A2FBF5.l,X		; 1F F5 FB A2
	php		; 08
	brk $48.b		; 00 48
	sbc $08BA01.l		; EF 01 BA 08
	cop $48.b		; 02 48
	sbc ($FE.b)		; F2 FE
	dex		; CA
	php		; 08
	tsb $48.b		; 04 48
	jsr ($B2FC.w,X)		; FC FC B2
	brk $06.b		; 00 06
	rti		; 40

	tsb $F4.b		; 04 F4
	lda ($00.b)		; B2 00
	ora [$40.b]		; 07 40
	tsb $B2EC.w		; 0C EC B2
	brk $08.b		; 00 08
	rti		; 40

	sbc $AA0B.w		; ED 0B AA
	brk $09.b		; 00 09
	rti		; 40

	xba		; EB
	ora $00E2.w		; 0D E2 00
	asl A		; 0A
	rti		; 40

	ora $F3.b		; 05 F3
	ldx #$00.b		; A2 00
	phd		; 0B
	rti		; 40

	ora $F3.b		; 05 F3
	tax		; AA
	brk $0C.b		; 00 0C
	rti		; 40

	inc $DAFA.w,X		; FE FA DA
	brk $0D.b		; 00 0D
	rti		; 40

	inc $E2FA.w,X		; FE FA E2
	brk $0E.b		; 00 0E
	rti		; 40

	inc $DE0A.w		; EE 0A DE
	brk $0F.b		; 00 0F
	rti		; 40

	sbc [$11.b]		; E7 11
	sbc ($00.b),Y		; F1 00
	asl $40.b,X		; 16 40
	sbc $00EAF9.l,X		; FF F9 EA 00
	ora [$40.b],Y		; 17 40
	sbc $00FAF9.l,X		; FF F9 FA 00
	clc		; 18
	rti		; 40

	ora [$F1.b]		; 07 F1
	plx		; FA
	brk $19.b		; 00 19
	rti		; 40

	cpx $B20C.w		; EC 0C B2
	brk $1A.b		; 00 1A
	rti		; 40

	sbc $00BAF9.l,X		; FF F9 BA 00
	tas		; 1B
	rti		; 40

	sbc $00C2F9.l,X		; FF F9 C2 00
	trb $E840.w		; 1C 40 E8
	bpl  -7.b		; 10 F9
	brk $1D.b		; 00 1D
	rti		; 40

	sed		; F8
	brk $9A.b		; 00 9A
	brk $1E.b		; 00 1E
	rti		; 40

	brk $F8.b		; 00 F8
	txs		; 9A
	brk $1F.b		; 00 1F
	rti		; 40

	beq   8.b		; F0 08
	phx		; DA
	brk $20.b		; 00 20
	rti		; 40

	brk $F8.b		; 00 F8
	sbc ($00.b)		; F2 00
	and ($40.b,X)		; 21 40
	cpx #$18.b		; E0 18
	sbc $00.b,X		; F5 00
	jsl $17E140.l		; 22 40 E1 17
	sbc #$00.b		; E9 00
	and $40.b,S		; 23 40
	sbc #$0F.b		; E9 0F
	sbc #$00.b		; E9 00
	bit $40.b		; 24 40
	pea $B204.w		; F4 04 B2
	brk $25.b		; 00 25
	rti		; 40

	cop $F6.b		; 02 F6
	dex		; CA
	brk $26.b		; 00 26
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b)		; D2 00
	and [$40.b]		; 27 40
	clc		; 18
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b),Y		; D1 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	sbc ($FD.b,S),Y		; F3 FD
	lda ($08.b),Y		; B1 08
	tsb $48.b		; 04 48
	inc $FA.b,X		; F6 FA
	lda ($08.b,X)		; A1 08
	asl $48.b		; 06 48
	ora $F5.b,S		; 03 F5
	lda ($00.b),Y		; B1 00
	php		; 08
	rti		; 40

	xba		; EB
	ora $00B1.w		; 0D B1 00
	ora #$40.b		; 09 40
	xba		; EB
	ora $00B9.w		; 0D B9 00
	asl A		; 0A
	rti		; 40

	xba		; EB
	ora $00C1.w		; 0D C1 00
	phd		; 0B
	rti		; 40

	inc $A90A.w		; EE 0A A9
	brk $0C.b		; 00 0C
	rti		; 40

	phd		; 0B
	sbc $00B1.w		; ED B1 00
	ora $0640.w		; 0D 40 06
	sbc ($A1.b)		; F2 A1
	brk $0E.b		; 00 0E
	rti		; 40

	asl $F2.b		; 06 F2
	lda #$00.b		; A9 00
	ora $0AEE40.l		; 0F 40 EE 0A
	sbc $00.b		; E5 00
	clc		; 18
	rti		; 40

	inc $12.b		; E6 12
	beq   0.b		; F0 00
	ora $F740.w,Y		; 19 40 F7
	ora ($E1.b,X)		; 01 E1
	brk $1A.b		; 00 1A
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc #$00.b		; E9 00
	tas		; 1B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($00.b),Y		; F1 00
	trb $F740.w		; 1C 40 F7
	ora ($F9.b,X)		; 01 F9
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $00F9F9.l,X		; FF F9 F9 00
	asl $F840.w,X		; 1E 40 F8
	brk $99.b		; 00 99
	brk $1F.b		; 00 1F
	rti		; 40

	brk $F8.b		; 00 F8
	sta $2000.w,Y		; 99 00 20
	rti		; 40

	beq   8.b		; F0 08
	dec $2100.w,X		; DE 00 21
	rti		; 40

	inx		; E8
	bpl  -8.b		; 10 F8
	brk $22.b		; 00 22
	rti		; 40

	nop		; EA
	asl $00EC.w		; 0E EC 00
	and $40.b,S		; 23 40
	ora ($F5.b,S),Y		; 13 F5
	xce		; FB
	cmp #$08.b		; C9 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	sta $0208.w,Y		; 99 08 02
	pha		; 48
	sbc ($FE.b)		; F2 FE
	sbc ($08.b,X)		; E1 08
	tsb $48.b		; 04 48
	sbc ($FE.b)		; F2 FE
	lda #$08.b		; A9 08
	asl $48.b		; 06 48
	sbc ($FE.b)		; F2 FE
	lda $0808.w,Y		; B9 08 08
	pha		; 48
	asl $A3EA.w		; 0E EA A3
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F3.b		; 05 F3
	cmp #$00.b		; C9 00
	phd		; 0B
	rti		; 40

	sed		; F8
	brk $FD.b		; 00 FD
	brk $0C.b		; 00 0C
	rti		; 40

	plx		; FA
	inc $00D9.w,X		; FE D9 00
	ora $0240.w		; 0D 40 02
	inc $D9.b,X		; F6 D9
	brk $0E.b		; 00 0E
	rti		; 40

	ora $F3.b		; 05 F3
	cmp ($00.b),Y		; D1 00
	ora $02F640.l		; 0F 40 F6 02
	sbc ($00.b),Y		; F1 00
	inc A		; 1A
	rti		; 40

	inc $02.b,X		; F6 02
	sbc $1B00.w,Y		; F9 00 1B
	rti		; 40

	cop $F6.b		; 02 F6
	lda #$00.b		; A9 00
	trb $0240.w		; 1C 40 02
	inc $B1.b,X		; F6 B1
	brk $1D.b		; 00 1D
	rti		; 40

	cop $F6.b		; 02 F6
	lda $1E00.w,Y		; B9 00 1E
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b,X)		; C1 00
	ora $EE0A40.l,X		; 1F 40 0A EE
	plb		; AB
	brk $20.b		; 00 20
	rti		; 40

	asl A		; 0A
	inc $00B5.w		; EE B5 00
	and ($40.b,X)		; 21 40
	asl $FE.b,X		; 16 FE
	sbc ($CC.b)		; F2 CC
	php		; 08
	brk $48.b		; 00 48
	sbc $089CF1.l,X		; FF F1 9C 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	ldy $0408.w		; AC 08 04
	pha		; 48
	ora $F5.b,S		; 03 F5
	cpx $00.b		; E4 00
	asl $40.b		; 06 40
	ora $F5.b,S		; 03 F5
	ldx $0700.w,Y		; BE 00 07
	rti		; 40

	phd		; 0B
	sbc $00BE.w		; ED BE 00
	php		; 08
	rti		; 40

	inc $02.b,X		; F6 02
	pei ($00.b)		; D4 00
	ora #$40.b		; 09 40
	xba		; EB
	ora $00BC.w		; 0D BC 00
	asl A		; 0A
	rti		; 40

	sbc [$01.b],Y		; F7 01
	ldy $00.b		; A4 00
	phd		; 0B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	ldy $0C00.w,X		; BC 00 0C
	rti		; 40

	sed		; F8
	brk $DC.b		; 00 DC
	brk $0D.b		; 00 0D
	rti		; 40

	ora #$EF.b		; 09 EF
	lda ($00.b),Y		; B1 00
	asl $F140.w		; 0E 40 F1
	ora [$D9.b]		; 07 D9
	brk $0F.b		; 00 0F
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b,X)		; E1 00
	asl $40.b,X		; 16 40
	ora ($F7.b,X)		; 01 F7
	jmp.w [$1700]		; DC 00 17
	rti		; 40

	xce		; FB
	sbc $00BC.w,X		; FD BC 00
	clc		; 18
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ldy $1900.w		; AC 00 19
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ldy $00.b,X		; B4 00
	inc A		; 1A
	rti		; 40

	sbc ($06.b)		; F2 06
	cpy $00.b		; C4 00
	tas		; 1B
	rti		; 40

	plx		; FA
	inc $00C4.w,X		; FE C4 00
	trb $0240.w		; 1C 40 02
	inc $C4.b,X		; F6 C4
	brk $1D.b		; 00 1D
	rti		; 40

	asl A		; 0A
	inc $00C6.w		; EE C6 00
	asl $1A40.w,X		; 1E 40 1A
	pea $A9FC.w		; F4 FC A9
	php		; 08
	brk $48.b		; 00 48
	tsb $EC.b		; 04 EC
	lda #$08.b		; A9 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	lda $0408.w,Y		; B9 08 04
	pha		; 48
	trb $E4.b		; 14 E4
	lda ($00.b),Y		; B1 00
	asl $40.b		; 06 40
	trb $ACDC.w		; 1C DC AC
	brk $07.b		; 00 07
	rti		; 40

	trb $E4.b		; 14 E4
	lda #$00.b		; A9 00
	php		; 08
	rti		; 40

	asl $F2.b		; 06 F2
	lda $0900.w,Y		; B9 00 09
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b,X)		; C1 00
	asl A		; 0A
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b,X)		; A1 00
	phd		; 0B
	rti		; 40

	php		; 08
	beq -95.b		; F0 A1
	brk $0C.b		; 00 0C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sta $0D00.w,Y		; 99 00 0D
	rti		; 40

	ora #$EF.b		; 09 EF
	txs		; 9A
	brk $0E.b		; 00 0E
	rti		; 40

	beq   0.b		; F0 00
	cmp $1608.w,Y		; D9 08 16
	pha		; 48
	sbc $C9F7.w,Y		; F9 F7 C9
	php		; 08
	clc		; 18
	pha		; 48
	inc $12.b		; E6 12
	sbc $1A00.w,Y		; F9 00 1A
	rti		; 40

	inc $F90A.w		; EE 0A F9
	brk $1B.b		; 00 1B
	rti		; 40

	ora $00E9E9.l		; 0F E9 E9 00
	trb $F040.w		; 1C 40 F0
	php		; 08
	sbc ($00.b),Y		; F1 00
	ora $1040.w,X		; 1D 40 10
	inx		; E8
	sbc ($00.b),Y		; F1 00
	asl $0B40.w,X		; 1E 40 0B
	sbc $00D9.w		; ED D9 00
	ora $EC0C40.l,X		; 1F 40 0C EC
	sbc ($00.b,X)		; E1 00
	jsr $0940.w		; 20 40 09
	sbc $2100C9.l		; EF C9 00 21
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp ($00.b),Y		; D1 00
	jsl $06F240.l		; 22 40 F2 06
	sbc #$00.b		; E9 00
	and $40.b,S		; 23 40
	ora ($E6.b)		; 12 E6
	sbc $2400.w,Y		; F9 00 24
	rti		; 40

	inc A		; 1A
	dec $00F9.w,X		; DE F9 00
	and $40.b		; 25 40
	tas		; 1B
	inc $FA.b,X		; F6 FA
	lda $0008.w,Y		; B9 08 00
	pha		; 48
	sbc ($FE.b)		; F2 FE
	lda #$08.b		; A9 08
	cop $48.b		; 02 48
	cop $EE.b		; 02 EE
	lda #$08.b		; A9 08
	tsb $48.b		; 04 48
	asl $B9EA.w		; 0E EA B9
	brk $06.b		; 00 06
	rti		; 40

	inc $A1FA.w,X		; FE FA A1
	brk $07.b		; 00 07
	rti		; 40

	asl $F2.b		; 06 F2
	lda $0800.w,Y		; B9 00 08
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b,X)		; C1 00
	ora #$40.b		; 09 40
	sbc $0099F9.l,X		; FF F9 99 00
	asl A		; 0A
	rti		; 40

	ora [$F1.b]		; 07 F1
	sta $0B00.w,Y		; 99 00 0B
	rti		; 40

	asl $F2.b		; 06 F2
	lda ($00.b,X)		; A1 00
	tsb $0E40.w		; 0C 40 0E
	nop		; EA
	lda ($00.b,X)		; A1 00
	ora $1240.w		; 0D 40 12
	inc $A9.b		; E6 A9
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($E6.b)		; 12 E6
	lda ($00.b),Y		; B1 00
	ora $00F040.l		; 0F 40 F0 00
	cmp $1608.w,Y		; D9 08 16
	pha		; 48
	sbc $C9F7.w,Y		; F9 F7 C9
	php		; 08
	clc		; 18
	pha		; 48
	inc $12.b		; E6 12
	sbc $1A00.w,Y		; F9 00 1A
	rti		; 40

	inc $F90A.w		; EE 0A F9
	brk $1B.b		; 00 1B
	rti		; 40

	ora $00E9E9.l		; 0F E9 E9 00
	trb $F040.w		; 1C 40 F0
	php		; 08
	sbc ($00.b),Y		; F1 00
	ora $1040.w,X		; 1D 40 10
	inx		; E8
	sbc ($00.b),Y		; F1 00
	asl $0B40.w,X		; 1E 40 0B
	sbc $00D9.w		; ED D9 00
	ora $EC0C40.l,X		; 1F 40 0C EC
	sbc ($00.b,X)		; E1 00
	jsr $0940.w		; 20 40 09
	sbc $2100C9.l		; EF C9 00 21
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp ($00.b),Y		; D1 00
	jsl $06F240.l		; 22 40 F2 06
	sbc #$00.b		; E9 00
	and $40.b,S		; 23 40
	ora ($E6.b)		; 12 E6
	sbc $2400.w,Y		; F9 00 24
	rti		; 40

	inc A		; 1A
	dec $00F9.w,X		; DE F9 00
	and $40.b		; 25 40
	ora $FDF3.w,Y		; 19 F3 FD
	lda #$08.b		; A9 08
	brk $48.b		; 00 48
	ora $ED.b,S		; 03 ED
	lda #$08.b		; A9 08
	cop $48.b		; 02 48
	sbc $FB.b,X		; F5 FB
	lda $0408.w,Y		; B9 08 04
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	sta $0608.w,Y		; 99 08 06
	pha		; 48
	ora ($E5.b,S),Y		; 13 E5
	lda #$00.b		; A9 00
	php		; 08
	rti		; 40

	tas		; 1B
	cmp $00A9.w,X		; DD A9 00
	ora #$40.b		; 09 40
	and $D5.b,S		; 23 D5
	lda #$00.b		; A9 00
	asl A		; 0A
	rti		; 40

	ora $F3.b		; 05 F3
	lda $0B00.w,Y		; B9 00 0B
	rti		; 40

	ora $F3.b		; 05 F3
	cmp ($00.b,X)		; C1 00
	tsb $F940.w		; 0C 40 F9
	sbc $0D00A1.l,X		; FF A1 00 0D
	rti		; 40

	pld		; 2B
	cmp $00A9.w		; CD A9 00
	asl $F040.w		; 0E 40 F0
	brk $D9.b		; 00 D9
	php		; 08
	clc		; 18
	pha		; 48
	sbc $C9F7.w,Y		; F9 F7 C9
	php		; 08
	inc A		; 1A
	pha		; 48
	inc $12.b		; E6 12
	sbc $1C00.w,Y		; F9 00 1C
	rti		; 40

	inc $F90A.w		; EE 0A F9
	brk $1D.b		; 00 1D
	rti		; 40

	ora $00E9E9.l		; 0F E9 E9 00
	asl $F040.w,X		; 1E 40 F0
	php		; 08
	sbc ($00.b),Y		; F1 00
	ora $E81040.l,X		; 1F 40 10 E8
	sbc ($00.b),Y		; F1 00
	jsr $0B40.w		; 20 40 0B
	sbc $00D9.w		; ED D9 00
	and ($40.b,X)		; 21 40
	tsb $E1EC.w		; 0C EC E1
	brk $22.b		; 00 22
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp #$00.b		; C9 00
	and $40.b,S		; 23 40
	ora #$EF.b		; 09 EF
	cmp ($00.b),Y		; D1 00
	bit $40.b		; 24 40
	sbc ($06.b)		; F2 06
	sbc #$00.b		; E9 00
	and $40.b		; 25 40
	ora ($E6.b)		; 12 E6
	sbc $2600.w,Y		; F9 00 26
	rti		; 40

	inc A		; 1A
	dec $00F9.w,X		; DE F9 00
	and [$40.b]		; 27 40
	trb $F3.b		; 14 F3
	sbc $08C1.w,X		; FD C1 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	sta $0208.w,Y		; 99 08 02
	pha		; 48
	sbc [$09.b]		; E7 09
	lda ($08.b),Y		; B1 08
	tsb $48.b		; 04 48
	sbc $08A9F1.l,X		; FF F1 A9 08
	asl $48.b		; 06 48
	inc $02.b,X		; F6 02
	sbc ($00.b),Y		; F1 00
	php		; 08
	rti		; 40

	inc $02.b,X		; F6 02
	sbc $0900.w,Y		; F9 00 09
	rti		; 40

	inc $F9FA.w,X		; FE FA F9
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b,X)		; C1 00
	phd		; 0B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cmp ($00.b),Y		; D1 00
	tsb $F740.w		; 0C 40 F7
	ora ($D9.b,X)		; 01 D9
	brk $0D.b		; 00 0D
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($00.b,X)		; E1 00
	asl $0640.w		; 0E 40 06
	sbc ($99.b)		; F2 99
	brk $0F.b		; 00 0F
	rti		; 40

	inc $02.b,X		; F6 02
	sbc #$00.b		; E9 00
	clc		; 18
	rti		; 40

	sbc $00A909.l		; EF 09 A9 00
	ora $F740.w,Y		; 19 40 F7
	ora ($A9.b,X)		; 01 A9
	brk $1A.b		; 00 1A
	rti		; 40

	sbc [$01.b],Y		; F7 01
	lda ($00.b),Y		; B1 00
	tas		; 1B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	lda $1C00.w,Y		; B9 00 1C
	rti		; 40

	sbc $00B9F9.l,X		; FF F9 B9 00
	ora $0740.w,X		; 1D 40 07
	sbc ($B9.b),Y		; F1 B9
	brk $1E.b		; 00 1E
	rti		; 40

	ora $00B6E9.l		; 0F E9 B6 00
	ora $FC1B40.l,X		; 1F 40 1B FC
	pea $08C9.w		; F4 C9 08
	brk $48.b		; 00 48
	tsb $C9E4.w		; 0C E4 C9
	php		; 08
	cop $48.b		; 02 48
	sbc [$F9.b],Y		; F7 F9
	lda $0408.w,Y		; B9 08 04
	pha		; 48
	plx		; FA
	inc $A9.b,X		; F6 A9
	php		; 08
	asl $48.b		; 06 48
	sbc $F90B.w		; ED 0B F9
	brk $08.b		; 00 08
	rti		; 40

	sbc $DFFB.w,X		; FD FB DF
	brk $09.b		; 00 09
	rti		; 40

	asl $F2.b		; 06 F2
	lda ($00.b,X)		; A1 00
	asl A		; 0A
	rti		; 40

	asl $A1EA.w		; 0E EA A1
	brk $0B.b		; 00 0B
	rti		; 40

	ora [$F1.b]		; 07 F1
	sta $0C00.w,Y		; 99 00 0C
	rti		; 40

	ora $00B9E9.l		; 0F E9 B9 00
	ora $FF40.w		; 0D 40 FF
	sbc $00D9.w,Y		; F9 D9 00
	asl $F740.w		; 0E 40 F7
	ora ($E9.b,X)		; 01 E9
	brk $0F.b		; 00 0F
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	sbc #$00.b		; E9 00
	clc		; 18
	rti		; 40

	trb $E4.b		; 14 E4
	cmp $1900.w,Y		; D9 00 19
	rti		; 40

	ora [$F1.b]		; 07 F1
	lda $1A00.w,Y		; B9 00 1A
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp ($00.b,X)		; C1 00
	tas		; 1B
	rti		; 40

	ora $009DE9.l		; 0F E9 9D 00
	trb $F940.w		; 1C 40 F9
	sbc $1D00E1.l,X		; FF E1 00 1D
	rti		; 40

	ora $F1DF.w,Y		; 19 DF F1
	brk $1E.b		; 00 1E
	rti		; 40

	sbc ($07.b),Y		; F1 07
	inc $00.b,X		; F6 00
	ora $DE1A40.l,X		; 1F 40 1A DE
	sbc $2000.w,Y		; F9 00 20
	rti		; 40

	jsl $00F9D6.l		; 22 D6 F9 00
	and ($40.b,X)		; 21 40
	trb $E4.b		; 14 E4
	sbc ($00.b,X)		; E1 00
	jsl $EE0A40.l		; 22 40 0A EE
	lda #$00.b		; A9 00
	and $40.b,S		; 23 40
	asl A		; 0A
	inc $00B1.w		; EE B1 00
	bit $40.b		; 24 40
	sbc ($06.b)		; F2 06
	lda $2500.w		; AD 00 25
	rti		; 40

	sbc ($06.b)		; F2 06
	inc $2600.w		; EE 00 26
	rti		; 40

	ora $DE12.w,X		; 1D 12 DE
	cmp #$08.b		; C9 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	cmp #$08.b		; C9 08
	cop $48.b		; 02 48
	ora ($DE.b)		; 12 DE
	lda ($08.b,X)		; A1 08
	tsb $48.b		; 04 48
	cop $EE.b		; 02 EE
	lda #$08.b		; A9 08
	asl $48.b		; 06 48
	cop $EE.b		; 02 EE
	lda $0808.w,Y		; B9 08 08
	pha		; 48
	sbc $00F609.l		; EF 09 F6 00
	asl A		; 0A
	rti		; 40

	sbc $E3FF.w,Y		; F9 FF E3
	brk $0B.b		; 00 0B
	rti		; 40

	ora ($E6.b)		; 12 E6
	sta $0C00.w,Y		; 99 00 0C
	rti		; 40

	inc A		; 1A
	dec $00D9.w,X		; DE D9 00
	ora $1A40.w		; 0D 40 1A
	dec $00E1.w,X		; DE E1 00
	asl $1A40.w		; 0E 40 1A
	dec $00E9.w,X		; DE E9 00
	ora $DE1A40.l		; 0F 40 1A DE
	sbc ($00.b),Y		; F1 00
	inc A		; 1A
	rti		; 40

	inc A		; 1A
	dec $00F9.w,X		; DE F9 00
	tas		; 1B
	rti		; 40

	jsl $00F9D6.l		; 22 D6 F9 00
	trb $0340.w		; 1C 40 03
	sbc $D9.b,X		; F5 D9
	brk $1D.b		; 00 1D
	rti		; 40

	cpx $FB0C.w		; EC 0C FB
	brk $1E.b		; 00 1E
	rti		; 40

	inc $E1FA.w,X		; FE FA E1
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $00DBF9.l,X		; FF F9 DB 00
	jsr $F740.w		; 20 40 F7
	ora ($EB.b,X)		; 01 EB
	brk $21.b		; 00 21
	rti		; 40

	asl A		; 0A
	inc $00A1.w		; EE A1 00
	jsl $E61240.l		; 22 40 12 E6
	lda ($00.b),Y		; B1 00
	and $40.b,S		; 23 40
	inc A		; 1A
	dec $00B1.w,X		; DE B1 00
	bit $40.b		; 24 40
	ora ($E6.b)		; 12 E6
	lda $2500.w,Y		; B9 00 25
	rti		; 40

	ora ($E6.b)		; 12 E6
	cmp ($00.b,X)		; C1 00
	rol $40.b		; 26 40
	and ($C6.b)		; 32 C6
	tax		; AA
	brk $27.b		; 00 27
	rti		; 40

	dec A		; 3A
	ldx $00AA.w,Y		; BE AA 00
	plp		; 28
	rti		; 40

	rol A		; 2A
	dec $00AB.w		; CE AB 00
	and #$40.b		; 29 40
	jsl $00ACD6.l		; 22 D6 AC 00
	rol A		; 2A
	rti		; 40

	sbc ($06.b)		; F2 06
	beq   0.b		; F0 00
	pld		; 2B
	rti		; 40

	ora ($F3.b),Y		; 11 F3
	sbc $08D1.w,X		; FD D1 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	sbc ($FD.b,S),Y		; F3 FD
	lda ($08.b),Y		; B1 08
	tsb $48.b		; 04 48
	sbc $FB.b,X		; F5 FB
	lda ($08.b,X)		; A1 08
	asl $48.b		; 06 48
	sbc $08F101.l		; EF 01 F1 08
	php		; 08
	pha		; 48
	beq   0.b		; F0 00
	sbc ($08.b,X)		; E1 08
	asl A		; 0A
	pha		; 48
	xba		; EB
	ora $00B9.w		; 0D B9 00
	tsb $EB40.w		; 0C 40 EB
	ora $00C1.w		; 0D C1 00
	ora $ED40.w		; 0D 40 ED
	phd		; 0B
	lda #$00.b		; A9 00
	asl $0B40.w		; 0E 40 0B
	sbc $00B1.w		; ED B1 00
	ora $F30540.l		; 0F 40 05 F3
	lda ($00.b,X)		; A1 00
	trb $0540.w		; 1C 40 05
	sbc ($A9.b,S),Y		; F3 A9
	brk $1D.b		; 00 1D
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda ($00.b),Y		; B1 00
	asl $FF40.w,X		; 1E 40 FF
	sbc $00F6.w,Y		; F9 F6 00
	ora $00F840.l,X		; 1F 40 F8 00
	sta $2000.w,Y		; 99 00 20
	rti		; 40

	brk $F8.b		; 00 F8
	sta $2100.w,Y		; 99 00 21
	rti		; 40

	xba		; EB
	ora $00B1.w		; 0D B1 00
	jsl $F31640.l		; 22 40 16 F3
	sbc $08C9.w,X		; FD C9 08
	brk $48.b		; 00 48
	cpx $B104.w		; EC 04 B1
	php		; 08
	cop $48.b		; 02 48
	jsr ($B1F4.w,X)		; FC F4 B1
	php		; 08
	tsb $48.b		; 04 48
	sbc $FB.b,X		; F5 FB
	sta $0608.w,Y		; 99 08 06
	pha		; 48
	pea $E104.w		; F4 04 E1
	brk $08.b		; 00 08
	rti		; 40

	xba		; EB
	ora $00F9.w		; 0D F9 00
	ora #$40.b		; 09 40
	sbc ($05.b,S),Y		; F3 05
	sbc $0A00.w,Y		; F9 00 0A
	rti		; 40

	tsb $B6EC.w		; 0C EC B6
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $A90B.w		; ED 0B A9
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp $0D00.w,Y		; D9 00 0D
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc #$00.b		; E9 00
	asl $F540.w		; 0E 40 F5
	ora $A9.b,S		; 03 A9
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $A9FB.w,X		; FD FB A9
	brk $18.b		; 00 18
	rti		; 40

	ora $F3.b		; 05 F3
	cmp $1900.w		; CD 00 19
	rti		; 40

	ora $F3.b		; 05 F3
	cmp $00.b,X		; D5 00
	inc A		; 1A
	rti		; 40

	asl $F2.b		; 06 F2
	cmp $00.b		; C5 00
	tas		; 1B
	rti		; 40

	sbc $00C109.l		; EF 09 C1 00
	trb $F740.w		; 1C 40 F7
	ora ($C1.b,X)		; 01 C1
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $00C1F9.l,X		; FF F9 C1 00
	asl $0740.w,X		; 1E 40 07
	sbc ($BD.b),Y		; F1 BD
	brk $1F.b		; 00 1F
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b),Y		; F1 00
	jsr $0940.w		; 20 40 09
	sbc $2100AE.l		; EF AE 00 21
	rti		; 40

	trb $05EB.w		; 1C EB 05
	txy		; 9B
	php		; 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	tyx		; BB
	php		; 08
	cop $48.b		; 02 48
	inc $0A.b		; E6 0A
	plb		; AB
	php		; 08
	tsb $48.b		; 04 48
	sbc ($05.b,S),Y		; F3 05
	xce		; FB
	brk $06.b		; 00 06
	rti		; 40

	xba		; EB
	ora $00BB.w		; 0D BB 00
	ora [$40.b]		; 07 40
	xba		; EB
	ora $00C3.w		; 0D C3 00
	php		; 08
	rti		; 40

	xba		; EB
	ora $00CB.w		; 0D CB 00
	ora #$40.b		; 09 40
	sbc ($05.b,S),Y		; F3 05
	wai		; CB
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	ldy $0B00.w,X		; BC 00 0B
	rti		; 40

	ora $AEEB.w		; 0D EB AE
	brk $0C.b		; 00 0C
	rti		; 40

	ora $F3.b		; 05 F3
	lda $400D00.l		; AF 00 0D 40
	xba		; EB
	ora $00FB.w		; 0D FB 00
	asl $F640.w		; 0E 40 F6
	cop $AB.b		; 02 AB
	brk $0F.b		; 00 0F
	rti		; 40

	inc $02.b,X		; F6 02
	lda ($00.b,S),Y		; B3 00
	asl $40.b,X		; 16 40
	inc $B4FA.w,X		; FE FA B4
	brk $17.b		; 00 17
	rti		; 40

	asl $F2.b		; 06 F2
	ldy $00.b,X		; B4 00
	clc		; 18
	rti		; 40

	dec $AF1A.w,X		; DE 1A AF
	brk $19.b		; 00 19
	rti		; 40

	and [$D1.b]		; 27 D1
	stz $1A00.w,X		; 9E 00 1A
	rti		; 40

	ora $009FD9.l,X		; 1F D9 9F 00
	tas		; 1B
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	lda [$00.b]		; A7 00
	trb $0F40.w		; 1C 40 0F
	sbc #$A8.b		; E9 A8
	brk $1D.b		; 00 1D
	rti		; 40

	beq   8.b		; F0 08
	cmp ($00.b,S),Y		; D3 00
	asl $F140.w,X		; 1E 40 F1
	ora [$DB.b]		; 07 DB
	brk $1F.b		; 00 1F
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc $00.b,S		; E3 00
	jsr $F140.w		; 20 40 F1
	ora [$EB.b]		; 07 EB
	brk $21.b		; 00 21
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b,S),Y		; F3 00
	jsl $DE1A40.l		; 22 40 1A DE
	ldy $00.b		; A4 00
	and $40.b,S		; 23 40
	jsl $00A5D6.l		; 22 D6 A5 00
	bit $40.b		; 24 40
	jsr $F9F7.w		; 20 F7 F9
	tyx		; BB
	php		; 08
	brk $48.b		; 00 48
	plx		; FA
	inc $D3.b,X		; F6 D3
	php		; 08
	cop $48.b		; 02 48
	ora $F5.b,S		; 03 F5
	lda ($00.b,S),Y		; B3 00
	tsb $40.b		; 04 40
	phd		; 0B
	sbc $00B3.w		; ED B3 00
	ora $40.b		; 05 40
	sbc ($05.b,S),Y		; F3 05
	ldy $00.b,X		; B4 00
	asl $40.b		; 06 40
	tsb $EBEC.w		; 0C EC EB
	brk $07.b		; 00 07
	rti		; 40

	pea $E604.w		; F4 04 E6
	brk $08.b		; 00 08
	rti		; 40

	ora $F3EB.w		; 0D EB F3
	brk $09.b		; 00 09
	rti		; 40

	ora $FBEB.w		; 0D EB FB
	brk $0A.b		; 00 0A
	rti		; 40

	ora $E3.b,X		; 15 E3
	xce		; FB
	brk $0B.b		; 00 0B
	rti		; 40

	inc $F90A.w		; EE 0A F9
	brk $0C.b		; 00 0C
	rti		; 40

	inc $ABFA.w,X		; FE FA AB
	brk $0D.b		; 00 0D
	rti		; 40

	asl $F2.b		; 06 F2
	plb		; AB
	brk $0E.b		; 00 0E
	rti		; 40

	inc $02.b,X		; F6 02
	ldy $0F00.w		; AC 00 0F
	rti		; 40

	ora $00BBE9.l		; 0F E9 BB 00
	trb $40.b		; 14 40
	ora ($E5.b,S),Y		; 13 E5
	tsx		; BA
	brk $15.b		; 00 15
	rti		; 40

	ora [$F1.b]		; 07 F1
	tyx		; BB
	brk $16.b		; 00 16
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp $00.b,S		; C3 00
	ora [$40.b],Y		; 17 40
	sbc [$01.b],Y		; F7 01
	wai		; CB
	brk $18.b		; 00 18
	rti		; 40

	sbc $00CBF9.l,X		; FF F9 CB 00
	ora $0740.w,Y		; 19 40 07
	sbc ($CB.b),Y		; F1 CB
	brk $1A.b		; 00 1A
	rti		; 40

	sbc $00F409.l		; EF 09 F4 00
	tas		; 1B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda $00.b,S		; A3 00
	trb $0940.w		; 1C 40 09
	sbc $1D00A3.l		; EF A3 00 1D
	rti		; 40

	sbc $E3FF.w,Y		; F9 FF E3
	brk $1E.b		; 00 1E
	rti		; 40

	cop $F6.b		; 02 F6
	txy		; 9B
	brk $1F.b		; 00 1F
	rti		; 40

	asl A		; 0A
	inc $00E3.w		; EE E3 00
	jsr $FB40.w		; 20 40 FB
	sbc $00B3.w,X		; FD B3 00
	and ($40.b,X)		; 21 40
	asl A		; 0A
	inc $00D3.w		; EE D3 00
	jsl $EE0A40.l		; 22 40 0A EE
	stp		; DB
	brk $23.b		; 00 23
	rti		; 40

	asl A		; 0A
	inc $009C.w		; EE 9C 00
	bit $40.b		; 24 40
	sbc ($06.b)		; F2 06
	inc $2500.w		; EE 00 25
	rti		; 40

	ora ($15.b,S),Y		; 13 15
	stp		; DB
	sta $0008.w,Y		; 99 08 00
	pha		; 48
	asl $E1E2.w		; 0E E2 E1
	php		; 08
	cop $48.b		; 02 48
	asl $D1E2.w		; 0E E2 D1
	php		; 08
	tsb $48.b		; 04 48
	asl $EA.b		; 06 EA
	lda ($08.b),Y		; B1 08
	asl $48.b		; 06 48
	asl $DA.b,X		; 16 DA
	lda ($08.b),Y		; B1 08
	php		; 08
	pha		; 48
	asl $C1E2.w		; 0E E2 C1
	php		; 08
	asl A		; 0A
	pha		; 48
	asl $F1EA.w		; 0E EA F1
	brk $0C.b		; 00 0C
	rti		; 40

	asl $F9EA.w		; 0E EA F9
	brk $0D.b		; 00 0D
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc $0E00.w,Y		; F9 00 0E
	rti		; 40

	tsb $A9EC.w		; 0C EC A9
	brk $0F.b		; 00 0F
	rti		; 40

	trb $E4.b		; 14 E4
	lda #$00.b		; A9 00
	trb $1C40.w		; 1C 40 1C
	jmp.w [$00A9]		; DC A9 00
	ora $0D40.w,X		; 1D 40 0D
	xba		; EB
	lda ($00.b,X)		; A1 00
	asl $0440.w,X		; 1E 40 04
	pea $00A9.w		; F4 A9 00
	ora $D22640.l,X		; 1F 40 26 D2
	lda $2000.w,Y		; B9 00 20
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b,X)		; C1 00
	and ($40.b,X)		; 21 40
	asl $C1DA.w,X		; 1E DA C1
	brk $22.b		; 00 22
	rti		; 40

	rol $D2.b		; 26 D2
	cmp ($00.b,X)		; C1 00
	and $40.b,S		; 23 40
	asl $C9DA.w,X		; 1E DA C9
	brk $24.b		; 00 24
	rti		; 40

	trb $13.b		; 14 13
	cmp $08C9.w,X		; DD C9 08
	brk $48.b		; 00 48
	tsa		; 3B
	lda $A0.b,X		; B5 A0
	php		; 08
	cop $48.b		; 02 48
	asl $DA.b,X		; 16 DA
	sta $0408.w,Y		; 99 08 04
	pha		; 48
	asl $A9E2.w		; 0E E2 A9
	php		; 08
	asl $48.b		; 06 48
	asl $B9E2.w		; 0E E2 B9
	php		; 08
	php		; 08
	pha		; 48
	asl $B1D2.w,X		; 1E D2 B1
	php		; 08
	asl A		; 0A
	pha		; 48
	tas		; 1B
	cmp $00D9.w,X		; DD D9 00
	tsb $3340.w		; 0C 40 33
	cmp $A6.b		; C5 A6
	brk $0D.b		; 00 0D
	rti		; 40

	pld		; 2B
	cmp $00AE.w		; CD AE 00
	asl $3340.w		; 0E 40 33
	cmp $AE.b		; C5 AE
	brk $0F.b		; 00 0F
	rti		; 40

	pld		; 2B
	cmp $00B6.w		; CD B6 00
	trb $1340.w		; 1C 40 13
	sbc $E1.b		; E5 E1
	brk $1D.b		; 00 1D
	rti		; 40

	phd		; 0B
	sbc $00F9.w		; ED F9 00
	asl $1340.w,X		; 1E 40 13
	sbc $F9.b		; E5 F9
	brk $1F.b		; 00 1F
	rti		; 40

	phd		; 0B
	sbc $00E1.w		; ED E1 00
	jsr $1340.w		; 20 40 13
	sbc $D9.b		; E5 D9
	brk $21.b		; 00 21
	rti		; 40

	asl $A9DA.w,X		; 1E DA A9
	brk $22.b		; 00 22
	rti		; 40

	asl $C1DA.w,X		; 1E DA C1
	brk $23.b		; 00 23
	rti		; 40

	ora $00F1E9.l		; 0F E9 F1 00
	bit $40.b		; 24 40
	bpl -24.b		; 10 E8
	sbc #$00.b		; E9 00
	and $40.b		; 25 40
	ora $F2.b,X		; 15 F2
	inc $08DA.w,X		; FE DA 08
	brk $48.b		; 00 48
	asl A		; 0A
	inc $AA.b		; E6 AA
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $AA.b,X		; F6 AA
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FE.b)		; F2 FE
	tsx		; BA
	php		; 08
	asl $48.b		; 06 48
	plx		; FA
	inc $CA.b,X		; F6 CA
	php		; 08
	php		; 08
	pha		; 48
	sbc ($06.b)		; F2 06
	nop		; EA
	brk $0A.b		; 00 0A
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b)		; F2 00
	phd		; 0B
	rti		; 40

	tas		; 1B
	cmp $00C5.w,X		; DD C5 00
	tsb $FC40.w		; 0C 40 FC
	jsr ($00A2.w,X)		; FC A2 00
	ora $2540.w		; 0D 40 25
	cmp ($CE.b,S),Y		; D3 CE
	brk $0E.b		; 00 0E
	rti		; 40

	asl $E2.b,X		; 16 E2
	lda $400F00.l,X		; BF 00 0F 40
	ora $00CBD9.l,X		; 1F D9 CB 00
	inc A		; 1A
	rti		; 40

	sbc ($06.b)		; F2 06
	lda ($00.b)		; B2 00
	tas		; 1B
	rti		; 40

	cop $F6.b		; 02 F6
	tsx		; BA
	brk $1C.b		; 00 1C
	rti		; 40

	asl A		; 0A
	inc $00BA.w		; EE BA 00
	ora $1240.w,X		; 1D 40 12
	inc $BA.b		; E6 BA
	brk $1E.b		; 00 1E
	rti		; 40

	cop $F6.b		; 02 F6
	rep #$00		; C2 00
	ora $06F240.l,X		; 1F 40 F2 06
	cmp ($00.b)		; D2 00
	jsr $0240.w		; 20 40 02
	inc $DA.b,X		; F6 DA
	brk $21.b		; 00 21
	rti		; 40

	asl A		; 0A
	inc $00C5.w		; EE C5 00
	jsl $EE0A40.l		; 22 40 0A EE
	cmp $2300.w		; CD 00 23
	rti		; 40

	ora $EC.b,X		; 15 EC
	tsb $C9.b		; 04 C9
	php		; 08
	brk $48.b		; 00 48
	sbc $B903.w		; ED 03 B9
	php		; 08
	cop $48.b		; 02 48
	sbc $BDF3.w,X		; FD F3 BD
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FF.b),Y		; F1 FF
	cmp $0608.w,Y		; D9 08 06
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cmp $0808.w,Y		; D9 08 08
	pha		; 48
	plx		; FA
	inc $AD.b,X		; F6 AD
	php		; 08
	asl A		; 0A
	pha		; 48
	tsb $F4.b		; 04 F4
	cmp ($00.b),Y		; D1 00
	tsb $DD40.w		; 0C 40 DD
	tas		; 1B
	pea $0D00.w		; F4 00 0D
	rti		; 40

	ora $F3.b		; 05 F3
	lda $00.b,X		; B5 00
	asl $FC40.w		; 0E 40 FC
	jsr ($00C9.w,X)		; FC C9 00
	ora $13E540.l		; 0F 40 E5 13
	beq   0.b		; F0 00
	trb $0D40.w		; 1C 40 0D
	xba		; EB
	beq   0.b		; F0 00
	ora $0D40.w,X		; 1D 40 0D
	xba		; EB
	sed		; F8
	brk $1E.b		; 00 1E
	rti		; 40

	ora $E3.b,X		; 15 E3
	sed		; F8
	brk $1F.b		; 00 1F
	rti		; 40

	cpx #$18.b		; E0 18
	sbc $2000.w,Y		; F9 00 20
	rti		; 40

	ora #$EF.b		; 09 EF
	sbc #$00.b		; E9 00
	and ($40.b,X)		; 21 40
	jsr ($D1FC.w,X)		; FC FC D1
	brk $22.b		; 00 22
	rti		; 40

	sbc $E90B.w		; ED 0B E9
	brk $23.b		; 00 23
	rti		; 40

	sbc ($17.b,X)		; E1 17
	sbc ($00.b)		; F2 00
	bit $40.b		; 24 40
	sbc $03.b,X		; F5 03
	sbc #$00.b		; E9 00
	and $40.b		; 25 40
	nop		; EA
	asl $00EE.w		; 0E EE 00
	rol $40.b		; 26 40
	clc		; 18
	sbc $D5F7.w,Y		; F9 F7 D5
	php		; 08
	brk $48.b		; 00 48
	plx		; FA
	inc $A5.b,X		; F6 A5
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $B5.b,X		; F6 B5
	php		; 08
	tsb $48.b		; 04 48
	pea $E804.w		; F4 04 E8
	brk $06.b		; 00 06
	rti		; 40

	sbc $00F309.l		; EF 09 F3 00
	ora [$40.b]		; 07 40
	sbc [$01.b],Y		; F7 01
	sbc ($00.b,S),Y		; F3 00
	php		; 08
	rti		; 40

	sbc $009DF9.l,X		; FF F9 9D 00
	ora #$40.b		; 09 40
	ora [$F1.b]		; 07 F1
	sta $0A00.w,X		; 9D 00 0A
	rti		; 40

	beq   8.b		; F0 08
	xba		; EB
	brk $0B.b		; 00 0B
	rti		; 40

	sed		; F8
	brk $E5.b		; 00 E5
	brk $0C.b		; 00 0C
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp $0D00.w,Y		; D9 00 0D
	rti		; 40

	sbc ($06.b)		; F2 06
	lda #$00.b		; A9 00
	asl $F240.w		; 0E 40 F2
	asl $B1.b		; 06 B1
	brk $0F.b		; 00 0F
	rti		; 40

	sbc ($06.b)		; F2 06
	lda $1600.w,Y		; B9 00 16
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp ($00.b,X)		; C1 00
	ora [$40.b],Y		; 17 40
	nop		; EA
	asl $00AA.w		; 0E AA 00
	clc		; 18
	rti		; 40

	asl A		; 0A
	inc $00A5.w		; EE A5 00
	ora $1240.w,Y		; 19 40 12
	inc $BD.b		; E6 BD
	brk $1A.b		; 00 1A
	rti		; 40

	jsr ($CDFC.w,X)		; FC FC CD
	brk $1B.b		; 00 1B
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $1C00.w		; CD 00 1C
	rti		; 40

	asl A		; 0A
	inc $00BD.w		; EE BD 00
	ora $FA40.w,X		; 1D 40 FA
	inc $00C5.w,X		; FE C5 00
	asl $0240.w,X		; 1E 40 02
	inc $C5.b,X		; F6 C5
	brk $1F.b		; 00 1F
	rti		; 40

	asl A		; 0A
	inc $00C5.w		; EE C5 00
	jsr $2240.w		; 20 40 22
	pea $DCFC.w		; F4 FC DC
	php		; 08
	brk $48.b		; 00 48
	sbc $C4F7.w,Y		; F9 F7 C4
	php		; 08
	cop $48.b		; 02 48
	sbc $ACF7.w,Y		; F9 F7 AC
	php		; 08
	tsb $48.b		; 04 48
	sbc $AE0B.w		; ED 0B AE
	brk $06.b		; 00 06
	rti		; 40

	inc $D4FA.w,X		; FE FA D4
	brk $07.b		; 00 07
	rti		; 40

	sbc $00F309.l		; EF 09 F3 00
	php		; 08
	rti		; 40

	sbc $009CF9.l,X		; FF F9 9C 00
	ora #$40.b		; 09 40
	ora [$F1.b]		; 07 F1
	stz $0A00.w		; 9C 00 0A
	rti		; 40

	sed		; F8
	brk $A4.b		; 00 A4
	brk $0B.b		; 00 0B
	rti		; 40

	brk $F8.b		; 00 F8
	ldy $00.b		; A4 00
	tsb $0840.w		; 0C 40 08
	beq -92.b		; F0 A4
	brk $0D.b		; 00 0D
	rti		; 40

	bpl -24.b		; 10 E8
	ldx $00.b		; A6 00
	asl $2940.w		; 0E 40 29
	cmp $0F0099.l		; CF 99 00 0F
	rti		; 40

	and #$CF.b		; 29 CF
	lda ($00.b,X)		; A1 00
	asl $40.b,X		; 16 40
	and #$CF.b		; 29 CF
	lda #$00.b		; A9 00
	ora [$40.b],Y		; 17 40
	and ($D7.b,X)		; 21 D7
	ldx #$00.b		; A2 00
	clc		; 18
	rti		; 40

	and ($D7.b,X)		; 21 D7
	tax		; AA
	brk $19.b		; 00 19
	rti		; 40

	sbc ($07.b),Y		; F1 07
	lda ($00.b)		; B2 00
	inc A		; 1A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	tsx		; BA
	brk $1B.b		; 00 1B
	rti		; 40

	ora $ACDF.w,Y		; 19 DF AC
	brk $1C.b		; 00 1C
	rti		; 40

	ora $B4DF.w,Y		; 19 DF B4
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $03.b,X		; F5 03
	tax		; AA
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $13.b		; E5 13
	ldy $1F00.w,X		; BC 00 1F
	rti		; 40

	ora #$EF.b		; 09 EF
	ldy $2000.w		; AC 00 20
	rti		; 40

	ora #$EF.b		; 09 EF
	ldy $00.b,X		; B4 00
	and ($40.b,X)		; 21 40
	sbc $BCFF.w,Y		; F9 FF BC
	brk $22.b		; 00 22
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ldy $2300.w,X		; BC 00 23
	rti		; 40

	ora #$EF.b		; 09 EF
	ldy $2400.w,X		; BC 00 24
	rti		; 40

	ora #$EF.b		; 09 EF
	cpy $00.b		; C4 00
	and $40.b		; 25 40
	ora ($E7.b),Y		; 11 E7
	ldx $2600.w		; AE 00 26
	rti		; 40

	sbc #$0F.b		; E9 0F
	ldx $00.b,Y		; B6 00
	and [$40.b]		; 27 40
	ora ($E7.b),Y		; 11 E7
	ldx $00.b,Y		; B6 00
	plp		; 28
	rti		; 40

	sbc ($06.b)		; F2 06
	cpx $2900.w		; EC 00 29
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc [$00.b],Y		; F7 00
	rol A		; 2A
	rti		; 40

	ora $F3.b,X		; 15 F3
	sbc $08C5.w,X		; FD C5 08
	brk $48.b		; 00 48
	sbc $A503.w		; ED 03 A5
	php		; 08
	cop $48.b		; 02 48
	sbc $9FF3.w,X		; FD F3 9F
	php		; 08
	tsb $48.b		; 04 48
	sbc ($05.b,S),Y		; F3 05
	lda $00.b,X		; B5 00
	asl $40.b		; 06 40
	ora $F5.b,S		; 03 F5
	cmp $00.b		; C5 00
	ora [$40.b]		; 07 40
	ora $F5.b,S		; 03 F5
	cmp $0800.w		; CD 00 08
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda [$00.b],Y		; B7 00
	ora #$40.b		; 09 40
	tsb $F4.b		; 04 F4
	cmp $00.b,X		; D5 00
	asl A		; 0A
	rti		; 40

	xce		; FB
	sbc $00B5.w,X		; FD B5 00
	phd		; 0B
	rti		; 40

	ora $A7EB.w		; 0D EB A7
	brk $0C.b		; 00 0C
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp $0D00.w,X		; DD 00 0D
	rti		; 40

	sbc $AFFB.w,X		; FD FB AF
	brk $0E.b		; 00 0E
	rti		; 40

	ora $F3.b		; 05 F3
	lda $400F00.l		; AF 00 0F 40
	inc $FBFA.w,X		; FE FA FB
	brk $16.b		; 00 16
	rti		; 40

	asl $F2.b		; 06 F2
	xce		; FB
	brk $17.b		; 00 17
	rti		; 40

	sbc $00F3F9.l,X		; FF F9 F3 00
	clc		; 18
	rti		; 40

	brk $F8.b		; 00 F8
	xba		; EB
	brk $19.b		; 00 19
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc $00.b,S		; E3 00
	inc A		; 1A
	rti		; 40

	sbc ($06.b)		; F2 06
	lda $1B00.w,X		; BD 00 1B
	rti		; 40

	plx		; FA
	inc $00BD.w,X		; FE BD 00
	trb $0240.w		; 1C 40 02
	inc $BD.b,X		; F6 BD
	brk $1D.b		; 00 1D
	rti		; 40

	ora ($ED.b),Y		; 11 ED
	ora $C0.b,S		; 03 C0
	php		; 08
	brk $48.b		; 00 48
	sbc $C0F3.w,X		; FD F3 C0
	php		; 08
	cop $48.b		; 02 48
	beq   0.b		; F0 00
	ldy #$08.b		; A0 08
	tsb $48.b		; 04 48
	sbc ($FF.b),Y		; F1 FF
	bcs   8.b		; B0 08
	asl $48.b		; 06 48
	xce		; FB
	sbc $00F8.w,X		; FD F8 00
	php		; 08
	rti		; 40

	sbc $03.b,X		; F5 03
	bne   0.b		; D0 00
	ora #$40.b		; 09 40
	sbc $D0FB.w,X		; FD FB D0
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F3.b		; 05 F3
	bne   0.b		; D0 00
	phd		; 0B
	rti		; 40

	brk $F8.b		; 00 F8
	tay		; A8
	brk $0C.b		; 00 0C
	rti		; 40

	sed		; F8
	brk $D8.b		; 00 D8
	brk $0D.b		; 00 0D
	rti		; 40

	ora $CBEB.w		; 0D EB CB
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $E0FF.w,Y		; F9 FF E0
	brk $0F.b		; 00 0F
	rti		; 40

	xce		; FB
	sbc $00F0.w,X		; FD F0 00
	clc		; 18
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	bcs   0.b		; B0 00
	ora $0140.w,Y		; 19 40 01
	sbc [$B8.b],Y		; F7 B8
	brk $1A.b		; 00 1A
	rti		; 40

	plx		; FA
	inc $00E8.w,X		; FE E8 00
	tas		; 1B
	rti		; 40

	plx		; FA
	inc $0000.w,X		; FE 00 00
	trb $1940.w		; 1C 40 19
	tsb $EC.b		; 04 EC
	tyx		; BB
	php		; 08
	brk $48.b		; 00 48
	pea $BCFC.w		; F4 FC BC
	php		; 08
	cop $48.b		; 02 48
	sbc ($FE.b)		; F2 FE
	ldy $0408.w		; AC 08 04
	pha		; 48
	jsr ($CCFC.w,X)		; FC FC CC
	brk $06.b		; 00 06
	rti		; 40

	trb $E4.b		; 14 E4
	lda $400700.l,X		; BF 00 07 40
	sbc $03.b,X		; F5 03
	jsr ($0800.w,X)		; FC 00 08
	rti		; 40

	asl $B9DA.w,X		; 1E DA B9
	brk $09.b		; 00 09
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	tyx		; BB
	brk $0A.b		; 00 0A
	rti		; 40

	sbc $00A409.l		; EF 09 A4 00
	phd		; 0B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	ldy $00.b		; A4 00
	tsb $FF40.w		; 0C 40 FF
	sbc $00A4.w,Y		; F9 A4 00
	ora $0740.w		; 0D 40 07
	sbc ($A5.b),Y		; F1 A5
	brk $0E.b		; 00 0E
	rti		; 40

	sed		; F8
	brk $DC.b		; 00 DC
	brk $0F.b		; 00 0F
	rti		; 40

	sed		; F8
	brk $E4.b		; 00 E4
	brk $16.b		; 00 16
	rti		; 40

	sed		; F8
	brk $EC.b		; 00 EC
	brk $17.b		; 00 17
	rti		; 40

	sed		; F8
	brk $F4.b		; 00 F4
	brk $18.b		; 00 18
	rti		; 40

	sbc $D4FF.w,Y		; F9 FF D4
	brk $19.b		; 00 19
	rti		; 40

	sbc ($06.b)		; F2 06
	stz $1A00.w		; 9C 00 1A
	rti		; 40

	plx		; FA
	inc $009C.w,X		; FE 9C 00
	tas		; 1B
	rti		; 40

	nop		; EA
	asl $00B4.w		; 0E B4 00
	trb $F440.w		; 1C 40 F4
	tsb $CC.b		; 04 CC
	brk $1D.b		; 00 1D
	rti		; 40

	cop $F6.b		; 02 F6
	ldy $1E00.w		; AC 00 1E
	rti		; 40

	cop $F6.b		; 02 F6
	ldy $00.b,X		; B4 00
	ora $D62240.l,X		; 1F 40 22 D6
	lda $00.b,X		; B5 00
	jsr $2A40.w		; 20 40 2A
	dec $00B5.w		; CE B5 00
	and ($40.b,X)		; 21 40
	bpl  12.b		; 10 0C
	cpx $D9.b		; E4 D9
	php		; 08
	brk $48.b		; 00 48
	sbc $B103.w		; ED 03 B1
	php		; 08
	cop $48.b		; 02 48
	sbc $B1F3.w,X		; FD F3 B1
	php		; 08
	tsb $48.b		; 04 48
	sbc $A1F7.w,Y		; F9 F7 A1
	php		; 08
	asl $48.b		; 06 48
	sbc ($FF.b),Y		; F1 FF
	cmp ($08.b,X)		; C1 08
	php		; 08
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cmp ($08.b,X)		; C1 08
	asl A		; 0A
	pha		; 48
	ora $B1EB.w		; 0D EB B1
	brk $0C.b		; 00 0C
	rti		; 40

	ora $B9EB.w		; 0D EB B9
	brk $0D.b		; 00 0D
	rti		; 40

	sbc ($07.b),Y		; F1 07
	lda #$00.b		; A9 00
	asl $0940.w		; 0E 40 09
	sbc $0F00A1.l		; EF A1 00 0F
	rti		; 40

	ora #$EF.b		; 09 EF
	lda #$00.b		; A9 00
	trb $1140.w		; 1C 40 11
	sbc [$C1.b]		; E7 C1
	brk $1D.b		; 00 1D
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp #$00.b		; C9 00
	asl $0140.w,X		; 1E 40 01
	sbc [$D1.b],Y		; F7 D1
	brk $1F.b		; 00 1F
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp ($00.b),Y		; D1 00
	jsr $1140.w		; 20 40 11
	sbc [$D1.b]		; E7 D1
	brk $21.b		; 00 21
	rti		; 40

	tas		; 1B
	xce		; FB
	sbc $C9.b,X		; F5 C9
	php		; 08
	brk $48.b		; 00 48
	xce		; FB
	sbc $B9.b,X		; F5 B9
	php		; 08
	cop $48.b		; 02 48
	pea $A9FC.w		; F4 FC A9
	php		; 08
	tsb $48.b		; 04 48
	tsb $EC.b		; 04 EC
	lda #$08.b		; A9 08
	asl $48.b		; 06 48
	sbc ($05.b,S),Y		; F3 05
	cmp #$00.b		; C9 00
	php		; 08
	rti		; 40

	phd		; 0B
	sbc $00C5.w		; ED C5 00
	ora #$40.b		; 09 40
	phd		; 0B
	sbc $00CD.w		; ED CD 00
	asl A		; 0A
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cmp $0B00.w		; CD 00 0B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	lda $0C00.w,Y		; B9 00 0C
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp ($00.b,X)		; C1 00
	ora $EC40.w		; 0D 40 EC
	tsb $00AC.w		; 0C AC 00
	asl $EC40.w		; 0E 40 EC
	tsb $00B4.w		; 0C B4 00
	ora $F40440.l		; 0F 40 04 F4
	cmp $401800.l,X		; DF 00 18 40
	trb $D8DC.w		; 1C DC D8
	brk $19.b		; 00 19
	rti		; 40

	bit $D4.b		; 24 D4
	cpx #$00.b		; E0 00
	inc A		; 1A
	rti		; 40

	and $E9CB.w		; 2D CB E9
	brk $1B.b		; 00 1B
	rti		; 40

	cmp $BD1B.w,X		; DD 1B BD
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $13.b		; E5 13
	lda $1D00.w,X		; BD 00 1D
	rti		; 40

	sed		; F8
	brk $A1.b		; 00 A1
	brk $1E.b		; 00 1E
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b,X)		; A1 00
	ora $E81040.l,X		; 1F 40 10 E8
	cmp $00.b,X		; D5 00
	jsr $1840.w		; 20 40 18
	cpx #$D5.b		; E0 D5
	brk $21.b		; 00 21
	rti		; 40

	inx		; E8
	bpl -74.b		; 10 B6
	brk $22.b		; 00 22
	rti		; 40

	and #$CF.b		; 29 CF
	sbc $00.b,S		; E3 00
	and $40.b,S		; 23 40
	and ($D7.b,X)		; 21 D7
	jmp.w [$2400]		; DC 00 24
	rti		; 40

	asl A		; 0A
	inc $00A1.w		; EE A1 00
	and $40.b		; 25 40
	cop $F6.b		; 02 F6
	cmp $2600.w,Y		; D9 00 26
	rti		; 40

	bpl   3.b		; 10 03
	sbc $08F1.w		; ED F1 08
	brk $48.b		; 00 48
	sbc $E1F7.w,Y		; F9 F7 E1
	php		; 08
	cop $48.b		; 02 48
	ora #$E7.b		; 09 E7
	sbc ($08.b,X)		; E1 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $C9.b,X		; F6 C9
	php		; 08
	asl $48.b		; 06 48
	asl A		; 0A
	inc $C2.b		; E6 C2
	php		; 08
	php		; 08
	pha		; 48
	xce		; FB
	sbc $00F6.w,X		; FD F6 00
	asl A		; 0A
	rti		; 40

	ora $E1DF.w,Y		; 19 DF E1
	brk $0B.b		; 00 0B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc $0C00.w,Y		; F9 00 0C
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b),Y		; F1 00
	ora $F240.w		; 0D 40 F2
	asl $C9.b		; 06 C9
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	sbc ($00.b),Y		; F1 00
	ora $EE0A40.l		; 0F 40 0A EE
	cmp ($00.b),Y		; D1 00
	inc A		; 1A
	rti		; 40

	plx		; FA
	inc $00D9.w,X		; FE D9 00
	tas		; 1B
	rti		; 40

	cop $F6.b		; 02 F6
	cmp $1C00.w,Y		; D9 00 1C
	rti		; 40

	asl A		; 0A
	inc $00D9.w		; EE D9 00
	ora $1340.w,X		; 1D 40 13
	sbc $F9.b		; E5 F9
	brk $1E.b		; 00 1E
	rti		; 40

	ora [$0C.b],Y		; 17 0C
	cpx $C1.b		; E4 C1
	php		; 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	cmp ($08.b),Y		; D1 08
	cop $48.b		; 02 48
	asl $EA.b		; 06 EA
	cmp ($08.b),Y		; D1 08
	tsb $48.b		; 04 48
	cop $EE.b		; 02 EE
	sbc #$08.b		; E9 08
	asl $48.b		; 06 48
	asl $E2.b,X		; 16 E2
	cmp ($00.b),Y		; D1 00
	php		; 08
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc ($00.b,X)		; E1 00
	ora #$40.b		; 09 40
	sbc ($05.b,S),Y		; F3 05
	sbc $0A00.w,Y		; F9 00 0A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b),Y		; F1 00
	phd		; 0B
	rti		; 40

	inc $02.b,X		; F6 02
	sbc ($00.b,X)		; E1 00
	tsb $FE40.w		; 0C 40 FE
	plx		; FA
	sbc ($00.b,X)		; E1 00
	ora $0640.w		; 0D 40 06
	sbc ($E1.b)		; F2 E1
	brk $0E.b		; 00 0E
	rti		; 40

	asl $E1EA.w		; 0E EA E1
	brk $0F.b		; 00 0F
	rti		; 40

	asl $D2DA.w,X		; 1E DA D2
	brk $18.b		; 00 18
	rti		; 40

	rol $D2.b		; 26 D2
	cmp ($00.b)		; D2 00
	ora $2E40.w,Y		; 19 40 2E
	dex		; CA
	cmp ($00.b)		; D2 00
	inc A		; 1A
	rti		; 40

	plx		; FA
	inc $00E9.w,X		; FE E9 00
	tas		; 1B
	rti		; 40

	asl $F2.b		; 06 F2
	cmp #$00.b		; C9 00
	trb $1240.w		; 1C 40 12
	inc $E9.b		; E6 E9
	brk $1D.b		; 00 1D
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc ($00.b),Y		; F1 00
	asl $0240.w,X		; 1E 40 02
	inc $F9.b,X		; F6 F9
	brk $1F.b		; 00 1F
	rti		; 40

	asl A		; 0A
	inc $00F9.w		; EE F9 00
	jsr $1240.w		; 20 40 12
	inc $F9.b		; E6 F9
	brk $21.b		; 00 21
	rti		; 40

	plx		; FA
	inc $00F6.w,X		; FE F6 00
	jsl $FB1040.l		; 22 40 10 FB
	sbc $E0.b,X		; F5 E0
	php		; 08
	brk $48.b		; 00 48
	phd		; 0B
	sbc $E0.b		; E5 E0
	php		; 08
	cop $48.b		; 02 48
	sed		; F8
	sed		; F8
	beq   8.b		; F0 08
	tsb $48.b		; 04 48
	brk $F0.b		; 00 F0
	iny		; C8
	php		; 08
	asl $48.b		; 06 48
	jsr ($D8FC.w,X)		; FC FC D8
	brk $08.b		; 00 08
	rti		; 40

	tsb $F4.b		; 04 F4
	cld		; D8
	brk $09.b		; 00 09
	rti		; 40

	tsb $D8EC.w		; 0C EC D8
	brk $0A.b		; 00 0A
	rti		; 40

	php		; 08
	beq -16.b		; F0 F0
	brk $0B.b		; 00 0B
	rti		; 40

	bpl -24.b		; 10 E8
	beq   0.b		; F0 00
	tsb $1840.w		; 0C 40 18
	cpx #$F0.b		; E0 F0
	brk $0D.b		; 00 0D
	rti		; 40

	clc		; 18
	cpx #$F8.b		; E0 F8
	brk $0E.b		; 00 0E
	rti		; 40

	jsr $F8D8.w		; 20 D8 F8
	brk $0F.b		; 00 0F
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,S),Y		; F3 00
	clc		; 18
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	xce		; FB
	brk $19.b		; 00 19
	rti		; 40

	bpl -24.b		; 10 E8
	iny		; C8
	brk $1A.b		; 00 1A
	rti		; 40

	bpl -24.b		; 10 E8
	bne   0.b		; D0 00
	tas		; 1B
	rti		; 40

	ora $F2FE.w,Y		; 19 FE F2
	sbc $08.b,S		; E3 08
	brk $48.b		; 00 48
	asl $EBE2.w		; 0E E2 EB
	php		; 08
	cop $48.b		; 02 48
	tsb $DBEC.w		; 0C EC DB
	brk $04.b		; 00 04
	rti		; 40

	and $F7CB.w		; 2D CB F7
	brk $05.b		; 00 05
	rti		; 40

	inc $02.b,X		; F6 02
	sbc ($00.b,X)		; E1 00
	asl $40.b		; 06 40
	inc $02.b,X		; F6 02
	sbc #$00.b		; E9 00
	ora [$40.b]		; 07 40
	inc $02.b,X		; F6 02
	sbc ($00.b),Y		; F1 00
	php		; 08
	rti		; 40

	inc $02.b,X		; F6 02
	sbc $0900.w,Y		; F9 00 09
	rti		; 40

	asl $F2.b		; 06 F2
	wai		; CB
	brk $0A.b		; 00 0A
	rti		; 40

	asl $CBEA.w		; 0E EA CB
	brk $0B.b		; 00 0B
	rti		; 40

	jsr ($DBFC.w,X)		; FC FC DB
	brk $0C.b		; 00 0C
	rti		; 40

	tsb $F4.b		; 04 F4
	stp		; DB
	brk $0D.b		; 00 0D
	rti		; 40

	asl $E3EA.w		; 0E EA E3
	brk $0E.b		; 00 0E
	rti		; 40

	inc $F3FA.w,X		; FE FA F3
	brk $0F.b		; 00 0F
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b,S),Y		; F3 00
	trb $40.b		; 14 40
	asl $F2.b		; 06 F2
	xce		; FB
	brk $15.b		; 00 15
	rti		; 40

	asl $FBEA.w		; 0E EA FB
	brk $16.b		; 00 16
	rti		; 40

	asl $F4DA.w,X		; 1E DA F4
	brk $17.b		; 00 17
	rti		; 40

	rol $D2.b		; 26 D2
	sbc $00.b,X		; F5 00
	clc		; 18
	rti		; 40

	sec		; 38
	cpy #$FB.b		; C0 FB
	brk $19.b		; 00 19
	rti		; 40

	rti		; 40

	clv		; B8
	sbc $1A00.w,X		; FD 00 1A
	rti		; 40

	and ($C7.b),Y		; 31 C7
	sbc $1B00.w,Y		; F9 00 1B
	rti		; 40

	ora ($E6.b)		; 12 E6
	cmp ($00.b),Y		; D1 00
	trb $0240.w		; 1C 40 02
	inc $D3.b,X		; F6 D3
	brk $1D.b		; 00 1D
	rti		; 40

	asl A		; 0A
	inc $00D3.w		; EE D3 00
	asl $1B40.w,X		; 1E 40 1B
	sbc ($FD.b,S),Y		; F3 FD
	sta $0008.w,Y		; 99 08 00
	pha		; 48
	sbc $08A901.l		; EF 01 A9 08
	cop $48.b		; 02 48
	sbc $08B901.l		; EF 01 B9 08
	tsb $48.b		; 04 48
	pea $9104.w		; F4 04 91
	brk $06.b		; 00 06
	rti		; 40

	inc $02.b,X		; F6 02
	sta ($00.b,X)		; 81 00
	ora [$40.b]		; 07 40
	inc $02.b,X		; F6 02
	bit #$00.b		; 89 00
	php		; 08
	rti		; 40

	ora [$F1.b]		; 07 F1
	lda $0900.w,Y		; B9 00 09
	rti		; 40

	ora $F5.b,S		; 03 F5
	sta $0A00.w,Y		; 99 00 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda ($00.b,X)		; A1 00
	phd		; 0B
	rti		; 40

	sbc $00A9F9.l,X		; FF F9 A9 00
	tsb $FF40.w		; 0C 40 FF
	sbc $00B1.w,Y		; F9 B1 00
	ora $FF40.w		; 0D 40 FF
	sbc $00B9.w,Y		; F9 B9 00
	asl $FF40.w		; 0E 40 FF
	sbc $00C1.w,Y		; F9 C1 00
	ora $06F240.l		; 0F 40 F2 06
	cmp #$00.b		; C9 00
	asl $40.b,X		; 16 40
	plx		; FA
	inc $00C9.w,X		; FE C9 00
	ora [$40.b],Y		; 17 40
	cop $F6.b		; 02 F6
	cmp #$00.b		; C9 00
	clc		; 18
	rti		; 40

	cpx $E104.w		; EC 04 E1
	php		; 08
	ora $F148.w,Y		; 19 48 F1
	sbc $1B08D1.l,X		; FF D1 08 1B
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cmp ($08.b),Y		; D1 08
	ora $0D48.w,X		; 1D 48 0D
	xba		; EB
	sbc $1F00.w,Y		; F9 00 1F
	rti		; 40

	ora $E3.b,X		; 15 E3
	sbc $2000.w,Y		; F9 00 20
	rti		; 40

	php		; 08
	beq -31.b		; F0 E1
	brk $21.b		; 00 21
	rti		; 40

	cpx #$18.b		; E0 18
	sbc $2200.w,Y		; F9 00 22
	rti		; 40

	inx		; E8
	bpl  -7.b		; 10 F9
	brk $23.b		; 00 23
	rti		; 40

	sbc #$0F.b		; E9 0F
	sbc ($00.b),Y		; F1 00
	bit $40.b		; 24 40
	phd		; 0B
	sbc $00E9.w		; ED E9 00
	and $40.b		; 25 40
	ora $F1EB.w		; 0D EB F1
	brk $26.b		; 00 26
	rti		; 40

	ora [$FC.b],Y		; 17 FC
	pea $0899.w		; F4 99 08
	brk $48.b		; 00 48
	sbc $08A901.l		; EF 01 A9 08
	cop $48.b		; 02 48
	sbc $08B901.l		; EF 01 B9 08
	tsb $48.b		; 04 48
	sbc $08B1F1.l,X		; FF F1 B1 08
	asl $48.b		; 06 48
	ora $E3.b,X		; 15 E3
	lda #$00.b		; A9 00
	php		; 08
	rti		; 40

	ora $00B1E9.l		; 0F E9 B1 00
	ora #$40.b		; 09 40
	ora [$E1.b],Y		; 17 E1
	lda ($00.b),Y		; B1 00
	asl A		; 0A
	rti		; 40

	sbc $00A9F9.l,X		; FF F9 A9 00
	phd		; 0B
	rti		; 40

	sbc $00C1F9.l,X		; FF F9 C1 00
	tsb $F240.w		; 0C 40 F2
	asl $C9.b		; 06 C9
	brk $0D.b		; 00 0D
	rti		; 40

	plx		; FA
	inc $00C9.w,X		; FE C9 00
	asl $0240.w		; 0E 40 02
	inc $C9.b,X		; F6 C9
	brk $0F.b		; 00 0F
	rti		; 40

	cpx $E104.w		; EC 04 E1
	php		; 08
	clc		; 18
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	cmp ($08.b),Y		; D1 08
	inc A		; 1A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cmp ($08.b),Y		; D1 08
	trb $0D48.w		; 1C 48 0D
	xba		; EB
	sbc $1E00.w,Y		; F9 00 1E
	rti		; 40

	ora $E3.b,X		; 15 E3
	sbc $1F00.w,Y		; F9 00 1F
	rti		; 40

	php		; 08
	beq -31.b		; F0 E1
	brk $20.b		; 00 20
	rti		; 40

	cpx #$18.b		; E0 18
	sbc $2100.w,Y		; F9 00 21
	rti		; 40

	inx		; E8
	bpl  -7.b		; 10 F9
	brk $22.b		; 00 22
	rti		; 40

	sbc #$0F.b		; E9 0F
	sbc ($00.b),Y		; F1 00
	and $40.b,S		; 23 40
	phd		; 0B
	sbc $00E9.w		; ED E9 00
	bit $40.b		; 24 40
	ora $F1EB.w		; 0D EB F1
	brk $25.b		; 00 25
	rti		; 40

	asl $FF.b,X		; 16 FF
	sbc ($99.b),Y		; F1 99
	php		; 08
	brk $48.b		; 00 48
	sbc $08A9F1.l,X		; FF F1 A9 08
	cop $48.b		; 02 48
	sbc $08A901.l		; EF 01 A9 08
	tsb $48.b		; 04 48
	sbc $08B901.l		; EF 01 B9 08
	asl $48.b		; 06 48
	ora $00A9E9.l		; 0F E9 A9 00
	php		; 08
	rti		; 40

	sbc [$01.b],Y		; F7 01
	lda ($00.b,X)		; A1 00
	ora #$40.b		; 09 40
	sbc $00B9F9.l,X		; FF F9 B9 00
	asl A		; 0A
	rti		; 40

	sbc $00C1F9.l,X		; FF F9 C1 00
	phd		; 0B
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp #$00.b		; C9 00
	tsb $FA40.w		; 0C 40 FA
	inc $00C9.w,X		; FE C9 00
	ora $0240.w		; 0D 40 02
	inc $C9.b,X		; F6 C9
	brk $0E.b		; 00 0E
	rti		; 40

	cpx $E104.w		; EC 04 E1
	php		; 08
	clc		; 18
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	cmp ($08.b),Y		; D1 08
	inc A		; 1A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cmp ($08.b),Y		; D1 08
	trb $0D48.w		; 1C 48 0D
	xba		; EB
	sbc $1E00.w,Y		; F9 00 1E
	rti		; 40

	ora $E3.b,X		; 15 E3
	sbc $1F00.w,Y		; F9 00 1F
	rti		; 40

	php		; 08
	beq -31.b		; F0 E1
	brk $20.b		; 00 20
	rti		; 40

	cpx #$18.b		; E0 18
	sbc $2100.w,Y		; F9 00 21
	rti		; 40

	inx		; E8
	bpl  -7.b		; 10 F9
	brk $22.b		; 00 22
	rti		; 40

	sbc #$0F.b		; E9 0F
	sbc ($00.b),Y		; F1 00
	and $40.b,S		; 23 40
	phd		; 0B
	sbc $00E9.w		; ED E9 00
	bit $40.b		; 24 40
	ora $F1EB.w		; 0D EB F1
	brk $25.b		; 00 25
	rti		; 40

	ora ($FB.b,S),Y		; 13 FB
	sbc $C1.b,X		; F5 C1
	php		; 08
	brk $48.b		; 00 48
	inc $0A.b		; E6 0A
	cmp ($08.b),Y		; D1 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	cmp ($08.b),Y		; D1 08
	tsb $48.b		; 04 48
	sbc [$09.b]		; E7 09
	sbc ($08.b,X)		; E1 08
	asl $48.b		; 06 48
	sbc [$F9.b],Y		; F7 F9
	sbc ($08.b,X)		; E1 08
	php		; 08
	pha		; 48
	sbc $08F101.l		; EF 01 F1 08
	asl A		; 0A
	pha		; 48
	sbc ($05.b,S),Y		; F3 05
	cmp #$00.b		; C9 00
	tsb $EB40.w		; 0C 40 EB
	ora $00C9.w		; 0D C9 00
	ora $0640.w		; 0D 40 06
	sbc ($DF.b)		; F2 DF
	brk $0E.b		; 00 0E
	rti		; 40

	cmp $00F119.l,X		; DF 19 F1 00
	ora $19DF40.l		; 0F 40 DF 19
	sbc $1C00.w,Y		; F9 00 1C
	rti		; 40

	tsb $F2EC.w		; 0C EC F2
	brk $1D.b		; 00 1D
	rti		; 40

	asl $F9EA.w		; 0E EA F9
	brk $1E.b		; 00 1E
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc $1F00.w,Y		; F9 00 1F
	rti		; 40

	sbc $00F1F9.l,X		; FF F9 F1 00
	jsr $FF40.w		; 20 40 FF
	sbc $00F9.w,Y		; F9 F9 00
	and ($40.b,X)		; 21 40
	sbc [$11.b]		; E7 11
	sbc $00.b,X		; F5 00
	jsl $F10740.l		; 22 40 07 F1
	sbc [$00.b]		; E7 00
	and $40.b,S		; 23 40
	php		; 08
	beq -17.b		; F0 EF
	brk $24.b		; 00 24
	rti		; 40

	ora $F3.b,X		; 15 F3
	sbc $08E3.w,X		; FD E3 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	plb		; AB
	php		; 08
	cop $48.b		; 02 48
	sbc ($FD.b,S),Y		; F3 FD
	tyx		; BB
	php		; 08
	tsb $48.b		; 04 48
	brk $F0.b		; 00 F0
	wai		; CB
	php		; 08
	asl $48.b		; 06 48
	ora $F5.b,S		; 03 F5
	lda ($00.b,S),Y		; B3 00
	php		; 08
	rti		; 40

	ora $F5.b,S		; 03 F5
	tyx		; BB
	brk $09.b		; 00 09
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp $00.b,S		; C3 00
	asl A		; 0A
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	lda $0B00.w		; AD 00 0B
	rti		; 40

	phd		; 0B
	sbc $00B0.w		; ED B0 00
	tsb $FE40.w		; 0C 40 FE
	plx		; FA
	lda $00.b,S		; A3 00
	ora $0640.w		; 0D 40 06
	sbc ($A3.b)		; F2 A3
	brk $0E.b		; 00 0E
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($00.b,S),Y		; F3 00
	ora $01F740.l		; 0F 40 F7 01
	xce		; FB
	brk $18.b		; 00 18
	rti		; 40

	brk $F8.b		; 00 F8
	txy		; 9B
	brk $19.b		; 00 19
	rti		; 40

	ora $F5.b,S		; 03 F5
	plb		; AB
	brk $1A.b		; 00 1A
	rti		; 40

	sed		; F8
	brk $CB.b		; 00 CB
	brk $1B.b		; 00 1B
	rti		; 40

	sed		; F8
	brk $D3.b		; 00 D3
	brk $1C.b		; 00 1C
	rti		; 40

	sed		; F8
	brk $DB.b		; 00 DB
	brk $1D.b		; 00 1D
	rti		; 40

	brk $F8.b		; 00 F8
	stp		; DB
	brk $1E.b		; 00 1E
	rti		; 40

	php		; 08
	beq -100.b		; F0 9C
	brk $1F.b		; 00 1F
	rti		; 40

	clc		; 18
	cpx #$A8.b		; E0 A8
	brk $20.b		; 00 20
	rti		; 40

	asl $04.b,X		; 16 04
	cpx $08C9.w		; EC C9 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	lda #$08.b		; A9 08
	cop $48.b		; 02 48
	sed		; F8
	sed		; F8
	lda $0408.w,Y		; B9 08 04
	pha		; 48
	cop $EE.b		; 02 EE
	cmp $0608.w,Y		; D9 08 06
	pha		; 48
	jsr ($A1FC.w,X)		; FC FC A1
	brk $08.b		; 00 08
	rti		; 40

	jsr ($C9FC.w,X)		; FC FC C9
	brk $09.b		; 00 09
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$00.b		; E9 00
	asl A		; 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b),Y		; F1 00
	phd		; 0B
	rti		; 40

	trb $E4.b		; 14 E4
	wai		; CB
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($F5FC.w,X)		; FC FC F5
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $97EC.w		; 0C EC 97
	brk $0E.b		; 00 0E
	rti		; 40

	tsb $9FEC.w		; 0C EC 9F
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $03.b,X		; F5 03
	sta $1800.w,Y		; 99 00 18
	rti		; 40

	sbc $99FB.w,X		; FD FB 99
	brk $19.b		; 00 19
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc $1A00.w,Y		; F9 00 1A
	rti		; 40

	phd		; 0B
	sbc $00A7.w		; ED A7 00
	tas		; 1B
	rti		; 40

	php		; 08
	beq -87.b		; F0 A9
	brk $1C.b		; 00 1C
	rti		; 40

	php		; 08
	beq -79.b		; F0 B1
	brk $1D.b		; 00 1D
	rti		; 40

	php		; 08
	beq -71.b		; F0 B9
	brk $1E.b		; 00 1E
	rti		; 40

	php		; 08
	beq -63.b		; F0 C1
	brk $1F.b		; 00 1F
	rti		; 40

	bpl -24.b		; 10 E8
	cmp $00.b,S		; C3 00
	jsr $F440.w		; 20 40 F4
	tsb $A1.b		; 04 A1
	brk $21.b		; 00 21
	rti		; 40

	ora ($19.b,S),Y		; 13 19
	cmp [$B1.b],Y		; D7 B1
	php		; 08
	brk $48.b		; 00 48
	ora #$E7.b		; 09 E7
	lda #$08.b		; A9 08
	cop $48.b		; 02 48
	sbc #$07.b		; E9 07
	ldy $0408.w,X		; BC 08 04
	pha		; 48
	sbc $BCF7.w,Y		; F9 F7 BC
	php		; 08
	asl $48.b		; 06 48
	phx		; DA
	asl $C0.b,X		; 16 C0
	php		; 08
	php		; 08
	pha		; 48
	and ($C7.b),Y		; 31 C7
	lda $0A00.w,Y		; B9 00 0A
	rti		; 40

	and $B9BF.w,Y		; 39 BF B9
	brk $0B.b		; 00 0B
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp ($00.b,X)		; C1 00
	tsb $0440.w		; 0C 40 04
	pea $00AE.w		; F4 AE 00
	ora $D940.w		; 0D 40 D9
	ora $0E00B1.l,X		; 1F B1 00 0E
	rti		; 40

	ora #$EF.b		; 09 EF
	lda $0F00.w,Y		; B9 00 0F
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	lda $1A00.w,Y		; B9 00 1A
	rti		; 40

	sbc #$0F.b		; E9 0F
	ldy $00.b,X		; B4 00
	tas		; 1B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ldy $00.b,X		; B4 00
	trb $E140.w		; 1C 40 E1
	ora [$B1.b],Y		; 17 B1
	brk $1D.b		; 00 1D
	rti		; 40

	sbc ($07.b),Y		; F1 07
	lda $1E00.w,Y		; B9 00 1E
	rti		; 40

	and #$CF.b		; 29 CF
	lda [$00.b],Y		; B7 00
	ora $C73140.l,X		; 1F 40 31 C7
	lda [$00.b],Y		; B7 00
	jsr $F940.w		; 20 40 F9
	sbc $2100B9.l,X		; FF B9 00 21
	rti		; 40

	ora ($F5.b),Y		; 11 F5
	xce		; FB
	plb		; AB
	pha		; 48
	brk $08.b		; 00 08
	sbc $D3F3.w,X		; FD F3 D3
	pha		; 48
	cop $08.b		; 02 08
	sbc ($FE.b)		; F2 FE
	phb		; 8B
	pha		; 48
	tsb $08.b		; 04 08
	sbc ($FE.b)		; F2 FE
	txy		; 9B
	pha		; 48
	asl $08.b		; 06 08
	plx		; FA
	inc $C3.b,X		; F6 C3
	pha		; 48
	php		; 08
	php		; 08
	sbc $E3F7.w,Y		; F9 F7 E3
	pha		; 48
	asl A		; 0A
	php		; 08
	sbc $03.b,X		; F5 03
	cmp ($40.b,S),Y		; D3 40
	tsb $F500.w		; 0C 00 F5
	ora $DB.b,S		; 03 DB
	rti		; 40

	ora $0D00.w		; 0D 00 0D
	xba		; EB
	stp		; DB
	rti		; 40

	asl $FD00.w		; 0E 00 FD
	xce		; FB
	sbc ($40.b,S),Y		; F3 40
	ora $FBFD00.l		; 0F 00 FD FB
	tyx		; BB
	rti		; 40

	trb $F200.w		; 1C 00 F2
	asl $C3.b		; 06 C3
	rti		; 40

	ora $F200.w,X		; 1D 00 F2
	asl $CB.b		; 06 CB
	rti		; 40

	asl $F100.w,X		; 1E 00 F1
	ora [$E3.b]		; 07 E3
	rti		; 40

	ora $03F500.l,X		; 1F 00 F5 03
	tyx		; BB
	rti		; 40

	jsr $0F00.w		; 20 00 0F
	sbc #$E1.b		; E9 E1
	rti		; 40

	and ($00.b,X)		; 21 00
	sbc $40DE09.l		; EF 09 DE 40
	jsl $FA1D00.l		; 22 00 1D FA
	inc $BB.b,X		; F6 BB
	pha		; 48
	brk $08.b		; 00 08
	sbc $D3F7.w,Y		; F9 F7 D3
	pha		; 48
	cop $08.b		; 02 08
	sbc $03.b,X		; F5 03
	xba		; EB
	rti		; 40

	tsb $00.b		; 04 00
	pea $9B04.w		; F4 04 9B
	rti		; 40

	ora $00.b		; 05 00
	pea $A304.w		; F4 04 A3
	rti		; 40

	asl $00.b		; 06 00
	pea $AB04.w		; F4 04 AB
	rti		; 40

	ora [$00.b]		; 07 00
	sbc ($05.b,S),Y		; F3 05
	sta ($40.b,S),Y		; 93 40
	php		; 08
	brk $F2.b		; 00 F2
	asl $8B.b		; 06 8B
	rti		; 40

	ora #$00.b		; 09 00
	nop		; EA
	asl $408B.w		; 0E 8B 40
	asl A		; 0A
	brk $F5.b		; 00 F5
	ora $B3.b,S		; 03 B3
	rti		; 40

	phd		; 0B
	brk $F2.b		; 00 F2
	asl $BB.b		; 06 BB
	rti		; 40

	tsb $F200.w		; 0C 00 F2
	asl $C3.b		; 06 C3
	rti		; 40

	ora $0200.w		; 0D 00 02
	inc $CB.b,X		; F6 CB
	rti		; 40

	asl $FA00.w		; 0E 00 FA
	inc $40CB.w,X		; FE CB 40
	ora $06F200.l		; 0F 00 F2 06
	wai		; CB
	rti		; 40

	trb $00.b		; 14 00
	nop		; EA
	asl $40C6.w		; 0E C6 40
	ora $00.b,X		; 15 00
	ora #$EF.b		; 09 EF
	phb		; 8B
	brk $0A.b		; 00 0A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	phb		; 8B
	brk $09.b		; 00 09
	rti		; 40

	sbc $EBFB.w,X		; FD FB EB
	rti		; 40

	asl $00.b,X		; 16 00
	sbc ($07.b),Y		; F1 07
	cmp ($40.b,S),Y		; D3 40
	ora [$00.b],Y		; 17 00
	sbc ($07.b),Y		; F1 07
	stp		; DB
	rti		; 40

	clc		; 18
	brk $00.b		; 00 00
	sed		; F8
	sta ($00.b,S),Y		; 93 00
	php		; 08
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $40.b,S		; E3 40
	ora $F800.w,Y		; 19 00 F8
	brk $E3.b		; 00 E3
	rti		; 40

	inc A		; 1A
	brk $F0.b		; 00 F0
	php		; 08
	sbc $40.b,S		; E3 40
	tas		; 1B
	brk $FF.b		; 00 FF
	sbc $009B.w,Y		; F9 9B 00
	ora $40.b		; 05 40
	sbc $00A3F9.l,X		; FF F9 A3 00
	asl $40.b		; 06 40
	sbc $00ABF9.l,X		; FF F9 AB 00
	ora [$40.b]		; 07 40
	inc $B3FA.w,X		; FE FA B3
	brk $0B.b		; 00 0B
	rti		; 40

	ora $EAF5FB.l,X		; 1F FB F5 EA
	php		; 08
	brk $48.b		; 00 48
	xce		; FB
	sbc $D2.b,X		; F5 D2
	php		; 08
	cop $48.b		; 02 48
	sbc [$F9.b],Y		; F7 F9
	tsx		; BA
	php		; 08
	tsb $48.b		; 04 48
	ora $F5.b,S		; 03 F5
	lda ($00.b)		; B2 00
	asl $40.b		; 06 40
	phd		; 0B
	sbc $00D2.w		; ED D2 00
	ora [$40.b]		; 07 40
	phd		; 0B
	sbc $00DA.w		; ED DA 00
	php		; 08
	rti		; 40

	xce		; FB
	sbc $00E2.w,X		; FD E2 00
	ora #$40.b		; 09 40
	ora $F5.b,S		; 03 F5
	sep #$00		; E2 00
	asl A		; 0A
	rti		; 40

	phd		; 0B
	sbc $00E2.w		; ED E2 00
	phd		; 0B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp [$00.b],Y		; D7 00
	tsb $F340.w		; 0C 40 F3
	ora $DF.b		; 05 DF
	brk $0D.b		; 00 0D
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc [$00.b]		; E7 00
	asl $0440.w		; 0E 40 04
	pea $009A.w		; F4 9A 00
	ora $F40440.l		; 0F 40 04 F4
	ldx #$00.b		; A2 00
	asl $40.b,X		; 16 40
	tsb $F4.b		; 04 F4
	tax		; AA
	brk $17.b		; 00 17
	rti		; 40

	asl $F2.b		; 06 F2
	txa		; 8A
	brk $18.b		; 00 18
	rti		; 40

	asl $8AEA.w		; 0E EA 8A
	brk $19.b		; 00 19
	rti		; 40

	asl $F2.b		; 06 F2
	sta ($00.b)		; 92 00
	inc A		; 1A
	rti		; 40

	sbc $408A09.l		; EF 09 8A 40
	ora $F700.w,Y		; 19 00 F7
	ora ($8A.b,X)		; 01 8A
	rti		; 40

	clc		; 18
	brk $F7.b		; 00 F7
	ora ($92.b,X)		; 01 92
	rti		; 40

	inc A		; 1A
	brk $FB.b		; 00 FB
	sbc $00B2.w,X		; FD B2 00
	tas		; 1B
	rti		; 40

	ora [$F1.b]		; 07 F1
	tsx		; BA
	brk $1C.b		; 00 1C
	rti		; 40

	ora [$F1.b]		; 07 F1
	rep #$00		; C2 00
	ora $F740.w,X		; 1D 40 F7
	ora ($CA.b,X)		; 01 CA
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $00CAF9.l,X		; FF F9 CA 00
	ora $F10740.l,X		; 1F 40 07 F1
	dex		; CA
	brk $20.b		; 00 20
	rti		; 40

	ora $00C7E9.l		; 0F E9 C7 00
	and ($40.b,X)		; 21 40
	sbc $9AFF.w,Y		; F9 FF 9A
	rti		; 40

	ora $FFF900.l		; 0F 00 F9 FF
	ldx #$40.b		; A2 40
	asl $00.b,X		; 16 00
	sbc $AAFF.w,Y		; F9 FF AA
	rti		; 40

	ora [$00.b],Y		; 17 00
	clc		; 18
	sbc $FB.b,X		; F5 FB
	txs		; 9A
	pha		; 48
	brk $08.b		; 00 08
	sbc $CAF7.w,Y		; F9 F7 CA
	pha		; 48
	cop $08.b		; 02 08
	sbc [$F9.b],Y		; F7 F9
	tax		; AA
	pha		; 48
	tsb $08.b		; 04 08
	sbc [$09.b]		; E7 09
	tax		; AA
	pha		; 48
	asl $08.b		; 06 08
	sbc [$F9.b],Y		; F7 F9
	tsx		; BA
	pha		; 48
	php		; 08
	php		; 08
	cpx $EF0C.w		; EC 0C EF
	rti		; 40

	asl A		; 0A
	brk $03.b		; 00 03
	sbc $E1.b,X		; F5 E1
	rti		; 40

	phd		; 0B
	brk $F3.b		; 00 F3
	ora $DE.b		; 05 DE
	rti		; 40

	tsb $EB00.w		; 0C 00 EB
	ora $40F7.w		; 0D F7 40
	ora $0200.w		; 0D 00 02
	inc $D9.b,X		; F6 D9
	rti		; 40

	asl $F100.w		; 0E 00 F1
	ora [$E2.b]		; 07 E2
	rti		; 40

	ora $EB0D00.l		; 0F 00 0D EB
	sbc $1A40.w,Y		; F9 40 1A
	brk $F1.b		; 00 F1
	ora [$CA.b]		; 07 CA
	rti		; 40

	tas		; 1B
	brk $F1.b		; 00 F1
	ora [$D2.b]		; 07 D2
	rti		; 40

	trb $E800.w		; 1C 00 E8
	bpl  -5.b		; 10 FB
	rti		; 40

	ora $0500.w,X		; 1D 00 05
	sbc ($F9.b,S),Y		; F3 F9
	rti		; 40

	asl $0500.w,X		; 1E 00 05
	sbc ($F1.b,S),Y		; F3 F1
	rti		; 40

	ora $F40400.l,X		; 1F 00 04 F4
	sbc #$40.b		; E9 40
	jsr $EF00.w		; 20 00 EF
	ora #$BA.b		; 09 BA
	rti		; 40

	and ($00.b,X)		; 21 00
	sbc [$11.b]		; E7 11
	tsx		; BA
	rti		; 40

	jsl $09EF00.l		; 22 00 EF 09
	rep #$40		; C2 40
	and $00.b,S		; 23 00
	cmp $40B519.l,X		; DF 19 B5 40
	bit $00.b		; 24 00
	inc $02.b,X		; F6 02
	cmp $2540.w,Y		; D9 40 25
	brk $EE.b		; 00 EE
	asl A		; 0A
	sbc [$40.b]		; E7 40
	rol $00.b		; 26 00
	trb $08.b		; 14 08
	inx		; E8
	cmp $0048.w,Y		; D9 48 00
	php		; 08
	php		; 08
	inx		; E8
	sbc #$48.b		; E9 48
	cop $08.b		; 02 08
	sed		; F8
	sed		; F8
	phx		; DA
	pha		; 48
	tsb $08.b		; 04 08
	ora [$E9.b]		; 07 E9
	tax		; AA
	pha		; 48
	asl $08.b		; 06 08
	sbc [$F9.b],Y		; F7 F9
	lda ($48.b)		; B2 48
	php		; 08
	php		; 08
	ora [$E9.b]		; 07 E9
	tsx		; BA
	pha		; 48
	asl A		; 0A
	php		; 08
	sbc [$F9.b],Y		; F7 F9
	rep #$48		; C2 48
	tsb $ED08.w		; 0C 08 ED
	phd		; 0B
	pea $0E40.w		; F4 40 0E
	brk $10.b		; 00 10
	inx		; E8
	sbc $0F40.w,Y		; F9 40 0F
	brk $08.b		; 00 08
	beq  -7.b		; F0 F9
	rti		; 40

	asl $EB00.w,X		; 1E 00 EB
	ora $40FA.w		; 0D FA 40
	ora $FFF900.l,X		; 1F 00 F9 FF
	nop		; EA
	rti		; 40

	jsr $F100.w		; 20 00 F1
	ora [$EA.b]		; 07 EA
	rti		; 40

	and ($00.b,X)		; 21 00
	sbc ($07.b),Y		; F1 07
	sbc ($40.b)		; F2 40
	jsl $03F500.l		; 22 00 F5 03
	tax		; AA
	rti		; 40

	and $00.b,S		; 23 00
	ora [$F1.b]		; 07 F1
	dex		; CA
	rti		; 40

	bit $00.b		; 24 00
	ora [$F1.b]		; 07 F1
	cmp ($40.b)		; D2 40
	and $00.b		; 25 00
	sbc $40D2F9.l,X		; FF F9 D2 40
	rol $00.b		; 26 00
	sbc [$01.b],Y		; F7 01
	cmp ($40.b)		; D2 40
	and [$00.b]		; 27 00
	inc $AAFA.w,X		; FE FA AA
	rti		; 40

	plp		; 28
	brk $18.b		; 00 18
	ora ($DD.b,S),Y		; 13 DD
	lda ($48.b)		; B2 48
	brk $08.b		; 00 08
	ora ($DD.b,S),Y		; 13 DD
	rep #$48		; C2 48
	cop $08.b		; 02 08
	xce		; FB
	sbc $B4.b,X		; F5 B4
	pha		; 48
	tsb $08.b		; 04 08
	xce		; FB
	sbc $C4.b,X		; F5 C4
	pha		; 48
	asl $08.b		; 06 08
	jsr ($D4FC.w,X)		; FC FC D4
	rti		; 40

	php		; 08
	brk $0B.b		; 00 0B
	sbc $40B2.w		; ED B2 40
	ora #$00.b		; 09 00
	phd		; 0B
	sbc $40BA.w		; ED BA 40
	asl A		; 0A
	brk $0B.b		; 00 0B
	sbc $40C2.w		; ED C2 40
	phd		; 0B
	brk $0B.b		; 00 0B
	sbc $40CA.w		; ED CA 40
	tsb $EB00.w		; 0C 00 EB
	ora $40FA.w		; 0D FA 40
	ora $F500.w		; 0D 00 F5
	ora $E7.b,S		; 03 E7
	rti		; 40

	asl $2300.w		; 0E 00 23
	cmp $B7.b,X		; D5 B7
	rti		; 40

	ora $D52300.l		; 0F 00 23 D5
	lda $001840.l,X		; BF 40 18 00
	plx		; FA
	inc $40DC.w,X		; FE DC 40
	ora $F000.w,Y		; 19 00 F0
	php		; 08
	xba		; EB
	rti		; 40

	inc A		; 1A
	brk $07.b		; 00 07
	sbc ($D2.b),Y		; F1 D2
	rti		; 40

	tas		; 1B
	brk $07.b		; 00 07
	sbc ($F2.b),Y		; F1 F2
	rti		; 40

	trb $F700.w		; 1C 00 F7
	ora ($DF.b,X)		; 01 DF
	rti		; 40

	ora $0600.w,X		; 1D 00 06
	sbc ($DA.b)		; F2 DA
	rti		; 40

	asl $0600.w,X		; 1E 00 06
	sbc ($E2.b)		; F2 E2
	rti		; 40

	ora $F20600.l,X		; 1F 00 06 F2
	nop		; EA
	rti		; 40

	jsr $0E00.w		; 20 00 0E
	nop		; EA
	plx		; FA
	rti		; 40

	and ($00.b,X)		; 21 00
	asl $F2.b		; 06 F2
	plx		; FA
	rti		; 40

	jsl $0AEE00.l		; 22 00 EE 0A
	sbc ($40.b,S),Y		; F3 40
	and $00.b,S		; 23 00
	trb $CF21.w		; 1C 21 CF
	ldy $0048.w,X		; BC 48 00
	php		; 08
	ora ($DF.b),Y		; 11 DF
	ldy $48.b,X		; B4 48
	cop $08.b		; 02 08
	ora ($EF.b,X)		; 01 EF
	ldy $48.b,X		; B4 48
	tsb $08.b		; 04 08
	asl $DA.b,X		; 16 DA
	cpy $0648.w		; CC 48 06
	php		; 08
	asl $EA.b		; 06 EA
	cpy $0848.w		; CC 48 08
	php		; 08
	phd		; 0B
	sbc $40E1.w		; ED E1 40
	asl A		; 0A
	brk $F3.b		; 00 F3
	ora $DA.b		; 05 DA
	rti		; 40

	phd		; 0B
	brk $EB.b		; 00 EB
	ora $40E5.w		; 0D E5 40
	tsb $FB00.w		; 0C 00 FB
	sbc $40D8.w,X		; FD D8 40
	ora INIDSP.w		; 0D 00 21
	cmp [$DC.b],Y		; D7 DC
	rti		; 40

	asl $2500.w		; 0E 00 25
	cmp ($E2.b,S),Y		; D3 E2
	rti		; 40

	ora $EB0D00.l		; 0F 00 0D EB
	jmp.w [$1A40]		; DC 40 1A
	brk $0C.b		; 00 0C
	cpx $40F9.w		; EC F9 40
	tas		; 1B
	brk $19.b		; 00 19
	cmp $1C40C4.l,X		; DF C4 40 1C
	brk $11.b		; 00 11
	sbc [$C4.b]		; E7 C4
	rti		; 40

	ora $0900.w,X		; 1D 00 09
	sbc $1E40C4.l		; EF C4 40 1E
	brk $01.b		; 00 01
	sbc [$C4.b],Y		; F7 C4
	rti		; 40

	ora $EF0900.l,X		; 1F 00 09 EF
	sbc [$40.b]		; E7 40
	jsr $0800.w		; 20 00 08
	beq -17.b		; F0 EF
	rti		; 40

	and ($00.b,X)		; 21 00
	sbc [$11.b]		; E7 11
	sbc #$40.b		; E9 40
	jsl $F10700.l		; 22 00 07 F1
	sbc [$40.b],Y		; F7 40
	and $00.b,S		; 23 00
	inc $E10A.w		; EE 0A E1
	rti		; 40

	bit $00.b		; 24 00
	rol $D2.b		; 26 D2
	cpy $2540.w		; CC 40 25
	brk $E4.b		; 00 E4
	trb $ED.b		; 14 ED
	rti		; 40

	rol $00.b		; 26 00
	cpx $14.b		; E4 14
	sbc $40.b,X		; F5 40
	and [$00.b]		; 27 00
	inc $CCFA.w,X		; FE FA CC
	rti		; 40

	plp		; 28
	brk $FE.b		; 00 FE
	plx		; FA
	pei ($40.b)		; D4 40
	and #$00.b		; 29 00
	inc $02.b,X		; F6 02
	dec $2A40.w,X		; DE 40 2A
	brk $16.b		; 00 16
	ora $ED.b,S		; 03 ED
	cmp ($08.b),Y		; D1 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	lda #$08.b		; A9 08
	cop $48.b		; 02 48
	asl $EA.b		; 06 EA
	lda #$08.b		; A9 08
	tsb $48.b		; 04 48
	inc $FA.b,X		; F6 FA
	lda $0608.w,Y		; B9 08 06
	pha		; 48
	asl $EA.b		; 06 EA
	lda $0808.w,Y		; B9 08 08
	pha		; 48
	ora #$E7.b		; 09 E7
	stz $0A08.w		; 9C 08 0A
	pha		; 48
	and $D3.b		; 25 D3
	cmp $00.b,X		; D5 00
	tsb $0340.w		; 0C 40 03
	sbc $E1.b,X		; F5 E1
	brk $0D.b		; 00 0D
	rti		; 40

	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	asl $1B40.w		; 0E 40 1B
	cmp $00CD.w,X		; DD CD 00
	ora $FCFC40.l		; 0F 40 FC FC
	sbc #$00.b		; E9 00
	trb $FE40.w		; 1C 40 FE
	plx		; FA
	cmp #$00.b		; C9 00
	ora $0640.w,X		; 1D 40 06
	sbc ($C9.b)		; F2 C9
	brk $1E.b		; 00 1E
	rti		; 40

	asl $E2.b,X		; 16 E2
	tsx		; BA
	brk $1F.b		; 00 1F
	rti		; 40

	asl $E2.b,X		; 16 E2
	rep #$00		; C2 00
	jsr $F740.w		; 20 40 F7
	ora ($F5.b,X)		; 01 F5
	brk $21.b		; 00 21
	rti		; 40

	sbc $00F5F9.l,X		; FF F9 F5 00
	jsl $00F840.l		; 22 40 F8 00
	sbc $2300.w		; ED 00 23
	rti		; 40

	clc		; 18
	cpx #$C8.b		; E0 C8
	brk $24.b		; 00 24
	rti		; 40

	and ($D7.b,X)		; 21 D7
	stp		; DB
	brk $25.b		; 00 25
	rti		; 40

	ora $9CDF.w,Y		; 19 DF 9C
	brk $26.b		; 00 26
	rti		; 40

	ora $D3DB.w,X		; 1D DB D3
	brk $27.b		; 00 27
	rti		; 40

	ora $F3.b,X		; 15 F3
	sbc $08A9.w,X		; FD A9 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	lda $0208.w,Y		; B9 08 02
	pha		; 48
	ora $ED.b,S		; 03 ED
	tay		; A8
	php		; 08
	tsb $48.b		; 04 48
	ora ($DD.b,S),Y		; 13 DD
	cpy #$08.b		; C0 08
	asl $48.b		; 06 48
	ora $ED.b,S		; 03 ED
	cpy #$08.b		; C0 08
	php		; 08
	pha		; 48
	inc $0A.b		; E6 0A
	sta $0A08.w,X		; 9D 08 0A
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	cld		; D8
	php		; 08
	tsb $0748.w		; 0C 48 07
	sbc #$D8.b		; E9 D8
	php		; 08
	asl $EB48.w		; 0E 48 EB
	ora $00AD.w		; 0D AD 00
	jsr $0340.w		; 20 40 03
	sbc $D0.b,X		; F5 D0
	brk $21.b		; 00 21
	rti		; 40

	phd		; 0B
	sbc $00D0.w		; ED D0 00
	jsl $E51340.l		; 22 40 13 E5
	bne   0.b		; D0 00
	and $40.b,S		; 23 40
	tsb $E8EC.w		; 0C EC E8
	brk $24.b		; 00 24
	rti		; 40

	trb $E4.b		; 14 E4
	inx		; E8
	brk $25.b		; 00 25
	rti		; 40

	inc $02.b,X		; F6 02
	lda ($00.b,X)		; A1 00
	rol $40.b		; 26 40
	ora $F5.b,S		; 03 F5
	clv		; B8
	brk $27.b		; 00 27
	rti		; 40

	xce		; FB
	sbc $00C9.w,X		; FD C9 00
	plp		; 28
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	tax		; AA
	brk $29.b		; 00 29
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b,X)		; A1 00
	rol A		; 2A
	rti		; 40

	beq   8.b		; F0 08
	cpx #$00.b		; E0 00
	pld		; 2B
	rti		; 40

	beq   8.b		; F0 08
	inx		; E8
	brk $2C.b		; 00 2C
	rti		; 40

	tas		; 1B
	xba		; EB
	ora $B4.b		; 05 B4
	php		; 08
	brk $48.b		; 00 48
	xce		; FB
	sbc $B4.b,X		; F5 B4
	php		; 08
	cop $48.b		; 02 48
	stp		; DB
	ora $B0.b,X		; 15 B0
	php		; 08
	tsb $48.b		; 04 48
	ora ($DD.b,S),Y		; 13 DD
	clv		; B8
	php		; 08
	asl $48.b		; 06 48
	ora $D0D3.w,X		; 1D D3 D0
	php		; 08
	php		; 08
	pha		; 48
	stp		; DB
	ora $00A4.w,X		; 1D A4 00
	asl A		; 0A
	rti		; 40

	sbc $15.b,S		; E3 15
	ldy $00.b		; A4 00
	phd		; 0B
	rti		; 40

	phd		; 0B
	sbc $00B4.w		; ED B4 00
	tsb $0B40.w		; 0C 40 0B
	sbc $00BC.w		; ED BC 00
	ora $EB40.w		; 0D 40 EB
	ora $00C4.w		; 0D C4 00
	asl $F340.w		; 0E 40 F3
	ora $C4.b		; 05 C4
	brk $0F.b		; 00 0F
	rti		; 40

	xce		; FB
	sbc $00C4.w,X		; FD C4 00
	inc A		; 1A
	rti		; 40

	ora $F5.b,S		; 03 F5
	cpy $00.b		; C4 00
	tas		; 1B
	rti		; 40

	phd		; 0B
	sbc $00C4.w		; ED C4 00
	trb $2340.w		; 1C 40 23
	cmp $C8.b,X		; D5 C8
	brk $1D.b		; 00 1D
	rti		; 40

	xba		; EB
	ora $00A4.w		; 0D A4 00
	asl $EB40.w,X		; 1E 40 EB
	ora $00AC.w		; 0D AC 00
	ora $1DDB40.l,X		; 1F 40 DB 1D
	cpy #$00.b		; C0 00
	jsr $E340.w		; 20 40 E3
	ora $C0.b,X		; 15 C0
	brk $21.b		; 00 21
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	iny		; C8
	brk $22.b		; 00 22
	rti		; 40

	tas		; 1B
	cmp $00C8.w,X		; DD C8 00
	and $40.b,S		; 23 40
	and $C3.b,X		; 35 C3
	cpx #$00.b		; E0 00
	bit $40.b		; 24 40
	cmp ($25.b,S),Y		; D3 25
	ldy $00.b,X		; B4 00
	and $40.b		; 25 40
	and $D8CB.w		; 2D CB D8
	brk $26.b		; 00 26
	rti		; 40

	ora $E0DB.w,X		; 1D DB E0
	brk $27.b		; 00 27
	rti		; 40

	and $D3.b		; 25 D3
	cpx #$00.b		; E0 00
	plp		; 28
	rti		; 40

	and $E0CB.w		; 2D CB E0
	brk $29.b		; 00 29
	rti		; 40

	ora $FDF3.w,X		; 1D F3 FD
	lda ($08.b),Y		; B1 08
	brk $48.b		; 00 48
	tas		; 1B
	cmp $AB.b,X		; D5 AB
	php		; 08
	cop $48.b		; 02 48
	xba		; EB
	ora $DD.b		; 05 DD
	php		; 08
	tsb $48.b		; 04 48
	sbc $0D.b,S		; E3 0D
	cmp $08.b		; C5 08
	asl $48.b		; 06 48
	phd		; 0B
	sbc $A6.b		; E5 A6
	php		; 08
	php		; 08
	pha		; 48
	pea $A1FC.w		; F4 FC A1
	php		; 08
	asl A		; 0A
	pha		; 48
	inx		; E8
	php		; 08
	sta ($08.b,X)		; 81 08
	tsb $DB48.w		; 0C 48 DB
	ora $00D1.w,X		; 1D D1 00
	asl $EB40.w		; 0E 40 EB
	ora $0091.w		; 0D 91 00
	ora $05F340.l		; 0F 40 F3 05
	cmp ($00.b,X)		; C1 00
	asl $FB40.w,X		; 1E 40 FB
	sbc $00C1.w,X		; FD C1 00
	ora $25D340.l,X		; 1F 40 D3 25
	dex		; CA
	brk $20.b		; 00 20
	rti		; 40

	cmp ($25.b,S),Y		; D3 25
	cmp ($00.b)		; D2 00
	and ($40.b,X)		; 21 40
	xce		; FB
	sbc $00D3.w,X		; FD D3 00
	jsl $05F340.l		; 22 40 F3 05
	sta ($00.b),Y		; 91 00
	and $40.b,S		; 23 40
	sbc ($05.b,S),Y		; F3 05
	sta $2400.w,Y		; 99 00 24
	rti		; 40

	xce		; FB
	sbc $0099.w,X		; FD 99 00
	and $40.b		; 25 40
	sbc ($05.b,S),Y		; F3 05
	cmp $00.b		; C5 00
	rol $40.b		; 26 40
	sbc ($05.b,S),Y		; F3 05
	cmp $2700.w		; CD 00 27
	rti		; 40

	xba		; EB
	ora $00D5.w		; 0D D5 00
	plp		; 28
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp $00.b,X		; D5 00
	and #$40.b		; 29 40
	pld		; 2B
	cmp $00B1.w		; CD B1 00
	rol A		; 2A
	rti		; 40

	ora $F5.b,S		; 03 F5
	tay		; A8
	brk $2B.b		; 00 2B
	rti		; 40

	ora $F5.b,S		; 03 F5
	bcs   0.b		; B0 00
	bit $0340.w		; 2C 40 03
	sbc $B8.b,X		; F5 B8
	brk $2D.b		; 00 2D
	rti		; 40

	ora $F5.b,S		; 03 F5
	cpy #$00.b		; C0 00
	rol $0340.w		; 2E 40 03
	sbc $C8.b,X		; F5 C8
	brk $2F.b		; 00 2F
	rti		; 40

	stp		; DB
	ora $00C9.w,X		; 1D C9 00
	bmi  64.b		; 30 40
	xce		; FB
	sbc $00C9.w,X		; FD C9 00
	and ($40.b),Y		; 31 40
	ora ($0C.b,S),Y		; 13 0C
	cpx $B9.b		; E4 B9
	php		; 08
	brk $48.b		; 00 48
	jsr ($BAF4.w,X)		; FC F4 BA
	php		; 08
	cop $48.b		; 02 48
	cpx $B204.w		; EC 04 B2
	php		; 08
	tsb $48.b		; 04 48
	jmp.w [$B614]		; DC 14 B6
	php		; 08
	asl $48.b		; 06 48
	asl $EA.b		; 06 EA
	cmp #$08.b		; C9 08
	php		; 08
	pha		; 48
	asl $DA.b,X		; 16 DA
	cmp #$08.b		; C9 08
	asl A		; 0A
	pha		; 48
	asl $DA.b,X		; 16 DA
	cmp $0C08.w,Y		; D9 08 0C
	pha		; 48
	pea $C204.w		; F4 04 C2
	brk $0E.b		; 00 0E
	rti		; 40

	jmp.w [$A61C]		; DC 1C A6
	brk $0F.b		; 00 0F
	rti		; 40

	cpx $14.b		; E4 14
	ldx $00.b		; A6 00
	asl $E440.w,X		; 1E 40 E4
	trb $AE.b		; 14 AE
	brk $1F.b		; 00 1F
	rti		; 40

	cpx $AA0C.w		; EC 0C AA
	brk $20.b		; 00 20
	rti		; 40

	cpy $B82C.w		; CC 2C B8
	brk $21.b		; 00 21
	rti		; 40

	pei ($24.b)		; D4 24
	clv		; B8
	brk $22.b		; 00 22
	rti		; 40

	asl $B1EA.w		; 0E EA B1
	brk $23.b		; 00 23
	rti		; 40

	inc $D1FA.w,X		; FE FA D1
	brk $24.b		; 00 24
	rti		; 40

	trb $B9DC.w		; 1C DC B9
	brk $25.b		; 00 25
	rti		; 40

	trb $C1DC.w		; 1C DC C1
	brk $26.b		; 00 26
	rti		; 40

	cpx $C20C.w		; EC 0C C2
	brk $27.b		; 00 27
	rti		; 40

	clc		; 18
	phd		; 0B
	sbc $BA.b		; E5 BA
	php		; 08
	brk $48.b		; 00 48
	phd		; 0B
	sbc $AA.b		; E5 AA
	php		; 08
	cop $48.b		; 02 48
	xce		; FB
	sbc $AC.b,X		; F5 AC
	php		; 08
	tsb $48.b		; 04 48
	xce		; FB
	sbc $BC.b,X		; F5 BC
	php		; 08
	asl $48.b		; 06 48
	xce		; FB
	sbc $CC.b,X		; F5 CC
	php		; 08
	php		; 08
	pha		; 48
	xce		; FB
	sbc $DC.b,X		; F5 DC
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc ($05.b,S),Y		; F3 05
	cmp $0C00.w,Y		; D9 00 0C
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	ora $F340.w		; 0D 40 F3
	ora $B1.b		; 05 B1
	brk $0E.b		; 00 0E
	rti		; 40

	xba		; EB
	ora $00B9.w		; 0D B9 00
	ora $DD1B40.l		; 0F 40 1B DD
	tax		; AA
	brk $1C.b		; 00 1C
	rti		; 40

	tas		; 1B
	cmp $00B2.w,X		; DD B2 00
	ora $EB40.w,X		; 1D 40 EB
	ora $00DC.w		; 0D DC 00
	asl $E340.w,X		; 1E 40 E3
	ora $E4.b,X		; 15 E4
	brk $1F.b		; 00 1F
	rti		; 40

	xba		; EB
	ora $00E4.w		; 0D E4 00
	jsr $E340.w		; 20 40 E3
	ora $EC.b,X		; 15 EC
	brk $21.b		; 00 21
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	lda $2200.w,Y		; B9 00 22
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp ($00.b,X)		; C1 00
	and $40.b,S		; 23 40
	sbc ($05.b,S),Y		; F3 05
	cmp #$00.b		; C9 00
	bit $40.b		; 24 40
	sbc ($05.b,S),Y		; F3 05
	cmp ($00.b),Y		; D1 00
	and $40.b		; 25 40
	ora $CAEB.w		; 0D EB CA
	brk $26.b		; 00 26
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,S),Y		; F3 00
	and [$40.b]		; 27 40
	sbc $F4FB.w,X		; FD FB F4
	brk $28.b		; 00 28
	rti		; 40

	plx		; FA
	inc $00EC.w,X		; FE EC 00
	and #$40.b		; 29 40
	ora $FAF6.w		; 0D F6 FA
	sbc ($08.b)		; F2 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	sep #$08		; E2 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	cmp ($08.b)		; D2 08
	tsb $48.b		; 04 48
	inc $FA.b,X		; F6 FA
	rep #$08		; C2 08
	asl $48.b		; 06 48
	inc $AA02.w		; EE 02 AA
	php		; 08
	php		; 08
	pha		; 48
	plx		; FA
	inc $9A.b,X		; F6 9A
	php		; 08
	asl A		; 0A
	pha		; 48
	inc $B2FA.w,X		; FE FA B2
	brk $0C.b		; 00 0C
	rti		; 40

	inc $BA0A.w		; EE 0A BA
	brk $0D.b		; 00 0D
	rti		; 40

	inc $02.b,X		; F6 02
	tsx		; BA
	brk $0E.b		; 00 0E
	rti		; 40

	inc $BAFA.w,X		; FE FA BA
	brk $0F.b		; 00 0F
	rti		; 40

	inc $C20A.w		; EE 0A C2
	brk $1C.b		; 00 1C
	rti		; 40

	sbc ($06.b)		; F2 06
	ldx #$00.b		; A2 00
	ora $FE40.w,X		; 1D 40 FE
	plx		; FA
	tax		; AA
	brk $1E.b		; 00 1E
	rti		; 40

	asl $F4FC.w		; 0E FC F4
	sta $0008.w,Y		; 99 08 00
	pha		; 48
	tsb $EC.b		; 04 EC
	lda #$08.b		; A9 08
	cop $48.b		; 02 48
	pea $A9FC.w		; F4 FC A9
	php		; 08
	tsb $48.b		; 04 48
	pea $B9FC.w		; F4 FC B9
	php		; 08
	asl $48.b		; 06 48
	sed		; F8
	sed		; F8
	cmp #$08.b		; C9 08
	php		; 08
	pha		; 48
	sed		; F8
	sed		; F8
	cmp $0A08.w,Y		; D9 08 0A
	pha		; 48
	sed		; F8
	sed		; F8
	sbc #$08.b		; E9 08
	tsb $EC48.w		; 0C 48 EC
	tsb $00AC.w		; 0C AC 00
	asl $EC40.w		; 0E 40 EC
	tsb $00B4.w		; 0C B4 00
	ora $04F440.l		; 0F 40 F4 04
	lda ($00.b,X)		; A1 00
	asl $0440.w,X		; 1E 40 04
	pea $00B9.w		; F4 B9 00
	ora $F40440.l,X		; 1F 40 04 F4
	cmp ($00.b,X)		; C1 00
	jsr $F840.w		; 20 40 F8
	brk $F9.b		; 00 F9
	brk $21.b		; 00 21
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $2200.w,Y		; F9 00 22
	rti		; 40

	ora ($FC.b),Y		; 11 FC
	pea $0899.w		; F4 99 08
	brk $48.b		; 00 48
	pea $A9FC.w		; F4 FC A9
	php		; 08
	cop $48.b		; 02 48
	tsb $EC.b		; 04 EC
	lda #$08.b		; A9 08
	tsb $48.b		; 04 48
	inc $FA.b,X		; F6 FA
	lda $0608.w,Y		; B9 08 06
	pha		; 48
	plx		; FA
	inc $F1.b,X		; F6 F1
	php		; 08
	php		; 08
	pha		; 48
	plx		; FA
	inc $C9.b,X		; F6 C9
	php		; 08
	asl A		; 0A
	pha		; 48
	inc $91FA.w,X		; FE FA 91
	brk $0C.b		; 00 0C
	rti		; 40

	pea $A104.w		; F4 04 A1
	brk $0D.b		; 00 0D
	rti		; 40

	asl $F2.b		; 06 F2
	lda $0E00.w,Y		; B9 00 0E
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b,X)		; C1 00
	ora $F9FF40.l		; 0F 40 FF F9
	sbc ($00.b,X)		; E1 00
	trb $FF40.w		; 1C 40 FF
	sbc $00E9.w,Y		; F9 E9 00
	ora $0740.w,X		; 1D 40 07
	sbc ($E9.b),Y		; F1 E9
	brk $1E.b		; 00 1E
	rti		; 40

	tsb $A1EC.w		; 0C EC A1
	brk $1F.b		; 00 1F
	rti		; 40

	cpx $AF0C.w		; EC 0C AF
	brk $20.b		; 00 20
	rti		; 40

	plx		; FA
	inc $00D9.w,X		; FE D9 00
	and ($40.b,X)		; 21 40
	cop $F6.b		; 02 F6
	cmp $2200.w,Y		; D9 00 22
	rti		; 40

	ora ($FB.b)		; 12 FB
	sbc $EA.b,X		; F5 EA
	php		; 08
	brk $48.b		; 00 48
	inc $9AF2.w,X		; FE F2 9A
	php		; 08
	cop $48.b		; 02 48
	sed		; F8
	sed		; F8
	cmp ($08.b)		; D2 08
	tsb $48.b		; 04 48
	beq   0.b		; F0 00
	tax		; AA
	php		; 08
	asl $48.b		; 06 48
	brk $F0.b		; 00 F0
	tax		; AA
	php		; 08
	php		; 08
	pha		; 48
	brk $F0.b		; 00 F0
	tsx		; BA
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $00E2F9.l,X		; FF F9 E2 00
	tsb $0340.w		; 0C 40 03
	sbc $FA.b,X		; F5 FA
	brk $0D.b		; 00 0D
	rti		; 40

	trb $E4.b		; 14 E4
	ldy $0E00.w		; AC 00 0E
	rti		; 40

	inc $02.b,X		; F6 02
	ldx #$00.b		; A2 00
	ora $FDFB40.l		; 0F 40 FB FD
	plx		; FA
	brk $1C.b		; 00 1C
	rti		; 40

	sed		; F8
	brk $BA.b		; 00 BA
	brk $1D.b		; 00 1D
	rti		; 40

	sed		; F8
	brk $C2.b		; 00 C2
	brk $1E.b		; 00 1E
	rti		; 40

	sed		; F8
	brk $CA.b		; 00 CA
	brk $1F.b		; 00 1F
	rti		; 40

	brk $F8.b		; 00 F8
	dex		; CA
	brk $20.b		; 00 20
	rti		; 40

	clc		; 18
	cpx #$A7.b		; E0 A7
	brk $21.b		; 00 21
	rti		; 40

	bpl -24.b		; 10 E8
	lda $402200.l		; AF 00 22 40
	ora ($F7.b,X)		; 01 F7
	sta ($00.b)		; 92 00
	and $40.b,S		; 23 40
	ora ($F7.b,S),Y		; 13 F7
	sbc $08CA.w,Y		; F9 CA 08
	brk $48.b		; 00 48
	sbc $08DA01.l		; EF 01 DA 08
	cop $48.b		; 02 48
	sbc ($FE.b)		; F2 FE
	nop		; EA
	php		; 08
	tsb $48.b		; 04 48
	cop $EE.b		; 02 EE
	nop		; EA
	php		; 08
	asl $48.b		; 06 48
	inc $02.b,X		; F6 02
	plx		; FA
	brk $08.b		; 00 08
	rti		; 40

	inc $FAFA.w,X		; FE FA FA
	brk $09.b		; 00 09
	rti		; 40

	sbc $00DAF9.l,X		; FF F9 DA 00
	asl A		; 0A
	rti		; 40

	sbc $00E2F9.l,X		; FF F9 E2 00
	phd		; 0B
	rti		; 40

	sbc [$11.b]		; E7 11
	cmp $0C00.w,X		; DD 00 0C
	rti		; 40

	dec A		; 3A
	ldx $00F9.w,Y		; BE F9 00
	ora $EA40.w		; 0D 40 EA
	asl $00F2.w		; 0E F2 00
	asl $0740.w		; 0E 40 07
	sbc ($CA.b),Y		; F1 CA
	brk $0F.b		; 00 0F
	rti		; 40

	ora [$F1.b]		; 07 F1
	sep #$00		; E2 00
	clc		; 18
	rti		; 40

	ora ($E6.b)		; 12 E6
	nop		; EA
	brk $19.b		; 00 19
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc ($00.b)		; F2 00
	inc A		; 1A
	rti		; 40

	inc A		; 1A
	dec $00F3.w,X		; DE F3 00
	tas		; 1B
	rti		; 40

	jsl $00F4D6.l		; 22 D6 F4 00
	trb $2A40.w		; 1C 40 2A
	dec $00F6.w		; CE F6 00
	ora $3240.w,X		; 1D 40 32
	dec $F7.b		; C6 F7
	brk $1E.b		; 00 1E
	rti		; 40

	asl A		; 0A
	jsr ($C1F4.w,X)		; FC F4 C1
	php		; 08
	brk $48.b		; 00 48
	sbc ($FE.b)		; F2 FE
	cmp ($08.b),Y		; D1 08
	cop $48.b		; 02 48
	cop $EE.b		; 02 EE
	cmp ($08.b),Y		; D1 08
	tsb $48.b		; 04 48
	cop $EE.b		; 02 EE
	sbc ($08.b,X)		; E1 08
	asl $48.b		; 06 48
	cop $EE.b		; 02 EE
	sbc ($08.b),Y		; F1 08
	php		; 08
	pha		; 48
	sbc ($06.b)		; F2 06
	sbc ($00.b,X)		; E1 00
	asl A		; 0A
	rti		; 40

	plx		; FA
	inc $00E1.w,X		; FE E1 00
	phd		; 0B
	rti		; 40

	plx		; FA
	inc $00E9.w,X		; FE E9 00
	tsb $FA40.w		; 0C 40 FA
	inc $00F1.w,X		; FE F1 00
	ora $FA40.w		; 0D 40 FA
	inc $00F9.w,X		; FE F9 00
	asl $2040.w		; 0E 40 20
	xce		; FB
	sbc $99.b,X		; F5 99
	php		; 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	pea $A904.w		; F4 04 A9
	brk $04.b		; 00 04
	rti		; 40

	jsr ($A9FC.w,X)		; FC FC A9
	brk $05.b		; 00 05
	rti		; 40

	tsb $F4.b		; 04 F4
	lda #$00.b		; A9 00
	asl $40.b		; 06 40
	tsb $A9EC.w		; 0C EC A9
	brk $07.b		; 00 07
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b),Y		; D1 00
	php		; 08
	rti		; 40

	cpx $F90C.w		; EC 0C F9
	brk $09.b		; 00 09
	rti		; 40

	tsb $ECEC.w		; 0C EC EC
	brk $0A.b		; 00 0A
	rti		; 40

	pea $DE04.w		; F4 04 DE
	brk $0B.b		; 00 0B
	rti		; 40

	ora $F4EB.w		; 0D EB F4
	brk $0C.b		; 00 0C
	rti		; 40

	inc $B10A.w		; EE 0A B1
	brk $0D.b		; 00 0D
	rti		; 40

	inc $02.b,X		; F6 02
	lda ($00.b),Y		; B1 00
	asl $FE40.w		; 0E 40 FE
	plx		; FA
	lda ($00.b),Y		; B1 00
	ora $F20640.l		; 0F 40 06 F2
	lda ($00.b),Y		; B1 00
	trb $40.b		; 14 40
	asl $B1EA.w		; 0E EA B1
	rti		; 40

	ora $0600.w		; 0D 00 06
	sbc ($D9.b)		; F2 D9
	brk $15.b		; 00 15
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	inc $00.b		; E6 00
	asl $40.b,X		; 16 40
	asl $F2.b		; 06 F2
	cmp ($00.b,X)		; C1 00
	ora [$40.b],Y		; 17 40
	asl $F2.b		; 06 F2
	cmp #$00.b		; C9 00
	clc		; 18
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cmp $1540.w,Y		; D9 40 15
	brk $EF.b		; 00 EF
	ora #$F6.b		; 09 F6
	brk $19.b		; 00 19
	rti		; 40

	beq   8.b		; F0 08
	lda $1A00.w,Y		; B9 00 1A
	rti		; 40

	sed		; F8
	brk $B9.b		; 00 B9
	brk $1B.b		; 00 1B
	rti		; 40

	brk $F8.b		; 00 F8
	lda $1C00.w,Y		; B9 00 1C
	rti		; 40

	php		; 08
	beq -71.b		; F0 B9
	brk $1D.b		; 00 1D
	rti		; 40

	bpl -24.b		; 10 E8
	lda $1E00.w,Y		; B9 00 1E
	rti		; 40

	bpl -24.b		; 10 E8
	sbc $1F00.w,Y		; F9 00 1F
	rti		; 40

	php		; 08
	beq -34.b		; F0 DE
	brk $20.b		; 00 20
	rti		; 40

	beq   8.b		; F0 08
	inc INIDSP.w		; EE 00 21
	rti		; 40

	sbc $D1FF.w,Y		; F9 FF D1
	rti		; 40

	php		; 08
	brk $0A.b		; 00 0A
	inc $00E4.w		; EE E4 00
	jsl $EC1740.l		; 22 40 17 EC
	tsb $A9.b		; 04 A9
	php		; 08
	brk $48.b		; 00 48
	jsr ($A9F4.w,X)		; FC F4 A9
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $99.b,X		; F6 99
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FE.b)		; F2 FE
	lda $0608.w,Y		; B9 08 06
	pha		; 48
	cop $EE.b		; 02 EE
	lda $0808.w,Y		; B9 08 08
	pha		; 48
	ora $F5.b,S		; 03 F5
	cmp $0A00.w,Y		; D9 00 0A
	rti		; 40

	sbc $F90B.w		; ED 0B F9
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $03.b,X		; F5 03
	dec $0C00.w,X		; DE 00 0C
	rti		; 40

	ora $F3.b		; 05 F3
	inx		; E8
	brk $0D.b		; 00 0D
	rti		; 40

	asl $F2.b		; 06 F2
	beq   0.b		; F0 00
	asl $0640.w		; 0E 40 06
	sbc ($F8.b)		; F2 F8
	brk $0F.b		; 00 0F
	rti		; 40

	asl $F8EA.w		; 0E EA F8
	brk $1A.b		; 00 1A
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cmp $1B00.w,Y		; D9 00 1B
	rti		; 40

	sbc $00F409.l		; EF 09 F4 00
	trb $F940.w		; 1C 40 F9
	sbc $1D00D1.l,X		; FF D1 00 1D
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cpx $1E00.w		; EC 00 1E
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	ora $05F340.l,X		; 1F 40 F3 05
	cpx $00.b		; E4 00
	jsr $0340.w		; 20 40 03
	sbc $D1.b,X		; F5 D1
	brk $21.b		; 00 21
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp #$00.b		; C9 00
	jsl $FEFA40.l		; 22 40 FA FE
	cmp #$00.b		; C9 00
	and $40.b,S		; 23 40
	cop $F6.b		; 02 F6
	cmp #$00.b		; C9 00
	bit $40.b		; 24 40
	asl A		; 0A
	inc $00C9.w		; EE C9 00
	and $40.b		; 25 40
	tas		; 1B
	xba		; EB
	ora $91.b		; 05 91
	php		; 08
	brk $48.b		; 00 48
	xce		; FB
	sbc $91.b,X		; F5 91
	php		; 08
	cop $48.b		; 02 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp #$08.b		; C9 08
	tsb $48.b		; 04 48
	inc $A102.w		; EE 02 A1
	php		; 08
	asl $48.b		; 06 48
	sbc ($FF.b),Y		; F1 FF
	lda $0808.w,Y		; B9 08 08
	pha		; 48
	sbc ($05.b,S),Y		; F3 05
	cmp $0A00.w,Y		; D9 00 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp #$00.b		; C9 00
	phd		; 0B
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b),Y		; D1 00
	tsb $0440.w		; 0C 40 04
	pea $00EF.w		; F4 EF 00
	ora $0440.w		; 0D 40 04
	pea $00F7.w		; F4 F7 00
	asl $0C40.w		; 0E 40 0C
	cpx $00F7.w		; EC F7 00
	ora $03F540.l		; 0F 40 F5 03
	bit #$00.b		; 89 00
	inc A		; 1A
	rti		; 40

	asl $F2.b		; 06 F2
	lda ($00.b,X)		; A1 00
	tas		; 1B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	lda ($00.b),Y		; B1 00
	trb $FE40.w		; 1C 40 FE
	plx		; FA
	lda ($00.b,X)		; A1 00
	ora $FE40.w,X		; 1D 40 FE
	plx		; FA
	lda #$00.b		; A9 00
	asl $FF40.w,X		; 1E 40 FF
	sbc $00D9.w,Y		; F9 D9 00
	ora $09EF40.l,X		; 1F 40 EF 09
	sbc ($00.b),Y		; F1 00
	jsr $E740.w		; 20 40 E7
	ora ($F9.b),Y		; 11 F9
	brk $21.b		; 00 21
	rti		; 40

	sbc $00F909.l		; EF 09 F9 00
	jsl $F80040.l		; 22 40 00 F8
	sbc ($00.b,X)		; E1 00
	and $40.b,S		; 23 40
	sbc ($07.b),Y		; F1 07
	sbc #$00.b		; E9 00
	bit $40.b		; 24 40
	ora ($F7.b,X)		; 01 F7
	sbc #$00.b		; E9 00
	and $40.b		; 25 40
	xce		; FB
	sbc $00B1.w,X		; FD B1 00
	rol $40.b		; 26 40
	ora ($F7.b,X)		; 01 F7
	lda $2700.w,Y		; B9 00 27
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b,X)		; C1 00
	plp		; 28
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b,X)		; E1 00
	and #$40.b		; 29 40
	tas		; 1B
	jsr ($99F4.w,X)		; FC F4 99
	php		; 08
	brk $48.b		; 00 48
	cpx $9904.w		; EC 04 99
	php		; 08
	cop $48.b		; 02 48
	pea $A9FC.w		; F4 FC A9
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FF.b),Y		; F1 FF
	lda $0608.w,Y		; B9 08 06
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	cmp #$08.b		; C9 08
	php		; 08
	pha		; 48
	nop		; EA
	asl $89.b		; 06 89
	php		; 08
	asl A		; 0A
	pha		; 48
	plx		; FA
	inc $89.b,X		; F6 89
	php		; 08
	tsb $EC48.w		; 0C 48 EC
	tsb $00A9.w		; 0C A9 00
	asl $FF40.w		; 0E 40 FF
	sbc $00D9.w,Y		; F9 D9 00
	ora $F9FF40.l		; 0F 40 FF F9
	sbc ($00.b,X)		; E1 00
	asl $EF40.w,X		; 1E 40 EF
	ora #$F1.b		; 09 F1
	brk $1F.b		; 00 1F
	rti		; 40

	sbc [$11.b]		; E7 11
	sbc $2000.w,Y		; F9 00 20
	rti		; 40

	sbc $00F909.l		; EF 09 F9 00
	and ($40.b,X)		; 21 40
	sbc ($07.b),Y		; F1 07
	sbc #$00.b		; E9 00
	jsl $F70140.l		; 22 40 01 F7
	sbc #$00.b		; E9 00
	and $40.b,S		; 23 40
	ora $F5.b,S		; 03 F5
	sbc [$00.b],Y		; F7 00
	bit $40.b		; 24 40
	sbc ($05.b,S),Y		; F3 05
	cmp $2500.w,Y		; D9 00 25
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda $2600.w,Y		; B9 00 26
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b,X)		; C1 00
	and [$40.b]		; 27 40
	ora ($F7.b,X)		; 01 F7
	cmp #$00.b		; C9 00
	plp		; 28
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b),Y		; D1 00
	and #$40.b		; 29 40
.INDEX 8
	sep #$16		; E2 16
	bit #$00.b		; 89 00
	rol A		; 2A
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b,X)		; E1 00
	pld		; 2B
	rti		; 40

	phd		; 0B
	sbc $00F6.w		; ED F6 00
	bit $0340.w		; 2C 40 03
	sbc $EF.b,X		; F5 EF
	brk $2D.b		; 00 2D
	rti		; 40

	asl A		; 0A
	inc $0089.w		; EE 89 00
	rol $0A40.w		; 2E 40 0A
	inc $0091.w		; EE 91 00
	and $F31A40.l		; 2F 40 1A F3
	sbc $88F2.w,X		; FD F2 88
	brk $C8.b		; 00 C8
	sbc ($FD.b,S),Y		; F3 FD
	dex		; CA
	dey		; 88
	cop $C8.b		; 02 C8
	cpx $DA04.w		; EC 04 DA
	dey		; 88
	tsb $C8.b		; 04 C8
	jsr ($DAF4.w,X)		; FC F4 DA
	dey		; 88
	asl $C8.b		; 06 C8
	ora $F5.b,S		; 03 F5
	dex		; CA
	bra   8.b		; 80 08
	cpy #$F3.b		; C0 F3
	ora $C2.b		; 05 C2
	bra   9.b		; 80 09
	cpy #$FB.b		; C0 FB
	sbc $80C2.w,X		; FD C2 80
	asl A		; 0A
	cpy #$03.b		; C0 03
	sbc $C2.b,X		; F5 C2
	bra  11.b		; 80 0B
	cpy #$F3.b		; C0 F3
	ora $AD.b		; 05 AD
	bra  12.b		; 80 0C
	cpy #$03.b		; C0 03
	sbc $FA.b,X		; F5 FA
	bra  13.b		; 80 0D
	cpy #$03.b		; C0 03
	sbc $D2.b,X		; F5 D2
	bra  14.b		; 80 0E
	cpy #$0C.b		; C0 0C
	cpx $80E1.w		; EC E1 80
	ora $0CECC0.l		; 0F C0 EC 0C
	sta $1880.w,Y		; 99 80 18
	cpy #$F4.b		; C0 F4
	tsb $B5.b		; 04 B5
	bra  25.b		; 80 19
	cpy #$04.b		; C0 04
	pea $80AB.w		; F4 AB 80
	inc A		; 1A
	cpy #$06.b		; C0 06
	sbc ($A3.b)		; F2 A3
	bra  27.b		; 80 1B
	cpy #$F7.b		; C0 F7
	ora ($BA.b,X)		; 01 BA
	bra  28.b		; 80 1C
	cpy #$0F.b		; C0 0F
	sbc #$9A.b		; E9 9A
	bra  29.b		; 80 1D
	cpy #$EF.b		; C0 EF
	ora #$9D.b		; 09 9D
	bra  30.b		; 80 1E
	cpy #$07.b		; C0 07
	sbc ($9B.b),Y		; F1 9B
	bra  31.b		; 80 1F
	cpy #$F0.b		; C0 F0
	php		; 08
	nop		; EA
	bra  32.b		; 80 20
	cpy #$F8.b		; C0 F8
	brk $EA.b		; 00 EA
	bra  33.b		; 80 21
	cpy #$00.b		; C0 00
	sed		; F8
	nop		; EA
	bra  34.b		; 80 22
	cpy #$F0.b		; C0 F0
	php		; 08
	lda $80.b		; A5 80
	and $C0.b,S		; 23 C0
	cop $F6.b		; 02 F6
	tsx		; BA
	bra  36.b		; 80 24
	cpy #$02.b		; C0 02
	inc $B2.b,X		; F6 B2
	bra  37.b		; 80 25
	cpy #$19.b		; C0 19
	brk $F0.b		; 00 F0
	inc $88.b,X		; F6 88
	brk $C8.b		; 00 C8
	beq   0.b		; F0 00
	dec $0288.w,X		; DE 88 02
	iny		; C8
	brk $F0.b		; 00 F0
	dec $0488.w,X		; DE 88 04
	iny		; C8
	sed		; F8
	sed		; F8
	ldx $0688.w,Y		; BE 88 06
	iny		; C8
	sbc ($FE.b)		; F2 FE
	dec $0888.w		; CE 88 08
	iny		; C8
	sbc $03.b,X		; F5 03
	lda ($80.b)		; B2 80
	asl A		; 0A
	cpy #$16.b		; C0 16
.INDEX 8
	sep #$9D		; E2 9D
	bra  11.b		; 80 0B
	cpy #$0E.b		; C0 0E
	nop		; EA
	ldy $80.b		; A4 80
	tsb $F8C0.w		; 0C C0 F8
	brk $B6.b		; 00 B6
	bra  13.b		; 80 0D
	cpy #$08.b		; C0 08
	beq -74.b		; F0 B6
	bra  14.b		; 80 0E
	cpy #$F4.b		; C0 F4
	tsb $EE.b		; 04 EE
	bra  15.b		; 80 0F
	cpy #$FC.b		; C0 FC
	jsr ($80EE.w,X)		; FC EE 80
	inc A		; 1A
	cpy #$04.b		; C0 04
	pea $80EE.w		; F4 EE 80
	tas		; 1B
	cpy #$0C.b		; C0 0C
	cpx $80AA.w		; EC AA 80
	trb $08C0.w		; 1C C0 08
	beq -58.b		; F0 C6
	bra  29.b		; 80 1D
	cpy #$08.b		; C0 08
	beq -66.b		; F0 BE
	bra  30.b		; 80 1E
	cpy #$F0.b		; C0 F0
	php		; 08
	ldy $80.b		; A4 80
	ora $E810C0.l,X		; 1F C0 10 E8
	stz $2080.w		; 9C 80 20
	cpy #$10.b		; C0 10
	inx		; E8
	sbc [$80.b]		; E7 80
	and ($C0.b,X)		; 21 C0
	bpl -24.b		; 10 E8
	cmp $C02280.l,X		; DF 80 22 C0
	sbc $9E0B.w		; ED 0B 9E
	bra  35.b		; 80 23
	cpy #$02.b		; C0 02
	inc $D6.b,X		; F6 D6
	bra  36.b		; 80 24
	cpy #$02.b		; C0 02
	inc $CE.b,X		; F6 CE
	bra  37.b		; 80 25
	cpy #$0A.b		; C0 0A
	inc $80B2.w		; EE B2 80
	rol $C0.b		; 26 C0
	sbc ($06.b)		; F2 06
	tax		; AA
	bra  39.b		; 80 27
	cpy #$1A.b		; C0 1A
	sbc $F103.w		; ED 03 F1
	dey		; 88
	brk $C8.b		; 00 C8
	sbc $E103.w		; ED 03 E1
	dey		; 88
	cop $C8.b		; 02 C8
	sbc $F5F3.w,X		; FD F3 F5
	dey		; 88
	tsb $C8.b		; 04 C8
	sbc $88D101.l		; EF 01 D1 88
	asl $C8.b		; 06 C8
	sbc $13.b		; E5 13
	sbc ($80.b),Y		; F1 80
	php		; 08
	cpy #$E5.b		; C0 E5
	ora ($E9.b,S),Y		; 13 E9
	bra   9.b		; 80 09
	cpy #$E5.b		; C0 E5
	ora ($E1.b,S),Y		; 13 E1
	bra  10.b		; 80 0A
	cpy #$FD.b		; C0 FD
	xce		; FB
	sbc $0B80.w		; ED 80 0B
	cpy #$FD.b		; C0 FD
	xce		; FB
	sbc $80.b		; E5 80
	tsb $05C0.w		; 0C C0 05
	sbc ($E5.b,S),Y		; F3 E5
	bra  13.b		; 80 0D
	cpy #$0B.b		; C0 0B
	sbc $80AD.w		; ED AD 80
	asl $05C0.w		; 0E C0 05
	sbc ($BC.b,S),Y		; F3 BC
	bra  15.b		; 80 0F
	cpy #$EE.b		; C0 EE
	asl A		; 0A
	lda ($80.b),Y		; B1 80
	clc		; 18
	cpy #$0E.b		; C0 0E
	nop		; EA
	lda #$80.b		; A9 80
	ora $16C0.w,Y		; 19 C0 16
.ACCU 8
	sep #$A9		; E2 A9
	bra  26.b		; 80 1A
	cpy #$E7.b		; C0 E7
	ora ($D9.b),Y		; 11 D9
	bra  27.b		; 80 1B
	cpy #$ED.b		; C0 ED
	phd		; 0B
	lda #$80.b		; A9 80
	trb $FFC0.w		; 1C C0 FF
	sbc $80D6.w,Y		; F9 D6 80
	ora $FFC0.w,X		; 1D C0 FF
	sbc $80CE.w,Y		; F9 CE 80
	asl $F0C0.w,X		; 1E C0 F0
	php		; 08
	lda $1F80.w,Y		; B9 80 1F
	cpy #$08.b		; C0 08
	beq -76.b		; F0 B4
	bra  32.b		; 80 20
	cpy #$F1.b		; C0 F1
	ora [$C1.b]		; 07 C1
	bra  33.b		; 80 21
	cpy #$01.b		; C0 01
	sbc [$C7.b],Y		; F7 C7
	bra  34.b		; 80 22
	cpy #$F2.b		; C0 F2
	asl $C9.b		; 06 C9
	bra  35.b		; 80 23
	cpy #$02.b		; C0 02
	inc $C0.b,X		; F6 C0
	bra  36.b		; 80 24
	cpy #$0A.b		; C0 0A
	inc $80E5.w		; EE E5 80
	and $C0.b		; 25 C0
	ora $E50B.w,Y		; 19 0B E5
	inx		; E8
	dey		; 88
	brk $C8.b		; 00 C8
	sbc $0D.b,S		; E3 0D
	cmp $C80288.l,X		; DF 88 02 C8
	cmp ($1D.b,S),Y		; D3 1D
	cmp $0488.w,X		; DD 88 04
	iny		; C8
	xce		; FB
	sbc $80E0.w,X		; FD E0 80
	asl $C0.b		; 06 C0
	xce		; FB
	sbc $80D8.w,X		; FD D8 80
	ora [$C0.b]		; 07 C0
	tas		; 1B
	cmp $80F0.w,X		; DD F0 80
	php		; 08
	cpy #$23.b		; C0 23
	cmp $EF.b,X		; D5 EF
	bra   9.b		; 80 09
	cpy #$2B.b		; C0 2B
	cmp $80F0.w		; CD F0 80
	asl A		; 0A
	cpy #$F3.b		; C0 F3
	ora $E7.b		; 05 E7
	bra  11.b		; 80 0B
	cpy #$F3.b		; C0 F3
	ora $DF.b		; 05 DF
	bra  12.b		; 80 0C
	cpy #$E3.b		; C0 E3
	ora $D7.b,X		; 15 D7
	bra  13.b		; 80 0D
	cpy #$EB.b		; C0 EB
	ora $80D7.w		; 0D D7 80
	asl $F3C0.w		; 0E C0 F3
	ora $D7.b		; 05 D7
	bra  15.b		; 80 0F
	cpy #$1B.b		; C0 1B
	cmp $80E6.w,X		; DD E6 80
	asl $C0.b,X		; 16 C0
	ora $F5.b,S		; 03 F5
	sbc $1780.w		; ED 80 17
	cpy #$CB.b		; C0 CB
	and $80E5.w		; 2D E5 80
	clc		; 18
	cpy #$03.b		; C0 03
	sbc $E5.b,X		; F5 E5
	bra  25.b		; 80 19
	cpy #$23.b		; C0 23
	cmp $E5.b,X		; D5 E5
	bra  26.b		; 80 1A
	cpy #$FB.b		; C0 FB
	sbc $80E8.w,X		; FD E8 80
	tas		; 1B
	cpy #$EC.b		; C0 EC
	tsb $80F7.w		; 0C F7 80
	trb $EDC0.w		; 1C C0 ED
	phd		; 0B
	sbc $C01D80.l		; EF 80 1D C0
	dec $ED2A.w		; CE 2A ED
	bra  30.b		; 80 1E
	cpy #$D6.b		; C0 D6
	jsl $1F80ED.l		; 22 ED 80 1F
	cpy #$29.b		; C0 29
	cmp $2080E2.l		; CF E2 80 20
	cpy #$31.b		; C0 31
	cmp [$E2.b]		; C7 E2
	bra  33.b		; 80 21
	cpy #$1A.b		; C0 1A
	sbc $99F3.w,X		; FD F3 99
	pha		; 48
	brk $08.b		; 00 08
	sbc $C1F3.w,X		; FD F3 C1
	pha		; 48
	cop $08.b		; 02 08
	tsb $EC.b		; 04 EC
	lda ($48.b),Y		; B1 48
	tsb $08.b		; 04 08
	pea $B1FC.w		; F4 FC B1
	pha		; 48
	asl $08.b		; 06 08
	sbc $03.b,X		; F5 03
	cmp #$40.b		; C9 40
	php		; 08
	brk $05.b		; 00 05
	sbc ($D1.b,S),Y		; F3 D1
	rti		; 40

	ora #$00.b		; 09 00
	sbc $D1FB.w,X		; FD FB D1
	rti		; 40

	asl A		; 0A
	brk $F5.b		; 00 F5
	ora $D1.b,S		; 03 D1
	rti		; 40

	phd		; 0B
	brk $05.b		; 00 05
	sbc ($E6.b,S),Y		; F3 E6
	rti		; 40

	tsb $F500.w		; 0C 00 F5
	ora $99.b,S		; 03 99
	rti		; 40

	ora $F500.w		; 0D 00 F5
	ora $C1.b,S		; 03 C1
	rti		; 40

	asl $EC00.w		; 0E 00 EC
	tsb $40B2.w		; 0C B2 40
	ora $EC0C00.l		; 0F 00 0C EC
	plx		; FA
	rti		; 40

	clc		; 18
	brk $04.b		; 00 04
	pea $40DE.w		; F4 DE 40
	ora $F400.w,Y		; 19 00 F4
	tsb $E8.b		; 04 E8
	rti		; 40

	inc A		; 1A
	brk $F2.b		; 00 F2
	asl $F0.b		; 06 F0
	rti		; 40

	tas		; 1B
	brk $01.b		; 00 01
	sbc [$D9.b],Y		; F7 D9
	rti		; 40

	trb $E900.w		; 1C 00 E9
	ora $1D40F9.l		; 0F F9 40 1D
	brk $09.b		; 00 09
	sbc $1E40F6.l		; EF F6 40 1E
	brk $F1.b		; 00 F1
	ora [$F8.b]		; 07 F8
	rti		; 40

	ora $F00800.l,X		; 1F 00 08 F0
	lda #$40.b		; A9 40
	jsr $0000.w		; 20 00 00
	sed		; F8
	lda #$40.b		; A9 40
	and ($00.b,X)		; 21 00
	sed		; F8
	brk $A9.b		; 00 A9
	rti		; 40

	jsl $F00800.l		; 22 00 08 F0
	inc $2340.w		; EE 40 23
	brk $F6.b		; 00 F6
	cop $D9.b		; 02 D9
	rti		; 40

	bit $00.b		; 24 00
	inc $02.b,X		; F6 02
	sbc ($40.b,X)		; E1 40
	and $00.b		; 25 00
	ora $00F0.w,Y		; 19 F0 00
	sta $0048.w,Y		; 99 48 00
	php		; 08
	brk $F0.b		; 00 F0
	lda ($48.b),Y		; B1 48
	cop $08.b		; 02 08
	beq   0.b		; F0 00
	lda ($48.b),Y		; B1 48
	tsb $08.b		; 04 08
	sed		; F8
	sed		; F8
	cmp ($48.b),Y		; D1 48
	asl $08.b		; 06 08
	inc $C1F2.w,X		; FE F2 C1
	pha		; 48
	php		; 08
	php		; 08
	ora $F5.b,S		; 03 F5
	sbc $40.b		; E5 40
	asl A		; 0A
	brk $E2.b		; 00 E2
	asl $FA.b,X		; 16 FA
	rti		; 40

	phd		; 0B
	brk $EA.b		; 00 EA
	asl $40F3.w		; 0E F3 40
	tsb $0000.w		; 0C 00 00
	sed		; F8
	sbc ($40.b,X)		; E1 40
	ora $F000.w		; 0D 00 F0
	php		; 08
	sbc ($40.b,X)		; E1 40
	asl $0400.w		; 0E 00 04
	pea $40A9.w		; F4 A9 40
	ora $FCFC00.l		; 0F 00 FC FC
	lda #$40.b		; A9 40
	inc A		; 1A
	brk $F4.b		; 00 F4
	tsb $A9.b		; 04 A9
	rti		; 40

	tas		; 1B
	brk $EC.b		; 00 EC
	tsb $40ED.w		; 0C ED 40
	trb $F000.w		; 1C 00 F0
	php		; 08
	cmp ($40.b),Y		; D1 40
	ora $F000.w,X		; 1D 00 F0
	php		; 08
	cmp $1E40.w,Y		; D9 40 1E
	brk $08.b		; 00 08
	beq -13.b		; F0 F3
	rti		; 40

	ora $10E800.l,X		; 1F 00 E8 10
	xce		; FB
	rti		; 40

	jsr $E800.w		; 20 00 E8
	bpl -80.b		; 10 B0
	rti		; 40

	and ($00.b,X)		; 21 00
	inx		; E8
	bpl -72.b		; 10 B8
	rti		; 40

	jsl $ED0B00.l		; 22 00 0B ED
	sbc $2340.w,Y		; F9 40 23
	brk $F6.b		; 00 F6
	cop $C1.b		; 02 C1
	rti		; 40

	bit $00.b		; 24 00
	inc $02.b,X		; F6 02
	cmp #$40.b		; C9 40
	and $00.b		; 25 00
	inc $E50A.w		; EE 0A E5
	rti		; 40

	rol $00.b		; 26 00
	asl $F2.b		; 06 F2
	sbc $2740.w		; ED 40 27
	brk $1A.b		; 00 1A
	ora $ED.b,S		; 03 ED
	lda #$48.b		; A9 48
	brk $08.b		; 00 08
	ora $ED.b,S		; 03 ED
	lda $0248.w,Y		; B9 48 02
	php		; 08
	sbc ($FD.b,S),Y		; F3 FD
	lda $48.b		; A5 48
	tsb $08.b		; 04 08
	ora ($EF.b,X)		; 01 EF
	cmp #$48.b		; C9 48
	asl $08.b		; 06 08
	ora ($E5.b,S),Y		; 13 E5
	lda ($40.b),Y		; B1 40
	php		; 08
	brk $13.b		; 00 13
	sbc $B9.b		; E5 B9
	rti		; 40

	ora #$00.b		; 09 00
	ora ($E5.b,S),Y		; 13 E5
	cmp ($40.b,X)		; C1 40
	asl A		; 0A
	brk $FB.b		; 00 FB
	sbc $40B5.w,X		; FD B5 40
	phd		; 0B
	brk $FB.b		; 00 FB
	sbc $40BD.w,X		; FD BD 40
	tsb $F300.w		; 0C 00 F3
	ora $BD.b		; 05 BD
	rti		; 40

	ora $ED00.w		; 0D 00 ED
	phd		; 0B
	sbc $40.b,X		; F5 40
	asl $F300.w		; 0E 00 F3
	ora $E6.b		; 05 E6
	rti		; 40

	ora $EE0A00.l		; 0F 00 0A EE
	sbc ($40.b),Y		; F1 40
	clc		; 18
	brk $EA.b		; 00 EA
	asl $40F9.w		; 0E F9 40
	ora $E200.w,Y		; 19 00 E2
	asl $F9.b,X		; 16 F9
	rti		; 40

	inc A		; 1A
	brk $11.b		; 00 11
	sbc [$C9.b]		; E7 C9
	rti		; 40

	tas		; 1B
	brk $0B.b		; 00 0B
	sbc $40F9.w		; ED F9 40
	trb $F900.w		; 1C 00 F9
	sbc $1D40CC.l,X		; FF CC 40 1D
	brk $F9.b		; 00 F9
	sbc $1E40D4.l,X		; FF D4 40 1E
	brk $08.b		; 00 08
	beq -23.b		; F0 E9
	rti		; 40

	ora $08F000.l,X		; 1F 00 F0 08
	inc $2040.w		; EE 40 20
	brk $07.b		; 00 07
	sbc ($E1.b),Y		; F1 E1
	rti		; 40

	and ($00.b,X)		; 21 00
	sbc [$01.b],Y		; F7 01
	stp		; DB
	rti		; 40

	jsl $F20600.l		; 22 00 06 F2
	cmp $2340.w,Y		; D9 40 23
	brk $F6.b		; 00 F6
	cop $E2.b		; 02 E2
	rti		; 40

	bit $00.b		; 24 00
	inc $BD0A.w		; EE 0A BD
	rti		; 40

	and $00.b		; 25 00
	ora $0BE5.w,Y		; 19 E5 0B
	sep #$48		; E2 48
	brk $08.b		; 00 08
	ora $EBE3.w		; 0D E3 EB
	pha		; 48
	cop $08.b		; 02 08
	ora $EDD3.w,X		; 1D D3 ED
	pha		; 48
	tsb $08.b		; 04 08
	sbc $F2FB.w,X		; FD FB F2
	rti		; 40

	asl $00.b		; 06 00
	sbc $FAFB.w,X		; FD FB FA
	rti		; 40

	ora [$00.b]		; 07 00
	cmp $E21B.w,X		; DD 1B E2
	rti		; 40

	php		; 08
	brk $D5.b		; 00 D5
	and $E3.b,S		; 23 E3
	rti		; 40

	ora #$00.b		; 09 00
	cmp $E22B.w		; CD 2B E2
	rti		; 40

	asl A		; 0A
	brk $05.b		; 00 05
	sbc ($EB.b,S),Y		; F3 EB
	rti		; 40

	phd		; 0B
	brk $05.b		; 00 05
	sbc ($F3.b,S),Y		; F3 F3
	rti		; 40

	tsb $1500.w		; 0C 00 15
	sbc $FB.b,S		; E3 FB
	rti		; 40

	ora $0D00.w		; 0D 00 0D
	xba		; EB
	xce		; FB
	rti		; 40

	asl $0500.w		; 0E 00 05
	sbc ($FB.b,S),Y		; F3 FB
	rti		; 40

	ora $1BDD00.l		; 0F 00 DD 1B
	cpx $1640.w		; EC 40 16
	brk $F5.b		; 00 F5
	ora $E5.b,S		; 03 E5
	rti		; 40

	ora [$00.b],Y		; 17 00
	and $EDCB.w		; 2D CB ED
	rti		; 40

	clc		; 18
	brk $F5.b		; 00 F5
	ora $ED.b,S		; 03 ED
	rti		; 40

	ora $D500.w,Y		; 19 00 D5
	and $ED.b,S		; 23 ED
	rti		; 40

	inc A		; 1A
	brk $FD.b		; 00 FD
	xce		; FB
	nop		; EA
	rti		; 40

	tas		; 1B
	brk $0C.b		; 00 0C
	cpx $40DB.w		; EC DB 40
	trb $0B00.w		; 1C 00 0B
	sbc $40E3.w		; ED E3 40
	ora $2A00.w,X		; 1D 00 2A
	dec $40E5.w		; CE E5 40
	asl $2200.w,X		; 1E 00 22
	dec $E5.b,X		; D6 E5
	rti		; 40

	ora $29CF00.l,X		; 1F 00 CF 29
	beq  64.b		; F0 40
	jsr $C700.w		; 20 00 C7
	and ($F0.b),Y		; 31 F0
	rti		; 40

	and ($00.b,X)		; 21 00
	ora ($CD.b,S),Y		; 13 CD
	and $F2.b,S		; 23 F2
	pha		; 48
	brk $08.b		; 00 08
	trb $DC.b		; 14 DC
	pea $0248.w		; F4 48 02
	php		; 08
	tsb $EC.b		; 04 EC
	sbc $0448.w		; ED 48 04
	php		; 08
	jmp.w [$F014]		; DC 14 F0
	pha		; 48
	asl $08.b		; 06 08
	cpx $F004.w		; EC 04 F0
	pha		; 48
	php		; 08
	php		; 08
	trb $E4.b		; 14 E4
	cpx $0A40.w		; EC 40 0A
	brk $C5.b		; 00 C5
	and ($F9.b,S),Y		; 33 F9
	rti		; 40

	phd		; 0B
	brk $2C.b		; 00 2C
	cpy $40F9.w		; CC F9 40
	tsb $FC00.w		; 0C 00 FC
	jsr ($40ED.w,X)		; FC ED 40
	ora $FC00.w		; 0D 00 FC
	jsr ($40F5.w,X)		; FC F5 40
	asl $0C00.w		; 0E 00 0C
	cpx $40FD.w		; EC FD 40
	ora $F40400.l		; 0F 00 04 F4
	sbc $1A40.w,X		; FD 40 1A
	brk $FC.b		; 00 FC
	jsr ($40FD.w,X)		; FC FD 40
	tas		; 1B
	brk $24.b		; 00 24
	pei ($F2.b)		; D4 F2
	rti		; 40

	trb $2400.w		; 1C 00 24
	pei ($FA.b)		; D4 FA
	rti		; 40

	ora $F400.w,X		; 1D 00 F4
	tsb $E8.b		; 04 E8
	rti		; 40

	asl $EC00.w,X		; 1E 00 EC
	tsb $40E8.w		; 0C E8 40
	ora $14E400.l,X		; 1F 00 E4 14
	inx		; E8
	rti		; 40

	jsr $2A00.w		; 20 00 2A
	dec $40F1.w		; CE F1 40
	and ($00.b,X)		; 21 00
	inc A		; 1A
	sbc $F2F3.w,X		; FD F3 F2
	iny		; C8
	brk $88.b		; 00 88
	sbc $CAF3.w,X		; FD F3 CA
	iny		; C8
	cop $88.b		; 02 88
	tsb $EC.b		; 04 EC
	phx		; DA
	iny		; C8
	tsb $88.b		; 04 88
	pea $DAFC.w		; F4 FC DA
	iny		; C8
	asl $88.b		; 06 88
	sbc $03.b,X		; F5 03
	dex		; CA
	cpy #$08.b		; C0 08
	bra   5.b		; 80 05
	sbc ($C2.b,S),Y		; F3 C2
	cpy #$09.b		; C0 09
	bra  -3.b		; 80 FD
	xce		; FB
	rep #$C0		; C2 C0
	asl A		; 0A
	bra -11.b		; 80 F5
	ora $C2.b,S		; 03 C2
	cpy #$0B.b		; C0 0B
	bra   5.b		; 80 05
	sbc ($AD.b,S),Y		; F3 AD
	cpy #$0C.b		; C0 0C
	bra -11.b		; 80 F5
	ora $FA.b,S		; 03 FA
	cpy #$0D.b		; C0 0D
	bra -11.b		; 80 F5
	ora $D2.b,S		; 03 D2
	cpy #$0E.b		; C0 0E
	bra -20.b		; 80 EC
	tsb $C0E1.w		; 0C E1 C0
	ora $EC0C80.l		; 0F 80 0C EC
	sta $18C0.w,Y		; 99 C0 18
	bra   4.b		; 80 04
	pea $C0B5.w		; F4 B5 C0
	ora $F480.w,Y		; 19 80 F4
	tsb $AB.b		; 04 AB
	cpy #$1A.b		; C0 1A
	bra -14.b		; 80 F2
	asl $A3.b		; 06 A3
	cpy #$1B.b		; C0 1B
	bra   1.b		; 80 01
	sbc [$BA.b],Y		; F7 BA
	cpy #$1C.b		; C0 1C
	bra -23.b		; 80 E9
	ora $1DC09A.l		; 0F 9A C0 1D
	bra   9.b		; 80 09
	sbc $1EC09D.l		; EF 9D C0 1E
	bra -15.b		; 80 F1
	ora [$9B.b]		; 07 9B
	cpy #$1F.b		; C0 1F
	bra   8.b		; 80 08
	beq -22.b		; F0 EA
	cpy #$20.b		; C0 20
	bra   0.b		; 80 00
	sed		; F8
	nop		; EA
	cpy #$21.b		; C0 21
	bra  -8.b		; 80 F8
	brk $EA.b		; 00 EA
	cpy #$22.b		; C0 22
	bra   8.b		; 80 08
	beq -91.b		; F0 A5
	cpy #$23.b		; C0 23
	bra -10.b		; 80 F6
	cop $BA.b		; 02 BA
	cpy #$24.b		; C0 24
	bra -10.b		; 80 F6
	cop $B2.b		; 02 B2
	cpy #$25.b		; C0 25
	bra  25.b		; 80 19
	beq   0.b		; F0 00
	inc $C8.b,X		; F6 C8
	brk $88.b		; 00 88
	brk $F0.b		; 00 F0
	dec $02C8.w,X		; DE C8 02
	dey		; 88
	beq   0.b		; F0 00
	dec $04C8.w,X		; DE C8 04
	dey		; 88
	sed		; F8
	sed		; F8
	ldx $06C8.w,Y		; BE C8 06
	dey		; 88
	inc $CEF2.w,X		; FE F2 CE
	iny		; C8
	php		; 08
	dey		; 88
	ora $F5.b,S		; 03 F5
	lda ($C0.b)		; B2 C0
	asl A		; 0A
	bra -30.b		; 80 E2
	asl $9D.b,X		; 16 9D
	cpy #$0B.b		; C0 0B
	bra -22.b		; 80 EA
	asl $C0A4.w		; 0E A4 C0
	tsb $0080.w		; 0C 80 00
	sed		; F8
	ldx $C0.b,Y		; B6 C0
	ora $F080.w		; 0D 80 F0
	php		; 08
	ldx $C0.b,Y		; B6 C0
	asl $0480.w		; 0E 80 04
	pea $C0EE.w		; F4 EE C0
	ora $FCFC80.l		; 0F 80 FC FC
	inc $1AC0.w		; EE C0 1A
	bra -12.b		; 80 F4
	tsb $EE.b		; 04 EE
	cpy #$1B.b		; C0 1B
	bra -20.b		; 80 EC
	tsb $C0AA.w		; 0C AA C0
	trb $F080.w		; 1C 80 F0
	php		; 08
	dec $C0.b		; C6 C0
	ora $F080.w,X		; 1D 80 F0
	php		; 08
	ldx $1EC0.w,Y		; BE C0 1E
	bra   8.b		; 80 08
	beq -92.b		; F0 A4
	cpy #$1F.b		; C0 1F
	bra -24.b		; 80 E8
	bpl -100.b		; 10 9C
	cpy #$20.b		; C0 20
	bra -24.b		; 80 E8
	bpl -25.b		; 10 E7
	cpy #$21.b		; C0 21
	bra -24.b		; 80 E8
	bpl -33.b		; 10 DF
	cpy #$22.b		; C0 22
	bra  11.b		; 80 0B
	sbc $C09E.w		; ED 9E C0
	and $80.b,S		; 23 80
	inc $02.b,X		; F6 02
	dec $C0.b,X		; D6 C0
	bit $80.b		; 24 80
	inc $02.b,X		; F6 02
	dec $25C0.w		; CE C0 25
	bra -18.b		; 80 EE
	asl A		; 0A
	lda ($C0.b)		; B2 C0
	rol $80.b		; 26 80
	asl $F2.b		; 06 F2
	tax		; AA
	cpy #$27.b		; C0 27
	bra  26.b		; 80 1A
	ora $ED.b,S		; 03 ED
	sbc ($C8.b),Y		; F1 C8
	brk $88.b		; 00 88
	ora $ED.b,S		; 03 ED
	sbc ($C8.b,X)		; E1 C8
	cop $88.b		; 02 88
	sbc ($FD.b,S),Y		; F3 FD
	sbc $C8.b,X		; F5 C8
	tsb $88.b		; 04 88
	ora ($EF.b,X)		; 01 EF
	cmp ($C8.b),Y		; D1 C8
	asl $88.b		; 06 88
	ora ($E5.b,S),Y		; 13 E5
	sbc ($C0.b),Y		; F1 C0
	php		; 08
	bra  19.b		; 80 13
	sbc $E9.b		; E5 E9
	cpy #$09.b		; C0 09
	bra  19.b		; 80 13
	sbc $E1.b		; E5 E1
	cpy #$0A.b		; C0 0A
	bra  -5.b		; 80 FB
	sbc $C0ED.w,X		; FD ED C0
	phd		; 0B
	bra  -5.b		; 80 FB
	sbc $C0E5.w,X		; FD E5 C0
	tsb $F380.w		; 0C 80 F3
	ora $E5.b		; 05 E5
	cpy #$0D.b		; C0 0D
	bra -19.b		; 80 ED
	phd		; 0B
	lda $0EC0.w		; AD C0 0E
	bra -13.b		; 80 F3
	ora $BC.b		; 05 BC
	cpy #$0F.b		; C0 0F
	bra  10.b		; 80 0A
	inc $C0B1.w		; EE B1 C0
	clc		; 18
	bra -22.b		; 80 EA
	asl $C0A9.w		; 0E A9 C0
	ora $E280.w,Y		; 19 80 E2
	asl $A9.b,X		; 16 A9
	cpy #$1A.b		; C0 1A
	bra  17.b		; 80 11
	sbc [$D9.b]		; E7 D9
	cpy #$1B.b		; C0 1B
	bra  11.b		; 80 0B
	sbc $C0A9.w		; ED A9 C0
	trb $F980.w		; 1C 80 F9
	sbc $1DC0D6.l,X		; FF D6 C0 1D
	bra  -7.b		; 80 F9
	sbc $1EC0CE.l,X		; FF CE C0 1E
	bra   8.b		; 80 08
	beq -71.b		; F0 B9
	cpy #$1F.b		; C0 1F
	bra -16.b		; 80 F0
	php		; 08
	ldy $C0.b,X		; B4 C0
	jsr $0780.w		; 20 80 07
	sbc ($C1.b),Y		; F1 C1
	cpy #$21.b		; C0 21
	bra  -9.b		; 80 F7
	ora ($C7.b,X)		; 01 C7
	cpy #$22.b		; C0 22
	bra   6.b		; 80 06
	sbc ($C9.b)		; F2 C9
	cpy #$23.b		; C0 23
	bra -10.b		; 80 F6
	cop $C0.b		; 02 C0
	cpy #$24.b		; C0 24
	bra -18.b		; 80 EE
	asl A		; 0A
	sbc $C0.b		; E5 C0
	and $80.b		; 25 80
	ora $0BE5.w,Y		; 19 E5 0B
	inx		; E8
	iny		; C8
	brk $88.b		; 00 88
	ora $DFE3.w		; 0D E3 DF
	iny		; C8
	cop $88.b		; 02 88
	ora $DDD3.w,X		; 1D D3 DD
	iny		; C8
	tsb $88.b		; 04 88
	sbc $E0FB.w,X		; FD FB E0
	cpy #$06.b		; C0 06
	bra  -3.b		; 80 FD
	xce		; FB
	cld		; D8
	cpy #$07.b		; C0 07
	bra -35.b		; 80 DD
	tas		; 1B
	beq -64.b		; F0 C0
	php		; 08
	bra -43.b		; 80 D5
	and $EF.b,S		; 23 EF
	cpy #$09.b		; C0 09
	bra -51.b		; 80 CD
	pld		; 2B
	beq -64.b		; F0 C0
	asl A		; 0A
	bra   5.b		; 80 05
	sbc ($E7.b,S),Y		; F3 E7
	cpy #$0B.b		; C0 0B
	bra   5.b		; 80 05
	sbc ($DF.b,S),Y		; F3 DF
	cpy #$0C.b		; C0 0C
	bra  21.b		; 80 15
	sbc $D7.b,S		; E3 D7
	cpy #$0D.b		; C0 0D
	bra  13.b		; 80 0D
	xba		; EB
	cmp [$C0.b],Y		; D7 C0
	asl $0580.w		; 0E 80 05
	sbc ($D7.b,S),Y		; F3 D7
	cpy #$0F.b		; C0 0F
	bra -35.b		; 80 DD
	tas		; 1B
	inc $C0.b		; E6 C0
	asl $80.b,X		; 16 80
	sbc $03.b,X		; F5 03
	sbc $17C0.w		; ED C0 17
	bra  45.b		; 80 2D
	wai		; CB
	sbc $C0.b		; E5 C0
	clc		; 18
	bra -11.b		; 80 F5
	ora $E5.b,S		; 03 E5
	cpy #$19.b		; C0 19
	bra -43.b		; 80 D5
	and $E5.b,S		; 23 E5
	cpy #$1A.b		; C0 1A
	bra  -3.b		; 80 FD
	xce		; FB
	inx		; E8
	cpy #$1B.b		; C0 1B
	bra  12.b		; 80 0C
	cpx $C0F7.w		; EC F7 C0
	trb $0B80.w		; 1C 80 0B
	sbc $C0EF.w		; ED EF C0
	ora $2A80.w,X		; 1D 80 2A
	dec $C0ED.w		; CE ED C0
	asl $2280.w,X		; 1E 80 22
	dec $ED.b,X		; D6 ED
	cpy #$1F.b		; C0 1F
	bra -49.b		; 80 CF
	and #$E2.b		; 29 E2
	cpy #$20.b		; C0 20
	bra -57.b		; 80 C7
	and ($E2.b),Y		; 31 E2
	cpy #$21.b		; C0 21
	bra  19.b		; 80 13
	cmp $EF23.w		; CD 23 EF
	iny		; C8
	brk $88.b		; 00 88
	trb $DC.b		; 14 DC
	sbc $02C8.w		; ED C8 02
	dey		; 88
	tsb $EC.b		; 04 EC
	pea $04C8.w		; F4 C8 04
	dey		; 88
	jmp.w [$F114]		; DC 14 F1
	iny		; C8
	asl $88.b		; 06 88
	cpx $F104.w		; EC 04 F1
	iny		; C8
	php		; 08
	dey		; 88
	trb $E4.b		; 14 E4
	sbc $0AC0.w,X		; FD C0 0A
	bra -59.b		; 80 C5
	and ($F0.b,S),Y		; 33 F0
	cpy #$0B.b		; C0 0B
	bra  44.b		; 80 2C
	cpy $C0F0.w		; CC F0 C0
	tsb $FC80.w		; 0C 80 FC
	jsr ($C0FC.w,X)		; FC FC C0
	ora $FC80.w		; 0D 80 FC
	jsr ($C0F4.w,X)		; FC F4 C0
	asl $0C80.w		; 0E 80 0C
	cpx $C0EC.w		; EC EC C0
	ora $F40480.l		; 0F 80 04 F4
	cpx $1AC0.w		; EC C0 1A
	bra  -4.b		; 80 FC
	jsr ($C0EC.w,X)		; FC EC C0
	tas		; 1B
	bra  36.b		; 80 24
	pei ($F7.b)		; D4 F7
	cpy #$1C.b		; C0 1C
	bra  36.b		; 80 24
	pei ($EF.b)		; D4 EF
	cpy #$1D.b		; C0 1D
	bra -12.b		; 80 F4
	tsb $01.b		; 04 01
	cpy #$1E.b		; C0 1E
	bra -20.b		; 80 EC
	tsb $C001.w		; 0C 01 C0
	ora $14E480.l,X		; 1F 80 E4 14
	ora ($C0.b,X)		; 01 C0
	jsr $2A80.w		; 20 80 2A
	dec $C0F8.w		; CE F8 C0
	and ($80.b,X)		; 21 80
	trb $E4.b		; 14 E4
	tsb $C88E.w		; 0C 8E C8
	brk $88.b		; 00 88
	tsb $8CE4.w		; 0C E4 8C
	iny		; C8
	cop $88.b		; 02 88
	jsr ($8CF4.w,X)		; FC F4 8C
	iny		; C8
	tsb $88.b		; 04 88
	inc $A4F2.w,X		; FE F2 A4
	iny		; C8
	asl $88.b		; 06 88
	pea $9404.w		; F4 04 94
	cpy #$08.b		; C0 08
	bra -12.b		; 80 F4
	tsb $8C.b		; 04 8C
	cpy #$09.b		; C0 09
	bra  20.b		; 80 14
	cpx $84.b		; E4 84
	cpy #$0A.b		; C0 0A
	bra  12.b		; 80 0C
	cpx $C084.w		; EC 84 C0
	phd		; 0B
	bra   4.b		; 80 04
	pea $C084.w		; F4 84 C0
	tsb $FC80.w		; 0C 80 FC
	jsr ($C084.w,X)		; FC 84 C0
	ora $F480.w		; 0D 80 F4
	tsb $84.b		; 04 84
	cpy #$0E.b		; C0 0E
	bra  18.b		; 80 12
	inc $9C.b		; E6 9C
	cpy #$0F.b		; C0 0F
	bra  10.b		; 80 0A
	inc $C09C.w		; EE 9C C0
	clc		; 18
	bra   2.b		; 80 02
	inc $9C.b,X		; F6 9C
	cpy #$19.b		; C0 19
	bra -39.b		; 80 D9
	ora $1AC088.l,X		; 1F 88 C0 1A
	bra -47.b		; 80 D1
	and [$84.b]		; 27 84
	cpy #$1B.b		; C0 1B
	bra -40.b		; 80 D8
	jsr $C083.w		; 20 83 C0
	trb $E080.w		; 1C 80 E0
	clc		; 18
	txa		; 8A
	cpy #$1D.b		; C0 1D
	bra  14.b		; 80 0E
	nop		; EA
	ldy $C0.b		; A4 C0
	asl $EC80.w,X		; 1E 80 EC
	tsb $C086.w		; 0C 86 C0
	ora $F31E80.l,X		; 1F 80 1E F3
	sbc $08E9.w,X		; FD E9 08
	brk $48.b		; 00 48
	ora $ED.b,S		; 03 ED
	sbc #$08.b		; E9 08
	cop $48.b		; 02 48
	sbc ($FD.b,S),Y		; F3 FD
	sta $0408.w,Y		; 99 08 04
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	lda #$08.b		; A9 08
	asl $48.b		; 06 48
	ora $ED.b,S		; 03 ED
	sta $0808.w,Y		; 99 08 08
	pha		; 48
	ora ($DD.b,S),Y		; 13 DD
	sta $0A08.w,Y		; 99 08 0A
	pha		; 48
	ora $ED.b,S		; 03 ED
	lda #$08.b		; A9 08
	tsb $1348.w		; 0C 48 13
	cmp $08A9.w,X		; DD A9 08
	asl $F548.w		; 0E 48 F5
	xce		; FB
	cmp #$08.b		; C9 08
	jsr $F548.w		; 20 48 F5
	xce		; FB
	cmp $2208.w,Y		; D9 08 22
	pha		; 48
	ora $EB.b		; 05 EB
	cmp #$08.b		; C9 08
	bit $48.b		; 24 48
	ora $DB.b,X		; 15 DB
	cmp #$08.b		; C9 08
	rol $48.b		; 26 48
	ora $EB.b		; 05 EB
	cmp $2808.w,Y		; D9 08 28
	pha		; 48
	sbc ($FE.b)		; F2 FE
	lda $2A08.w,Y		; B9 08 2A
	pha		; 48
	cop $EE.b		; 02 EE
	lda $2C08.w,Y		; B9 08 2C
	pha		; 48
	ora ($DE.b)		; 12 DE
	lda $2E08.w,Y		; B9 08 2E
	pha		; 48
	ora ($E5.b,S),Y		; 13 E5
	sbc ($00.b),Y		; F1 00
	rti		; 40

	rti		; 40

	and $D5.b,S		; 23 D5
	lda $4100.w		; AD 00 41
	rti		; 40

	ora $E3.b,X		; 15 E3
	cmp $4200.w,Y		; D9 00 42
	rti		; 40

	ora $D9DB.w,X		; 1D DB D9
	brk $43.b		; 00 43
	rti		; 40

	ora $E3.b,X		; 15 E3
	sbc ($00.b,X)		; E1 00
	mvp $F6,$40		; 44 40 F6
	cop $F9.b		; 02 F9
	brk $45.b		; 00 45
	rti		; 40

	inc $02.b,X		; F6 02
	ora ($00.b,X)		; 01 00
	lsr $40.b		; 46 40
	ora $00F9E9.l		; 0F E9 F9 00
	eor [$40.b]		; 47 40
	ora $0001E9.l		; 0F E9 01 00
	pha		; 48
	rti		; 40

	and [$D1.b]		; 27 D1
	lda [$00.b]		; A7 00
	eor #$40.b		; 49 40
	jsl $00B9D6.l		; 22 D6 B9 00
	lsr A		; 4A
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc $4B00.w,Y		; F9 00 4B
	rti		; 40

	ora $F5.b,S		; 03 F5
	ora ($00.b,X)		; 01 00
	jmp $1340.w		; 4C 40 13
	sbc $E9.b		; E5 E9
	brk $4D.b		; 00 4D
	rti		; 40

	ora $F5FB.w,Y		; 19 FB F5
	stz $0008.w		; 9C 08 00
	pha		; 48
	phd		; 0B
	sbc $9C.b		; E5 9C
	php		; 08
	cop $48.b		; 02 48
	tas		; 1B
	cmp $9C.b,X		; D5 9C
	php		; 08
	tsb $48.b		; 04 48
	sbc $CCF3.w,X		; FD F3 CC
	php		; 08
	asl $48.b		; 06 48
	ora $CCE3.w		; 0D E3 CC
	php		; 08
	php		; 08
	pha		; 48
	ora $CCD3.w,X		; 1D D3 CC
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $08DCF1.l,X		; FF F1 DC 08
	tsb $0F48.w		; 0C 48 0F
	sbc ($DC.b,X)		; E1 DC
	php		; 08
	asl $F048.w		; 0E 48 F0
	brk $BC.b		; 00 BC
	php		; 08
	jsr $0048.w		; 20 48 00
	beq -68.b		; F0 BC
	php		; 08
	jsl $E01048.l		; 22 48 10 E0
	ldy $2408.w,X		; BC 08 24
	pha		; 48
	jsr $BCD0.w		; 20 D0 BC
	php		; 08
	rol $48.b		; 26 48
	sbc ($FF.b),Y		; F1 FF
	ldy $2808.w		; AC 08 28
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	ldy $2A08.w		; AC 08 2A
	pha		; 48
	ora ($DF.b),Y		; 11 DF
	ldy $2C08.w		; AC 08 2C
	pha		; 48
	ora $00E4D9.l,X		; 1F D9 E4 00
	rol $F540.w		; 2E 40 F5
	ora $D4.b,S		; 03 D4
	brk $2F.b		; 00 2F
	rti		; 40

	sbc $00DC09.l		; EF 09 DC 00
	rol $F740.w,X		; 3E 40 F7
	ora ($DC.b,X)		; 01 DC
	brk $3F.b		; 00 3F
	rti		; 40

	ora $00ECE9.l		; 0F E9 EC 00
	rti		; 40

	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cpx $00.b		; E4 00
	eor ($40.b,X)		; 41 40
	sbc ($05.b,S),Y		; F3 05
	ldy $00.b		; A4 00
	.db $42, $40		; 42 40
	ora $00DCD9.l,X		; 1F D9 DC 00
	eor $40.b,S		; 43 40
	and ($D7.b,X)		; 21 D7
	ldy $4400.w		; AC 00 44
	rti		; 40

	and ($D7.b,X)		; 21 D7
	ldy $00.b,X		; B4 00
	eor $40.b		; 45 40
	inc A		; 1A
	pea $A9FC.w		; F4 FC A9
	php		; 08
	brk $48.b		; 00 48
	tsb $EC.b		; 04 EC
	lda #$08.b		; A9 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	lda $0408.w,Y		; B9 08 04
	pha		; 48
	trb $E4.b		; 14 E4
	lda ($00.b),Y		; B1 00
	asl $40.b		; 06 40
	trb $ACDC.w		; 1C DC AC
	brk $07.b		; 00 07
	rti		; 40

	trb $E4.b		; 14 E4
	lda #$00.b		; A9 00
	php		; 08
	rti		; 40

	asl $F2.b		; 06 F2
	lda $0900.w,Y		; B9 00 09
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b,X)		; C1 00
	asl A		; 0A
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b,X)		; A1 00
	phd		; 0B
	rti		; 40

	php		; 08
	beq -95.b		; F0 A1
	brk $0C.b		; 00 0C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sta $0D00.w,Y		; 99 00 0D
	rti		; 40

	ora #$EF.b		; 09 EF
	txs		; 9A
	brk $0E.b		; 00 0E
	rti		; 40

	beq   0.b		; F0 00
	cmp $1608.w,Y		; D9 08 16
	pha		; 48
	sbc $C9F7.w,Y		; F9 F7 C9
	php		; 08
	clc		; 18
	pha		; 48
	inc $12.b		; E6 12
	sbc $1A00.w,Y		; F9 00 1A
	rti		; 40

	inc $F90A.w		; EE 0A F9
	brk $1B.b		; 00 1B
	rti		; 40

	ora $00E9E9.l		; 0F E9 E9 00
	trb $F040.w		; 1C 40 F0
	php		; 08
	sbc ($00.b),Y		; F1 00
	ora $1040.w,X		; 1D 40 10
	inx		; E8
	sbc ($00.b),Y		; F1 00
	asl $0B40.w,X		; 1E 40 0B
	sbc $00D9.w		; ED D9 00
	ora $EC0C40.l,X		; 1F 40 0C EC
	sbc ($00.b,X)		; E1 00
	jsr $0940.w		; 20 40 09
	sbc $2100C9.l		; EF C9 00 21
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp ($00.b),Y		; D1 00
	jsl $06F240.l		; 22 40 F2 06
	sbc #$00.b		; E9 00
	and $40.b,S		; 23 40
	ora ($E6.b)		; 12 E6
	sbc $2400.w,Y		; F9 00 24
	rti		; 40

	inc A		; 1A
	dec $00F9.w,X		; DE F9 00
	and $40.b		; 25 40
	ora $F3.b,X		; 15 F3
	sbc $08B3.w,X		; FD B3 08
	brk $48.b		; 00 48
	ora $EB.b		; 05 EB
	stz $0208.w,X		; 9E 08 02
	pha		; 48
	plx		; FA
	inc $CB.b,X		; F6 CB
	php		; 08
	tsb $48.b		; 04 48
	ora $F5.b,S		; 03 F5
	tyx		; BB
	brk $06.b		; 00 06
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp $00.b,S		; C3 00
	ora [$40.b]		; 07 40
	xce		; FB
	sbc $00C3.w,X		; FD C3 00
	php		; 08
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp $00.b,S		; C3 00
	ora #$40.b		; 09 40
	phd		; 0B
	sbc $00B3.w		; ED B3 00
	asl A		; 0A
	rti		; 40

	sed		; F8
	brk $AB.b		; 00 AB
	brk $0B.b		; 00 0B
	rti		; 40

	brk $F8.b		; 00 F8
	plb		; AB
	brk $0C.b		; 00 0C
	rti		; 40

	php		; 08
	beq -85.b		; F0 AB
	brk $0D.b		; 00 0D
	rti		; 40

	plx		; FA
	inc $00DB.w,X		; FE DB 00
	asl $FA40.w		; 0E 40 FA
	inc $00E3.w,X		; FE E3 00
	ora $0EEA40.l		; 0F 40 EA 0E
	xba		; EB
	brk $16.b		; 00 16
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda ($00.b,S),Y		; B3 00
	ora [$40.b],Y		; 17 40
	asl A		; 0A
	inc $00CB.w		; EE CB 00
	clc		; 18
	rti		; 40

	asl A		; 0A
	inc $00D3.w		; EE D3 00
	ora $F240.w,Y		; 19 40 F2
	asl $D8.b		; 06 D8
	brk $1A.b		; 00 1A
	rti		; 40

	sbc ($06.b)		; F2 06
	cpx #$00.b		; E0 00
	tas		; 1B
	rti		; 40

	sbc ($06.b)		; F2 06
	inx		; E8
	brk $1C.b		; 00 1C
	rti		; 40

	sbc ($06.b)		; F2 06
	beq   0.b		; F0 00
	ora $1540.w,X		; 1D 40 15
	sbc ($FE.b)		; F2 FE
	phx		; DA
	php		; 08
	brk $48.b		; 00 48
	asl A		; 0A
	inc $AA.b		; E6 AA
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $AA.b,X		; F6 AA
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FE.b)		; F2 FE
	tsx		; BA
	php		; 08
	asl $48.b		; 06 48
	plx		; FA
	inc $CA.b,X		; F6 CA
	php		; 08
	php		; 08
	pha		; 48
	sbc ($06.b)		; F2 06
	nop		; EA
	brk $0A.b		; 00 0A
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b)		; F2 00
	phd		; 0B
	rti		; 40

	tas		; 1B
	cmp $00C5.w,X		; DD C5 00
	tsb $FC40.w		; 0C 40 FC
	jsr ($00A2.w,X)		; FC A2 00
	ora $2540.w		; 0D 40 25
	cmp ($CE.b,S),Y		; D3 CE
	brk $0E.b		; 00 0E
	rti		; 40

	asl $E2.b,X		; 16 E2
	lda $400F00.l,X		; BF 00 0F 40
	ora $00CBD9.l,X		; 1F D9 CB 00
	inc A		; 1A
	rti		; 40

	sbc ($06.b)		; F2 06
	lda ($00.b)		; B2 00
	tas		; 1B
	rti		; 40

	cop $F6.b		; 02 F6
	tsx		; BA
	brk $1C.b		; 00 1C
	rti		; 40

	asl A		; 0A
	inc $00BA.w		; EE BA 00
	ora $1240.w,X		; 1D 40 12
	inc $BA.b		; E6 BA
	brk $1E.b		; 00 1E
	rti		; 40

	cop $F6.b		; 02 F6
	rep #$00		; C2 00
	ora $06F240.l,X		; 1F 40 F2 06
	cmp ($00.b)		; D2 00
	jsr $0240.w		; 20 40 02
	inc $DA.b,X		; F6 DA
	brk $21.b		; 00 21
	rti		; 40

	asl A		; 0A
	inc $00C5.w		; EE C5 00
	jsl $EE0A40.l		; 22 40 0A EE
	cmp $2300.w		; CD 00 23
	rti		; 40

	tas		; 1B
	xce		; FB
	sbc $C9.b,X		; F5 C9
	php		; 08
	brk $48.b		; 00 48
	xce		; FB
	sbc $B9.b,X		; F5 B9
	php		; 08
	cop $48.b		; 02 48
	pea $A9FC.w		; F4 FC A9
	php		; 08
	tsb $48.b		; 04 48
	tsb $EC.b		; 04 EC
	lda #$08.b		; A9 08
	asl $48.b		; 06 48
	sbc ($05.b,S),Y		; F3 05
	cmp #$00.b		; C9 00
	php		; 08
	rti		; 40

	phd		; 0B
	sbc $00C5.w		; ED C5 00
	ora #$40.b		; 09 40
	phd		; 0B
	sbc $00CD.w		; ED CD 00
	asl A		; 0A
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cmp $0B00.w		; CD 00 0B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	lda $0C00.w,Y		; B9 00 0C
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp ($00.b,X)		; C1 00
	ora $EC40.w		; 0D 40 EC
	tsb $00AC.w		; 0C AC 00
	asl $EC40.w		; 0E 40 EC
	tsb $00B4.w		; 0C B4 00
	ora $F40440.l		; 0F 40 04 F4
	cmp $401800.l,X		; DF 00 18 40
	trb $D8DC.w		; 1C DC D8
	brk $19.b		; 00 19
	rti		; 40

	bit $D4.b		; 24 D4
	cpx #$00.b		; E0 00
	inc A		; 1A
	rti		; 40

	and $E9CB.w		; 2D CB E9
	brk $1B.b		; 00 1B
	rti		; 40

	cmp $BD1B.w,X		; DD 1B BD
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $13.b		; E5 13
	lda $1D00.w,X		; BD 00 1D
	rti		; 40

	sed		; F8
	brk $A1.b		; 00 A1
	brk $1E.b		; 00 1E
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b,X)		; A1 00
	ora $E81040.l,X		; 1F 40 10 E8
	cmp $00.b,X		; D5 00
	jsr $1840.w		; 20 40 18
	cpx #$D5.b		; E0 D5
	brk $21.b		; 00 21
	rti		; 40

	inx		; E8
	bpl -74.b		; 10 B6
	brk $22.b		; 00 22
	rti		; 40

	and #$CF.b		; 29 CF
	sbc $00.b,S		; E3 00
	and $40.b,S		; 23 40
	and ($D7.b,X)		; 21 D7
	jmp.w [$2400]		; DC 00 24
	rti		; 40

	asl A		; 0A
	inc $00A1.w		; EE A1 00
	and $40.b		; 25 40
	cop $F6.b		; 02 F6
	cmp $2600.w,Y		; D9 00 26
	rti		; 40

	ora [$0C.b],Y		; 17 0C
	cpx $C1.b		; E4 C1
	php		; 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	cmp ($08.b),Y		; D1 08
	cop $48.b		; 02 48
	asl $EA.b		; 06 EA
	cmp ($08.b),Y		; D1 08
	tsb $48.b		; 04 48
	cop $EE.b		; 02 EE
	sbc #$08.b		; E9 08
	asl $48.b		; 06 48
	asl $E2.b,X		; 16 E2
	cmp ($00.b),Y		; D1 00
	php		; 08
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc ($00.b,X)		; E1 00
	ora #$40.b		; 09 40
	sbc ($05.b,S),Y		; F3 05
	sbc $0A00.w,Y		; F9 00 0A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b),Y		; F1 00
	phd		; 0B
	rti		; 40

	inc $02.b,X		; F6 02
	sbc ($00.b,X)		; E1 00
	tsb $FE40.w		; 0C 40 FE
	plx		; FA
	sbc ($00.b,X)		; E1 00
	ora $0640.w		; 0D 40 06
	sbc ($E1.b)		; F2 E1
	brk $0E.b		; 00 0E
	rti		; 40

	asl $E1EA.w		; 0E EA E1
	brk $0F.b		; 00 0F
	rti		; 40

	asl $D2DA.w,X		; 1E DA D2
	brk $18.b		; 00 18
	rti		; 40

	rol $D2.b		; 26 D2
	cmp ($00.b)		; D2 00
	ora $2E40.w,Y		; 19 40 2E
	dex		; CA
	cmp ($00.b)		; D2 00
	inc A		; 1A
	rti		; 40

	plx		; FA
	inc $00E9.w,X		; FE E9 00
	tas		; 1B
	rti		; 40

	asl $F2.b		; 06 F2
	cmp #$00.b		; C9 00
	trb $1240.w		; 1C 40 12
	inc $E9.b		; E6 E9
	brk $1D.b		; 00 1D
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc ($00.b),Y		; F1 00
	asl $0240.w,X		; 1E 40 02
	inc $F9.b,X		; F6 F9
	brk $1F.b		; 00 1F
	rti		; 40

	asl A		; 0A
	inc $00F9.w		; EE F9 00
	jsr $1240.w		; 20 40 12
	inc $F9.b		; E6 F9
	brk $21.b		; 00 21
	rti		; 40

	plx		; FA
	inc $00F6.w,X		; FE F6 00
	jsl $FB1140.l		; 22 40 11 FB
	sbc $AB.b,X		; F5 AB
	php		; 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b,S),Y		; D3 08
	cop $48.b		; 02 48
	inc $8BF2.w,X		; FE F2 8B
	php		; 08
	tsb $48.b		; 04 48
	inc $9BF2.w,X		; FE F2 9B
	php		; 08
	asl $48.b		; 06 48
	inc $FA.b,X		; F6 FA
	cmp $08.b,S		; C3 08
	php		; 08
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	sbc $08.b,S		; E3 08
	asl A		; 0A
	pha		; 48
	ora $F5.b,S		; 03 F5
	cmp ($00.b,S),Y		; D3 00
	tsb $0340.w		; 0C 40 03
	sbc $DB.b,X		; F5 DB
	brk $0D.b		; 00 0D
	rti		; 40

	xba		; EB
	ora $00DB.w		; 0D DB 00
	asl $FB40.w		; 0E 40 FB
	sbc $00F3.w,X		; FD F3 00
	ora $FDFB40.l		; 0F 40 FB FD
	tyx		; BB
	brk $1C.b		; 00 1C
	rti		; 40

	asl $F2.b		; 06 F2
	cmp $00.b,S		; C3 00
	ora $0640.w,X		; 1D 40 06
	sbc ($CB.b)		; F2 CB
	brk $1E.b		; 00 1E
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc $00.b,S		; E3 00
	ora $F50340.l,X		; 1F 40 03 F5
	tyx		; BB
	brk $20.b		; 00 20
	rti		; 40

	sbc #$0F.b		; E9 0F
	sbc ($00.b,X)		; E1 00
	and ($40.b,X)		; 21 40
	ora #$EF.b		; 09 EF
	dec $2200.w,X		; DE 00 22
	rti		; 40

	trb $EC04.w		; 1C 04 EC
	txy		; 9B
	php		; 08
	brk $48.b		; 00 48
	sbc $B1F7.w,Y		; F9 F7 B1
	php		; 08
	cop $48.b		; 02 48
	ora $F3.b		; 05 F3
	lda #$00.b		; A9 00
	tsb $40.b		; 04 40
	ora ($E7.b),Y		; 11 E7
	lda ($00.b),Y		; B1 00
	ora $40.b		; 05 40
	sbc $A9FB.w,X		; FD FB A9
	brk $06.b		; 00 06
	rti		; 40

	ora #$EF.b		; 09 EF
	lda ($00.b),Y		; B1 00
	ora [$40.b]		; 07 40
	ora #$EF.b		; 09 EF
	lda $0800.w,Y		; B9 00 08
	rti		; 40

	xce		; FB
	sbc $D9.b,X		; F5 D9
	php		; 08
	trb $48.b		; 14 48
	jsr ($C9F4.w,X)		; FC F4 C9
	php		; 08
	asl $48.b,X		; 16 48
	phd		; 0B
	sbc $00C1.w		; ED C1 00
	clc		; 18
	rti		; 40

	phd		; 0B
	sbc $00D9.w		; ED D9 00
	ora $1340.w,Y		; 19 40 13
	sbc $D9.b		; E5 D9
	brk $1A.b		; 00 1A
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	sbc #$00.b		; E9 00
	tas		; 1B
	rti		; 40

	tas		; 1B
	cmp $00E9.w,X		; DD E9 00
	trb $F340.w		; 1C 40 F3
	ora $F1.b		; 05 F1
	brk $1D.b		; 00 1D
	rti		; 40

	xba		; EB
	ora $00F9.w		; 0D F9 00
	asl $F340.w,X		; 1E 40 F3
	ora $F9.b		; 05 F9
	brk $1F.b		; 00 1F
	rti		; 40

	xce		; FB
	sbc $00C1.w,X		; FD C1 00
	jsr $1440.w		; 20 40 14
	cpx $D1.b		; E4 D1
	brk $21.b		; 00 21
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b,X)		; C1 00
	jsl $EC0C40.l		; 22 40 0C EC
	cmp #$00.b		; C9 00
	and $40.b,S		; 23 40
	tsb $D1EC.w		; 0C EC D1
	brk $28.b		; 00 28
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc #$00.b		; E9 00
	and #$40.b		; 29 40
	asl $E2.b,X		; 16 E2
	sbc ($00.b),Y		; F1 00
	rol A		; 2A
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc $2B00.w,Y		; F9 00 2B
	rti		; 40

	asl $F9DA.w,X		; 1E DA F9
	brk $2C.b		; 00 2C
	rti		; 40

	sbc $E7FF.w,Y		; F9 FF E7
	brk $2D.b		; 00 2D
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc ($00.b,X)		; E1 00
	rol $1F40.w		; 2E 40 1F
	asl $EA.b		; 06 EA
	stz $0008.w		; 9C 08 00
	pha		; 48
	sed		; F8
	sed		; F8
	lda #$08.b		; A9 08
	cop $48.b		; 02 48
	clc		; 18
	cpx #$B1.b		; E0 B1
	brk $04.b		; 00 04
	rti		; 40

	bpl -24.b		; 10 E8
	lda ($00.b),Y		; B1 00
	ora $40.b		; 05 40
	php		; 08
	beq -87.b		; F0 A9
	brk $06.b		; 00 06
	rti		; 40

	php		; 08
	beq -79.b		; F0 B1
	brk $07.b		; 00 07
	rti		; 40

	sed		; F8
	brk $B9.b		; 00 B9
	brk $08.b		; 00 08
	rti		; 40

	brk $F8.b		; 00 F8
	lda $0900.w,Y		; B9 00 09
	rti		; 40

	php		; 08
	beq -71.b		; F0 B9
	brk $0A.b		; 00 0A
	rti		; 40

	jsr $AFD8.w		; 20 D8 AF
	brk $0B.b		; 00 0B
	rti		; 40

	xce		; FB
	sbc $D9.b,X		; F5 D9
	php		; 08
	trb $48.b		; 14 48
	jsr ($C9F4.w,X)		; FC F4 C9
	php		; 08
	asl $48.b,X		; 16 48
	phd		; 0B
	sbc $00C1.w		; ED C1 00
	clc		; 18
	rti		; 40

	phd		; 0B
	sbc $00D9.w		; ED D9 00
	ora $1340.w,Y		; 19 40 13
	sbc $D9.b		; E5 D9
	brk $1A.b		; 00 1A
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	sbc #$00.b		; E9 00
	tas		; 1B
	rti		; 40

	tas		; 1B
	cmp $00E9.w,X		; DD E9 00
	trb $F340.w		; 1C 40 F3
	ora $F1.b		; 05 F1
	brk $1D.b		; 00 1D
	rti		; 40

	xba		; EB
	ora $00F9.w		; 0D F9 00
	asl $F340.w,X		; 1E 40 F3
	ora $F9.b		; 05 F9
	brk $1F.b		; 00 1F
	rti		; 40

	xce		; FB
	sbc $00C1.w,X		; FD C1 00
	jsr $1440.w		; 20 40 14
	cpx $D1.b		; E4 D1
	brk $21.b		; 00 21
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b,X)		; C1 00
	jsl $EC0C40.l		; 22 40 0C EC
	cmp #$00.b		; C9 00
	and $40.b,S		; 23 40
	tsb $D1EC.w		; 0C EC D1
	brk $28.b		; 00 28
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc #$00.b		; E9 00
	and #$40.b		; 29 40
	asl $E2.b,X		; 16 E2
	sbc ($00.b),Y		; F1 00
	rol A		; 2A
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc $2B00.w,Y		; F9 00 2B
	rti		; 40

	asl $F9DA.w,X		; 1E DA F9
	brk $2C.b		; 00 2C
	rti		; 40

	sbc $E7FF.w,Y		; F9 FF E7
	brk $2D.b		; 00 2D
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc ($00.b,X)		; E1 00
	rol $2040.w		; 2E 40 20
	cmp $1B.b,X		; D5 1B
	cmp #$08.b		; C9 08
	brk $48.b		; 00 48
	sbc $0B.b		; E5 0B
	cmp #$08.b		; C9 08
	cop $48.b		; 02 48
	sbc $FB.b,X		; F5 FB
	cmp #$08.b		; C9 08
	tsb $48.b		; 04 48
	dec $1A.b,X		; D6 1A
	sta $0608.w,Y		; 99 08 06
	pha		; 48
	inc $0A.b		; E6 0A
	sta $0808.w,Y		; 99 08 08
	pha		; 48
	inc $FA.b,X		; F6 FA
	sta $0A08.w,Y		; 99 08 0A
	pha		; 48
	cmp [$19.b],Y		; D7 19
	cmp $0C08.w,Y		; D9 08 0C
	pha		; 48
	sbc [$09.b]		; E7 09
	cmp $0E08.w,Y		; D9 08 0E
	pha		; 48
	bne  32.b		; D0 20
	lda $2008.w,Y		; B9 08 20
	pha		; 48
	cpx #$10.b		; E0 10
	lda $2208.w,Y		; B9 08 22
	pha		; 48
	beq   0.b		; F0 00
	lda $2408.w,Y		; B9 08 24
	pha		; 48
	brk $F0.b		; 00 F0
	lda $2608.w,Y		; B9 08 26
	pha		; 48
	cmp ($1F.b),Y		; D1 1F
	lda #$08.b		; A9 08
	plp		; 28
	pha		; 48
	sbc ($0F.b,X)		; E1 0F
	lda #$08.b		; A9 08
	rol A		; 2A
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	lda #$08.b		; A9 08
	bit $0148.w		; 2C 48 01
	sbc $2E08A9.l		; EF A9 08 2E
	pha		; 48
	sbc [$01.b],Y		; F7 01
	sbc ($00.b,X)		; E1 00
	rti		; 40

	rti		; 40

	ora $F3.b		; 05 F3
	cmp ($00.b),Y		; D1 00
	eor ($40.b,X)		; 41 40
	cmp $23.b,X		; D5 23
	sbc ($00.b),Y		; F1 00
	.db $42, $40		; 42 40
	sbc $15.b,S		; E3 15
	sbc #$00.b		; E9 00
	eor $40.b,S		; 43 40
	sbc ($05.b,S),Y		; F3 05
	sbc #$00.b		; E9 00
	mvp $E1,$40		; 44 40 E1
	ora [$F1.b],Y		; 17 F1
	brk $45.b		; 00 45
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b),Y		; F1 00
	eor $40.b		; 45 40
	cmp ($27.b),Y		; D1 27
	sbc $4600.w,Y		; F9 00 46
	rti		; 40

	cmp $F91F.w,Y		; D9 1F F9
	brk $47.b		; 00 47
	rti		; 40

	sbc ($17.b,X)		; E1 17
	sbc $4800.w,Y		; F9 00 48
	rti		; 40

	sbc #$0F.b		; E9 0F
	sbc $4900.w,Y		; F9 00 49
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc $4800.w,Y		; F9 00 48
	rti		; 40

	cmp [$21.b],Y		; D7 21
	sbc #$00.b		; E9 00
	lsr A		; 4A
	rti		; 40

	ora $F3.b		; 05 F3
	cmp $4B00.w,Y		; D9 00 4B
	rti		; 40

	ora $F3.b		; 05 F3
	cmp #$00.b		; C9 00
	jmp $F740.w		; 4C 40 F7
	ora ($D9.b,X)		; 01 D9
	brk $4D.b		; 00 4D
	rti		; 40

	bit $EB.b		; 24 EB
	ora $E1.b		; 05 E1
	php		; 08
	brk $48.b		; 00 48
	xce		; FB
	sbc $E1.b,X		; F5 E1
	php		; 08
	cop $48.b		; 02 48
	pea $D1FC.w		; F4 FC D1
	php		; 08
	tsb $48.b		; 04 48
	tsb $EC.b		; 04 EC
	cmp ($08.b),Y		; D1 08
	asl $48.b		; 06 48
	trb $DC.b		; 14 DC
	cmp ($08.b),Y		; D1 08
	php		; 08
	pha		; 48
	ora $99E3.w		; 0D E3 99
	php		; 08
	asl A		; 0A
	pha		; 48
	inc $C102.w		; EE 02 C1
	php		; 08
	tsb $F648.w		; 0C 48 F6
	plx		; FA
	lda #$08.b		; A9 08
	asl $0648.w		; 0E 48 06
	nop		; EA
	lda #$08.b		; A9 08
	jsr $1648.w		; 20 48 16
	phx		; DA
	lda #$08.b		; A9 08
	jsl $F2FE48.l		; 22 48 FE F2
	cmp ($08.b,X)		; C1 08
	bit $48.b		; 24 48
	asl $C1E2.w		; 0E E2 C1
	php		; 08
	rol $48.b		; 26 48
	asl $C3D2.w,X		; 1E D2 C3
	php		; 08
	plp		; 28
	pha		; 48
	rol $D2.b		; 26 D2
	lda ($00.b),Y		; B1 00
	rol A		; 2A
	rti		; 40

	inc $12.b		; E6 12
	sbc ($00.b),Y		; F1 00
	pld		; 2B
	rti		; 40

	inc $F10A.w		; EE 0A F1
	brk $2C.b		; 00 2C
	rti		; 40

	inc $02.b,X		; F6 02
	sbc ($00.b),Y		; F1 00
	and $1340.w		; 2D 40 13
	sbc $E1.b		; E5 E1
	brk $2E.b		; 00 2E
	rti		; 40

	phd		; 0B
	sbc $00E1.w		; ED E1 00
	and $ED0B40.l		; 2F 40 0B ED
	sbc #$00.b		; E9 00
	dec A		; 3A
	rti		; 40

	ora $A1DB.w,X		; 1D DB A1
	brk $3B.b		; 00 3B
	rti		; 40

	sbc $15.b,S		; E3 15
	cpx $3C00.w		; EC 00 3C
	rti		; 40

	sbc $9FFB.w,X		; FD FB 9F
	brk $3D.b		; 00 3D
	rti		; 40

	inc $02.b,X		; F6 02
	lda $3E00.w,Y		; B9 00 3E
	rti		; 40

	inc $B9FA.w,X		; FE FA B9
	brk $3F.b		; 00 3F
	rti		; 40

	asl $F2.b		; 06 F2
	lda $4000.w,Y		; B9 00 40
	rti		; 40

	asl $B9EA.w		; 0E EA B9
	brk $41.b		; 00 41
	rti		; 40

	asl $E2.b,X		; 16 E2
	lda $4200.w,Y		; B9 00 42
	rti		; 40

	asl $B9DA.w,X		; 1E DA B9
	brk $43.b		; 00 43
	rti		; 40

	ora $F3.b		; 05 F3
	sta $404400.l,X		; 9F 00 44 40
	sbc $00AB09.l		; EF 09 AB 00
	eor $40.b		; 45 40
	sbc ($07.b),Y		; F1 07
	lda $00.b,X		; B5 00
	trb $DA40.w		; 1C 40 DA
	asl $00F9.w,X		; 1E F9 00
	lsr $40.b		; 46 40
.INDEX 8
	sep #$16		; E2 16
	sbc $4700.w,Y		; F9 00 47
	rti		; 40

	nop		; EA
	asl $00F9.w		; 0E F9 00
	pha		; 48
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc $4900.w,Y		; F9 00 49
	rti		; 40

	tas		; 1B
	inx		; E8
	php		; 08
	cpx $08.b		; E4 08
	brk $48.b		; 00 48
	php		; 08
	inx		; E8
	pea $0208.w		; F4 08 02
	pha		; 48
	php		; 08
	inx		; E8
	cpx $08.b		; E4 08
	tsb $48.b		; 04 48
	beq   0.b		; F0 00
	sty $08.b,X		; 94 08
	asl $48.b		; 06 48
	brk $F0.b		; 00 F0
	sty $08.b,X		; 94 08
	php		; 08
	pha		; 48
	beq   0.b		; F0 00
	ldy $08.b		; A4 08
	asl A		; 0A
	pha		; 48
	brk $F0.b		; 00 F0
	ldy $08.b		; A4 08
	tsb $F048.w		; 0C 48 F0
	brk $B4.b		; 00 B4
	php		; 08
	asl $0048.w		; 0E 48 00
	beq -76.b		; F0 B4
	php		; 08
	jsr $0048.w		; 20 48 00
	beq -60.b		; F0 C4
	php		; 08
	jsl $00F048.l		; 22 48 F0 00
	cpy $08.b		; C4 08
	bit $48.b		; 24 48
	inx		; E8
	php		; 08
	pei ($08.b)		; D4 08
	rol $48.b		; 26 48
	brk $F0.b		; 00 F0
	pei ($08.b)		; D4 08
	plp		; 28
	pha		; 48
	bpl -24.b		; 10 E8
	ldy $00.b		; A4 00
	rol A		; 2A
	rti		; 40

	inx		; E8
	bpl -12.b		; 10 F4
	brk $2B.b		; 00 2B
	rti		; 40

	inx		; E8
	bpl -62.b		; 10 C2
	brk $2C.b		; 00 2C
	rti		; 40

	inx		; E8
	bpl -52.b		; 10 CC
	brk $2D.b		; 00 2D
	rti		; 40

	sed		; F8
	brk $D4.b		; 00 D4
	brk $2E.b		; 00 2E
	rti		; 40

	sed		; F8
	brk $DC.b		; 00 DC
	brk $2F.b		; 00 2F
	rti		; 40

	sed		; F8
	brk $E4.b		; 00 E4
	brk $3A.b		; 00 3A
	rti		; 40

	brk $F8.b		; 00 F8
	cpx $00.b		; E4 00
	tsa		; 3B
	rti		; 40

	brk $F8.b		; 00 F8
	cpx $3C00.w		; EC 00 3C
	rti		; 40

	brk $F8.b		; 00 F8
	pea $3D00.w		; F4 00 3D
	rti		; 40

	inx		; E8
	bpl -81.b		; 10 AF
	brk $3E.b		; 00 3E
	rti		; 40

	cpx #$18.b		; E0 18
	cmp $403F00.l,X		; DF 00 3F 40
	cpx #$18.b		; E0 18
	sbc [$00.b]		; E7 00
	rti		; 40

	rti		; 40

	cpx #$18.b		; E0 18
	sbc $404100.l		; EF 00 41 40
	brk $00.b		; 00 00
	eor ($C2.b),Y		; 51 C2
	sta $E9C8.w,Y		; 99 C8 E9
	dec $D621.w		; CE 21 D6
	lda ($DD.b,X)		; A1 DD
	sbc ($E3.b,X)		; E1 E3
	cmp #$E9.b		; C9 E9
	cmp ($F0.b,X)		; C1 F0
	adc #$F6.b		; 69 F6
	cmp $D9FB.w,Y		; D9 FB D9
	xce		; FB
	cmp $69FB.w,Y		; D9 FB 69
	jsr ($FC69.w,X)		; FC 69 FC
	sta ($FC.b),Y		; 91 FC
	sta ($FC.b),Y		; 91 FC
	sta ($FC.b),Y		; 91 FC
	lda $B9FC.w,Y		; B9 FC B9
	jsr ($FCF1.w,X)		; FC F1 FC
	sbc ($FC.b),Y		; F1 FC
	sbc ($FC.b),Y		; F1 FC
	and #$FD.b		; 29 FD
	eor ($FD.b),Y		; 51 FD
	adc $A1FD.w,Y		; 79 FD A1
	sbc $FDA1.w,X		; FD A1 FD
	brk $00.b		; 00 00
	cmp $49C2.w,Y		; D9 C2 49
	cmp #$F1.b		; C9 F1
	cmp $31D6F1.l		; CF F1 D6 31
	dec $E489.w,X		; DE 89 E4
	sta ($EA.b),Y		; 91 EA
	adc #$F1.b		; 69 F1
	sbc #$F6.b		; E9 F6
	brk $00.b		; 00 00
	adc #$C8.b		; 69 C8
	lda $F1CE.w,Y		; B9 CE F1
	cmp $71.b,X		; D5 71
	cmp $E3B1.w,X		; DD B1 E3
	sta $91E9.w,Y		; 99 E9 91
	beq  57.b		; F0 39
	inc $A9.b,X		; F6 A9
	xce		; FB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	ora $1DEB.w,X		; 1D EB 1D
	ldy $10.b,X		; B4 10
	ora $00.b,S		; 03 00
	xce		; FB
	plp		; 28
	cmp $B728.w,X		; DD 28 B7
	ora $0D0003.l		; 0F 03 00 0D
	bit $BF.b,X		; 34 BF
	bit $C0.b,X		; 34 C0
	asl $03.b,X		; 16 03
	brk $02.b		; 00 02
	inc A		; 1A
	cpx $1A.b		; E4 1A
.INDEX 16
	rep #$1B		; C2 1B
	ora $00.b		; 05 00
	xce		; FB
	asl $1EE7.w,X		; 1E E7 1E
	tax		; AA
	rol A		; 2A
	ora $00.b		; 05 00
	inc $3D.b,X		; F6 3D
	cmp $D53D.w		; CD 3D D5
	ora ($05.b),Y		; 11 05
	brk $06.b		; 00 06
	bit $2CCE.w		; 2C CE 2C
	cld		; D8
	bpl   3.b		; 10 03
	brk $08.b		; 00 08
	and ($C6.b)		; 32 C6
	and ($ED.b)		; 32 ED
	ora ($02.b,S),Y		; 13 02
	brk $04.b		; 00 04
	.db $42, $BA		; 42 BA
	.db $42, $ED		; 42 ED
	ora ($02.b)		; 12 02
	brk $02.b		; 00 02
	and [$D7.b]		; 27 D7
	and [$9F.b]		; 27 9F
	and $FE0003.l		; 2F 03 00 FE
	and ($D0.b)		; 32 D0
	and ($B9.b)		; 32 B9
	ora ($03.b,S),Y		; 13 03
	brk $F8.b		; 00 F8
	rol A		; 2A
	dec $B12A.w,X		; DE 2A B1
	bit $0003.w		; 2C 03 00
	sed		; F8
	ora $1DEB.w,X		; 1D EB 1D
	ldy $10.b,X		; B4 10
	ora $00.b,S		; 03 00
	cop $1A.b		; 02 1A
	cpx $1A.b		; E4 1A
.INDEX 16
	rep #$1B		; C2 1B
	ora $00.b		; 05 00
	xce		; FB
	asl $1EE7.w,X		; 1E E7 1E
	tax		; AA
	rol A		; 2A
	ora $00.b		; 05 00
	asl $2C.b		; 06 2C
	dec $D82C.w		; CE 2C D8
	bpl   3.b		; 10 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F3.b		; 00 F3
	ora [$F6.b],Y		; 17 F6
	ora [$CA.b],Y		; 17 CA
	and [$00.b],Y		; 37 00
	brk $F1.b		; 00 F1
	ora ($FC.b,S),Y		; 13 FC
	ora ($AC.b,S),Y		; 13 AC
	asl $0000.w,X		; 1E 00 00
	inc $F71B.w		; EE 1B F7
	tas		; 1B
	cmp $000033.l		; CF 33 00 00
	inc $FC16.w		; EE 16 FC
	asl $AF.b,X		; 16 AF
	jsr $0000.w		; 20 00 00
	xba		; EB
	ora $19FC.w,Y		; 19 FC 19
	cmp #$38.b		; C9 38
	brk $00.b		; 00 00
	xba		; EB
	ora [$FE.b],Y		; 17 FE
	ora [$AE.b],Y		; 17 AE
	tas		; 1B
	brk $00.b		; 00 00
	sbc ($15.b),Y		; F1 15
	plx		; FA
	ora $CE.b,X		; 15 CE
	bit $00.b,X		; 34 00
	brk $F1.b		; 00 F1
	jsr $20EF.w		; 20 EF 20
	clv		; B8
	asl $00.b,X		; 16 00
	brk $EC.b		; 00 EC
	trb $1CF8.w		; 1C F8 1C
	sbc [$1B.b]		; E7 1B
	brk $00.b		; 00 00
	nop		; EA
	asl $00.b,X		; 16 00
	asl $C9.b,X		; 16 C9
	asl $0000.w,X		; 1E 00 00
	sed		; F8
	clc		; 18
	beq  24.b		; F0 18
	cld		; D8
	and #$00.b		; 29 00
	brk $FC.b		; 00 FC
	ora $EF.b,X		; 15 EF
	ora $BB.b,X		; 15 BB
	ora $0000.w,X		; 1D 00 00
	sbc $25EC25.l		; EF 25 EC 25
	sbc [$1B.b]		; E7 1B
	brk $00.b		; 00 00
	sbc ($1C.b),Y		; F1 1C
	sbc ($1C.b,S),Y		; F3 1C
	iny		; C8
	ora $E70000.l,X		; 1F 00 00 E7
	jsr $20F9.w		; 20 F9 20
	cmp #$38.b		; C9 38
	ora ($00.b,X)		; 01 00
	inc $F919.w		; EE 19 F9
	ora $1CAD.w,Y		; 19 AD 1C
	ora ($00.b,X)		; 01 00
	sbc ($1A.b,S),Y		; F3 1A
	sbc ($1A.b,S),Y		; F3 1A
	cpx $1E.b		; E4 1E
	cop $00.b		; 02 00
	sbc ($16.b,S),Y		; F3 16
	sbc [$16.b],Y		; F7 16
	wai		; CB
	ora $0002.w,Y		; 19 02 00
	sbc ($18.b,S),Y		; F3 18
	sbc $18.b,X		; F5 18
	cmp $000033.l		; CF 33 00 00
	sbc [$19.b],Y		; F7 19
	beq  25.b		; F0 19
	ldx $19.b,Y		; B6 19
	brk $00.b		; 00 00
	sbc ($1B.b),Y		; F1 1B
	pea $D21B.w		; F4 1B D2
	bmi   0.b		; 30 00
	brk $F7.b		; 00 F7
	ora $F4.b,X		; 15 F4
	ora $B9.b,X		; 15 B9
	ora $0000.w,Y		; 19 00 00
	sbc ($19.b)		; F2 19
	sbc $19.b,X		; F5 19
	wai		; CB
	and [$00.b],Y		; 37 00
	brk $F4.b		; 00 F4
	ora [$F5.b],Y		; 17 F5
	ora [$AE.b],Y		; 17 AE
	ora $0000.w,X		; 1D 00 00
	sbc ($18.b)		; F2 18
	inc $18.b,X		; F6 18
	dex		; CA
	sec		; 38
	brk $00.b		; 00 00
	sbc ($17.b,S),Y		; F3 17
	inc $17.b,X		; F6 17
	lda $00001B.l		; AF 1B 00 00
	sbc ($1A.b,S),Y		; F3 1A
	sbc ($1A.b,S),Y		; F3 1A
	dex		; CA
	sec		; 38
	brk $00.b		; 00 00
	sbc $16.b,X		; F5 16
	sbc $16.b,X		; F5 16
	bcs  26.b		; B0 1A
	brk $00.b		; 00 00
	inc $15.b,X		; F6 15
	sbc $15.b,X		; F5 15
	wai		; CB
	and [$00.b],Y		; 37 00
	brk $F6.b		; 00 F6
	ora $F5.b,X		; 15 F5
	ora $AE.b,X		; 15 AE
	ora $0000.w,X		; 1D 00 00
	sed		; F8
	bpl  -8.b		; 10 F8
	bpl -54.b		; 10 CA
	and [$00.b],Y		; 37 00
	brk $F8.b		; 00 F8
	bpl  -8.b		; 10 F8
	bpl -83.b		; 10 AD
	ora $0000.w,X		; 1D 00 00
	sbc ($16.b,S),Y		; F3 16
	sbc [$16.b],Y		; F7 16
	dec $0033.w		; CE 33 00
	brk $F6.b		; 00 F6
	ora ($F7.b,S),Y		; 13 F7
	ora ($AE.b,S),Y		; 13 AE
	jsr $0000.w		; 20 00 00
	sbc [$11.b],Y		; F7 11
	sed		; F8
	ora ($CB.b),Y		; 11 CB
	and $00.b,X		; 35 00
	brk $F8.b		; 00 F8
	ora ($F5.b,S),Y		; 13 F5
	ora ($AD.b,S),Y		; 13 AD
	asl $0000.w,X		; 1E 00 00
	sbc ($19.b)		; F2 19
	sbc $19.b,X		; F5 19
	cmp [$22.b]		; C7 22
	brk $00.b		; 00 00
	sbc ($16.b,S),Y		; F3 16
	sbc [$16.b],Y		; F7 16
	ldx $0019.w		; AE 19 00
	brk $F0.b		; 00 F0
	tas		; 1B
	sbc $1B.b,X		; F5 1B
	iny		; C8
	and ($00.b,X)		; 21 00
	brk $F6.b		; 00 F6
	ora $F5.b,X		; 15 F5
	ora $AF.b,X		; 15 AF
	ora $0000.w,Y		; 19 00 00
	sbc $F61D.w		; ED 1D F6
	ora $18C6.w,X		; 1D C6 18
	brk $00.b		; 00 00
	sbc $24ED24.l		; EF 24 ED 24
	lda $11.b,X		; B5 11
	brk $00.b		; 00 00
	sed		; F8
	ora $19EF.w,Y		; 19 EF 19
	lda $14.b,X		; B5 14
	brk $00.b		; 00 00
	jsr ($EF15.w,X)		; FC 15 EF
	ora $C9.b,X		; 15 C9
	ora [$00.b],Y		; 17 00
	brk $02.b		; 00 02
	ora $E9.b,X		; 15 E9
	ora $AD.b,X		; 15 AD
	pld		; 2B
	brk $00.b		; 00 00
	sbc ($0F.b,S),Y		; F3 0F
	inc $C20F.w,X		; FE 0F C2
	inc A		; 1A
	brk $00.b		; 00 00
	beq  27.b		; F0 1B
	sbc $1B.b,X		; F5 1B
	cmp $1A.b		; C5 1A
	brk $00.b		; 00 00
	beq  22.b		; F0 16
	plx		; FA
	asl $AD.b,X		; 16 AD
	clc		; 18
	brk $00.b		; 00 00
	sbc ($1B.b),Y		; F1 1B
	pea $CA1B.w		; F4 1B CA
	sec		; 38
	brk $00.b		; 00 00
	sed		; F8
	asl $F2.b,X		; 16 F2
	asl $AE.b,X		; 16 AE
	trb $0000.w		; 1C 00 00
	sbc $17.b,X		; F5 17
	pea $CC17.w		; F4 17 CC
	rol $00.b,X		; 36 00
	brk $F5.b		; 00 F5
	asl $F5.b,X		; 16 F5
	asl $AF.b,X		; 16 AF
	ora $0000.w,X		; 1D 00 00
	pea $F418.w		; F4 18 F4
	clc		; 18
	dex		; CA
	sec		; 38
	brk $00.b		; 00 00
	pea $F01C.w		; F4 1C F0
	trb $1CAE.w		; 1C AE 1C
	brk $00.b		; 00 00
	pea $F418.w		; F4 18 F4
	clc		; 18
	iny		; C8
	dec A		; 3A
	brk $00.b		; 00 00
	sbc [$17.b],Y		; F7 17
	sbc ($17.b)		; F2 17
	lda ($16.b)		; B2 16
	brk $00.b		; 00 00
	ora $1A.b,S		; 03 1A
	sbc $1A.b,S		; E3 1A
	dex		; CA
	sec		; 38
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	sbc #$17.b		; E9 17
	lda $001D.w		; AD 1D 00
	brk $0A.b		; 00 0A
	ora ($E4.b)		; 12 E4
	ora ($CA.b)		; 12 CA
	sec		; 38
	brk $00.b		; 00 00
	asl A		; 0A
	ora $1DD9.w,X		; 1D D9 1D
	lda $0028.w		; AD 28 00
	brk $05.b		; 00 05
	asl $E5.b,X		; 16 E5
	asl $C8.b,X		; 16 C8
	dec A		; 3A
	brk $00.b		; 00 00
	inc $DC26.w,X		; FE 26 DC
	rol $AA.b		; 26 AA
	asl $0000.w,X		; 1E 00 00
	xce		; FB
	asl $1EE7.w,X		; 1E E7 1E
	dex		; CA
	sec		; 38
	brk $00.b		; 00 00
	sbc $1AE71A.l,X		; FF 1A E7 1A
	plb		; AB
	ora $FD0000.l,X		; 1F 00 00 FD
	ora $EE.b,X		; 15 EE
	ora $C9.b,X		; 15 C9
	and $0000.w,Y		; 39 00 00
	sbc $ED16.w,X		; FD 16 ED
	asl $AA.b,X		; 16 AA
	ora $ED0000.l,X		; 1F 00 00 ED
	asl $1EF5.w,X		; 1E F5 1E
	cpy $001B.w		; CC 1B 00
	brk $EB.b		; 00 EB
	ora [$FE.b],Y		; 17 FE
	ora [$AF.b],Y		; 17 AF
	ora $0000.w,X		; 1D 00 00
	cpx $FA1A.w		; EC 1A FA
	inc A		; 1A
	dex		; CA
	and ($00.b,X)		; 21 00
	brk $F5.b		; 00 F5
	ora $1DEE.w,X		; 1D EE 1D
	bcs  30.b		; B0 1E
	brk $00.b		; 00 00
	sbc ($18.b),Y		; F1 18
	sbc [$18.b],Y		; F7 18
	dec $24.b		; C6 24
	brk $00.b		; 00 00
	beq  25.b		; F0 19
	sbc [$19.b],Y		; F7 19
	ldy $001A.w		; AC 1A 00
	brk $F0.b		; 00 F0
	asl $1EF2.w,X		; 1E F2 1E
	cmp #$22.b		; C9 22
	brk $00.b		; 00 00
	beq  30.b		; F0 1E
	sbc ($1E.b)		; F2 1E
	ldx $001B.w		; AE 1B 00
	brk $F6.b		; 00 F6
	and $E7.b,S		; 23 E7
	and $CA.b,S		; 23 CA
	trb $0000.w		; 1C 00 00
	sbc ($24.b),Y		; F1 24
	xba		; EB
	bit $B2.b		; 24 B2
	clc		; 18
	brk $00.b		; 00 00
	sbc $1BF61B.l		; EF 1B F6 1B
.ACCU 8
	sep #$20		; E2 20
	brk $00.b		; 00 00
	sbc ($15.b)		; F2 15
	sbc $C915.w,Y		; F9 15 C9
	ora $0000.w,Y		; 19 00 00
	sbc ($25.b),Y		; F1 25
	nop		; EA
	and $E2.b		; 25 E2
	jsr $0000.w		; 20 00 00
	jsr ($E321.w,X)		; FC 21 E3
	and ($CD.b,X)		; 21 CD
	ora $00.b,X		; 15 00
	brk $F7.b		; 00 F7
	rol A		; 2A
	cmp $19E92A.l,X		; DF 2A E9 19
	brk $00.b		; 00 00
	sbc $E81B.w,X		; FD 1B E8
	tas		; 1B
	cmp $00001A.l		; CF 1A 00 00
	xce		; FB
	rol A		; 2A
	stp		; DB
	rol A		; 2A
	sbc $0014.w		; ED 14 00
	brk $FF.b		; 00 FF
	asl $EB.b,X		; 16 EB
	asl $D1.b,X		; 16 D1
	trb $0000.w		; 1C 00 00
	inx		; E8
	rol $F2.b		; 26 F2
	rol $E9.b		; 26 E9
	ora $0000.w,Y		; 19 00 00
	sbc ($1E.b),Y		; F1 1E
	sbc ($1E.b),Y		; F1 1E
	dec $001B.w		; CE 1B 00
	brk $F2.b		; 00 F2
	plp		; 28
	inc $28.b		; E6 28
	cpx $0015.w		; EC 15 00
	brk $F3.b		; 00 F3
	ora $1DF0.w,X		; 1D F0 1D
	pei ($18.b)		; D4 18
	brk $00.b		; 00 00
	ora ($2B.b,X)		; 01 2B
	pei ($2B.b)		; D4 2B
	xba		; EB
	asl $00.b,X		; 16 00
	brk $04.b		; 00 04
	ora [$E5.b],Y		; 17 E5
	ora [$DA.b],Y		; 17 DA
	ora ($00.b),Y		; 11 00
	brk $E8.b		; 00 E8
	jsl $EF22F6.l		; 22 F6 22 EF
	ora ($00.b,S),Y		; 13 00
	brk $EC.b		; 00 EC
	trb $1CF8.w		; 1C F8 1C
	cmp [$18.b],Y		; D7 18
	brk $00.b		; 00 00
	sbc $1B.b,X		; F5 1B
	beq  27.b		; F0 1B
	cmp #$39.b		; C9 39
	brk $00.b		; 00 00
	beq  36.b		; F0 24
	cpx $A924.w		; EC 24 A9
	jsr $0000.w		; 20 00 00
	sbc ($19.b,S),Y		; F3 19
	pea $C719.w		; F4 19 C7
	tsa		; 3B
	brk $00.b		; 00 00
	sbc ($20.b)		; F2 20
	inc $AB20.w		; EE 20 AB
	trb $0000.w		; 1C 00 00
	sbc ($17.b,S),Y		; F3 17
	inc $17.b,X		; F6 17
	cmp $3D.b		; C5 3D
	brk $00.b		; 00 00
	inc $F51D.w		; EE 1D F5
	ora $289D.w,X		; 1D 9D 28
	brk $00.b		; 00 00
	inc $19.b,X		; F6 19
	sbc ($19.b),Y		; F1 19
	cmp [$23.b]		; C7 23
	brk $00.b		; 00 00
	sbc [$19.b],Y		; F7 19
	beq  25.b		; F0 19
	tay		; A8
	ora $F50000.l,X		; 1F 00 00 F5
	tas		; 1B
	beq  27.b		; F0 1B
	cmp $001C.w		; CD 1C 00
	brk $F0.b		; 00 F0
	trb $1CF4.w		; 1C F4 1C
	lda $0020.w		; AD 20 00
	brk $F4.b		; 00 F4
	ora $1DEF.w,X		; 1D EF 1D
	wai		; CB
	asl $0000.w,X		; 1E 00 00
	sbc ($1D.b,S),Y		; F3 1D
	beq  29.b		; F0 1D
	ldx $001D.w		; AE 1D 00
	brk $F4.b		; 00 F4
	trb $1CF0.w		; 1C F0 1C
	wai		; CB
	ora $F40000.l,X		; 1F 00 00 F4
	tas		; 1B
	sbc ($1B.b),Y		; F1 1B
	ldx $001D.w		; AE 1D 00
	brk $E4.b		; 00 E4
	bmi -20.b		; 30 EC
	bmi -47.b		; 30 D1
	ora $0000.w,X		; 1D 00 00
	sbc ($19.b,S),Y		; F3 19
	pea $A919.w		; F4 19 A9
	plp		; 28
	brk $00.b		; 00 00
	sbc $F41F.w		; ED 1F F4
	ora $0033CE.l,X		; 1F CE 33 00
	brk $ED.b		; 00 ED
	ora $CE1FF4.l,X		; 1F F4 1F CE
	tas		; 1B
	brk $00.b		; 00 00
	sbc $F41F.w		; ED 1F F4
	ora $0033CE.l,X		; 1F CE 33 00
	brk $ED.b		; 00 ED
	ora $CE1FF4.l,X		; 1F F4 1F CE
	ora [$00.b],Y		; 17 00
	brk $F3.b		; 00 F3
	inc A		; 1A
	sbc ($1A.b,S),Y		; F3 1A
	cmp [$37.b]		; C7 37
	brk $00.b		; 00 00
	sbc ($1A.b,S),Y		; F3 1A
	sbc ($1A.b,S),Y		; F3 1A
	tax		; AA
	ora $0000.w,X		; 1D 00 00
	pea $0C00.w		; F4 00 0C
	brk $C9.b		; 00 C9
	brk $00.b		; 00 00
	brk $F4.b		; 00 F4
	brk $0C.b		; 00 0C
	brk $AC.b		; 00 AC
	brk $00.b		; 00 00
	brk $C4.b		; 00 C4
	brk $3C.b		; 00 3C
	brk $8A.b		; 00 8A
	brk $00.b		; 00 00
	brk $C4.b		; 00 C4
	brk $3C.b		; 00 3C
	brk $8A.b		; 00 8A
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	ora ($F6.b)		; 12 F6
	ora ($CB.b)		; 12 CB
	and [$00.b],Y		; 37 00
	brk $F8.b		; 00 F8
	ora ($F6.b)		; 12 F6
	ora ($AC.b)		; 12 AC
	ora $F60000.l,X		; 1F 00 00 F6
	trb $F6.b		; 14 F6
	trb $CB.b		; 14 CB
	and [$00.b],Y		; 37 00
	brk $F6.b		; 00 F6
	trb $F6.b		; 14 F6
	trb $B4.b		; 14 B4
	ora [$00.b],Y		; 17 00
	brk $F2.b		; 00 F2
	ora $19F5.w,Y		; 19 F5 19
	cmp ($30.b),Y		; D1 30
	brk $00.b		; 00 00
	sbc [$1F.b],Y		; F7 1F
	nop		; EA
	ora $0015BC.l,X		; 1F BC 15 00
	brk $F8.b		; 00 F8
	tas		; 1B
	sbc $CB1B.w		; ED 1B CB
	rol $00.b,X		; 36 00
	brk $FE.b		; 00 FE
	ora $1DE5.w,X		; 1D E5 1D
	lda ($19.b,S),Y		; B3 19
	brk $00.b		; 00 00
	sbc [$1C.b],Y		; F7 1C
	sbc $E51C.w		; ED 1C E5
	jsr $0000.w		; 20 00 00
	plx		; FA
	trb $F2.b		; 14 F2
	trb $CB.b		; 14 CB
	inc A		; 1A
	brk $00.b		; 00 00
	sbc ($17.b,S),Y		; F3 17
	inc $17.b,X		; F6 17
	adc $37.b,X		; 75 37
	brk $00.b		; 00 00
	sbc ($13.b),Y		; F1 13
	jsr ($5713.w,X)		; FC 13 57
	asl $0000.w,X		; 1E 00 00
	xba		; EB
	ora $19FC.w,Y		; 19 FC 19
	adc [$38.b],Y		; 77 38
	brk $00.b		; 00 00
	xba		; EB
	ora [$FE.b],Y		; 17 FE
	ora [$5C.b],Y		; 17 5C
	tas		; 1B
	brk $00.b		; 00 00
	sbc ($15.b),Y		; F1 15
	plx		; FA
	ora $87.b,X		; 15 87
	bit $00.b,X		; 34 00
	brk $F1.b		; 00 F1
	jsr $20EF.w		; 20 EF 20
	adc ($16.b),Y		; 71 16
	brk $00.b		; 00 00
	inc $17.b,X		; F6 17
	sbc ($17.b,S),Y		; F3 17
	dex		; CA
	and [$00.b],Y		; 37 00
	brk $FC.b		; 00 FC
	ora ($F1.b,S),Y		; 13 F1
	ora ($AC.b,S),Y		; 13 AC
	asl $0000.w,X		; 1E 00 00
	jsr ($EB19.w,X)		; FC 19 EB
	ora $38C9.w,Y		; 19 C9 38
	brk $00.b		; 00 00
	inc $EB17.w,X		; FE 17 EB
	ora [$AE.b],Y		; 17 AE
	tas		; 1B
	brk $00.b		; 00 00
	plx		; FA
	ora $F1.b,X		; 15 F1
	ora $CE.b,X		; 15 CE
	bit $00.b,X		; 34 00
	brk $EF.b		; 00 EF
	jsr $20F1.w		; 20 F1 20
	clv		; B8
	asl $00.b,X		; 16 00
	brk $F6.b		; 00 F6
	ora [$F3.b],Y		; 17 F3
	ora [$75.b],Y		; 17 75
	and [$00.b],Y		; 37 00
	brk $FC.b		; 00 FC
	ora ($F1.b,S),Y		; 13 F1
	ora ($57.b,S),Y		; 13 57
	asl $0000.w,X		; 1E 00 00
	jsr ($EB19.w,X)		; FC 19 EB
	ora $3877.w,Y		; 19 77 38
	brk $00.b		; 00 00
	inc $EB17.w,X		; FE 17 EB
	ora [$5C.b],Y		; 17 5C
	tas		; 1B
	brk $00.b		; 00 00
	plx		; FA
	ora $F1.b,X		; 15 F1
	ora $87.b,X		; 15 87
	bit $00.b,X		; 34 00
	brk $EF.b		; 00 EF
	jsr $20F1.w		; 20 F1 20
	adc ($16.b),Y		; 71 16
	brk $00.b		; 00 00
	inc $22.b,X		; F6 22
	inx		; E8
	jsl $0013EF.l		; 22 EF 13 00
	brk $F8.b		; 00 F8
	trb $1CEC.w		; 1C EC 1C
	cmp [$18.b],Y		; D7 18
	brk $00.b		; 00 00
	sbc $19.b,X		; F5 19
	sbc ($19.b)		; F2 19
	cmp [$22.b]		; C7 22
	brk $00.b		; 00 00
	sbc [$16.b],Y		; F7 16
	sbc ($16.b,S),Y		; F3 16
	ldx $0019.w		; AE 19 00
	brk $F5.b		; 00 F5
	tas		; 1B
	beq  27.b		; F0 1B
	iny		; C8
	and ($00.b,X)		; 21 00
	brk $F5.b		; 00 F5
	ora $F6.b,X		; 15 F6
	ora $AF.b,X		; 15 AF
	ora $0000.w,Y		; 19 00 00
	sbc $19.b,X		; F5 19
	sbc ($19.b)		; F2 19
	wai		; CB
	and [$00.b],Y		; 37 00
	brk $F5.b		; 00 F5
	ora [$F4.b],Y		; 17 F4
	ora [$AE.b],Y		; 17 AE
	ora $0000.w,X		; 1D 00 00
	beq  24.b		; F0 18
	sed		; F8
	clc		; 18
	cld		; D8
	and #$00.b		; 29 00
	brk $EF.b		; 00 EF
	ora $FC.b,X		; 15 FC
	ora $BB.b,X		; 15 BB
	ora $0000.w,X		; 1D 00 00
	sbc #$19.b		; E9 19
	inc $CA19.w,X		; FE 19 CA
	sec		; 38
	brk $00.b		; 00 00
	nop		; EA
	jsr $20F6.w		; 20 F6 20
	bcs  26.b		; B0 1A
	brk $00.b		; 00 00
	xba		; EB
	ora [$FE.b],Y		; 17 FE
	ora [$C4.b],Y		; 17 C4
	rol $0000.w,X		; 3E 00 00
	xba		; EB
	ora $B11FF6.l,X		; 1F F6 1F B1
	ora ($00.b,S),Y		; 13 00
	brk $EA.b		; 00 EA
	asl $1EF8.w,X		; 1E F8 1E
	cmp [$2A.b],Y		; D7 2A
	brk $00.b		; 00 00
	sbc [$1B.b]		; E7 1B
	inc $B91B.w,X		; FE 1B B9
	asl $0000.w,X		; 1E 00 00
	sbc $18F918.l		; EF 18 F9 18
	cmp $3D.b		; C5 3D
	brk $00.b		; 00 00
	cpx $24.b		; E4 24
	sed		; F8
	bit $B1.b		; 24 B1
	trb $0000.w		; 1C 00 00
	sbc ($1B.b),Y		; F1 1B
	pea $CA1B.w		; F4 1B CA
	sec		; 38
	brk $00.b		; 00 00
	sed		; F8
	asl $F2.b,X		; 16 F2
	asl $AE.b,X		; 16 AE
	trb $0000.w		; 1C 00 00
	cpx $FA1A.w		; EC 1A FA
	inc A		; 1A
	dex		; CA
	and ($00.b,X)		; 21 00
	brk $F5.b		; 00 F5
	ora $1DEE.w,X		; 1D EE 1D
	bcs  30.b		; B0 1E
	brk $00.b		; 00 00
	sbc ($18.b),Y		; F1 18
	sbc [$18.b],Y		; F7 18
	dec $24.b		; C6 24
	brk $00.b		; 00 00
	beq  25.b		; F0 19
	sbc [$19.b],Y		; F7 19
	ldy $001A.w		; AC 1A 00
	brk $F1.b		; 00 F1
	and $EA.b		; 25 EA
	and $E2.b		; 25 E2
	jsr $0000.w		; 20 00 00
	jsr ($E321.w,X)		; FC 21 E3
	and ($CD.b,X)		; 21 CD
	ora $00.b,X		; 15 00
	brk $F5.b		; 00 F5
	jsl $EC22E9.l		; 22 E9 22 EC
	asl $00.b,X		; 16 00
	brk $F9.b		; 00 F9
	clc		; 18
	sbc $1AD218.l		; EF 18 D2 1A
	brk $00.b		; 00 00
	sbc ($1C.b),Y		; F1 1C
	sbc ($1C.b,S),Y		; F3 1C
	dec $22.b		; C6 22
	brk $00.b		; 00 00
	sbc ($14.b,S),Y		; F3 14
	sbc $AD14.w,Y		; F9 14 AD
	ora $0000.w,Y		; 19 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($18.b),Y		; F1 18
	sbc [$18.b],Y		; F7 18
	lda ($2C.b,S),Y		; B3 2C
	brk $00.b		; 00 00
	sbc ($18.b),Y		; F1 18
	sbc [$18.b],Y		; F7 18
	ldy $0046.w,X		; BC 46 00
	brk $F1.b		; 00 F1
	clc		; 18
	sbc [$18.b],Y		; F7 18
	iny		; C8
	dec A		; 3A
	brk $00.b		; 00 00
	sbc ($18.b),Y		; F1 18
	sbc [$18.b],Y		; F7 18
	cmp $33.b,S		; C3 33
	brk $00.b		; 00 00
	sbc ($18.b),Y		; F1 18
	sbc [$18.b],Y		; F7 18
	cmp $000033.l		; CF 33 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $22.b,S		; 03 22
	stp		; DB
	jsl $030FB8.l		; 22 B8 0F 03
	brk $07.b		; 00 07
	bit $2CCD.w		; 2C CD 2C
	lda ($11.b,S),Y		; B3 11
	ora $00.b,S		; 03 00
	ora ($22.b),Y		; 11 22
	cmp $C022.w		; CD 22 C0
	inc A		; 1A
	ora $00.b,S		; 03 00
	asl $B230.w,X		; 1E 30 B2
	bmi -60.b		; 30 C4
	ora $0003.w		; 0D 03 00
	inc A		; 1A
	and $B1.b,X		; 35 B1
	and $AF.b,X		; 35 AF
	trb $0003.w		; 1C 03 00
	ora $19.b,S		; 03 19
	cpx $19.b		; E4 19
	cmp ($1A.b,X)		; C1 1A
	ora $00.b		; 05 00
	ora $14.b,S		; 03 14
	sbc #$14.b		; E9 14
	lda $29.b		; A5 29
	ora ($00.b,X)		; 01 00
	beq  68.b		; F0 44
	cpy $C444.w		; CC 44 C4
	asl $05.b,X		; 16 05
	brk $12.b		; 00 12
	bit $CA.b		; 24 CA
	bit $D5.b		; 24 D5
	php		; 08
	ora $00.b,S		; 03 00
	ora ($35.b,X)		; 01 35
	dex		; CA
	and $EB.b,X		; 35 EB
	ora $E20002.l		; 0F 02 00 E2
	sec		; 38
	inc $38.b		; E6 38
	beq  18.b		; F0 12
	cop $00.b		; 02 00
	ora ($37.b,S),Y		; 13 37
	ldx $37.b,Y		; B6 37
	beq  19.b		; F0 13
	cop $00.b		; 02 00
	inc $F71B.w		; EE 1B F7
	tas		; 1B
	clv		; B8
	rol $03.b		; 26 03
	brk $D1.b		; 00 D1
	rts		; 60

	cmp $0FBC60.l		; CF 60 BC 0F
	ora $00.b,S		; 03 00
	sbc $F51E.w		; ED 1E F5
	asl $0FBC.w,X		; 1E BC 0F
	ora $00.b,S		; 03 00
	bne  96.b		; D0 60
	bne  96.b		; D0 60
	tsx		; BA
	bpl   3.b		; 10 03
	brk $F4.b		; 00 F4
	mvp $44,$C8		; 44 C8 44
	txs		; 9A
	and $F40007.l,X		; 3F 07 00 F4
	mvp $44,$C8		; 44 C8 44
	txs		; 9A
	and $F50007.l,X		; 3F 07 00 F5
	asl $1EED.w,X		; 1E ED 1E
	ldy $030F.w,X		; BC 0F 03
	brk $FD.b		; 00 FD
	jsr $20E3.w		; 20 E3 20
	ldy $0520.w,X		; BC 20 05
	brk $0F.b		; 00 0F
	and #$C8.b		; 29 C8
	and #$D0.b		; 29 D0
	bpl   3.b		; 10 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	clc		; 18
	sed		; F8
	clc		; 18
	cpy $3D.b		; C4 3D
	brk $00.b		; 00 00
	beq  21.b		; F0 15
	xce		; FB
	ora $AB.b,X		; 15 AB
	ora $0000.w,Y		; 19 00 00
	nop		; EA
	ora $1DF9.w,X		; 1D F9 1D
	dec $3B.b		; C6 3B
	brk $00.b		; 00 00
	cpx $FD17.w		; EC 17 FD
	ora [$AC.b],Y		; 17 AC
	inc A		; 1A
	brk $00.b		; 00 00
	sbc $19F819.l		; EF 19 F8 19
	rep #$41		; C2 41
	brk $00.b		; 00 00
	sbc [$0F.b],Y		; F7 0F
	plx		; FA
	ora $0016AD.l		; 0F AD 16 00
	brk $E3.b		; 00 E3
	tas		; 1B
	cop $1B.b		; 02 1B
	cpy $3D.b		; C4 3D
	brk $00.b		; 00 00
	inx		; E8
	asl $02.b,X		; 16 02
	asl $B3.b,X		; 16 B3
	ora ($00.b),Y		; 11 00
	brk $F8.b		; 00 F8
	asl $1EEA.w,X		; 1E EA 1E
	dec $0024.w,X		; DE 24 00
	brk $F6.b		; 00 F6
	clc		; 18
	sbc ($18.b)		; F2 18
	dec $18.b		; C6 18
	brk $00.b		; 00 00
	sed		; F8
	ora $1DEB.w,X		; 1D EB 1D
	cmp ($2E.b,S),Y		; D3 2E
	brk $00.b		; 00 00
	sbc $12EF12.l,X		; FF 12 EF 12
	ldy $0017.w,X		; BC 17 00
	brk $F7.b		; 00 F7
	ora $DF1FEA.l,X		; 1F EA 1F DF
	jsl $000000.l		; 22 00 00 00
	ora ($EF.b),Y		; 11 EF
	ora ($CA.b),Y		; 11 CA
	ora $00.b,X		; 15 00
	brk $F8.b		; 00 F8
	trb $F4.b		; 14 F4
	trb $C3.b		; 14 C3
	eor ($01.b,X)		; 41 01
	brk $F9.b		; 00 F9
	ora ($F5.b)		; 12 F5
	ora ($AB.b)		; 12 AB
	clc		; 18
	ora ($00.b,X)		; 01 00
	pea $EE1E.w		; F4 1E EE
	asl $20E2.w,X		; 1E E2 20
	cop $00.b		; 02 00
	xce		; FB
	asl $EF.b,X		; 16 EF
	asl $CE.b,X		; 16 CE
	trb $02.b		; 14 02
	brk $F1.b		; 00 F1
	clc		; 18
	sbc [$18.b],Y		; F7 18
	cpy $0037.w		; CC 37 00
	brk $FA.b		; 00 FA
	ora $F1.b,X		; 15 F1
	ora $BB.b,X		; 15 BB
	ora ($00.b),Y		; 11 00
	brk $F2.b		; 00 F2
	ora [$F7.b],Y		; 17 F7
	ora [$CC.b],Y		; 17 CC
	and ($00.b),Y		; 31 00
	brk $FB.b		; 00 FB
	asl $EF.b,X		; 16 EF
	asl $BA.b,X		; 16 BA
	ora ($00.b)		; 12 00
	brk $06.b		; 00 06
	brk $FA.b		; 00 FA
	brk $BC.b		; 00 BC
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $F8.b		; 00 F8
	brk $A9.b		; 00 A9
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	brk $F7.b		; 00 F7
	brk $BC.b		; 00 BC
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	brk $F5.b		; 00 F5
	brk $A9.b		; 00 A9
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	brk $F7.b		; 00 F7
	brk $BC.b		; 00 BC
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $F8.b		; 00 F8
	brk $A9.b		; 00 A9
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $FB.b		; 00 FB
	brk $BC.b		; 00 BC
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $FA.b		; 00 FA
	brk $A9.b		; 00 A9
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $FF.b		; 00 FF
	brk $BC.b		; 00 BC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A9.b		; 00 A9
	brk $00.b		; 00 00
	brk $F4.b		; 00 F4
	clc		; 18
	pea $BF18.w		; F4 18 BF
	.db $42, $00		; 42 00
	brk $F5.b		; 00 F5
	asl $1EED.w,X		; 1E ED 1E
	ldy $0018.w		; AC 18 00
	brk $F0.b		; 00 F0
	tas		; 1B
	sbc $1B.b,X		; F5 1B
	cpy $3E.b		; C4 3E
	brk $00.b		; 00 00
	sbc ($1F.b,S),Y		; F3 1F
	inc $AB1F.w		; EE 1F AB
	ora $0000.w,Y		; 19 00 00
	sbc ($17.b,S),Y		; F3 17
	inc $17.b,X		; F6 17
	cpy $3E.b		; C4 3E
	brk $00.b		; 00 00
	inc $1D.b,X		; F6 1D
	sbc $AB1D.w		; ED 1D AB
	ora $0000.w,Y		; 19 00 00
	sbc ($18.b,S),Y		; F3 18
	sbc $18.b,X		; F5 18
	cpy #$0042.w		; C0 42 00
	brk $F8.b		; 00 F8
	ora $F3.b,X		; 15 F3
	ora $AA.b,X		; 15 AA
	asl $00.b,X		; 16 00
	brk $F0.b		; 00 F0
	inc A		; 1A
	inc $1A.b,X		; F6 1A
	lda $000043.l,X		; BF 43 00 00
	sed		; F8
	ora ($F6.b)		; 12 F6
	ora ($AA.b)		; 12 AA
	ora $00.b,X		; 15 00
	brk $F0.b		; 00 F0
	trb $1CF4.w		; 1C F4 1C
	ldx $0043.w,Y		; BE 43 00
	brk $F8.b		; 00 F8
	bpl  -8.b		; 10 F8
	bpl -85.b		; 10 AB
	ora ($00.b,S),Y		; 13 00
	brk $F0.b		; 00 F0
	inc A		; 1A
	inc $1A.b,X		; F6 1A
	cpy #$0042.w		; C0 42 00
	brk $F6.b		; 00 F6
	trb $F6.b		; 14 F6
	trb $AB.b		; 14 AB
	ora $00.b,X		; 15 00
	brk $F0.b		; 00 F0
	inc A		; 1A
	inc $1A.b,X		; F6 1A
	cmp ($1F.b,X)		; C1 1F
	brk $00.b		; 00 00
	sbc $F611.w,Y		; F9 11 F6
	ora ($AD.b),Y		; 11 AD
	trb $00.b		; 14 00
	brk $F3.b		; 00 F3
	clc		; 18
	sbc $18.b,X		; F5 18
	ldy $002A.w,X		; BC 2A 00
	brk $F8.b		; 00 F8
	ora ($F6.b)		; 12 F6
	ora ($A8.b)		; 12 A8
	trb $00.b		; 14 00
	brk $EE.b		; 00 EE
	ora $1DF5.w,X		; 1D F5 1D
.ACCU 16
	rep #$26		; C2 26
	brk $00.b		; 00 00
	sbc $EB18.w,X		; FD 18 EB
	clc		; 18
	bcs  18.b		; B0 12
	brk $00.b		; 00 00
.ACCU 8
	sep #$27		; E2 27
	sbc [$27.b],Y		; F7 27
	lda $0017.w,Y		; B9 17 00
	brk $09.b		; 00 09
	ora [$E0.b],Y		; 17 E0
	ora [$BB.b],Y		; 17 BB
	trb $00.b		; 14 00
	brk $FA.b		; 00 FA
	inc A		; 1A
	cpx $A91A.w		; EC 1A A9
	pld		; 2B
	brk $00.b		; 00 00
	sbc $13EE13.l,X		; FF 13 EE 13
	pei ($13.b)		; D4 13
	brk $00.b		; 00 00
	sbc $E132.w		; ED 32 E1
	and ($B8.b)		; 32 B8
	clc		; 18
	brk $00.b		; 00 00
	sbc $14.b,X		; F5 14
	sbc [$14.b],Y		; F7 14
	bne  25.b		; D0 19
	brk $00.b		; 00 00
	sbc $27.b,X		; F5 27
	cpx $27.b		; E4 27
	cmp $19.b,S		; C3 19
	brk $00.b		; 00 00
	sbc ($18.b),Y		; F1 18
	sbc [$18.b],Y		; F7 18
	ldy $0017.w		; AC 17 00
	brk $F2.b		; 00 F2
	and $EB.b,S		; 23 EB
	and $C1.b,S		; 23 C1
	inc A		; 1A
	brk $00.b		; 00 00
	xce		; FB
	ora $19EC.w,Y		; 19 EC 19
	lda $000012.l		; AF 12 00 00
	pea $FB11.w		; F4 11 FB
	ora ($C1.b),Y		; 11 C1
	bit $0000.w,X		; 3C 00 00
	pea $FB11.w		; F4 11 FB
	ora ($A7.b),Y		; 11 A7
	tas		; 1B
	brk $00.b		; 00 00
	sbc ($0F.b,S),Y		; F3 0F
	inc $C00F.w,X		; FE 0F C0
	bit $0000.w,X		; 3C 00 00
	sbc ($10.b,S),Y		; F3 10
	sbc $A710.w,X		; FD 10 A7
	ora $0000.w,Y		; 19 00 00
	inc $0F.b,X		; F6 0F
	xce		; FB
	ora $003FC2.l		; 0F C2 3F 00
	brk $F6.b		; 00 F6
	ora ($F9.b),Y		; 11 F9
	ora ($A8.b),Y		; 11 A8
	inc A		; 1A
	brk $00.b		; 00 00
	sbc $13.b,X		; F5 13
	sed		; F8
	ora ($C7.b,S),Y		; 13 C7
	and $F50000.l,X		; 3F 00 00 F5
	ora $1DEE.w,X		; 1D EE 1D
	lda $001A.w		; AD 1A 00
	brk $F7.b		; 00 F7
	ora [$F2.b],Y		; 17 F2
	ora [$C2.b],Y		; 17 C2
	and $F70000.l,X		; 3F 00 00 F7
	ora [$F2.b],Y		; 17 F2
	ora [$AA.b],Y		; 17 AA
	clc		; 18
	brk $00.b		; 00 00
	xce		; FB
	ora [$EE.b],Y		; 17 EE
	ora [$C2.b],Y		; 17 C2
	and $F20000.l,X		; 3F 00 00 F2
	tas		; 1B
	sbc ($1B.b,S),Y		; F3 1B
	plb		; AB
	ora [$00.b],Y		; 17 00
	brk $FC.b		; 00 FC
	clc		; 18
	cpx $C218.w		; EC 18 C2
	rti		; 40

	brk $00.b		; 00 00
	sbc $EA19.w,X		; FD 19 EA
	ora $16AC.w,Y		; 19 AC 16
	brk $00.b		; 00 00
	brk $15.b		; 00 15
	xba		; EB
	ora $C2.b,X		; 15 C2
	rti		; 40

	brk $00.b		; 00 00
	tsb $16.b		; 04 16
	inc $16.b		; E6 16
	ldy $0016.w		; AC 16 00
	brk $00.b		; 00 00
	asl $EA.b,X		; 16 EA
	asl $C2.b,X		; 16 C2
	rol $0000.w,X		; 3E 00 00
	inc $E919.w,X		; FE 19 E9
	ora $14AE.w,Y		; 19 AE 14
	brk $00.b		; 00 00
	ora $DA19.w		; 0D 19 DA
	ora $3FC3.w,Y		; 19 C3 3F
	brk $00.b		; 00 00
	ora ($15.b),Y		; 11 15
	phx		; DA
	ora $AC.b,X		; 15 AC
	ora [$00.b],Y		; 17 00
	brk $05.b		; 00 05
	asl $E5.b,X		; 16 E5
	asl $C3.b,X		; 16 C3
	and $0C0000.l,X		; 3F 00 00 0C
	ora ($E1.b,S),Y		; 13 E1
	ora ($AB.b,S),Y		; 13 AB
	clc		; 18
	brk $00.b		; 00 00
	ora $E112.w		; 0D 12 E1
	ora ($C7.b)		; 12 C7
	tsa		; 3B
	brk $00.b		; 00 00
	asl $D022.w		; 0E 22 D0
	jsl $0025AC.l		; 22 AC 25 00
	brk $0A.b		; 00 0A
	jsl $C422D4.l		; 22 D4 22 C4
	rol $0000.w,X		; 3E 00 00
	phd		; 0B
	bit $D1.b		; 24 D1
	bit $AF.b		; 24 AF
	ora $00.b,X		; 15 00
	brk $F0.b		; 00 F0
	jsr $20F0.w		; 20 F0 20
	cpx #$0021.w		; E0 21 00
	brk $F5.b		; 00 F5
	ora $F6.b,X		; 15 F6
	ora $C9.b,X		; 15 C9
	ora [$00.b],Y		; 17 00
	brk $EC.b		; 00 EC
	inc A		; 1A
	plx		; FA
	inc A		; 1A
	cmp ($27.b,X)		; C1 27
	brk $00.b		; 00 00
	sbc ($16.b)		; F2 16
	sed		; F8
	asl $AB.b,X		; 16 AB
	asl $00.b,X		; 16 00
	brk $E7.b		; 00 E7
	and ($F8.b,X)		; 21 F8
	and ($C3.b,X)		; 21 C3
	jsl $F30000.l		; 22 00 00 F3
	asl $1EEF.w,X		; 1E EF 1E
	lda $000014.l		; AF 14 00 00
	sbc ($1E.b),Y		; F1 1E
	sbc ($1E.b),Y		; F1 1E
	iny		; C8
	bit $00.b		; 24 00
	brk $F1.b		; 00 F1
	ora [$F8.b],Y		; 17 F8
	ora [$AC.b],Y		; 17 AC
	trb $0000.w		; 1C 00 00
	sbc ($1B.b),Y		; F1 1B
	pea $C61B.w		; F4 1B C6
	and $00.b		; 25 00
	brk $F2.b		; 00 F2
	inc A		; 1A
	pea $AE1A.w		; F4 1A AE
	clc		; 18
	brk $00.b		; 00 00
	sbc ($1A.b),Y		; F1 1A
	sbc $1A.b,X		; F5 1A
	ldy $0025.w,X		; BC 25 00
	brk $E9.b		; 00 E9
	asl $1EF9.w,X		; 1E F9 1E
	plb		; AB
	ora ($00.b),Y		; 11 00
	brk $EF.b		; 00 EF
	ora $BC1FF2.l,X		; 1F F2 1F BC
	and $0000.w		; 2D 00 00
	inc $17.b		; E6 17
	ora $17.b,S		; 03 17
	ldy $0015.w		; AC 15 00
	brk $ED.b		; 00 ED
	and [$EC.b]		; 27 EC
	and [$BB.b]		; 27 BB
	bit $00.b		; 24 00
	brk $EB.b		; 00 EB
	asl $FF.b,X		; 16 FF
	asl $A8.b,X		; 16 A8
	ora ($00.b,S),Y		; 13 00
	brk $FE.b		; 00 FE
	asl $1EE4.w,X		; 1E E4 1E
	sbc ($22.b,X)		; E1 22
	brk $00.b		; 00 00
	tsb $16.b		; 04 16
	inc $16.b		; E6 16
	wai		; CB
	asl $00.b,X		; 16 00
	brk $00.b		; 00 00
	asl $1EE2.w,X		; 1E E2 1E
	sbc ($22.b,X)		; E1 22
	brk $00.b		; 00 00
	ora $19.b		; 05 19
.INDEX 8
	sep #$19		; E2 19
	wai		; CB
	asl $00.b,X		; 16 00
	brk $F3.b		; 00 F3
	asl $1EEF.w,X		; 1E EF 1E
	sbc $1D.b		; E5 1D
	brk $00.b		; 00 00
	inc $16.b,X		; F6 16
	pea $D416.w		; F4 16 D4
	ora ($00.b)		; 12 00
	brk $F2.b		; 00 F2
	rol A		; 2A
	cpx $2A.b		; E4 2A
	sbc $000015.l		; EF 15 00 00
	pea $F517.w		; F4 17 F5
	ora [$D8.b],Y		; 17 D8
	ora [$00.b],Y		; 17 00
	brk $F9.b		; 00 F9
	rol $E1.b		; 26 E1
	rol $EF.b		; 26 EF
	trb $00.b		; 14 00
	brk $0C.b		; 00 0C
	ora ($E1.b,S),Y		; 13 E1
	ora ($D2.b,S),Y		; 13 D2
	ora $0000.w,X		; 1D 00 00
	ora $1E.b		; 05 1E
	cmp $E51E.w,X		; DD 1E E5
	ora $0000.w,X		; 1D 00 00
	cop $17.b		; 02 17
	sbc [$17.b]		; E7 17
	cmp ($13.b)		; D2 13
	brk $00.b		; 00 00
	asl $D51D.w		; 0E 1D D5
	ora $1AE8.w,X		; 1D E8 1A
	brk $00.b		; 00 00
	bpl  23.b		; 10 17
	cmp $D117.w,Y		; D9 17 D1
	ora [$00.b],Y		; 17 00
	brk $0D.b		; 00 0D
	trb $1CD7.w		; 1C D7 1C
	sbc #$2B.b		; E9 2B
	brk $00.b		; 00 00
	asl $D71B.w		; 0E 1B D7
	tas		; 1B
	pei ($15.b)		; D4 15
	brk $00.b		; 00 00
	sbc ($12.b,S),Y		; F3 12
	xce		; FB
	ora ($C7.b)		; 12 C7
	tsa		; 3B
	brk $00.b		; 00 00
	inc $19.b,X		; F6 19
	sbc ($19.b),Y		; F1 19
	lda $001A.w		; AD 1A 00
	brk $EF.b		; 00 EF
	ora ($00.b),Y		; 11 00
	ora ($C2.b),Y		; 11 C2
	rti		; 40

	brk $00.b		; 00 00
	sbc $12FF12.l		; EF 12 FF 12
	lda $0015.w		; AD 15 00
	brk $FB.b		; 00 FB
	ora ($F3.b)		; 12 F3
	ora ($C7.b)		; 12 C7
	tsa		; 3B
	brk $00.b		; 00 00
	sbc ($19.b),Y		; F1 19
	inc $19.b,X		; F6 19
	lda $001A.w		; AD 1A 00
	brk $EF.b		; 00 EF
	asl $0E03.w		; 0E 03 0E
	cpy $3E.b		; C4 3E
	brk $00.b		; 00 00
	sbc $100110.l		; EF 10 01 10
	ldx $0016.w		; AE 16 00
	brk $F4.b		; 00 F4
	asl $0EFE.w		; 0E FE 0E
	ldy $0045.w,X		; BC 45 00
	brk $E2.b		; 00 E2
	rol $F8.b		; 26 F8
	rol $A7.b		; 26 A7
	ora $00.b,X		; 15 00
	brk $0B.b		; 00 0B
	ora $1DD8.w,X		; 1D D8 1D
	cmp $3C.b		; C5 3C
	brk $00.b		; 00 00
	asl A		; 0A
	asl $E0.b,X		; 16 E0
	asl $97.b,X		; 16 97
	rol $0000.w		; 2E 00 00
	sbc $35.b		; E5 35
	inc $35.b		; E6 35
	ldy $0012.w,X		; BC 12 00
	brk $F5.b		; 00 F5
	ora $F6.b,X		; 15 F6
	ora $CE.b,X		; 15 CE
	bit $00.b,X		; 34 00
	brk $F4.b		; 00 F4
	asl $F6.b,X		; 16 F6
	asl $BC.b,X		; 16 BC
	bit $00.b		; 24 00
	brk $F7.b		; 00 F7
	asl $F3.b,X		; 16 F3
	asl $E0.b,X		; 16 E0
	and ($00.b,X)		; 21 00
	brk $EB.b		; 00 EB
	pld		; 2B
	nop		; EA
	pld		; 2B
	tsx		; BA
	ora [$00.b],Y		; 17 00
	brk $F4.b		; 00 F4
	asl $F6.b,X		; 16 F6
	asl $D1.b,X		; 16 D1
	bmi   0.b		; 30 00
	brk $FE.b		; 00 FE
	brk $02.b		; 00 02
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	brk $02.b		; 00 02
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	inc A		; 1A
	inc $C51A.w		; EE 1A C5
	bit $0000.w,X		; 3C 00 00
	inc $15.b,X		; F6 15
	sbc $15.b,X		; F5 15
	plb		; AB
	inc A		; 1A
	brk $00.b		; 00 00
	sed		; F8
	asl $1EEA.w,X		; 1E EA 1E
	tsx		; BA
	pld		; 2B
	brk $00.b		; 00 00
	sed		; F8
	asl $1EEA.w,X		; 1E EA 1E
	sbc $1C.b		; E5 1C
	brk $00.b		; 00 00
	beq  24.b		; F0 18
	sed		; F8
	clc		; 18
	adc $003D.w		; 6D 3D 00
	brk $F0.b		; 00 F0
	ora $FB.b,X		; 15 FB
	ora $54.b,X		; 15 54
	ora $0000.w,Y		; 19 00 00
	sbc $19F819.l		; EF 19 F8 19
	adc $000041.l		; 6F 41 00 00
	sbc [$0F.b],Y		; F7 0F
	plx		; FA
	ora $00165A.l		; 0F 5A 16 00
	brk $E3.b		; 00 E3
	tas		; 1B
	cop $1B.b		; 02 1B
	adc [$3D.b],Y		; 77 3D
	brk $00.b		; 00 00
	inx		; E8
	asl $02.b,X		; 16 02
	asl $66.b,X		; 16 66
	ora ($00.b),Y		; 11 00
	brk $F8.b		; 00 F8
	clc		; 18
	beq  24.b		; F0 18
	cpy $3D.b		; C4 3D
	brk $00.b		; 00 00
	xce		; FB
	ora $F0.b,X		; 15 F0
	ora $AB.b,X		; 15 AB
	ora $0000.w,Y		; 19 00 00
	sed		; F8
	ora $19EF.w,Y		; 19 EF 19
	rep #$41		; C2 41
	brk $00.b		; 00 00
	plx		; FA
	ora $AD0FF7.l		; 0F F7 0F AD
	asl $00.b,X		; 16 00
	brk $02.b		; 00 02
	tas		; 1B
	sbc $1B.b,S		; E3 1B
	cpy $3D.b		; C4 3D
	brk $00.b		; 00 00
	cop $16.b		; 02 16
	inx		; E8
	asl $B3.b,X		; 16 B3
	ora ($00.b),Y		; 11 00
	brk $F8.b		; 00 F8
	clc		; 18
	beq  24.b		; F0 18
	adc $003D.w		; 6D 3D 00
	brk $FB.b		; 00 FB
	ora $F0.b,X		; 15 F0
	ora $54.b,X		; 15 54
	ora $0000.w,Y		; 19 00 00
	sed		; F8
	ora $19EF.w,Y		; 19 EF 19
	adc $000041.l		; 6F 41 00 00
	plx		; FA
	ora $5A0FF7.l		; 0F F7 0F 5A
	asl $00.b,X		; 16 00
	brk $02.b		; 00 02
	tas		; 1B
	sbc $1B.b,S		; E3 1B
	adc [$3D.b],Y		; 77 3D
	brk $00.b		; 00 00
	cop $16.b		; 02 16
	inx		; E8
	asl $66.b,X		; 16 66
	ora ($00.b),Y		; 11 00
	brk $F6.b		; 00 F6
	asl $F4.b,X		; 16 F4
	asl $BC.b,X		; 16 BC
	bit $00.b		; 24 00
	brk $F3.b		; 00 F3
	asl $F7.b,X		; 16 F7
	asl $E0.b,X		; 16 E0
	and ($00.b,X)		; 21 00
	brk $F0.b		; 00 F0
	trb $1CF4.w		; 1C F4 1C
	cpy $3D.b		; C4 3D
	brk $00.b		; 00 00
	inc $10.b,X		; F6 10
	plx		; FA
	bpl -84.b		; 10 AC
	clc		; 18
	brk $00.b		; 00 00
	ora ($26.b,X)		; 01 26
	cmp $C726.w,Y		; D9 26 C7
	and $00.b,S		; 23 00
	brk $E1.b		; 00 E1
	and $FA.b		; 25 FA
	and $C5.b		; 25 C5
	trb $0000.w		; 1C 00 00
	sbc [$21.b]		; E7 21
	sed		; F8
	and ($C3.b,X)		; 21 C3
	jsl $F30000.l		; 22 00 00 F3
	asl $1EEF.w,X		; 1E EF 1E
	lda $000014.l		; AF 14 00 00
	brk $1E.b		; 00 1E
.INDEX 8
	sep #$1E		; E2 1E
	sbc ($22.b,X)		; E1 22
	brk $00.b		; 00 00
	ora $19.b		; 05 19
.INDEX 8
	sep #$19		; E2 19
	wai		; CB
	asl $00.b,X		; 16 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F2.b		; 00 F2
	clc		; 18
	inc $18.b,X		; F6 18
	tsx		; BA
	rol A		; 2A
	brk $00.b		; 00 00
	sbc ($18.b)		; F2 18
	inc $18.b,X		; F6 18
	lda $0044.w,X		; BD 44 00
	brk $FC.b		; 00 FC
	clc		; 18
	cpx $CB18.w		; EC 18 CB
	and [$00.b],Y		; 37 00
	brk $F2.b		; 00 F2
	clc		; 18
	inc $18.b,X		; F6 18
	ldx $31.b,Y		; B6 31
	brk $00.b		; 00 00
	sbc ($18.b)		; F2 18
	inc $18.b,X		; F6 18
	cmp ($32.b),Y		; D1 32
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($1C.b,X)		; 01 1C
	sbc $1C.b,S		; E3 1C
	lda ($16.b)		; B2 16
	brk $00.b		; 00 00
	tsb $18.b		; 04 18
	cpx $18.b		; E4 18
	ldx $0016.w		; AE 16 00
	brk $09.b		; 00 09
	bit $2CCB.w		; 2C CB 2C
	bne  13.b		; D0 0D
	ora $00.b,S		; 03 00
	ora ($18.b),Y		; 11 18
	cmp [$18.b],Y		; D7 18
	sta ($2C.b,S),Y		; 93 2C
	ora $00.b,S		; 03 00
	ora $C72C.w		; 0D 2C C7
	bit $16B2.w		; 2C B2 16
	ora $00.b,S		; 03 00
	ora $1F.b		; 05 1F
	jmp.w [$B31F]		; DC 1F B3
	trb $03.b		; 14 03
	brk $F9.b		; 00 F9
	rol $D1.b,X		; 36 D1
	rol $C7.b,X		; 36 C7
	ora [$05.b],Y		; 17 05
	brk $0B.b		; 00 0B
	and $C0.b,X		; 35 C0
	and $EE.b,X		; 35 EE
	ora ($02.b)		; 12 02
	brk $DE.b		; 00 DE
	and $ED.b,X		; 35 ED
	and $EC.b,X		; 35 EC
	trb $02.b		; 14 02
	brk $04.b		; 00 04
	trb $1CE0.w		; 1C E0 1C
	cmp ($15.b,X)		; C1 15
	ora $00.b		; 05 00
	sbc $42BF42.l,X		; FF 42 BF 42
	cld		; D8
	and [$03.b]		; 27 03
	brk $09.b		; 00 09
	rol $2EC9.w		; 2E C9 2E
	lda [$16.b],Y		; B7 16
	ora $00.b,S		; 03 00
	ora ($39.b)		; 12 39
	lda $39.b,X		; B5 39
	lda $19.b,X		; B5 19
	ora $00.b,S		; 03 00
	ora $C320.w,X		; 1D 20 C3
	jsr $27BA.w		; 20 BA 27
	ora $00.b,S		; 03 00
	ora $B53E.w		; 0D 3E B5
	rol $16B7.w,X		; 3E B7 16
	ora $00.b,S		; 03 00
	asl $1E.b		; 06 1E
	jmp.w [$A31E]		; DC 1E A3
	and $070005.l,X		; 3F 05 00 07
	and $39C0.w,Y		; 39 C0 39
	sbc $000313.l		; EF 13 03 00
	cmp ($2A.b)		; D2 2A
	tsb $2A.b		; 04 2A
	lda #$29.b		; A9 29
	ora $00.b,S		; 03 00
	jsr ($DA2A.w,X)		; FC 2A DA
	rol A		; 2A
	sta $033A.w,Y		; 99 3A 03
	brk $07.b		; 00 07
	and [$C2.b],Y		; 37 C2
	and [$BE.b],Y		; 37 BE
	rol A		; 2A
	ora $00.b,S		; 03 00
	cmp ($32.b),Y		; D1 32
	sbc $A432.w,X		; FD 32 A4
	bit $0003.w		; 2C 03 00
	dec $2D.b,X		; D6 2D
	sbc $A62D.w,X		; FD 2D A6
	and $0003.w		; 2D 03 00
	asl A		; 0A
	trb $1CDA.w		; 1C DA 1C
	stz $033A.w		; 9C 3A 03
	brk $F5.b		; 00 F5
	and ($D8.b,S),Y		; 33 D8
	and ($98.b,S),Y		; 33 98
	eor ($03.b,X)		; 41 03
	brk $08.b		; 00 08
	and $CF2FC9.l		; 2F C9 2F CF
	bpl   3.b		; 10 03
	brk $02.b		; 00 02
	ora $C11FDF.l,X		; 1F DF 1F C1
	ora [$05.b],Y		; 17 05
	brk $FD.b		; 00 FD
	and $C63FC4.l,X		; 3F C4 3F C6
	bit $03.b		; 24 03
	brk $FE.b		; 00 FE
	rti		; 40

	rep #$40		; C2 40
.ACCU 16
	rep #$25		; C2 25
	ora $00.b,S		; 03 00
	ora $3C.b,S		; 03 3C
	cmp ($3C.b,X)		; C1 3C
	jmp.w [$0328]		; DC 28 03
	brk $0F.b		; 00 0F
	and ($BE.b,S),Y		; 33 BE
	and ($C7.b,S),Y		; 33 C7
	and $0003.w,X		; 3D 03 00
	pea $CC40.w		; F4 40 CC
	rti		; 40

	dex		; CA
	trb $05.b		; 14 05
	brk $02.b		; 00 02
	jsl $A322DC.l		; 22 DC 22 A3
	bmi   5.b		; 30 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EF.b		; 00 EF
	asl $FB.b,X		; 16 FB
	asl $BF.b,X		; 16 BF
	eor ($00.b,X)		; 41 00
	brk $EE.b		; 00 EE
	ora ($01.b),Y		; 11 01
	ora ($A6.b),Y		; 11 A6
	ora $0000.w,Y		; 19 00 00
	inc $F81A.w		; EE 1A F8
	inc A		; 1A
.ACCU 16
.INDEX 16
	rep #$3E		; C2 3E
	brk $00.b		; 00 00
	sbc ($18.b,X)		; E1 18
	ora [$18.b]		; 07 18
	tax		; AA
	clc		; 18
	brk $00.b		; 00 00
	cpx $FE16.w		; EC 16 FE
	asl $C0.b,X		; 16 C0
	rti		; 40

	brk $00.b		; 00 00
	sbc ($10.b),Y		; F1 10
	sbc $19A710.l,X		; FF 10 A7 19
	brk $00.b		; 00 00
	sbc $FE15.w		; ED 15 FE
	ora $C3.b,X		; 15 C3
	rol $0000.w,X		; 3E 00 00
	inc $F220.w		; EE 20 F2
	jsr $15AE.w		; 20 AE 15
	brk $00.b		; 00 00
	sbc ($26.b),Y		; F1 26
	sbc #$DD26.w		; E9 26 DD
	and $00.b,S		; 23 00
	brk $F1.b		; 00 F1
	ora $19F6.w,Y		; 19 F6 19
	cmp $18.b		; C5 18
	brk $00.b		; 00 00
	sbc [$19.b],Y		; F7 19
	beq  25.b		; F0 19
	cmp ($2F.b)		; D2 2F
	brk $00.b		; 00 00
	sbc $EF18.w,Y		; F9 18 EF
	clc		; 18
	clv		; B8
	inc A		; 1A
	brk $00.b		; 00 00
	pea $E725.w		; F4 25 E7
	and $DB.b		; 25 DB
	rol $00.b		; 26 00
	brk $FA.b		; 00 FA
	ora [$EF.b],Y		; 17 EF
	ora [$C4.b],Y		; 17 C4
	ora [$00.b],Y		; 17 00
	brk $EC.b		; 00 EC
	ora $19FB.w,Y		; 19 FB 19
.ACCU 16
.INDEX 16
	rep #$3E		; C2 3E
	ora ($00.b,X)		; 01 00
	beq  22.b		; F0 16
	plx		; FA
	asl $A9.b,X		; 16 A9
	ora $0001.w,Y		; 19 01 00
	xce		; FB
	clc		; 18
	sbc $DA18.w		; ED 18 DA
	and [$02.b]		; 27 02
	brk $FC.b		; 00 FC
	ora [$ED.b],Y		; 17 ED
	ora [$C4.b],Y		; 17 C4
	asl $02.b,X		; 16 02
	brk $F9.b		; 00 F9
	ora $19EE.w,Y		; 19 EE 19
	cmp ($3E.b,X)		; C1 3E
	brk $00.b		; 00 00
	sbc $ED16.w,X		; FD 16 ED
	asl $A9.b,X		; 16 A9
	clc		; 18
	brk $00.b		; 00 00
	sed		; F8
	inc A		; 1A
	inc $C11A.w		; EE 1A C1
	and $FC0000.l,X		; 3F 00 00 FC
	ora [$ED.b],Y		; 17 ED
	ora [$AA.b],Y		; 17 AA
	ora [$00.b],Y		; 17 00
	brk $FB.b		; 00 FB
	asl $EF.b,X		; 16 EF
	asl $B9.b,X		; 16 B9
	eor [$00.b]		; 47 00
	brk $FD.b		; 00 FD
	ora $19EA.w,Y		; 19 EA 19
	ldy $15.b		; A4 15
	brk $00.b		; 00 00
	pea $F715.w		; F4 15 F7
	ora $C7.b,X		; 15 C7
	and $0000.w,Y		; 39 00 00
	sbc [$12.b],Y		; F7 12
	sbc [$12.b],Y		; F7 12
	tax		; AA
	ora $0000.w,X		; 1D 00 00
	sbc $14.b,X		; F5 14
	sbc [$14.b],Y		; F7 14
	ldx $0043.w,Y		; BE 43 00
	brk $F8.b		; 00 F8
	ora ($F7.b),Y		; 11 F7
	ora ($A8.b),Y		; 11 A8
	asl $00.b,X		; 16 00
	brk $F6.b		; 00 F6
	ora ($F7.b,S),Y		; 13 F7
	ora ($BE.b,S),Y		; 13 BE
	eor $00.b,S		; 43 00
	brk $F8.b		; 00 F8
	ora ($F5.b,S),Y		; 13 F5
	ora ($A7.b,S),Y		; 13 A7
	ora [$00.b],Y		; 17 00
	brk $F0.b		; 00 F0
	inc A		; 1A
	inc $1A.b,X		; F6 1A
	ldx $0024.w,Y		; BE 24 00
	brk $F6.b		; 00 F6
	asl $F4.b,X		; 16 F4
	asl $A8.b,X		; 16 A8
	asl $00.b,X		; 16 00
	brk $EE.b		; 00 EE
	tas		; 1B
	sbc [$1B.b],Y		; F7 1B
	ldx $0026.w,Y		; BE 26 00
	brk $F8.b		; 00 F8
	ora ($F7.b),Y		; 11 F7
	ora ($A9.b),Y		; 11 A9
	ora $00.b,X		; 15 00
	brk $F2.b		; 00 F2
	asl $1EF0.w,X		; 1E F0 1E
	cmp $20.b,S		; C3 20
	brk $00.b		; 00 00
	sbc ($25.b,S),Y		; F3 25
	inx		; E8
	and $B0.b		; 25 B0
	ora ($00.b,S),Y		; 13 00
	brk $F2.b		; 00 F2
	ora $1DF1.w,X		; 1D F1 1D
	lda $001A.w,Y		; B9 1A 00
	brk $F6.b		; 00 F6
	trb $1CEE.w		; 1C EE 1C
	cmp ($15.b,S),Y		; D3 15
	brk $00.b		; 00 00
	cpx $FB19.w		; EC 19 FB
	ora $2AA3.w,Y		; 19 A3 2A
	brk $00.b		; 00 00
	inc $23.b		; E6 23
	sbc [$23.b],Y		; F7 23
	cmp $0014.w		; CD 14 00
	brk $EE.b		; 00 EE
	and ($F1.b,X)		; 21 F1
	and ($BF.b,X)		; 21 BF
	ora $EE0000.l,X		; 1F 00 00 EE
	inc A		; 1A
	sed		; F8
	inc A		; 1A
	tay		; A8
	ora [$00.b],Y		; 17 00
	brk $FF.b		; 00 FF
	clc		; 18
	sbc #$BE18.w		; E9 18 BE
	eor ($00.b,X)		; 41 00
	brk $02.b		; 00 02
	ora [$E7.b],Y		; 17 E7
	ora [$A4.b],Y		; 17 A4
	inc A		; 1A
	brk $00.b		; 00 00
	asl A		; 0A
	ora [$DF.b],Y		; 17 DF
	ora [$BC.b],Y		; 17 BC
	mvp $00,$00		; 44 00 00
	phd		; 0B
	asl $DF.b,X		; 16 DF
	asl $A5.b,X		; 16 A5
	ora [$00.b],Y		; 17 00
	brk $0F.b		; 00 0F
	ora $DC.b,X		; 15 DC
	ora $BB.b,X		; 15 BB
	mvp $00,$00		; 44 00 00
	ora ($1B.b),Y		; 11 1B
	pei ($1B.b)		; D4 1B
	ldx $15.b		; A6 15
	brk $00.b		; 00 00
	pea $F517.w		; F4 17 F5
	ora [$BF.b],Y		; 17 BF
	.db $42, $00		; 42 00
	brk $F6.b		; 00 F6
	asl $F4.b,X		; 16 F4
	asl $A6.b,X		; 16 A6
	ora $0000.w,Y		; 19 00 00
	sbc $16.b,X		; F5 16
	sbc $16.b,X		; F5 16
	lda $000041.l,X		; BF 41 00 00
	sbc $F314.w,Y		; F9 14 F3
	trb $A5.b		; 14 A5
	inc A		; 1A
	brk $00.b		; 00 00
	sbc $16.b,X		; F5 16
	sbc $16.b,X		; F5 16
	lda $000041.l,X		; BF 41 00 00
	inc $15.b,X		; F6 15
	sbc $15.b,X		; F5 15
	ldx $19.b		; A6 19
	brk $00.b		; 00 00
	sbc $16.b,X		; F5 16
	sbc $16.b,X		; F5 16
	lda $000041.l,X		; BF 41 00 00
	inc $15.b,X		; F6 15
	sbc $15.b,X		; F5 15
	lda $1A.b		; A5 1A
	brk $00.b		; 00 00
	inc $22.b,X		; F6 22
	inx		; E8
	jsl $0025DB.l		; 22 DB 25 00
	brk $01.b		; 00 01
	ora [$E8.b],Y		; 17 E8
	ora [$C2.b],Y		; 17 C2
	ora $0000.w,Y		; 19 00 00
	sbc $22.b,X		; F5 22
	sbc #$DA22.w		; E9 22 DA
	rol $00.b		; 26 00
	brk $00.b		; 00 00
	ora [$E9.b],Y		; 17 E9
	ora [$C4.b],Y		; 17 C4
	asl $00.b,X		; 16 00
	brk $FD.b		; 00 FD
	clc		; 18
	xba		; EB
	clc		; 18
.ACCU 16
.INDEX 16
	rep #$3E		; C2 3E
	brk $00.b		; 00 00
	tsb $17.b		; 04 17
	sbc $17.b		; E5 17
	lda #$0019.w		; A9 19 00
	brk $FE.b		; 00 FE
	trb $EE.b		; 14 EE
	trb $BB.b		; 14 BB
	eor $00.b		; 45 00
	brk $04.b		; 00 04
	trb $E8.b		; 14 E8
	trb $A4.b		; 14 A4
	ora [$00.b],Y		; 17 00
	brk $F8.b		; 00 F8
	clc		; 18
	beq  24.b		; F0 18
	cmp ($3F.b,X)		; C1 3F
	brk $00.b		; 00 00
	jsr ($E91B.w,X)		; FC 1B E9
	tas		; 1B
	ldx $1B.b		; A6 1B
	brk $00.b		; 00 00
	sed		; F8
	and ($E7.b,X)		; 21 E7
	and ($C5.b,X)		; 21 C5
	tsa		; 3B
	brk $00.b		; 00 00
	ora $1D.b,S		; 03 1D
	cpx #$AC1D.w		; E0 1D AC
	ora $0000.w,Y		; 19 00 00
	sbc [$1A.b],Y		; F7 1A
	sbc $41BF1A.l		; EF 1A BF 41
	brk $00.b		; 00 00
	sbc $E221.w,X		; FD 21 E2
	and ($A9.b,X)		; 21 A9
	asl $00.b,X		; 16 00
	brk $F2.b		; 00 F2
	tas		; 1B
	sbc ($1B.b,S),Y		; F3 1B
	ldx $0043.w,Y		; BE 43 00
	brk $F5.b		; 00 F5
	ora [$F4.b],Y		; 17 F4
	ora [$A5.b],Y		; 17 A5
	ora $0000.w,Y		; 19 00 00
	xce		; FB
	clc		; 18
	sbc $BF18.w		; ED 18 BF
	eor ($00.b,X)		; 41 00
	brk $FF.b		; 00 FF
	ora [$EA.b],Y		; 17 EA
	ora [$A7.b],Y		; 17 A7
	clc		; 18
	brk $00.b		; 00 00
	xce		; FB
	inc A		; 1A
	xba		; EB
	inc A		; 1A
	cpy $3D.b		; C4 3D
	brk $00.b		; 00 00
	jsr ($EB19.w,X)		; FC 19 EB
	ora $20A4.w,Y		; 19 A4 20
	brk $00.b		; 00 00
	sbc ($1E.b),Y		; F1 1E
	sbc ($1E.b),Y		; F1 1E
	cpy #$0020.w		; C0 20 00
	brk $F4.b		; 00 F4
	ora $19F3.w,Y		; 19 F3 19
	tay		; A8
	clc		; 18
	brk $00.b		; 00 00
	sbc [$2E.b],Y		; F7 2E
	stp		; DB
	rol $1CC3.w		; 2E C3 1C
	brk $00.b		; 00 00
	sbc [$16.b],Y		; F7 16
	sbc ($16.b,S),Y		; F3 16
	ldy $0017.w		; AC 17 00
	brk $03.b		; 00 03
	and ($DC.b,X)		; 21 DC
	and ($E7.b,X)		; 21 E7
	asl $0000.w,X		; 1E 00 00
	ora $1C.b,S		; 03 1C
	sbc ($1C.b,X)		; E1 1C
	cmp $001A.w		; CD 1A 00
	brk $0B.b		; 00 0B
	ora $E21FD6.l,X		; 1F D6 1F E2
	asl $0000.w,X		; 1E 00 00
	asl $1D.b		; 06 1D
	cmp $CD1D.w,X		; DD 1D CD
	ora $00.b,X		; 15 00
	brk $04.b		; 00 04
	clc		; 18
	cpx $18.b		; E4 18
	sbc $1B.b		; E5 1B
	brk $00.b		; 00 00
	sbc $1BE61B.l,X		; FF 1B E6 1B
	dec $0017.w		; CE 17 00
	brk $FF.b		; 00 FF
	inc A		; 1A
	sbc [$1A.b]		; E7 1A
	sbc [$19.b]		; E7 19
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	cpx $1C.b		; E4 1C
	dec $0019.w		; CE 19 00
	brk $E8.b		; 00 E8
	trb $1CFC.w		; 1C FC 1C
.INDEX 16
	rep #$1E		; C2 1E
	brk $00.b		; 00 00
	beq  32.b		; F0 20
	beq  32.b		; F0 20
	plb		; AB
	ora [$00.b],Y		; 17 00
	brk $EC.b		; 00 EC
	trb $1CF8.w		; 1C F8 1C
.ACCU 16
	rep #$22		; C2 22
	brk $00.b		; 00 00
	sbc ($23.b)		; F2 23
	xba		; EB
	and $AD.b,S		; 23 AD
	ora $00.b,X		; 15 00
	brk $FA.b		; 00 FA
	tas		; 1B
	xba		; EB
	tas		; 1B
	tsx		; BA
	lsr $00.b		; 46 00
	brk $FA.b		; 00 FA
	tas		; 1B
	xba		; EB
	tas		; 1B
	lda $17.b,S		; A3 17
	brk $00.b		; 00 00
	plx		; FA
	trb $1CEA.w		; 1C EA 1C
	cpy #$003F.w		; C0 3F 00
	brk $FB.b		; 00 FB
	tas		; 1B
	nop		; EA
	tas		; 1B
	ldy $1C.b		; A4 1C
	brk $00.b		; 00 00
	plx		; FA
	trb $1CEA.w		; 1C EA 1C
	cpy #$003F.w		; C0 3F 00
	brk $FB.b		; 00 FB
	tas		; 1B
	nop		; EA
	tas		; 1B
	ldy $1C.b		; A4 1C
	brk $00.b		; 00 00
	sbc [$26.b],Y		; F7 26
	sbc $26.b,S		; E3 26
	sbc $1E.b,S		; E3 1E
	brk $00.b		; 00 00
	inc $E51D.w,X		; FE 1D E5
	ora $17CC.w,X		; 1D CC 17
	brk $00.b		; 00 00
	sbc $32CF32.l,X		; FF 32 CF 32
	sbc [$19.b]		; E7 19
	brk $00.b		; 00 00
	ora ($23.b,X)		; 01 23
	jmp.w [$D323]		; DC 23 D3
	trb $00.b		; 14 00
	brk $F1.b		; 00 F1
	asl $1EF1.w,X		; 1E F1 1E
	cmp ($3F.b,X)		; C1 3F
	brk $00.b		; 00 00
	inc $17.b,X		; F6 17
	sbc ($17.b,S),Y		; F3 17
	ldy $0015.w		; AC 15 00
	brk $F5.b		; 00 F5
	ora $1DEE.w,X		; 1D EE 1D
	cmp ($41.b,X)		; C1 41
	brk $00.b		; 00 00
	sbc $20.b,X		; F5 20
	xba		; EB
	jsr $16AB.w		; 20 AB 16
	brk $00.b		; 00 00
	sed		; F8
	trb $1CEC.w		; 1C EC 1C
	wai		; CB
	and [$00.b],Y		; 37 00
	brk $FA.b		; 00 FA
	ora $B11FE7.l,X		; 1F E7 1F B1
	tas		; 1B
	brk $00.b		; 00 00
	asl $1C.b		; 06 1C
	dec $C31C.w,X		; DE 1C C3
	rol $0000.w,X		; 3E 00 00
	ora #$E215.w		; 09 15 E2
	ora $AA.b,X		; 15 AA
	ora $0000.w,Y		; 19 00 00
	tsb $DD17.w		; 0C 17 DD
	ora [$B8.b],Y		; 17 B8
	pha		; 48
	brk $00.b		; 00 00
	ora $DA19.w		; 0D 19 DA
	ora $17A1.w,Y		; 19 A1 17
	brk $00.b		; 00 00
	ora $D71C.w		; 0D 1C D7
	trb $41BF.w		; 1C BF 41
	brk $00.b		; 00 00
	trb $1B.b		; 14 1B
	cmp ($1B.b),Y		; D1 1B
	lda $1A.b		; A5 1A
	brk $00.b		; 00 00
	tsb $DD17.w		; 0C 17 DD
	ora [$B8.b],Y		; 17 B8
	pha		; 48
	brk $00.b		; 00 00
	ora $DA19.w		; 0D 19 DA
	ora $17A1.w,Y		; 19 A1 17
	brk $00.b		; 00 00
	php		; 08
	clc		; 18
	cpx #$B918.w		; E0 18 B9
	eor [$00.b]		; 47 00
	brk $07.b		; 00 07
	ora $19E0.w,Y		; 19 E0 19
	lda ($18.b,X)		; A1 18
	brk $00.b		; 00 00
	asl $18.b		; 06 18
.INDEX 8
	sep #$18		; E2 18
	tsx		; BA
	lsr $00.b		; 46 00
	brk $FE.b		; 00 FE
	and ($E1.b,X)		; 21 E1
	and ($A1.b,X)		; 21 A1
	ora $0000.w,Y		; 19 00 00
	ora $18.b		; 05 18
	sbc $18.b,S		; E3 18
	tsx		; BA
	eor $00.b		; 45 00
	brk $03.b		; 00 03
	trb $1CE1.w		; 1C E1 1C
	ldx #$18.b		; A2 18
	brk $00.b		; 00 00
	sbc [$14.b],Y		; F7 14
	sbc $14.b,X		; F5 14
	cmp ($44.b,X)		; C1 44
	brk $00.b		; 00 00
	sed		; F8
	ora ($F5.b,S),Y		; 13 F5
	ora ($A8.b,S),Y		; 13 A8
	ora $0000.w,Y		; 19 00 00
	sbc ($20.b),Y		; F1 20
	sbc $27D920.l		; EF 20 D9 27
	brk $00.b		; 00 00
	pea $F21A.w		; F4 1A F2
	inc A		; 1A
	cpy $15.b		; C4 15
	brk $00.b		; 00 00
	sbc [$31.b],Y		; F7 31
	cld		; D8
	and ($E7.b),Y		; 31 E7
	tas		; 1B
	brk $00.b		; 00 00
	xce		; FB
	tas		; 1B
	nop		; EA
	tas		; 1B
	cpy $001B.w		; CC 1B 00
	brk $D1.b		; 00 D1
	eor ($EE.b,X)		; 41 EE
	eor ($B2.b,X)		; 41 B2
	rol A		; 2A
	brk $00.b		; 00 00
	cop $1B.b		; 02 1B
	sbc $1B.b,S		; E3 1B
	cmp $0034.w		; CD 34 00
	brk $F0.b		; 00 F0
	and [$D9.b],Y		; 37 D9
	and [$A0.b],Y		; 37 A0
	and ($00.b,S),Y		; 33 00
	brk $F6.b		; 00 F6
	and ($E9.b,X)		; 21 E9
	and ($D3.b,X)		; 21 D3
	rol $0000.w		; 2E 00 00
	ora $35.b		; 05 35
	dec $35.b		; C6 35
	cpy #$2F.b		; C0 2F
	brk $00.b		; 00 00
	sbc ($20.b),Y		; F1 20
	sbc $36CA20.l		; EF 20 CA 36
	brk $00.b		; 00 00
	cop $19.b		; 02 19
	sbc $19.b		; E5 19
	clv		; B8
	pha		; 48
	brk $00.b		; 00 00
	ora $14.b		; 05 14
	sbc [$14.b]		; E7 14
	sta ($26.b)		; 92 26
	brk $00.b		; 00 00
	sbc $E81F.w,Y		; F9 1F E8
	ora $0043BE.l,X		; 1F BE 43 00
	brk $F9.b		; 00 F9
	jsl $A622E5.l		; 22 E5 22 A6
	clc		; 18
	brk $00.b		; 00 00
	inc $21.b,X		; F6 21
	sbc #$C721.w		; E9 21 C7
	dec A		; 3A
	brk $00.b		; 00 00
	sbc [$20.b],Y		; F7 20
	sbc #$B120.w		; E9 20 B1
	asl $00.b,X		; 16 00
	brk $FA.b		; 00 FA
	ora $1DE9.w,X		; 1D E9 1D
	tsx		; BA
	lsr $00.b		; 46 00
	brk $F4.b		; 00 F4
	and ($EB.b,X)		; 21 EB
	and ($A2.b,X)		; 21 A2
	clc		; 18
	brk $00.b		; 00 00
	cmp ($36.b),Y		; D1 36
	sbc $AC36.w,Y		; F9 36 AC
	and ($00.b)		; 32 00
	brk $07.b		; 00 07
	ora [$E2.b],Y		; 17 E2
	ora [$C9.b],Y		; 17 C9
	and [$00.b],Y		; 37 00
	brk $D1.b		; 00 D1
	rol $F9.b,X		; 36 F9
	rol $AC.b,X		; 36 AC
	and ($00.b)		; 32 00
	brk $07.b		; 00 07
	ora [$E2.b],Y		; 17 E2
	ora [$C9.b],Y		; 17 C9
	and [$00.b],Y		; 37 00
	brk $F0.b		; 00 F0
	and $DB.b,X		; 35 DB
	and $A0.b,X		; 35 A0
	rol $00.b,X		; 36 00
	brk $F6.b		; 00 F6
	inc A		; 1A
	beq  26.b		; F0 1A
	dec $2A.b,X		; D6 2A
	brk $00.b		; 00 00
	beq  53.b		; F0 35
	stp		; DB
	and $A0.b,X		; 35 A0
	rol $00.b,X		; 36 00
	brk $F6.b		; 00 F6
	asl $1EEC.w,X		; 1E EC 1E
	dec $2A.b,X		; D6 2A
	brk $00.b		; 00 00
	sbc $16FB16.l		; EF 16 FB 16
	adc $41.b		; 65 41
	brk $00.b		; 00 00
	inc $0111.w		; EE 11 01
	ora ($4C.b),Y		; 11 4C
	ora $0000.w,Y		; 19 00 00
	cpx $FE16.w		; EC 16 FE
	asl $67.b,X		; 16 67
	rti		; 40

	brk $00.b		; 00 00
	sbc ($10.b),Y		; F1 10
	sbc $194E10.l,X		; FF 10 4E 19
	brk $00.b		; 00 00
	sbc $FE15.w		; ED 15 FE
	ora $6F.b,X		; 15 6F
	rol $0000.w,X		; 3E 00 00
	inc $F220.w		; EE 20 F2
	jsr $155A.w		; 20 5A 15
	brk $00.b		; 00 00
	xce		; FB
	asl $EF.b,X		; 16 EF
	asl $BF.b,X		; 16 BF
	eor ($00.b,X)		; 41 00
	brk $01.b		; 00 01
	ora ($EE.b),Y		; 11 EE
	ora ($A6.b),Y		; 11 A6
	ora $0000.w,Y		; 19 00 00
	inc $EC16.w,X		; FE 16 EC
	asl $C0.b,X		; 16 C0
	rti		; 40

	brk $00.b		; 00 00
	sbc $10F110.l,X		; FF 10 F1 10
	lda [$19.b]		; A7 19
	brk $00.b		; 00 00
	inc $ED15.w,X		; FE 15 ED
	ora $C3.b,X		; 15 C3
	rol $0000.w,X		; 3E 00 00
	sbc ($20.b)		; F2 20
	inc $AE20.w		; EE 20 AE
	ora $00.b,X		; 15 00
	brk $FB.b		; 00 FB
	asl $EF.b,X		; 16 EF
	asl $65.b,X		; 16 65
	eor ($00.b,X)		; 41 00
	brk $01.b		; 00 01
	ora ($EE.b),Y		; 11 EE
	ora ($4C.b),Y		; 11 4C
	ora $0000.w,Y		; 19 00 00
	inc $EC16.w,X		; FE 16 EC
	asl $67.b,X		; 16 67
	rti		; 40

	brk $00.b		; 00 00
	sbc $10F110.l,X		; FF 10 F1 10
	lsr $0019.w		; 4E 19 00
	brk $FE.b		; 00 FE
	ora $ED.b,X		; 15 ED
	ora $6F.b,X		; 15 6F
	rol $0000.w,X		; 3E 00 00
	sbc ($20.b)		; F2 20
	inc $5A20.w		; EE 20 5A
	ora $00.b,X		; 15 00
	brk $F5.b		; 00 F5
	jsl $DA22E9.l		; 22 E9 22 DA
	rol $00.b		; 26 00
	brk $00.b		; 00 00
	ora [$E9.b],Y		; 17 E9
	ora [$C4.b],Y		; 17 C4
	asl $00.b,X		; 16 00
	brk $EC.b		; 00 EC
	trb $1CF8.w		; 1C F8 1C
.ACCU 16
	rep #$22		; C2 22
	brk $00.b		; 00 00
	sbc ($23.b)		; F2 23
	xba		; EB
	and $AD.b,S		; 23 AD
	ora $00.b,X		; 15 00
	brk $05.b		; 00 05
	rol $C5.b,X		; 36 C5
	rol $C6.b,X		; 36 C6
	rol $0000.w		; 2E 00 00
	inc $FB17.w		; EE 17 FB
	ora [$C6.b],Y		; 17 C6
	dec A		; 3A
	brk $00.b		; 00 00
	ora $36.b		; 05 36
	cmp $36.b		; C5 36
	dec $2E.b		; C6 2E
	brk $00.b		; 00 00
	inc $FB17.w		; EE 17 FB
	ora [$C6.b],Y		; 17 C6
	dec A		; 3A
	brk $00.b		; 00 00
	sbc $4CC54C.l		; EF 4C C5 4C
	cpx $1E.b		; E4 1E
	brk $00.b		; 00 00
	sbc $20.b,X		; F5 20
	xba		; EB
	jsr $19CB.w		; 20 CB 19
	brk $00.b		; 00 00
	sbc $4BC64B.l		; EF 4B C6 4B
	cpx $1C.b		; E4 1C
	brk $00.b		; 00 00
	sbc $20.b,X		; F5 20
	xba		; EB
	jsr $19CB.w		; 20 CB 19
	brk $00.b		; 00 00
	sbc $4CC54C.l		; EF 4C C5 4C
	cpx $1E.b		; E4 1E
	brk $00.b		; 00 00
	sbc $20.b,X		; F5 20
	xba		; EB
	jsr $19CB.w		; 20 CB 19
	brk $00.b		; 00 00
	sbc $27.b,X		; F5 27
	cpx $27.b		; E4 27
	cpy $1A.b		; C4 1A
	brk $00.b		; 00 00
	inc $1B.b,X		; F6 1B
	sbc $18AC1B.l		; EF 1B AC 18
	brk $00.b		; 00 00
	sbc $38.b,X		; F5 38
	cmp ($38.b,S),Y		; D3 38
	cpy $19.b		; C4 19
	brk $00.b		; 00 00
	beq  27.b		; F0 1B
	sbc $1B.b,X		; F5 1B
	ldx $0018.w		; AE 18 00
	brk $F1.b		; 00 F1
	asl $1EF1.w,X		; 1E F1 1E
	cmp $39.b		; C5 39
	brk $00.b		; 00 00
	pea $F418.w		; F4 18 F4
	clc		; 18
	lda #$001C.w		; A9 1C 00
	brk $F7.b		; 00 F7
	trb $F5.b		; 14 F5
	trb $C1.b		; 14 C1
	mvp $00,$00		; 44 00 00
	sed		; F8
	ora ($F5.b,S),Y		; 13 F5
	ora ($A8.b,S),Y		; 13 A8
	ora $0000.w,Y		; 19 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $18.b,X		; F5 18
	sbc ($18.b,S),Y		; F3 18
	lda ($2E.b)		; B2 2E
	brk $00.b		; 00 00
	sbc $18.b,X		; F5 18
	sbc ($18.b,S),Y		; F3 18
	lda $0048.w,Y		; B9 48 00
	brk $F5.b		; 00 F5
	clc		; 18
	sbc ($18.b,S),Y		; F3 18
	cmp $3D.b		; C5 3D
	brk $00.b		; 00 00
	sbc $18.b,X		; F5 18
	sbc ($18.b,S),Y		; F3 18
	lda ($2F.b,S),Y		; B3 2F
	brk $00.b		; 00 00
	sbc $18.b,X		; F5 18
	sbc ($18.b,S),Y		; F3 18
	cmp ($2F.b),Y		; D1 2F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$1B.b]		; 07 1B
	dec $AA1B.w,X		; DE 1B AA
	ora ($03.b)		; 12 03
	brk $03.b		; 00 03
	bit $2CD1.w		; 2C D1 2C
	lda ($0F.b)		; B2 0F
	ora $00.b,S		; 03 00
	ora #$DE19.w		; 09 19 DE
	ora $20AC.w,Y		; 19 AC 20
	ora $00.b,S		; 03 00
	asl $21.b		; 06 21
	cmp $9121.w,Y		; D9 21 91
	rol $03.b		; 26 03
	brk $0B.b		; 00 0B
	rol $3EB7.w,X		; 3E B7 3E
	ldy $1C.b,X		; B4 1C
	ora $00.b,S		; 03 00
	asl $46.b		; 06 46
	ldy $46.b,X		; B4 46
	plb		; AB
	ora $0003.w,X		; 1D 03 00
	ora $20.b,S		; 03 20
	cmp $B220.w,X		; DD 20 B2
	ora $0005.w,Y		; 19 05 00
	sbc ($48.b,S),Y		; F3 48
	cmp $48.b		; C5 48
	cpy #$1B.b		; C0 1B
	ora $00.b		; 05 00
	ora $33.b,S		; 03 33
	dex		; CA
	and ($C4.b,S),Y		; 33 C4
	asl $0005.w,X		; 1E 05 00
	cop $2A.b		; 02 2A
	pei ($2A.b)		; D4 2A
	cmp ($11.b)		; D2 11
	ora $00.b,S		; 03 00
	sbc $D033.w,X		; FD 33 D0
	and ($E9.b,S),Y		; 33 E9
	tas		; 1B
	cop $00.b		; 02 00
	ora $3C.b,S		; 03 3C
	cmp ($3C.b,X)		; C1 3C
	cmp #$021B.w		; C9 1B 02
	brk $12.b		; 00 12
	brk $EE.b		; 00 EE
	brk $C8.b		; 00 C8
	brk $03.b		; 00 03
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $89.b		; 00 89
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	ora [$E4.b],Y		; 17 E4
	ora [$97.b],Y		; 17 97
	and ($03.b)		; 32 03
	brk $03.b		; 00 03
	and $9E2FCE.l		; 2F CE 2F 9E
	and $0003.w		; 2D 03 00
	ora $16.b		; 05 16
	sbc $16.b		; E5 16
	sta $0332.w,Y		; 99 32 03
	brk $ED.b		; 00 ED
	and $2DE6.w		; 2D E6 2D
	sta $032E.w,X		; 9D 2E 03
	brk $02.b		; 00 02
	ora [$E7.b],Y		; 17 E7
	ora [$8C.b],Y		; 17 8C
	rol $0003.w,X		; 3E 03 00
	ora $18.b,S		; 03 18
	sbc $18.b		; E5 18
	phb		; 8B
	.db $42, $03		; 42 03
	brk $FD.b		; 00 FD
	and ($E2.b,X)		; 21 E2
	and ($8B.b,X)		; 21 8B
	eor ($03.b,X)		; 41 03
	brk $FF.b		; 00 FF
	eor ($C0.b,X)		; 41 C0
	eor ($C0.b,X)		; 41 C0
	tas		; 1B
	ora $00.b,S		; 03 00
	sbc $41C041.l,X		; FF 41 C0 41
	cpy #$1B.b		; C0 1B
	ora $00.b,S		; 03 00
	phd		; 0B
	ora $19DC.w,Y		; 19 DC 19
	txa		; 8A
	tsa		; 3B
	ora $00.b,S		; 03 00
	ora $20.b,S		; 03 20
	cmp $B220.w,X		; DD 20 B2
	ora $0005.w,Y		; 19 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $F41F.w		; ED 1F F4
	ora $003DC3.l,X		; 1F C3 3D 00
	brk $EB.b		; 00 EB
	ora $A01FF6.l,X		; 1F F6 1F A0
	and $00.b,S		; 23 00
	brk $E9.b		; 00 E9
	bit $F3.b		; 24 F3
	bit $C4.b		; 24 C4
	and $0000.w,X		; 3D 00 00
	sbc [$1E.b]		; E7 1E
	xce		; FB
	asl $23A1.w,X		; 1E A1 23
	brk $00.b		; 00 00
	cpx $F123.w		; EC 23 F1
	and $C5.b,S		; 23 C5
	tsa		; 3B
	brk $00.b		; 00 00
	beq  28.b		; F0 1C
	pea $A31C.w		; F4 1C A3
	jsl $E50000.l		; 22 00 00 E5
	jsr $20FB.w		; 20 FB 20
	cmp $3E.b,S		; C3 3E
	brk $00.b		; 00 00
	inc $1F.b		; E6 1F
	xce		; FB
	ora $0016AD.l,X		; 1F AD 16 00
	brk $ED.b		; 00 ED
	bit $EF.b		; 24 EF
	bit $E7.b		; 24 E7
	inc A		; 1A
	brk $00.b		; 00 00
	xba		; EB
	clc		; 18
	sbc $CA18.w,X		; FD 18 CA
	ora $0000.w,X		; 1D 00 00
	sbc $DF28.w,Y		; F9 28 DF
	plp		; 28
	cmp $1E.b,S		; C3 1E
	brk $00.b		; 00 00
	stp		; DB
	and [$FE.b]		; 27 FE
	and [$B6.b]		; 27 B6
	trb $0000.w		; 1C 00 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $89.b		; 00 89
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $89.b		; 00 89
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $89.b		; 00 89
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $89.b		; 00 89
	brk $00.b		; 00 00
	brk $F2.b		; 00 F2
	asl $1EF0.w,X		; 1E F0 1E
	cmp [$2A.b],Y		; D7 2A
	brk $00.b		; 00 00
	sbc ($1E.b),Y		; F1 1E
	sbc ($1E.b),Y		; F1 1E
	ldy $23.b,X		; B4 23
	brk $00.b		; 00 00
	sbc $20F120.l		; EF 20 F1 20
	inx		; E8
	ora $0000.w,Y		; 19 00 00
	inc $F121.w		; EE 21 F1
	and ($CA.b,X)		; 21 CA
	asl $0000.w,X		; 1E 00 00
	sbc $1CF51C.l		; EF 1C F5 1C
.ACCU 16
.INDEX 16
	rep #$3E		; C2 3E
	ora ($00.b,X)		; 01 00
	sbc ($1A.b),Y		; F1 1A
	sbc $1A.b,X		; F5 1A
	lda $1F.b,S		; A3 1F
	ora ($00.b,X)		; 01 00
	sbc ($1E.b),Y		; F1 1E
	sbc ($1E.b),Y		; F1 1E
	sbc #$0218.w		; E9 18 02
	brk $F5.b		; 00 F5
	ora $19F2.w,Y		; 19 F2 19
	dex		; CA
	ora $F20002.l,X		; 1F 02 00 F2
	ora $F9.b,X		; 15 F9
	ora $C1.b,X		; 15 C1
	rti		; 40

	brk $00.b		; 00 00
	sbc $16.b,X		; F5 16
	sbc $16.b,X		; F5 16
	ldy #$0021.w		; A0 21 00
	brk $F4.b		; 00 F4
	ora $F7.b,X		; 15 F7
	ora $C4.b,X		; 15 C4
	tsa		; 3B
	brk $00.b		; 00 00
	inc $15.b,X		; F6 15
	sbc $15.b,X		; F5 15
	lda $21.b,S		; A3 21
	brk $00.b		; 00 00
	sbc ($19.b)		; F2 19
	sbc $19.b,X		; F5 19
	lda $000041.l,X		; BF 41 00 00
	sbc ($1C.b),Y		; F1 1C
	sbc ($1C.b,S),Y		; F3 1C
	lda ($1E.b,X)		; A1 1E
	brk $00.b		; 00 00
	sbc ($1D.b),Y		; F1 1D
	sbc ($1D.b)		; F2 1D
	cpy $3D.b		; C4 3D
	brk $00.b		; 00 00
	sbc ($1D.b),Y		; F1 1D
	sbc ($1D.b)		; F2 1D
	lda ($23.b,X)		; A1 23
	brk $00.b		; 00 00
	inc $F51D.w		; EE 1D F5
	ora $3DC4.w,X		; 1D C4 3D
	brk $00.b		; 00 00
	inc $F51D.w		; EE 1D F5
	ora $23A1.w,X		; 1D A1 23
	brk $00.b		; 00 00
	sbc $19.b,X		; F5 19
	sbc ($19.b)		; F2 19
	tsx		; BA
	rti		; 40

	brk $00.b		; 00 00
	inc $16.b,X		; F6 16
	pea $9A16.w		; F4 16 9A
	jsr $0000.w		; 20 00 00
	sbc ($19.b),Y		; F1 19
	inc $19.b,X		; F6 19
	cpy $3B.b		; C4 3B
	brk $00.b		; 00 00
	sbc ($18.b)		; F2 18
	inc $18.b,X		; F6 18
	ldx #$0022.w		; A2 22 00
	brk $F1.b		; 00 F1
	asl $F9.b,X		; 16 F9
	asl $C2.b,X		; 16 C2
	and $0000.w,X		; 3D 00 00
	pea $F616.w		; F4 16 F6
	asl $9F.b,X		; 16 9F
	and $00.b,S		; 23 00
	brk $F0.b		; 00 F0
	tas		; 1B
	sbc $1B.b,X		; F5 1B
	dec $39.b		; C6 39
	brk $00.b		; 00 00
	sbc ($17.b)		; F2 17
	sbc [$17.b],Y		; F7 17
	ldx #$0024.w		; A2 24 00
	brk $F3.b		; 00 F3
	asl $F7.b,X		; 16 F7
	asl $C4.b,X		; 16 C4
	tsa		; 3B
	brk $00.b		; 00 00
	sbc ($16.b,S),Y		; F3 16
	sbc [$16.b],Y		; F7 16
	ldx #$0022.w		; A2 22 00
	brk $F2.b		; 00 F2
	trb $1CF2.w		; 1C F2 1C
	ldx $001E.w,Y		; BE 1E 00
	brk $F2.b		; 00 F2
	ora $19F5.w,Y		; 19 F5 19
	lda ($1D.b,X)		; A1 1D
	brk $00.b		; 00 00
	cpx #$F729.w		; E0 29 F7
	and #$1CBD.w		; 29 BD 1C
	brk $00.b		; 00 00
	ora #$DD1A.w		; 09 1A DD
	inc A		; 1A
.INDEX 16
	rep #$1C		; C2 1C
	brk $00.b		; 00 00
	pea $F418.w		; F4 18 F4
	clc		; 18
	stz $002C.w,X		; 9E 2C 00
	brk $F3.b		; 00 F3
	clc		; 18
	sbc $18.b,X		; F5 18
	dex		; CA
	jsr $0000.w		; 20 00 00
	sbc $D433.w,Y		; F9 33 D4
	and ($B9.b,S),Y		; 33 B9
	trb $0000.w		; 1C 00 00
.INDEX 8
	sep #$1E		; E2 1E
	brk $1E.b		; 00 1E
	dec $0018.w		; CE 18 00
	brk $EF.b		; 00 EF
	jsl $C322EF.l		; 22 EF 22 C3
	and $0000.w,X		; 3D 00 00
	cop $18.b		; 02 18
	inc $18.b		; E6 18
	lda $1E.b		; A5 1E
	brk $00.b		; 00 00
	sbc $1EF31E.l		; EF 1E F3 1E
	cpy $3C.b		; C4 3C
	brk $00.b		; 00 00
	sbc $1EF31E.l		; EF 1E F3 1E
	tay		; A8
	trb $0000.w		; 1C 00 00
	sbc $F320.w		; ED 20 F3
	jsr $3AC6.w		; 20 C6 3A
	brk $00.b		; 00 00
	sbc $18.b,X		; F5 18
	sbc ($18.b,S),Y		; F3 18
	ldx $20.b		; A6 20
	brk $00.b		; 00 00
	sbc ($1F.b)		; F2 1F
	sbc $40C11F.l		; EF 1F C1 40
	brk $00.b		; 00 00
	sed		; F8
	and [$E1.b]		; 27 E1
	and [$A8.b]		; 27 A8
	inc A		; 1A
	brk $00.b		; 00 00
	sbc ($22.b,S),Y		; F3 22
	xba		; EB
	jsl $003CC5.l		; 22 C5 3C 00
	brk $00.b		; 00 00
	tas		; 1B
	sbc $1B.b		; E5 1B
	lda $20.b		; A5 20
	brk $00.b		; 00 00
	xba		; EB
	inc A		; 1A
	xce		; FB
	inc A		; 1A
	cmp #$0038.w		; C9 38 00
	brk $E9.b		; 00 E9
	ora $02.b,X		; 15 02
	ora $AD.b,X		; 15 AD
	trb $0000.w		; 1C 00 00
	sbc ($1D.b,S),Y		; F3 1D
	beq  29.b		; F0 1D
	cmp [$3A.b]		; C7 3A
	brk $00.b		; 00 00
	pea $F814.w		; F4 14 F8
	trb $A6.b		; 14 A6
	and ($00.b,X)		; 21 00
	brk $FC.b		; 00 FC
	inc A		; 1A
	nop		; EA
	inc A		; 1A
	ldx $0043.w,Y		; BE 43 00
	brk $04.b		; 00 04
	ora $E7.b,X		; 15 E7
	ora $9F.b,X		; 15 9F
	ora $020000.l,X		; 1F 00 00 02
	clc		; 18
	inc $18.b		; E6 18
	iny		; C8
	and $0000.w,Y		; 39 00 00
	tsb $1A.b		; 04 1A
.INDEX 8
	sep #$1A		; E2 1A
	lda $25.b,S		; A3 25
	brk $00.b		; 00 00
	phd		; 0B
	asl $DF.b,X		; 16 DF
	asl $C1.b,X		; 16 C1
	rti		; 40

	brk $00.b		; 00 00
	asl A		; 0A
	tas		; 1B
	stp		; DB
	tas		; 1B
	lda ($20.b,X)		; A1 20
	brk $00.b		; 00 00
	ora #$D720.w		; 09 20 D7
	jsr $49B8.w		; 20 B8 49
	brk $00.b		; 00 00
	phd		; 0B
	bit $D1.b		; 24 D1
	bit $A9.b		; 24 A9
	ora [$00.b],Y		; 17 00
	brk $E5.b		; 00 E5
	bmi -21.b		; 30 EB
	bmi -61.b		; 30 C3
	bit $0000.w		; 2C 00 00
	cmp $1D041D.l,X		; DF 1D 04 1D
	ldy $0017.w		; AC 17 00
	brk $F0.b		; 00 F0
	ora $1DF3.w,X		; 1D F3 1D
	ldx $0041.w,Y		; BE 41 00
	brk $F4.b		; 00 F4
	ora $F7.b,X		; 15 F7
	ora $9D.b,X		; 15 9D
	and ($00.b,X)		; 21 00
	brk $EF.b		; 00 EF
	jsr $20F1.w		; 20 F1 20
	inc $1A.b		; E6 1A
	brk $00.b		; 00 00
	sbc ($17.b,S),Y		; F3 17
	inc $17.b,X		; F6 17
	dec $20.b		; C6 20
	brk $00.b		; 00 00
	sbc ($21.b),Y		; F1 21
	inc $BC21.w		; EE 21 BC
	bit $00.b		; 24 00
	brk $F2.b		; 00 F2
	ora [$F7.b],Y		; 17 F7
	ora [$A2.b],Y		; 17 A2
	inc A		; 1A
	brk $00.b		; 00 00
	beq  32.b		; F0 20
	beq  32.b		; F0 20
	cpy $1C.b		; C4 1C
	brk $00.b		; 00 00
	pea $F517.w		; F4 17 F5
	ora [$A2.b],Y		; 17 A2
	jsl $F20000.l		; 22 00 00 F2
	ora $BE1FEF.l,X		; 1F EF 1F BE
	jsl $F80000.l		; 22 00 00 F8
	ora $19EF.w,Y		; 19 EF 19
	ldy $1A.b		; A4 1A
	brk $00.b		; 00 00
	sbc ($1A.b,S),Y		; F3 1A
	sbc ($1A.b,S),Y		; F3 1A
	cpy $1E.b		; C4 1E
	brk $00.b		; 00 00
	sbc $18.b,X		; F5 18
	sbc ($18.b,S),Y		; F3 18
	lda $21.b,S		; A3 21
	brk $00.b		; 00 00
	sbc ($34.b)		; F2 34
	phx		; DA
	bit $BC.b,X		; 34 BC
	ora $F20000.l,X		; 1F 00 00 F2
	clc		; 18
	inc $18.b,X		; F6 18
	lda $1D.b,S		; A3 1D
	brk $00.b		; 00 00
	sed		; F8
	plp		; 28
	cpx #$28.b		; E0 28
.ACCU 16
	rep #$21		; C2 21
	brk $00.b		; 00 00
	xba		; EB
	trb $1CF9.w		; 1C F9 1C
	lda $1D.b		; A5 1D
	brk $00.b		; 00 00
	inc $DE24.w,X		; FE 24 DE
	bit $BD.b		; 24 BD
	jsr $0000.w		; 20 00 00
	sbc [$17.b]		; E7 17
	cop $17.b		; 02 17
	lda $001D.w		; AD 1D 00
	brk $ED.b		; 00 ED
	jsr $20F3.w		; 20 F3 20
	inc $1A.b		; E6 1A
	brk $00.b		; 00 00
	sbc ($1B.b),Y		; F1 1B
	pea $CB1B.w		; F4 1B CB
	tas		; 1B
	brk $00.b		; 00 00
	sbc $20F120.l		; EF 20 F1 20
	inc $1A.b		; E6 1A
	brk $00.b		; 00 00
	inc $1B.b,X		; F6 1B
	sbc $1BCB1B.l		; EF 1B CB 1B
	brk $00.b		; 00 00
	sbc $E330.w		; ED 30 E3
	bmi -26.b		; 30 E6
	trb $0000.w		; 1C 00 00
	inc $EF23.w		; EE 23 EF
	and $CB.b,S		; 23 CB
	tas		; 1B
	brk $00.b		; 00 00
	sbc $D043.w		; ED 43 D0
	eor $E6.b,S		; 43 E6
	inc A		; 1A
	brk $00.b		; 00 00
	xba		; EB
	bit $F1.b		; 24 F1
	bit $CE.b		; 24 CE
	clc		; 18
	brk $00.b		; 00 00
	sbc ($30.b,S),Y		; F3 30
	cmp $DE30.w,X		; DD 30 DE
	ora [$00.b],Y		; 17 00
	brk $E7.b		; 00 E7
	bit $F5.b		; 24 F5
	bit $CB.b		; 24 CB
	rol $00.b,X		; 36 00
	brk $02.b		; 00 02
	and $2DD1.w		; 2D D1 2D
	cmp ($2E.b)		; D2 2E
	brk $00.b		; 00 00
	sbc $F71C.w		; ED 1C F7
	trb $2DD3.w		; 1C D3 2D
	brk $00.b		; 00 00
	sbc $23EE23.l		; EF 23 EE 23
	cpy #$41.b		; C0 41
	brk $00.b		; 00 00
	sbc $24.b,X		; F5 24
	sbc [$24.b]		; E7 24
	lda [$19.b]		; A7 19
	brk $00.b		; 00 00
	inc $1A.b,X		; F6 1A
	beq  26.b		; F0 1A
	ldy $0045.w,X		; BC 45 00
	brk $F2.b		; 00 F2
	and $E9.b		; 25 E9
	and $9F.b		; 25 9F
	ora $0000.w,X		; 1D 00 00
	sbc $1B.b,X		; F5 1B
	beq  27.b		; F0 1B
	lda [$49.b],Y		; B7 49
	brk $00.b		; 00 00
	pea $EB21.w		; F4 21 EB
	and ($9A.b,X)		; 21 9A
	ora $0000.w,X		; 1D 00 00
	sbc ($1F.b)		; F2 1F
	sbc $3CC51F.l		; EF 1F C5 3C
	brk $00.b		; 00 00
	sbc $E225.w,Y		; F9 25 E2
	and $A2.b		; 25 A2
	and $00.b,S		; 23 00
	brk $EB.b		; 00 EB
	and [$EE.b]		; 27 EE
	and [$D5.b]		; 27 D5
	bit $0000.w		; 2C 00 00
	ora ($1A.b)		; 12 1A
	pei ($1A.b)		; D4 1A
	cmp ($2F.b,X)		; C1 2F
	brk $00.b		; 00 00
	beq  25.b		; F0 19
	sbc [$19.b],Y		; F7 19
	tsx		; BA
	eor $00.b,S		; 43 00
	brk $F0.b		; 00 F0
	inc A		; 1A
	inc $1A.b,X		; F6 1A
	txs		; 9A
	jsr $0000.w		; 20 00 00
	beq  26.b		; F0 1A
	inc $1A.b,X		; F6 1A
	cmp ($3F.b,X)		; C1 3F
	brk $00.b		; 00 00
	beq  26.b		; F0 1A
	inc $1A.b,X		; F6 1A
	lda ($20.b,X)		; A1 20
	brk $00.b		; 00 00
	beq  26.b		; F0 1A
	inc $1A.b,X		; F6 1A
	cmp ($3F.b,X)		; C1 3F
	brk $00.b		; 00 00
	beq  26.b		; F0 1A
	inc $1A.b,X		; F6 1A
	lda ($20.b,X)		; A1 20
	brk $00.b		; 00 00
	beq  26.b		; F0 1A
	inc $1A.b,X		; F6 1A
	cmp ($3F.b,X)		; C1 3F
	brk $00.b		; 00 00
	beq  26.b		; F0 1A
	inc $1A.b,X		; F6 1A
	lda ($20.b,X)		; A1 20
	brk $00.b		; 00 00
	xce		; FB
	and ($E4.b,X)		; 21 E4
	and ($B7.b,X)		; 21 B7
	eor #$0000.w		; 49 00 00
	jsr ($DD27.w,X)		; FC 27 DD
	and [$9B.b]		; 27 9B
	trb $0000.w		; 1C 00 00
	sbc ($19.b,S),Y		; F3 19
	pea $C019.w		; F4 19 C0
	rol $0000.w,X		; 3E 00 00
	sed		; F8
	ora [$F1.b],Y		; 17 F1
	ora [$A0.b],Y		; 17 A0
	jsr $0000.w		; 20 00 00
	sbc ($1C.b)		; F2 1C
	sbc ($1C.b)		; F2 1C
	ldy $002B.w,X		; BC 2B 00
	brk $F9.b		; 00 F9
	ora [$F0.b],Y		; 17 F0
	ora [$9A.b],Y		; 17 9A
	jsl $F20000.l		; 22 00 00 F2
	jsr $20EE.w		; 20 EE 20
	lda [$24.b],Y		; B7 24
	brk $00.b		; 00 00
	beq  21.b		; F0 15
	xce		; FB
	ora $92.b,X		; 15 92
	and $00.b		; 25 00
	brk $00.b		; 00 00
	ora $19E7.w,Y		; 19 E7 19
	sbc ($20.b,X)		; E1 20
	brk $00.b		; 00 00
	brk $19.b		; 00 19
	sbc [$19.b]		; E7 19
	sbc ($0E.b,X)		; E1 0E
	brk $00.b		; 00 00
	ora [$14.b]		; 07 14
	sbc $14.b		; E5 14
	dec $0022.w,X		; DE 22 00
	brk $07.b		; 00 07
	trb $E5.b		; 14 E5
	trb $DE.b		; 14 DE
	ora ($00.b,S),Y		; 13 00
	brk $05.b		; 00 05
	ora ($E9.b)		; 12 E9
	ora ($DE.b)		; 12 DE
	and $00.b,S		; 23 00
	brk $05.b		; 00 05
	ora ($E9.b)		; 12 E9
	ora ($DE.b)		; 12 DE
	ora ($00.b)		; 12 00
	brk $04.b		; 00 04
	ora ($E9.b,S),Y		; 13 E9
	ora ($DF.b,S),Y		; 13 DF
	jsl $040000.l		; 22 00 00 04
	ora ($E9.b,S),Y		; 13 E9
	ora ($DF.b,S),Y		; 13 DF
	ora ($00.b,S),Y		; 13 00
	brk $08.b		; 00 08
	ora ($E6.b)		; 12 E6
	ora ($DF.b)		; 12 DF
	jsl $080000.l		; 22 00 00 08
	ora ($E6.b)		; 12 E6
	ora ($DF.b)		; 12 DF
	ora ($00.b,S),Y		; 13 00
	brk $07.b		; 00 07
	ora ($E6.b,S),Y		; 13 E6
	ora ($DE.b,S),Y		; 13 DE
	and $00.b,S		; 23 00
	brk $07.b		; 00 07
	ora ($E6.b,S),Y		; 13 E6
	ora ($DE.b,S),Y		; 13 DE
	trb $00.b		; 14 00
	brk $04.b		; 00 04
	ora ($EA.b)		; 12 EA
	ora ($DE.b)		; 12 DE
	and $00.b,S		; 23 00
	brk $04.b		; 00 04
	ora ($EA.b)		; 12 EA
	ora ($DE.b)		; 12 DE
	ora ($00.b),Y		; 11 00
	brk $06.b		; 00 06
	ora ($E8.b)		; 12 E8
	ora ($E0.b)		; 12 E0
	and ($00.b,X)		; 21 00
	brk $06.b		; 00 06
	ora ($E8.b)		; 12 E8
	ora ($E0.b)		; 12 E0
	trb $00.b		; 14 00
	brk $F5.b		; 00 F5
	jsl $B722E9.l		; 22 E9 22 B7
	lsr A		; 4A
	brk $00.b		; 00 00
	sbc $24ED24.l		; EF 24 ED 24
	sta [$20.b],Y		; 97 20
	brk $00.b		; 00 00
	sbc $F017.w,Y		; F9 17 F0
	ora [$B2.b],Y		; 17 B2
	eor $F30000.l		; 4F 00 00 F3
	bit $E9.b		; 24 E9
	bit $99.b		; 24 99
	ora $0000.w,Y		; 19 00 00
	sbc $22.b,X		; F5 22
	sbc #$B722.w		; E9 22 B7
	lsr A		; 4A
	brk $00.b		; 00 00
	sbc $24ED24.l		; EF 24 ED 24
	sta [$20.b],Y		; 97 20
	brk $00.b		; 00 00
	sbc $F41F.w		; ED 1F F4
	ora $003D64.l,X		; 1F 64 3D 00
	brk $EB.b		; 00 EB
	ora $411FF6.l,X		; 1F F6 1F 41
	and $00.b,S		; 23 00
	brk $E7.b		; 00 E7
	jsl $BE22F7.l		; 22 F7 22 BE
	.db $42, $00		; 42 00
	brk $E9.b		; 00 E9
	asl $1EF9.w,X		; 1E F9 1E
	lda $19.b		; A5 19
	brk $00.b		; 00 00
	cpx $F222.w		; EC 22 F2
	jsl $0042BE.l		; 22 BE 42 00
	brk $EB.b		; 00 EB
	jsr $20F5.w		; 20 F5 20
	stz $0020.w,X		; 9E 20 00
	brk $F0.b		; 00 F0
	and ($EF.b,X)		; 21 EF
	and ($CB.b,X)		; 21 CB
	and $00.b,X		; 35 00
	brk $F4.b		; 00 F4
	asl $1EEE.w,X		; 1E EE 1E
	bcs  27.b		; B0 1B
	brk $00.b		; 00 00
	pei ($4C.b)		; D4 4C
	cpx #$4C.b		; E0 4C
	pei ($1B.b)		; D4 1B
	brk $00.b		; 00 00
	asl $34.b		; 06 34
	dec $34.b		; C6 34
	ldy $0021.w,X		; BC 21 00
	brk $D4.b		; 00 D4
	jmp $4CE0.w		; 4C E0 4C
	pei ($1B.b)		; D4 1B
	brk $00.b		; 00 00
	tsb $34.b		; 04 34
	iny		; C8
	bit $BC.b,X		; 34 BC
	and ($00.b,X)		; 21 00
	brk $E8.b		; 00 E8
	asl $02.b,X		; 16 02
	asl $BE.b,X		; 16 BE
	eor $00.b,S		; 43 00
	brk $E7.b		; 00 E7
	ora [$02.b],Y		; 17 02
	ora [$9F.b],Y		; 17 9F
	ora $E50000.l,X		; 1F 00 00 E5
	asl $05.b,X		; 16 05
	asl $BE.b,X		; 16 BE
	eor $00.b,S		; 43 00
	brk $E5.b		; 00 E5
	ora [$04.b],Y		; 17 04
	ora [$9F.b],Y		; 17 9F
	ora $EC0000.l,X		; 1F 00 00 EC
	and $F1.b,S		; 23 F1
	and $6D.b,S		; 23 6D
	tsa		; 3B
	brk $00.b		; 00 00
	beq  28.b		; F0 1C
	pea $4B1C.w		; F4 1C 4B
	jsl $E50000.l		; 22 00 00 E5
	jsr $20FB.w		; 20 FB 20
	adc ($3E.b)		; 72 3E
	brk $00.b		; 00 00
	inc $1F.b		; E6 1F
	xce		; FB
	ora $00165C.l,X		; 1F 5C 16 00
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $63.b		; 00 63
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $63.b		; 00 63
	brk $00.b		; 00 00
	brk $F4.b		; 00 F4
	ora $C31FED.l,X		; 1F ED 1F C3
	and $0000.w,X		; 3D 00 00
	inc $1F.b,X		; F6 1F
	xba		; EB
	ora $0023A0.l,X		; 1F A0 23 00
	brk $F1.b		; 00 F1
	and $EC.b,S		; 23 EC
	and $C5.b,S		; 23 C5
	tsa		; 3B
	brk $00.b		; 00 00
	pea $F01C.w		; F4 1C F0
	trb $22A3.w		; 1C A3 22
	brk $00.b		; 00 00
	xce		; FB
	jsr $20E5.w		; 20 E5 20
	cmp $3E.b,S		; C3 3E
	brk $00.b		; 00 00
	xce		; FB
	ora $AD1FE6.l,X		; 1F E6 1F AD
	asl $00.b,X		; 16 00
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $89.b		; 00 89
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $89.b		; 00 89
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $89.b		; 00 89
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $89.b		; 00 89
	brk $00.b		; 00 00
	brk $F4.b		; 00 F4
	ora $641FED.l,X		; 1F ED 1F 64
	and $0000.w,X		; 3D 00 00
	inc $1F.b,X		; F6 1F
	xba		; EB
	ora $002341.l,X		; 1F 41 23 00
	brk $F1.b		; 00 F1
	and $EC.b,S		; 23 EC
	and $6D.b,S		; 23 6D
	tsa		; 3B
	brk $00.b		; 00 00
	pea $F01C.w		; F4 1C F0
	trb $224B.w		; 1C 4B 22
	brk $00.b		; 00 00
	xce		; FB
	jsr $20E5.w		; 20 E5 20
	adc ($3E.b)		; 72 3E
	brk $00.b		; 00 00
	xce		; FB
	ora $5C1FE6.l,X		; 1F E6 1F 5C
	asl $00.b,X		; 16 00
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $63.b		; 00 63
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $63.b		; 00 63
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $EC.b		; 00 EC
	rol $EE.b		; 26 EE
	rol $D5.b		; 26 D5
	bit $0000.w		; 2C 00 00
	sbc $EE19.w,Y		; F9 19 EE
	ora $22B3.w,Y		; 19 B3 22
	brk $00.b		; 00 00
	inc $22.b,X		; F6 22
	inx		; E8
	jsl $003DC4.l		; 22 C4 3D 00
	brk $0A.b		; 00 0A
	inc A		; 1A
	jmp.w [$A11A]		; DC 1A A1
	bit $00.b		; 24 00
	brk $E4.b		; 00 E4
	and ($FB.b,X)		; 21 FB
	and ($B7.b,X)		; 21 B7
	eor #$0000.w		; 49 00 00
	cmp $FC27.w,X		; DD 27 FC
	and [$9B.b]		; 27 9B
	trb $0000.w		; 1C 00 00
	sbc ($17.b),Y		; F1 17
	sed		; F8
	ora [$B5.b],Y		; 17 B5
	eor $0000.w		; 4D 00 00
	sbc $F41F.w		; ED 1F F4
	ora $001A9B.l,X		; 1F 9B 1A 00
	brk $F2.b		; 00 F2
	ora $BE1FEF.l,X		; 1F EF 1F BE
	jsl $F80000.l		; 22 00 00 F8
	ora $19EF.w,Y		; 19 EF 19
	ldy $1A.b		; A4 1A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $18.b,X		; F5 18
	sbc ($18.b,S),Y		; F3 18
	lda $39.b		; A5 39
	brk $00.b		; 00 00
	sbc $18.b,X		; F5 18
	sbc ($18.b,S),Y		; F3 18
	ldy $4C.b,X		; B4 4C
	brk $00.b		; 00 00
	sbc $18.b,X		; F5 18
	sbc ($18.b,S),Y		; F3 18
	dex		; CA
	and [$00.b],Y		; 37 00
	brk $F5.b		; 00 F5
	clc		; 18
	sbc ($18.b,S),Y		; F3 18
	lda ($2D.b)		; B2 2D
	brk $00.b		; 00 00
	sbc $18.b,X		; F5 18
	sbc ($18.b,S),Y		; F3 18
	cmp ($31.b),Y		; D1 31
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $2A.b		; 02 2A
	pei ($2A.b)		; D4 2A
	lda $10.b,X		; B5 10
	ora $00.b,S		; 03 00
	phd		; 0B
	phy		; 5A
	txy		; 9B
	phy		; 5A
	lda [$0C.b],Y		; B7 0C
	ora $00.b,S		; 03 00
	sbc ($34.b)		; F2 34
	phx		; DA
	bit $C0.b,X		; 34 C0
	ora $03.b,X		; 15 03
	brk $FA.b		; 00 FA
	and ($D3.b,S),Y		; 33 D3
	and ($A7.b,S),Y		; 33 A7
	ora $020003.l,X		; 1F 03 00 02
	trb $1CE2.w		; 1C E2 1C
	tyx		; BB
	ora $0005.w,Y		; 19 05 00
	ora ($20.b,S),Y		; 13 20
	cmp $DB20.w		; CD 20 DB
	rol $05.b,X		; 36 05
	brk $F3.b		; 00 F3
	trb $1CF1.w		; 1C F1 1C
	cmp [$1E.b]		; C7 1E
	ora $00.b		; 05 00
	ora $34.b,S		; 03 34
	cmp #$C034.w		; C9 34 C0
	ora [$05.b],Y		; 17 05
	brk $0F.b		; 00 0F
	asl $1ED3.w,X		; 1E D3 1E
	stp		; DB
	ora $0003.w		; 0D 03 00
	ora $9D56.w		; 0D 56 9D
	lsr $DE.b,X		; 56 DE
	ora $0003.w		; 0D 03 00
	phd		; 0B
	and [$BE.b],Y		; 37 BE
	and [$EC.b],Y		; 37 EC
	bpl   2.b		; 10 02
	brk $1D.b		; 00 1D
	and $39AA.w,Y		; 39 AA 39
	cpx $11.b		; E4 11
	cop $00.b		; 02 00
	ora [$36.b],Y		; 17 36
	lda ($36.b,S),Y		; B3 36
	sta $0354.w		; 8D 54 03
	brk $09.b		; 00 09
	eor $B2.b		; 45 B2
	eor $8E.b		; 45 8E
	eor $0003.w		; 4D 03 00
	sbc $29.b,X		; F5 29
.ACCU 8
	sep #$29		; E2 29
	lda $4D.b,X		; B5 4D
	ora $00.b,S		; 03 00
	ora #$3A.b		; 09 3A
	lda $9A3A.w,X		; BD 3A 9A
	dec A		; 3A
	ora $00.b,S		; 03 00
	tsb $38.b		; 04 38
	cpy $38.b		; C4 38
	wai		; CB
	tsa		; 3B
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xba		; EB
	tas		; 1B
	plx		; FA
	tas		; 1B
	wai		; CB
	sec		; 38
	brk $00.b		; 00 00
	inx		; E8
	ora [$01.b],Y		; 17 01
	ora [$AA.b],Y		; 17 AA
	and ($00.b,X)		; 21 00
	brk $E1.b		; 00 E1
	asl $1E01.w,X		; 1E 01 1E
	wai		; CB
	sec		; 38
	brk $00.b		; 00 00
	cld		; D8
	bit $04.b		; 24 04
	bit $AD.b		; 24 AD
	asl $0000.w,X		; 1E 00 00
	sbc ($1A.b,S),Y		; F3 1A
	sbc ($1A.b,S),Y		; F3 1A
	cmp ($31.b),Y		; D1 31
	brk $00.b		; 00 00
	sbc $1A.b,X		; F5 1A
	sbc ($1A.b),Y		; F1 1A
	lda ($20.b),Y		; B1 20
	brk $00.b		; 00 00
	stp		; DB
	trb $1C09.w		; 1C 09 1C
	dex		; CA
	and $0000.w,Y		; 39 00 00
	dec $0022.w,X		; DE 22 00
	jsl $0017B3.l		; 22 B3 17 00
	brk $F7.b		; 00 F7
	trb $1CED.w		; 1C ED 1C
	sbc [$1D.b]		; E7 1D
	brk $00.b		; 00 00
	sbc $17.b,X		; F5 17
	pea $CE17.w		; F4 17 CE
	ora $0000.w,Y		; 19 00 00
	inc $31.b,X		; F6 31
	cmp $6531.w,Y		; D9 31 65
	tas		; 1B
	brk $00.b		; 00 00
	sbc $15FC15.l		; EF 15 FC 15
	bra  25.b		; 80 19
	brk $00.b		; 00 00
	sbc $EA1D.w,Y		; F9 1D EA
	ora $2CD6.w,X		; 1D D6 2C
	brk $00.b		; 00 00
	xce		; FB
	ora $1DE8.w,X		; 1D E8 1D
	lda $001D.w,Y		; B9 1D 00
	brk $F1.b		; 00 F1
	and [$E8.b]		; 27 E8
	and [$E6.b]		; 27 E6
	ora $FB0000.l,X		; 1F 00 00 FB
	ora $19EC.w,Y		; 19 EC 19
	cmp $000017.l		; CF 17 00 00
	nop		; EA
	trb $1CFA.w		; 1C FA 1C
	cpy $0136.w		; CC 36 01
	brk $ED.b		; 00 ED
	tas		; 1B
	sed		; F8
	tas		; 1B
	tax		; AA
	jsl $F90001.l		; 22 01 00 F9
	asl $1EE9.w,X		; 1E E9 1E
	sbc #$1C.b		; E9 1C
	cop $00.b		; 02 00
	plx		; FA
	ora $19ED.w,Y		; 19 ED 19
	dec $021B.w		; CE 1B 02
	brk $F0.b		; 00 F0
	ora $D31FF1.l,X		; 1F F1 1F D3
	bmi   0.b		; 30 00
	brk $F1.b		; 00 F1
	ora $1DF2.w,X		; 1D F2 1D
	ldx $1D.b,Y		; B6 1D
	brk $00.b		; 00 00
	beq  30.b		; F0 1E
	sbc ($1E.b)		; F2 1E
	cmp ($33.b),Y		; D1 33
	brk $00.b		; 00 00
	sbc $1A.b,X		; F5 1A
	sbc ($1A.b),Y		; F1 1A
	lda $1C.b,X		; B5 1C
	brk $00.b		; 00 00
	beq  34.b		; F0 22
	inc $CA22.w		; EE 22 CA
	and $00.b,X		; 35 00
	brk $F5.b		; 00 F5
	ora $19F2.w,Y		; 19 F2 19
	ldy $001E.w		; AC 1E 00
	brk $F0.b		; 00 F0
	jsr $20F0.w		; 20 F0 20
	cmp ($31.b),Y		; D1 31
	brk $00.b		; 00 00
	pea $F319.w		; F4 19 F3
	ora $23AE.w,Y		; 19 AE 23
	brk $00.b		; 00 00
	sbc ($1D.b)		; F2 1D
	sbc ($1D.b),Y		; F1 1D
	dec $0032.w		; CE 32 00
	brk $F4.b		; 00 F4
	ora [$F5.b],Y		; 17 F5
	ora [$AF.b],Y		; 17 AF
	ora $F30000.l,X		; 1F 00 00 F3
	clc		; 18
	sbc $18.b,X		; F5 18
	dex		; CA
	and $0000.w,Y		; 39 00 00
	sbc [$18.b],Y		; F7 18
	sbc ($18.b),Y		; F1 18
	tax		; AA
	jsr $0000.w		; 20 00 00
	sbc [$10.b],Y		; F7 10
	sbc $CA10.w,Y		; F9 10 CA
	and $0000.w,Y		; 39 00 00
	sbc $18.b,X		; F5 18
	sbc ($18.b,S),Y		; F3 18
	lda #$21.b		; A9 21
	brk $00.b		; 00 00
	sbc ($1B.b,S),Y		; F3 1B
	sbc ($1B.b)		; F2 1B
	wai		; CB
	and [$00.b],Y		; 37 00
	brk $F7.b		; 00 F7
	ora [$F2.b],Y		; 17 F2
	ora [$AA.b],Y		; 17 AA
	and ($00.b,X)		; 21 00
	brk $F8.b		; 00 F8
	trb $F4.b		; 14 F4
	trb $CB.b		; 14 CB
	and [$00.b],Y		; 37 00
	brk $F7.b		; 00 F7
	clc		; 18
	sbc ($18.b),Y		; F1 18
	tay		; A8
	and $00.b,S		; 23 00
	brk $F4.b		; 00 F4
	tas		; 1B
	sbc ($1B.b),Y		; F1 1B
	ldx $0023.w,Y		; BE 23 00
	brk $F9.b		; 00 F9
	trb $F3.b		; 14 F3
	trb $A5.b		; 14 A5
	ora $0000.w,Y		; 19 00 00
	sbc $1DF41D.l		; EF 1D F4 1D
	cpy $23.b		; C4 23
	brk $00.b		; 00 00
	plx		; FA
	ora $F1.b,X		; 15 F1
	ora $AC.b,X		; 15 AC
	ora $0000.w,Y		; 19 00 00
	sbc ($1C.b,S),Y		; F3 1C
	sbc ($1C.b),Y		; F1 1C
	cmp $22.b		; C5 22
	brk $00.b		; 00 00
	sbc ($27.b)		; F2 27
	sbc [$27.b]		; E7 27
	plb		; AB
	inc A		; 1A
	brk $00.b		; 00 00
	cpy $F53F.w		; CC 3F F5
	and $0013B8.l,X		; 3F B8 13 00
	brk $0A.b		; 00 0A
	asl $E0.b,X		; 16 E0
	asl $BF.b,X		; 16 BF
	asl $00.b,X		; 16 00
	brk $F8.b		; 00 F8
	clc		; 18
	beq  24.b		; F0 18
	bcc  59.b		; 90 3B
	brk $00.b		; 00 00
	sed		; F8
	ora $19EF.w,Y		; 19 EF 19
	wai		; CB
	ora $0000.w,X		; 1D 00 00
	inc $31.b,X		; F6 31
	cmp $B331.w,Y		; D9 31 B3
	tas		; 1B
	brk $00.b		; 00 00
	sbc $15FC15.l		; EF 15 FC 15
	dec $0019.w		; CE 19 00
	brk $FC.b		; 00 FC
	jsr $20E4.w		; 20 E4 20
	cmp $22.b,S		; C3 22
	brk $00.b		; 00 00
	sbc $16FB16.l		; EF 16 FB 16
	bcs  29.b		; B0 1D
	brk $00.b		; 00 00
	sbc ($1E.b),Y		; F1 1E
	sbc ($1E.b),Y		; F1 1E
	cmp $27.b,S		; C3 27
	brk $00.b		; 00 00
	sbc ($17.b),Y		; F1 17
	sed		; F8
	ora [$A8.b],Y		; 17 A8
	tas		; 1B
	brk $00.b		; 00 00
	sbc ($22.b),Y		; F1 22
	sbc $C422.w		; ED 22 C4
	and $0000.w,X		; 3D 00 00
	sbc $19.b,X		; F5 19
	sbc ($19.b)		; F2 19
	lda [$1D.b]		; A7 1D
	brk $00.b		; 00 00
	plx		; FA
	tas		; 1B
	xba		; EB
	tas		; 1B
	wai		; CB
	and $00.b,X		; 35 00
	brk $FF.b		; 00 FF
	ora [$EA.b],Y		; 17 EA
	ora [$A9.b],Y		; 17 A9
	jsl $F10000.l		; 22 00 00 F1
	trb $1CF3.w		; 1C F3 1C
	dex		; CA
	and $0000.w,Y		; 39 00 00
	sbc ($1A.b)		; F2 1A
	pea $AB1A.w		; F4 1A AB
	ora $F20000.l,X		; 1F 00 00 F2
	ora $1DF1.w,X		; 1D F1 1D
	iny		; C8
	dec A		; 3A
	brk $00.b		; 00 00
	sbc $16.b,X		; F5 16
	sbc $16.b,X		; F5 16
	ldy $001C.w		; AC 1C 00
	brk $F1.b		; 00 F1
	bit $EB.b		; 24 EB
	bit $CB.b		; 24 CB
	rol $00.b,X		; 36 00
	brk $FB.b		; 00 FB
	inc A		; 1A
	xba		; EB
	inc A		; 1A
	lda $001E.w		; AD 1E 00
	brk $F4.b		; 00 F4
	ora $19F3.w,Y		; 19 F3 19
	wai		; CB
	and [$00.b],Y		; 37 00
	brk $FC.b		; 00 FC
	and #$DB.b		; 29 DB
	and #$B0.b		; 29 B0
	tas		; 1B
	brk $00.b		; 00 00
	pea $F517.w		; F4 17 F5
	ora [$CF.b],Y		; 17 CF
	and ($00.b,S),Y		; 33 00
	brk $F4.b		; 00 F4
	ora [$F5.b],Y		; 17 F5
	ora [$AC.b],Y		; 17 AC
	and $00.b,S		; 23 00
	brk $EC.b		; 00 EC
	ora $1DF7.w,X		; 1D F7 1D
	iny		; C8
	bit $0000.w,X		; 3C 00 00
	pea $F814.w		; F4 14 F8
	trb $AB.b		; 14 AB
	ora $0000.w,X		; 1D 00 00
	sbc $1E.b		; E5 1E
	sbc $C91E.w,X		; FD 1E C9
	and $0000.w,Y		; 39 00 00
	sbc #$19.b		; E9 19
	inc $A819.w,X		; FE 19 A8
	and ($00.b,X)		; 21 00
	brk $FB.b		; 00 FB
	rol $DF.b		; 26 DF
	rol $C6.b		; 26 C6
	ora $0000.w,Y		; 19 00 00
	cpx $FC18.w		; EC 18 FC
	clc		; 18
	tay		; A8
	asl $0000.w,X		; 1E 00 00
	xce		; FB
	and ($D4.b),Y		; 31 D4
	and ($A8.b),Y		; 31 A8
	trb $0000.w		; 1C 00 00
	inc $18.b		; E6 18
	cop $18.b		; 02 18
	cmp ($1B.b,X)		; C1 1B
	brk $00.b		; 00 00
	cmp $33.b,X		; D5 33
	sed		; F8
	and ($C2.b,S),Y		; 33 C2
	ora $00.b,X		; 15 00
	brk $08.b		; 00 08
	ora [$E1.b],Y		; 17 E1
	ora [$CB.b],Y		; 17 CB
	clc		; 18
	brk $00.b		; 00 00
	sbc [$1C.b],Y		; F7 1C
	sbc $E41C.w		; ED 1C E4
	and $00.b,S		; 23 00
	brk $FC.b		; 00 FC
	ora $EF.b,X		; 15 EF
	ora $CD.b,X		; 15 CD
	ora [$00.b],Y		; 17 00
	brk $F3.b		; 00 F3
	jsr $20ED.w		; 20 ED 20
	cmp ($25.b,X)		; C1 25
	brk $00.b		; 00 00
	sbc $FD16.w		; ED 16 FD
	asl $A7.b,X		; 16 A7
	trb $0000.w		; 1C 00 00
	xba		; EB
	asl $1EF7.w,X		; 1E F7 1E
	cmp [$20.b]		; C7 20
	brk $00.b		; 00 00
	xce		; FB
	clc		; 18
	sbc $AF18.w		; ED 18 AF
	clc		; 18
	brk $00.b		; 00 00
	sbc ($1D.b),Y		; F1 1D
	sbc ($1D.b)		; F2 1D
.ACCU 16
	rep #$24		; C2 24
	brk $00.b		; 00 00
	sbc ($19.b)		; F2 19
	sbc $19.b,X		; F5 19
	tay		; A8
	inc A		; 1A
	brk $00.b		; 00 00
	cpx $F123.w		; EC 23 F1
	and $C9.b,S		; 23 C9
	jsr $0000.w		; 20 00 00
	sbc ($22.b),Y		; F1 22
	sbc $AC22.w		; ED 22 AC
	ora $0000.w,X		; 1D 00 00
	nop		; EA
	jsr $20F6.w		; 20 F6 20
	cpy $20.b		; C4 20
	brk $00.b		; 00 00
	inc $20.b,X		; F6 20
	nop		; EA
	jsr $17AD.w		; 20 AD 17
	brk $00.b		; 00 00
	sbc ($1E.b)		; F2 1E
	beq  30.b		; F0 1E
	cmp $21.b,S		; C3 21
	brk $00.b		; 00 00
	pea $F418.w		; F4 18 F4
	clc		; 18
	tay		; A8
	tas		; 1B
	brk $00.b		; 00 00
	sbc ($1B.b)		; F2 1B
	sbc ($1B.b,S),Y		; F3 1B
	lda $000025.l,X		; BF 25 00 00
	xce		; FB
	ora $F0.b,X		; 15 F0
	ora $A3.b,X		; 15 A3
	trb $0000.w		; 1C 00 00
	sbc [$1D.b],Y		; F7 1D
	cpx $BD1D.w		; EC 1D BD
	ora $F50000.l,X		; 1F 00 00 F5
	inc A		; 1A
	sbc ($1A.b),Y		; F1 1A
	lda $18.b		; A5 18
	brk $00.b		; 00 00
	sbc $E91E.w,Y		; F9 1E E9
	asl $1BEA.w,X		; 1E EA 1B
	brk $00.b		; 00 00
	sbc $15EC15.l,X		; FF 15 EC 15
	cmp $15.b,X		; D5 15
	brk $00.b		; 00 00
	sbc $EA1D.w,Y		; F9 1D EA
	ora $1AE8.w,X		; 1D E8 1A
	brk $00.b		; 00 00
	jsr ($EA1A.w,X)		; FC 1A EA
	inc A		; 1A
	cmp $13.b,X		; D5 13
	brk $00.b		; 00 00
	plx		; FA
	ora $1DE9.w,X		; 1D E9 1D
	inc $1F.b		; E6 1F
	brk $00.b		; 00 00
	sbc $EF18.w,Y		; F9 18 EF
	clc		; 18
	bne  22.b		; D0 16
	brk $00.b		; 00 00
	sbc $EA1D.w,Y		; F9 1D EA
	ora $1AE8.w,X		; 1D E8 1A
	brk $00.b		; 00 00
	sbc $EE15.w,X		; FD 15 EE
	ora $D1.b,X		; 15 D1
	ora [$00.b],Y		; 17 00
	brk $FD.b		; 00 FD
	ora $1DE6.w,X		; 1D E6 1D
	sbc #$001A.w		; E9 1A 00
	brk $FD.b		; 00 FD
	inc A		; 1A
	sbc #$D41A.w		; E9 1A D4
	ora $00.b,X		; 15 00
	brk $F9.b		; 00 F9
	ora $1DEA.w,X		; 1D EA 1D
	inx		; E8
	inc A		; 1A
	brk $00.b		; 00 00
	inc $19.b,X		; F6 19
	sbc ($19.b),Y		; F1 19
	cmp ($16.b)		; D2 16
	brk $00.b		; 00 00
	pea $E428.w		; F4 28 E4
	plp		; 28
	sbc #$0019.w		; E9 19 00
	brk $FC.b		; 00 FC
	ora $EF.b,X		; 15 EF
	ora $CE.b,X		; 15 CE
	tas		; 1B
	brk $00.b		; 00 00
	pea $ED1F.w		; F4 1F ED
	ora $0019E9.l,X		; 1F E9 19 00
	brk $FA.b		; 00 FA
	clc		; 18
	inc $D018.w		; EE 18 D0
	tas		; 1B
	brk $00.b		; 00 00
	cmp $E740.w,Y		; D9 40 E7
	rti		; 40

	inx		; E8
	inc A		; 1A
	brk $00.b		; 00 00
	sbc ($26.b),Y		; F1 26
	sbc #$D026.w		; E9 26 D0
	clc		; 18
	brk $00.b		; 00 00
	sed		; F8
	and [$E1.b]		; 27 E1
	and [$E8.b]		; 27 E8
	inc A		; 1A
	brk $00.b		; 00 00
	inc $E51D.w,X		; FE 1D E5
	ora $14D4.w,X		; 1D D4 14
	brk $00.b		; 00 00
	asl $CF23.w		; 0E 23 CF
	and $E4.b,S		; 23 E4
	ora $0000.w,X		; 1D 00 00
	asl $D41E.w		; 0E 1E D4
	asl $15CF.w,X		; 1E CF 15
	brk $00.b		; 00 00
	sbc $1AF71A.l		; EF 1A F7 1A
	iny		; C8
	dec A		; 3A
	brk $00.b		; 00 00
	sbc ($13.b),Y		; F1 13
	jsr ($9713.w,X)		; FC 13 97
	and ($00.b),Y		; 31 00
	brk $F2.b		; 00 F2
	ora $F9.b,X		; 15 F9
	ora $C9.b,X		; 15 C9
	tsa		; 3B
	brk $00.b		; 00 00
	sbc ($17.b),Y		; F1 17
	sed		; F8
	ora [$AA.b],Y		; 17 AA
	ora $F00000.l,X		; 1F 00 00 F0
	tas		; 1B
	sbc $1B.b,X		; F5 1B
	dex		; CA
	sec		; 38
	brk $00.b		; 00 00
	sbc ($19.b),Y		; F1 19
	inc $19.b,X		; F6 19
	tay		; A8
	jsl $DF0000.l		; 22 00 00 DF
	jsr $2001.w		; 20 01 20
	dec $0024.w,X		; DE 24 00
	brk $E4.b		; 00 E4
	ora $1903.w,Y		; 19 03 19
	lda $00001F.l,X		; BF 1F 00 00
	inc $17.b		; E6 17
	ora $17.b,S		; 03 17
	cmp ($31.b)		; D2 31
	brk $00.b		; 00 00
	nop		; EA
	ora $B11FF7.l,X		; 1F F7 1F B1
	and ($00.b,X)		; 21 00
	brk $E2.b		; 00 E2
	ora $1905.w,Y		; 19 05 19
	iny		; C8
	bit $0000.w,X		; 3C 00 00
	sbc #$FA1D.w		; E9 1D FA
	ora $1DAB.w,X		; 1D AB 1D
	brk $00.b		; 00 00
.INDEX 8
	sep #$18		; E2 18
	asl $18.b		; 06 18
	cmp [$3B.b]		; C7 3B
	brk $00.b		; 00 00
	jmp.w [$0123]		; DC 23 01
	and $96.b,S		; 23 96
	and ($00.b),Y		; 31 00
	brk $F0.b		; 00 F0
	ora $C71FF1.l,X		; 1F F1 1F C7
	tsa		; 3B
	brk $00.b		; 00 00
	inc $1A.b,X		; F6 1A
	beq  26.b		; F0 1A
	tax		; AA
	ora $0000.w,X		; 1D 00 00
	sbc ($20.b),Y		; F1 20
	sbc $3AC920.l		; EF 20 C9 3A
	brk $00.b		; 00 00
	sbc $1C.b,X		; F5 1C
	sbc $1DAC1C.l		; EF 1C AC 1D
	brk $00.b		; 00 00
	asl $DC16.w		; 0E 16 DC
	asl $BD.b,X		; 16 BD
	mvp $00,$00		; 44 00 00
	ora $15DC15.l		; 0F 15 DC 15
	lda $1A.b,S		; A3 1A
	brk $00.b		; 00 00
	phd		; 0B
	and ($D4.b,X)		; 21 D4
	and ($C5.b,X)		; 21 C5
	tsa		; 3B
	brk $00.b		; 00 00
	tsb $DE16.w		; 0C 16 DE
	asl $AB.b,X		; 16 AB
	inc A		; 1A
	brk $00.b		; 00 00
	ora $DA19.w		; 0D 19 DA
	ora $38C8.w,Y		; 19 C8 38
	brk $00.b		; 00 00
	ora $DB18.w		; 0D 18 DB
	clc		; 18
	plb		; AB
	ora $0000.w,X		; 1D 00 00
	beq  33.b		; F0 21
	sbc $3AC921.l		; EF 21 C9 3A
	brk $00.b		; 00 00
	pea $F21A.w		; F4 1A F2
	inc A		; 1A
	ldy $001D.w		; AC 1D 00
	brk $F9.b		; 00 F9
	trb $1CEB.w		; 1C EB 1C
	cmp $0035.w		; CD 35 00
	brk $F8.b		; 00 F8
	bit $E4.b		; 24 E4
	bit $A4.b		; 24 A4
	and #$0000.w		; 29 00 00
	cpx $F51F.w		; EC 1F F5
	ora $0039CB.l,X		; 1F CB 39 00
	brk $F0.b		; 00 F0
	clc		; 18
	sed		; F8
	clc		; 18
	tay		; A8
	and $00.b,S		; 23 00
	brk $EB.b		; 00 EB
	tas		; 1B
	plx		; FA
	tas		; 1B
	ror $38.b,X		; 76 38
	brk $00.b		; 00 00
	inx		; E8
	ora [$01.b],Y		; 17 01
	ora [$55.b],Y		; 17 55
	and ($00.b,X)		; 21 00
	brk $F3.b		; 00 F3
	inc A		; 1A
	sbc ($1A.b,S),Y		; F3 1A
	stx $31.b		; 86 31
	brk $00.b		; 00 00
	sbc $1A.b,X		; F5 1A
	sbc ($1A.b),Y		; F1 1A
	ror $20.b		; 66 20
	brk $00.b		; 00 00
	stp		; DB
	trb $1C09.w		; 1C 09 1C
	bra  57.b		; 80 39
	brk $00.b		; 00 00
	dec $0022.w,X		; DE 22 00
	jsl $001769.l		; 22 69 17 00
	brk $FA.b		; 00 FA
	tas		; 1B
	xba		; EB
	tas		; 1B
	wai		; CB
	sec		; 38
	brk $00.b		; 00 00
	ora ($17.b,X)		; 01 17
	inx		; E8
	ora [$AA.b],Y		; 17 AA
	and ($00.b,X)		; 21 00
	brk $F3.b		; 00 F3
	inc A		; 1A
	sbc ($1A.b,S),Y		; F3 1A
	cmp ($31.b),Y		; D1 31
	brk $00.b		; 00 00
	sbc ($1A.b),Y		; F1 1A
	sbc $1A.b,X		; F5 1A
	lda ($20.b),Y		; B1 20
	brk $00.b		; 00 00
	ora #$DB1C.w		; 09 1C DB
	trb $39CA.w		; 1C CA 39
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	dec $B322.w,X		; DE 22 B3
	ora [$00.b],Y		; 17 00
	brk $FA.b		; 00 FA
	tas		; 1B
	xba		; EB
	tas		; 1B
	ror $38.b,X		; 76 38
	brk $00.b		; 00 00
	ora ($17.b,X)		; 01 17
	inx		; E8
	ora [$55.b],Y		; 17 55
	and ($00.b,X)		; 21 00
	brk $F3.b		; 00 F3
	inc A		; 1A
	sbc ($1A.b,S),Y		; F3 1A
	stx $31.b		; 86 31
	brk $00.b		; 00 00
	sbc ($1A.b),Y		; F1 1A
	sbc $1A.b,X		; F5 1A
	ror $20.b		; 66 20
	brk $00.b		; 00 00
	ora #$DB1C.w		; 09 1C DB
	trb $3980.w		; 1C 80 39
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	dec $6922.w,X		; DE 22 69
	ora [$00.b],Y		; 17 00
	brk $FD.b		; 00 FD
	jsl $CE22E1.l		; 22 E1 22 CE
	and ($00.b,S),Y		; 33 00
	brk $0A.b		; 00 0A
	trb $1CDA.w		; 1C DA 1C
	lda ($1C.b)		; B2 1C
	brk $00.b		; 00 00
	sbc $E81F.w,Y		; F9 1F E8
	ora $0019E7.l,X		; 1F E7 19 00
	brk $FD.b		; 00 FD
	ora $CB1FE4.l,X		; 1F E4 1F CB
	trb $0000.w		; 1C 00 00
	jsr ($E71D.w,X)		; FC 1D E7
	ora $20E2.w,X		; 1D E2 20
	brk $00.b		; 00 00
	sbc $1CE51C.l,X		; FF 1C E5 1C
	cpy $0016.w		; CC 16 00
	brk $F3.b		; 00 F3
	asl $1EEF.w,X		; 1E EF 1E
	dex		; CA
	and $0000.w,Y		; 39 00 00
	sbc ($18.b,S),Y		; F3 18
	sbc $18.b,X		; F5 18
	tax		; AA
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $F715.w		; F4 15 F7
	ora $B3.b,X		; 15 B3
	bmi   0.b		; 30 00
	brk $FA.b		; 00 FA
	clc		; 18
	inc $B518.w		; EE 18 B5
	phk		; 4B
	brk $00.b		; 00 00
	pea $F418.w		; F4 18 F4
	clc		; 18
	bne  54.b		; D0 36
	brk $00.b		; 00 00
	pea $F418.w		; F4 18 F4
	clc		; 18
	cmp $2F.b		; C5 2F
	brk $00.b		; 00 00
	sbc $18.b,X		; F5 18
	sbc ($18.b,S),Y		; F3 18
	cld		; D8
	and $000000.l		; 2F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F6.b		; 00 F6
	plp		; 28
.ACCU 8
	sep #$28		; E2 28
	tay		; A8
	ora ($03.b)		; 12 03
	brk $FA.b		; 00 FA
	and $39CD.w,Y		; 39 CD 39
	lda [$0F.b]		; A7 0F
	ora $00.b,S		; 03 00
	php		; 08
	and $C3.b,X		; 35 C3
	and $A5.b,X		; 35 A5
	trb $03.b		; 14 03
	brk $F0.b		; 00 F0
	rol $3ED2.w,X		; 3E D2 3E
	sta $000327.l,X		; 9F 27 03 00
	ora #$41.b		; 09 41
	ldx $41.b,Y		; B6 41
	ldy #$3C.b		; A0 3C
	ora $00.b,S		; 03 00
	sbc $D62D.w,X		; FD 2D D6
	and $29AC.w		; 2D AC 29
	ora $00.b		; 05 00
	jsr ($CF35.w,X)		; FC 35 CF
	and $99.b,X		; 35 99
	and $F90005.l		; 2F 05 00 F9
	sec		; 38
	cmp $1EB538.l		; CF 38 B5 1E
	ora $00.b		; 05 00
	ora [$2E.b]		; 07 2E
	wai		; CB
	rol $21D0.w		; 2E D0 21
	ora $00.b		; 05 00
	jsr ($CD37.w,X)		; FC 37 CD
	and [$CC.b],Y		; 37 CC
	trb $03.b		; 14 03
	brk $F7.b		; 00 F7
	lsr $4EBB.w		; 4E BB 4E
	sbc ($11.b)		; F2 11
	cop $00.b		; 02 00
	sbc ($2A.b,S),Y		; F3 2A
	sbc $2A.b,S		; E3 2A
	cmp ($2C.b,X)		; C1 2C
	ora [$00.b]		; 07 00
	ora $34.b		; 05 34
	cmp [$34.b]		; C7 34
	clv		; B8
	bmi   7.b		; 30 07
	brk $E8.b		; 00 E8
	lsr A		; 4A
	dec $814A.w		; CE 4A 81
	tsa		; 3B
	ora [$00.b]		; 07 00
	sbc ($52.b),Y		; F1 52
	lda $F152.w,X		; BD 52 F1
	bpl   2.b		; 10 02
	brk $F6.b		; 00 F6
	and #$E1.b		; 29 E1
	and #$A6.b		; 29 A6
	asl $03.b,X		; 16 03
	brk $FB.b		; 00 FB
	and ($D2.b,S),Y		; 33 D2
	and ($AB.b,S),Y		; 33 AB
	rol $0005.w		; 2E 05 00
	ora $36.b,S		; 03 36
	cmp [$36.b]		; C7 36
	cmp $0527.w		; CD 27 05
	brk $FC.b		; 00 FC
	and $39CB.w,Y		; 39 CB 39
	cpy $0314.w		; CC 14 03
	brk $09.b		; 00 09
	bit $D3.b		; 24 D3
	bit $AD.b		; 24 AD
	bmi   3.b		; 30 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F2.b		; 00 F2
	clc		; 18
	inc $18.b,X		; F6 18
	ldx $4A.b,Y		; B6 4A
	brk $00.b		; 00 00
	sbc ($15.b)		; F2 15
	sbc $9915.w,Y		; F9 15 99
	ora $0000.w,X		; 1D 00 00
	beq  28.b		; F0 1C
	pea $BA1C.w		; F4 1C BA
	lsr $00.b		; 46 00
	brk $E8.b		; 00 E8
	ora $19FF.w,Y		; 19 FF 19
	txy		; 9B
	jsr $0000.w		; 20 00 00
	pea $F418.w		; F4 18 F4
	clc		; 18
	ldy $0045.w,X		; BC 45 00
	brk $F7.b		; 00 F7
	ora $19F0.w,Y		; 19 F0 19
	sta $001F.w,X		; 9D 1F 00
	brk $E8.b		; 00 E8
	jsl $BC22F6.l		; 22 F6 22 BC
	eor $00.b		; 45 00
	brk $E8.b		; 00 E8
	and $F5.b,S		; 23 F5
	and $A6.b,S		; 23 A6
	asl $00.b,X		; 16 00
	brk $F3.b		; 00 F3
	bit $E9.b		; 24 E9
	bit $DF.b		; 24 DF
	and ($00.b,X)		; 21 00
	brk $F4.b		; 00 F4
	ora [$F5.b],Y		; 17 F5
	ora [$C0.b],Y		; 17 C0
	ora $F40000.l,X		; 1F 00 00 F4
	jsl $D222EA.l		; 22 EA 22 D2
	rol $0000.w		; 2E 00 00
	plx		; FA
	inc A		; 1A
	cpx $B31A.w		; EC 1A B3
	ora $F50000.l,X		; 1F 00 00 F5
	bit $E7.b		; 24 E7
	bit $E0.b		; 24 E0
	jsr $0000.w		; 20 00 00
	sbc $EA19.w,X		; FD 19 EA
	ora $1BC5.w,Y		; 19 C5 1B
	brk $00.b		; 00 00
	sbc [$25.b]		; E7 25
	pea $BC25.w		; F4 25 BC
	eor $01.b		; 45 01
	brk $E9.b		; 00 E9
	inc A		; 1A
	sbc $9D1A.w,X		; FD 1A 9D
	ora $F30001.l,X		; 1F 01 00 F3
	and [$E6.b]		; 27 E6
	and [$E1.b]		; 27 E1
	jsr $0002.w		; 20 02 00
	sbc [$21.b],Y		; F7 21
	inx		; E8
	and ($C3.b,X)		; 21 C3
	asl $0002.w,X		; 1E 02 00
	sbc ($1B.b,S),Y		; F3 1B
	sbc ($1B.b)		; F2 1B
	lda $000042.l,X		; BF 42 00 00
	sbc ($1B.b,S),Y		; F3 1B
	sbc ($1B.b)		; F2 1B
	sta $0022.w,X		; 9D 22 00
	brk $F3.b		; 00 F3
	trb $1CF1.w		; 1C F1 1C
	ldy $0045.w,X		; BC 45 00
	brk $F3.b		; 00 F3
	inc A		; 1A
	sbc ($1A.b,S),Y		; F3 1A
	stz $001E.w,X		; 9E 1E 00
	brk $ED.b		; 00 ED
	and $F0.b,S		; 23 F0
	and $BB.b,S		; 23 BB
	lsr $00.b		; 46 00
	brk $F0.b		; 00 F0
	asl $1EF2.w,X		; 1E F2 1E
	txs		; 9A
	and ($00.b,X)		; 21 00
	brk $ED.b		; 00 ED
	jsr $20F3.w		; 20 F3 20
	ldy $0045.w,X		; BC 45 00
	brk $EF.b		; 00 EF
	asl $1EF3.w,X		; 1E F3 1E
	stz $0020.w		; 9C 20 00
	brk $EC.b		; 00 EC
	ora $19FB.w,Y		; 19 FB 19
	clv		; B8
	lsr A		; 4A
	brk $00.b		; 00 00
	sbc $F61D.w		; ED 1D F6
	ora $2098.w,X		; 1D 98 20
	brk $00.b		; 00 00
	sbc $F81B.w		; ED 1B F8
	tas		; 1B
	tyx		; BB
	lsr $00.b		; 46 00
	brk $EF.b		; 00 EF
	ora $9A1FF2.l,X		; 1F F2 1F 9A
	and ($00.b,X)		; 21 00
	brk $EE.b		; 00 EE
	trb $FE.b		; 14 FE
	trb $B8.b		; 14 B8
	eor #$00.b		; 49 00
	brk $EF.b		; 00 EF
	ora $1DF4.w,X		; 1D F4 1D
	sta $001F.w,Y		; 99 1F 00
	brk $ED.b		; 00 ED
	ora $19FA.w,Y		; 19 FA 19
	lda $0048.w,Y		; B9 48 00
	brk $ED.b		; 00 ED
	jsr $20F3.w		; 20 F3 20
	sta $0020.w,Y		; 99 20 00
	brk $EE.b		; 00 EE
	ora $19F9.w,Y		; 19 F9 19
	lda $0048.w,Y		; B9 48 00
	brk $F0.b		; 00 F0
	asl $1EF2.w,X		; 1E F2 1E
	txs		; 9A
	ora $EF0000.l,X		; 1F 00 00 EF
	ora ($FE.b,S),Y		; 13 FE
	ora ($B9.b,S),Y		; 13 B9
	eor [$00.b]		; 47 00
	brk $F0.b		; 00 F0
	asl $1EF2.w,X		; 1E F2 1E
	sta $0020.w,Y		; 99 20 00
	brk $F4.b		; 00 F4
	tas		; 1B
	sbc ($1B.b),Y		; F1 1B
	lda $27.b,X		; B5 27
	brk $00.b		; 00 00
	sbc $15.b,X		; F5 15
	inc $15.b,X		; F6 15
	txs		; 9A
	tas		; 1B
	brk $00.b		; 00 00
	inc $F022.w		; EE 22 F0
	jsl $0028B7.l		; 22 B7 28 00
	brk $F7.b		; 00 F7
	ora $19F0.w,Y		; 19 F0 19
	sta $001A.w,X		; 9D 1A 00
	brk $F3.b		; 00 F3
	jsr $20ED.w		; 20 ED 20
	lda $0047.w,Y		; B9 47 00
	brk $F6.b		; 00 F6
	asl $1EEC.w,X		; 1E EC 1E
	txy		; 9B
	asl $0000.w,X		; 1E 00 00
	sbc ($1E.b,S),Y		; F3 1E
	sbc $47B91E.l		; EF 1E B9 47
	brk $00.b		; 00 00
	sbc [$18.b],Y		; F7 18
	sbc ($18.b),Y		; F1 18
	txy		; 9B
	asl $0000.w,X		; 1E 00 00
	sbc $1E.b,X		; F5 1E
	sbc $B71E.w		; ED 1E B7
	eor #$00.b		; 49 00
	brk $F9.b		; 00 F9
	jsr $20E7.w		; 20 E7 20
	txy		; 9B
	trb $0000.w		; 1C 00 00
	sbc ($1D.b,S),Y		; F3 1D
	beq  29.b		; F0 1D
	ldx $28.b,Y		; B6 28
	brk $00.b		; 00 00
	sbc ($19.b,S),Y		; F3 19
	pea $9919.w		; F4 19 99
	ora $0000.w,X		; 1D 00 00
	sbc [$21.b],Y		; F7 21
	inx		; E8
	and ($B8.b,X)		; 21 B8
	pha		; 48
	brk $00.b		; 00 00
	inc $E81A.w,X		; FE 1A E8
	inc A		; 1A
	sta $001B.w,X		; 9D 1B 00
	brk $FB.b		; 00 FB
	and [$DE.b]		; 27 DE
	and [$BC.b]		; 27 BC
	mvp $00,$00		; 44 00 00
	cop $21.b		; 02 21
	cmp $9F21.w,X		; DD 21 9F
	ora $0000.w,X		; 1D 00 00
	inc $FE14.w		; EE 14 FE
	trb $B8.b		; 14 B8
	pha		; 48
	brk $00.b		; 00 00
	sbc ($18.b),Y		; F1 18
	sbc [$18.b],Y		; F7 18
	sta $001F.w,Y		; 99 1F 00
	brk $EE.b		; 00 EE
	and ($F1.b,X)		; 21 F1
	and ($B3.b,X)		; 21 B3
	lsr $0000.w		; 4E 00 00
	sbc ($13.b),Y		; F1 13
	jsr ($9B13.w,X)		; FC 13 9B
	clc		; 18
	brk $00.b		; 00 00
	cpx $F321.w		; EC 21 F3
	and ($B1.b,X)		; 21 B1
	bvc   0.b		; 50 00
	brk $E0.b		; 00 E0
	ora $1907.w,Y		; 19 07 19
	sta $001A.w,X		; 9D 1A 00
	brk $F7.b		; 00 F7
	tas		; 1B
	inc $BB1B.w		; EE 1B BB
	eor $00.b		; 45 00
	brk $F9.b		; 00 F9
	ora $19EE.w,Y		; 19 EE 19
	txy		; 9B
	jsr $0000.w		; 20 00 00
	ora [$19.b]		; 07 19
	cpx #$19.b		; E0 19
	lda [$49.b],Y		; B7 49
	brk $00.b		; 00 00
	tsb $DA1A.w		; 0C 1A DA
	inc A		; 1A
	txs		; 9A
	ora $0000.w,X		; 1D 00 00
	phd		; 0B
	ora $E0.b,X		; 15 E0
	ora $B5.b,X		; 15 B5
	phk		; 4B
	brk $00.b		; 00 00
	asl $D61C.w		; 0E 1C D6
	trb $189D.w		; 1C 9D 18
	brk $00.b		; 00 00
	sbc ($24.b),Y		; F1 24
	xba		; EB
	bit $BB.b		; 24 BB
	and [$00.b]		; 27 00
	brk $F8.b		; 00 F8
	and ($E7.b,X)		; 21 E7
	and ($A6.b,X)		; 21 A6
	asl $0000.w,X		; 1E 00 00
	cpx $F420.w		; EC 20 F4
	jsr $37C9.w		; 20 C9 37
	brk $00.b		; 00 00
	sbc $1CF51C.l		; EF 1C F5 1C
	lda $001C.w		; AD 1C 00
	brk $F3.b		; 00 F3
	jsl $B922EB.l		; 22 EB 22 B9
	rol A		; 2A
	brk $00.b		; 00 00
	sbc ($1C.b,S),Y		; F3 1C
	sbc ($1C.b),Y		; F1 1C
	sta $001C.w,X		; 9D 1C 00
	brk $F5.b		; 00 F5
	trb $1CEF.w		; 1C EF 1C
	lda ($2C.b)		; B2 2C
	brk $00.b		; 00 00
	pea $EC20.w		; F4 20 EC
	jsr $169C.w		; 20 9C 16
	brk $00.b		; 00 00
	sbc ($1F.b)		; F2 1F
	sbc $27BA1F.l		; EF 1F BA 27
	brk $00.b		; 00 00
	sbc ($1D.b)		; F2 1D
	sbc ($1D.b),Y		; F1 1D
	sta $00001B.l,X		; 9F 1B 00 00
	sbc $F221.w		; ED 21 F2
	and ($BD.b,X)		; 21 BD
	jsr $0000.w		; 20 00 00
	beq  24.b		; F0 18
	sed		; F8
	clc		; 18
	ldy #$1D.b		; A0 1D
	brk $00.b		; 00 00
	sbc $19.b,X		; F5 19
	sbc ($19.b)		; F2 19
	clv		; B8
	and $00.b		; 25 00
	brk $F2.b		; 00 F2
	trb $1CF2.w		; 1C F2 1C
	stz $001C.w		; 9C 1C 00
	brk $F5.b		; 00 F5
	and [$E4.b]		; 27 E4
	and [$BF.b]		; 27 BF
	plp		; 28
	brk $00.b		; 00 00
	inc $1F.b,X		; F6 1F
	xba		; EB
	ora $001EA1.l,X		; 1F A1 1E 00
	brk $F5.b		; 00 F5
	and ($D8.b,S),Y		; 33 D8
	and ($BE.b,S),Y		; 33 BE
	rol $00.b		; 26 00
	brk $ED.b		; 00 ED
	rol $ED.b		; 26 ED
	rol $A3.b		; 26 A3
	tas		; 1B
	brk $00.b		; 00 00
	sbc ($27.b,S),Y		; F3 27
	inc $27.b		; E6 27
	dec $0023.w,X		; DE 23 00
	brk $F9.b		; 00 F9
	asl $1EE9.w,X		; 1E E9 1E
	cmp $1B.b,S		; C3 1B
	brk $00.b		; 00 00
	sbc ($29.b)		; F2 29
	sbc $29.b		; E5 29
	cpx #$21.b		; E0 21
	brk $00.b		; 00 00
	sbc $1EE31E.l,X		; FF 1E E3 1E
	cmp $1D.b,S		; C3 1D
	brk $00.b		; 00 00
	sed		; F8
	and [$E1.b]		; 27 E1
	and [$E4.b]		; 27 E4
	ora $0000.w,X		; 1D 00 00
	inc $E919.w,X		; FE 19 E9
	ora $1CC8.w,Y		; 19 C8 1C
	brk $00.b		; 00 00
	sed		; F8
	bit $D4.b,X		; 34 D4
	bit $EC.b,X		; 34 EC
	ora [$00.b],Y		; 17 00
	brk $FD.b		; 00 FD
	clc		; 18
	xba		; EB
	clc		; 18
	cpy $0020.w		; CC 20 00
	brk $ED.b		; 00 ED
	asl $1EF5.w,X		; 1E F5 1E
	cmp $3D.b,S		; C3 3D
	brk $00.b		; 00 00
	sbc ($18.b)		; F2 18
	inc $18.b,X		; F6 18
	txy		; 9B
	plp		; 28
	brk $00.b		; 00 00
	sbc $F51E.w		; ED 1E F5
	asl $47B9.w,X		; 1E B9 47
	brk $00.b		; 00 00
	sbc ($19.b,S),Y		; F3 19
	pea $9C19.w		; F4 19 9C
	ora $0000.w,X		; 1D 00 00
	inc $F61C.w		; EE 1C F6
	trb $49B7.w		; 1C B7 49
	brk $00.b		; 00 00
	pea $F21A.w		; F4 1A F2
	inc A		; 1A
	stz $001B.w		; 9C 1B 00
	brk $E5.b		; 00 E5
	rol A		; 2A
	sbc ($2A.b),Y		; F1 2A
	cpx #$20.b		; E0 20
	brk $00.b		; 00 00
	nop		; EA
	jsr $20F6.w		; 20 F6 20
	cpy $1C.b		; C4 1C
	brk $00.b		; 00 00
	sbc $DD2A.w,Y		; F9 2A DD
	rol A		; 2A
	tsx		; BA
	eor $00.b,S		; 43 00
	brk $FD.b		; 00 FD
	trb $1CE7.w		; 1C E7 1C
	stz $001E.w		; 9C 1E 00
	brk $F3.b		; 00 F3
	and #$E4.b		; 29 E4
	and #$BD.b		; 29 BD
	bmi   0.b		; 30 00
	brk $E7.b		; 00 E7
	and ($F8.b,X)		; 21 F8
	and ($9D.b,X)		; 21 9D
	jsr $0000.w		; 20 00 00
	sbc $CA3D.w,Y		; F9 3D CA
	and $2EB8.w,X		; 3D B8 2E
	brk $00.b		; 00 00
	dec $031F.w,X		; DE 1F 03
	ora $0019B0.l,X		; 1F B0 19 00
	brk $EC.b		; 00 EC
	jsl $8122F2.l		; 22 F2 22 81
	lsr A		; 4A
	brk $00.b		; 00 00
	pei ($26.b)		; D4 26
	asl $26.b		; 06 26
	iny		; C8
	jsl $CD0000.l		; 22 00 00 CD
	eor ($E1.b)		; 52 E1
	eor ($A8.b)		; 52 A8
	jsl $0A0000.l		; 22 00 00 0A
	trb $1CDA.w		; 1C DA 1C
	cmp $22.b		; C5 22
	brk $00.b		; 00 00
	sbc ($18.b)		; F2 18
	inc $18.b,X		; F6 18
	ldx $4A.b,Y		; B6 4A
	brk $00.b		; 00 00
	sbc ($15.b)		; F2 15
	sbc $9915.w,Y		; F9 15 99
	ora $0000.w,X		; 1D 00 00
	sbc ($37.b)		; F2 37
	cmp [$37.b],Y		; D7 37
	cpx $0015.w		; EC 15 00
	brk $F3.b		; 00 F3
	tas		; 1B
	sbc ($1B.b)		; F2 1B
	wai		; CB
	and ($00.b,X)		; 21 00
	brk $F7.b		; 00 F7
	tas		; 1B
	inc $DE1B.w		; EE 1B DE
	and $00.b,S		; 23 00
	brk $F8.b		; 00 F8
	clc		; 18
	beq  24.b		; F0 18
	cpy $1A.b		; C4 1A
	brk $00.b		; 00 00
	inc $19.b,X		; F6 19
	sbc ($19.b),Y		; F1 19
	ldy $0044.w,X		; BC 44 00
	brk $F6.b		; 00 F6
	ora $19F1.w,Y		; 19 F1 19
	txs		; 9A
	jsl $F50000.l		; 22 00 00 F5
	ora $19F2.w,Y		; 19 F2 19
	lda $0043.w,X		; BD 43 00
	brk $F5.b		; 00 F5
	clc		; 18
	sbc ($18.b,S),Y		; F3 18
	sta $0024.w,Y		; 99 24 00
	brk $F0.b		; 00 F0
	ora $19F7.w,Y		; 19 F7 19
	ldx $49.b,Y		; B6 49
	brk $00.b		; 00 00
	sbc $F71C.w		; ED 1C F7
	trb $1E98.w		; 1C 98 1E
	brk $00.b		; 00 00
	sbc ($16.b),Y		; F1 16
	sbc $B616.w,Y		; F9 16 B6
	phk		; 4B
	brk $00.b		; 00 00
	cpx $F91B.w		; EC 1B F9
	tas		; 1B
	tya		; 98
	asl $0000.w,X		; 1E 00 00
	sbc ($18.b)		; F2 18
	inc $18.b,X		; F6 18
	eor ($4A.b),Y		; 51 4A
	brk $00.b		; 00 00
	sbc ($15.b)		; F2 15
	sbc $3415.w,Y		; F9 15 34
	ora $0000.w,X		; 1D 00 00
	pea $F418.w		; F4 18 F4
	clc		; 18
	tad		; 5B
	eor $00.b		; 45 00
	brk $F7.b		; 00 F7
	ora $19F0.w,Y		; 19 F0 19
	bit $001F.w,X		; 3C 1F 00
	brk $E8.b		; 00 E8
	jsl $6622F6.l		; 22 F6 22 66
	eor $00.b		; 45 00
	brk $E8.b		; 00 E8
	and $F5.b,S		; 23 F5
	and $50.b,S		; 23 50
	asl $00.b,X		; 16 00
	brk $F6.b		; 00 F6
	clc		; 18
	sbc ($18.b)		; F2 18
	ldx $4A.b,Y		; B6 4A
	brk $00.b		; 00 00
	sbc $F215.w,Y		; F9 15 F2
	ora $99.b,X		; 15 99
	ora $0000.w,X		; 1D 00 00
	pea $F418.w		; F4 18 F4
	clc		; 18
	ldy $0045.w,X		; BC 45 00
	brk $F0.b		; 00 F0
	ora $19F7.w,Y		; 19 F7 19
	sta $001F.w,X		; 9D 1F 00
	brk $F6.b		; 00 F6
	jsl $BC22E8.l		; 22 E8 22 BC
	eor $00.b		; 45 00
	brk $F5.b		; 00 F5
	and $E8.b,S		; 23 E8
	and $A6.b,S		; 23 A6
	asl $00.b,X		; 16 00
	brk $F6.b		; 00 F6
	clc		; 18
	sbc ($18.b)		; F2 18
	eor ($4A.b),Y		; 51 4A
	brk $00.b		; 00 00
	sbc $F215.w,Y		; F9 15 F2
	ora $34.b,X		; 15 34
	ora $0000.w,X		; 1D 00 00
	pea $F418.w		; F4 18 F4
	clc		; 18
	tad		; 5B
	eor $00.b		; 45 00
	brk $F0.b		; 00 F0
	ora $19F7.w,Y		; 19 F7 19
	bit $001F.w,X		; 3C 1F 00
	brk $F6.b		; 00 F6
	jsl $6622E8.l		; 22 E8 22 66
	eor $00.b		; 45 00
	brk $F5.b		; 00 F5
	and $E8.b,S		; 23 E8
	and $50.b,S		; 23 50
	asl $00.b,X		; 16 00
	brk $F3.b		; 00 F3
	jsr $20ED.w		; 20 ED 20
	lda $0047.w,Y		; B9 47 00
	brk $F6.b		; 00 F6
	asl $1EEC.w,X		; 1E EC 1E
	txy		; 9B
	asl $0000.w,X		; 1E 00 00
	pea $EC20.w		; F4 20 EC
	jsr $27B8.w		; 20 B8 27
	brk $00.b		; 00 00
	sed		; F8
	tas		; 1B
	sbc $9E1B.w		; ED 1B 9E
	inc A		; 1A
	brk $00.b		; 00 00
	sbc ($24.b),Y		; F1 24
	xba		; EB
	bit $BB.b		; 24 BB
	and [$00.b]		; 27 00
	brk $F8.b		; 00 F8
	and ($E7.b,X)		; 21 E7
	and ($A6.b,X)		; 21 A6
	asl $0000.w,X		; 1E 00 00
	sbc $33.b,X		; F5 33
	cld		; D8
	and ($BE.b,S),Y		; 33 BE
	rol $00.b		; 26 00
	brk $ED.b		; 00 ED
	rol $ED.b		; 26 ED
	rol $A3.b		; 26 A3
	tas		; 1B
	brk $00.b		; 00 00
	sbc ($29.b)		; F2 29
	sbc $29.b		; E5 29
	cpx #$21.b		; E0 21
	brk $00.b		; 00 00
	sbc $1EE31E.l,X		; FF 1E E3 1E
	cmp $1D.b,S		; C3 1D
	brk $00.b		; 00 00
	plx		; FA
	inc A		; 1A
	cpx $BC1A.w		; EC 1A BC
	lsr $00.b		; 46 00
	brk $FE.b		; 00 FE
	asl $EC.b,X		; 16 EC
	asl $9C.b,X		; 16 9C
	jsr $0000.w		; 20 00 00
	xce		; FB
	trb $1CE9.w		; 1C E9 1C
	lda $0048.w,Y		; B9 48 00
	brk $FF.b		; 00 FF
	ora [$EA.b],Y		; 17 EA
	ora [$9C.b],Y		; 17 9C
	ora $0000.w,X		; 1D 00 00
	sbc $F221.w		; ED 21 F2
	and ($BA.b,X)		; 21 BA
	eor [$00.b]		; 47 00
	brk $ED.b		; 00 ED
	bit $EF.b		; 24 EF
	bit $9B.b		; 24 9B
	ora $010000.l,X		; 1F 00 00 01
	trb $1CE3.w		; 1C E3 1C
	tsx		; BA
	lsr $00.b		; 46 00
	brk $09.b		; 00 09
	clc		; 18
	cmp $1B9F18.l,X		; DF 18 9F 1B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $F418.w		; F4 18 F4
	clc		; 18
	lda $000034.l		; AF 34 00 00
	pea $F418.w		; F4 18 F4
	clc		; 18
	tax		; AA
	eor [$00.b],Y		; 57 00
	brk $F4.b		; 00 F4
	clc		; 18
	pea $C918.w		; F4 18 C9
	and [$00.b],Y		; 37 00
	brk $F4.b		; 00 F4
	clc		; 18
	pea $AD18.w		; F4 18 AD
	bmi   0.b		; 30 00
	brk $EF.b		; 00 EF
	clc		; 18
	sbc $D818.w,Y		; F9 18 D8
	bit $0000.w		; 2C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  32.b		; 10 20
	bne  32.b		; D0 20
	lda [$10.b]		; A7 10
	ora $00.b,S		; 03 00
	clc		; 18
	bit $B4.b,X		; 34 B4
	bit $AC.b,X		; 34 AC
	ora $03.b,X		; 15 03
	brk $FC.b		; 00 FC
	bit $E0.b		; 24 E0
	bit $B4.b		; 24 B4
	bit $03.b		; 24 03
	brk $FC.b		; 00 FC
	mvp $44,$C0		; 44 C0 44
	lda ($1B.b),Y		; B1 1B
	ora $00.b,S		; 03 00
	phd		; 0B
	ora $19DC.w,Y		; 19 DC 19
	sty $033F.w		; 8C 3F 03
	brk $F8.b		; 00 F8
	and $E3.b		; 25 E3
	and $AD.b		; 25 AD
	asl $0005.w,X		; 1E 05 00
	cop $2C.b		; 02 2C
	cmp ($2C.b)		; D2 2C
	lda $000537.l,X		; BF 37 05 00
	sbc ($4B.b)		; F2 4B
	cmp $4B.b,S		; C3 4B
	lda $051E.w,X		; BD 1E 05
	brk $07.b		; 00 07
	and #$D0.b		; 29 D0
	and #$CE.b		; 29 CE
	ora $FF0003.l		; 0F 03 00 FF
	rti		; 40

	cmp ($40.b,X)		; C1 40
	dec $13.b,X		; D6 13
	cop $00.b		; 02 00
	asl $A74B.w		; 0E 4B A7
	phk		; 4B
	cpx $13.b		; E4 13
	cop $00.b		; 02 00
	phd		; 0B
	and $2DC8.w		; 2D C8 2D
	dec $2E.b,X		; D6 2E
	ora $00.b,S		; 03 00
	ora $32BF32.l		; 0F 32 BF 32
	sty $50.b,X		; 94 50
	ora [$00.b]		; 07 00
	jsr ($D331.w,X)		; FC 31 D3
	and ($A2.b),Y		; 31 A2
	rol $05.b		; 26 05
	brk $D0.b		; 00 D0
	bit $3CF4.w,X		; 3C F4 3C
	stz $0528.w		; 9C 28 05
	brk $0E.b		; 00 0E
	and $3DB5.w,X		; 3D B5 3D
	ldy $0321.w		; AC 21 03
	brk $F4.b		; 00 F4
	rol A		; 2A
.ACCU 8
	sep #$2A		; E2 2A
	tax		; AA
	jsl $020005.l		; 22 05 00 02
	rol $2ED0.w		; 2E D0 2E
	cpy $0314.w		; CC 14 03
	brk $E1.b		; 00 E1
	tsa		; 3B
	cpx $3B.b		; E4 3B
	cmp $000321.l,X		; DF 21 03 00
	ora $CB1C.w,Y		; 19 1C CB
	trb $49B8.w		; 1C B8 49
	ora $00.b,S		; 03 00
	ora $27CA27.l		; 0F 27 CA 27
	sta ($60.b,X)		; 81 60
	ora [$00.b]		; 07 00
	ora $32BF32.l		; 0F 32 BF 32
	sty $50.b,X		; 94 50
	ora [$00.b]		; 07 00
	ora $27CA27.l		; 0F 27 CA 27
	sta ($60.b,X)		; 81 60
	ora [$00.b]		; 07 00
	ora $44.b,S		; 03 44
	lda $B244.w,Y		; B9 44 B2
	and $01.b,X		; 35 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F1.b		; 00 F1
	trb $1CF3.w		; 1C F3 1C
	ldy $0045.w,X		; BC 45 00
	brk $F1.b		; 00 F1
	trb $1CF3.w		; 1C F3 1C
	stz $001E.w,X		; 9E 1E 00
	brk $EA.b		; 00 EA
	trb $1CFA.w		; 1C FA 1C
.ACCU 16
.INDEX 16
	rep #$3E		; C2 3E
	brk $00.b		; 00 00
	inc $24.b		; E6 24
	inc $24.b,X		; F6 24
	lda $1F.b,S		; A3 1F
	brk $00.b		; 00 00
	inc $FB17.w		; EE 17 FB
	ora [$C2.b],Y		; 17 C2
	and $ED0000.l,X		; 3F 00 00 ED
	trb $1CF7.w		; 1C F7 1C
	ldy $1E.b		; A4 1E
	brk $00.b		; 00 00
	sbc #$FA1D.w		; E9 1D FA
	ora $3EC3.w,X		; 1D C3 3E
	brk $00.b		; 00 00
	xba		; EB
	asl $1EF7.w,X		; 1E F7 1E
	lda $0016.w		; AD 16 00
	brk $F4.b		; 00 F4
	rol $E6.b		; 26 E6
	rol $E2.b		; 26 E2
	jsr $0000.w		; 20 00 00
	nop		; EA
	asl $1EF8.w,X		; 1E F8 1E
	cmp [$1B.b]		; C7 1B
	brk $00.b		; 00 00
	sbc $1BE61B.l,X		; FF 1B E6 1B
	bne  49.b		; D0 31
	brk $00.b		; 00 00
	ora $1A.b,S		; 03 1A
	sbc $1A.b,S		; E3 1A
	bcs  32.b		; B0 20
	brk $00.b		; 00 00
	inc $1F.b,X		; F6 1F
	xba		; EB
	ora $0021E0.l,X		; 1F E0 21 00
	brk $FC.b		; 00 FC
	ora $EF.b,X		; 15 EF
	ora $C6.b,X		; 15 C6
	inc A		; 1A
	brk $00.b		; 00 00
	sbc $12.b,X		; F5 12
	sbc $C212.w,Y		; F9 12 C2
	and $F60001.l,X		; 3F 01 00 F6
	ora ($F9.b),Y		; 11 F9
	ora ($A0.b),Y		; 11 A0
	jsl $E70001.l		; 22 01 00 E7
	asl $1EFB.w,X		; 1E FB 1E
.INDEX 8
	sep #$1F		; E2 1F
	cop $00.b		; 02 00
	sbc [$19.b]		; E7 19
	brk $19.b		; 00 19
	cmp $1D.b		; C5 1D
	cop $00.b		; 02 00
	sed		; F8
	asl $F2.b,X		; 16 F2
	asl $C9.b,X		; 16 C9
	sec		; 38
	brk $00.b		; 00 00
	sbc $EC17.w,X		; FD 17 EC
	ora [$AB.b],Y		; 17 AB
	asl $0000.w,X		; 1E 00 00
	sbc $EF18.w,Y		; F9 18 EF
	clc		; 18
	iny		; C8
	and $0000.w,X		; 3D 00 00
	sbc $17EA17.l,X		; FF 17 EA 17
	lda $000019.l		; AF 19 00 00
	pea $F715.w		; F4 15 F7
	ora $BC.b,X		; 15 BC
	eor $00.b		; 45 00
	brk $F3.b		; 00 F3
	ora $F8.b,X		; 15 F8
	ora $A0.b,X		; 15 A0
	trb $0000.w		; 1C 00 00
	sbc $15.b,X		; F5 15
	inc $15.b,X		; F6 15
	lda $0044.w,X		; BD 44 00
	brk $F3.b		; 00 F3
	ora $F8.b,X		; 15 F8
	ora $A0.b,X		; 15 A0
	ora $0000.w,X		; 1D 00 00
	sbc $13.b,X		; F5 13
	sed		; F8
	ora ($BC.b,S),Y		; 13 BC
	eor $00.b		; 45 00
	brk $F2.b		; 00 F2
	asl $F8.b,X		; 16 F8
	asl $A3.b,X		; 16 A3
	ora $0000.w,Y		; 19 00 00
	sbc ($1A.b),Y		; F1 1A
	sbc $1A.b,X		; F5 1A
	lda $0045.w,X		; BD 45 00
	brk $F2.b		; 00 F2
	asl $F8.b,X		; 16 F8
	asl $9E.b,X		; 16 9E
	ora $EE0000.l,X		; 1F 00 00 EE
	inc A		; 1A
	sed		; F8
	inc A		; 1A
	lda [$4A.b],Y		; B7 4A
	brk $00.b		; 00 00
	sbc ($17.b),Y		; F1 17
	sed		; F8
	ora [$9D.b],Y		; 17 9D
	inc A		; 1A
	brk $00.b		; 00 00
	sbc ($1A.b),Y		; F1 1A
	sbc $1A.b,X		; F5 1A
	tsx		; BA
	eor [$00.b]		; 47 00
	brk $F2.b		; 00 F2
	ora [$F7.b],Y		; 17 F7
	ora [$9E.b],Y		; 17 9E
	trb $0000.w		; 1C 00 00
	sbc ($15.b)		; F2 15
	sbc $C015.w,Y		; F9 15 C0
	rti		; 40

	brk $00.b		; 00 00
	sbc ($15.b)		; F2 15
	sbc $9E15.w,Y		; F9 15 9E
	jsl $F10000.l		; 22 00 00 F1
	ora [$F8.b],Y		; 17 F8
	ora [$BD.b],Y		; 17 BD
	jsl $F10000.l		; 22 00 00 F1
	ora $19F6.w,Y		; 19 F6 19
	sta $00001E.l,X		; 9F 1E 00 00
	sbc $23.b,S		; E3 23
	plx		; FA
	and $AC.b,S		; 23 AC
	rol $00.b		; 26 00
	brk $06.b		; 00 06
	ora $1DDD.w,X		; 1D DD 1D
	ldy $001C.w		; AC 1C 00
	brk $F6.b		; 00 F6
	ora $1DED.w,X		; 1D ED 1D
	sta ($39.b)		; 92 39
	brk $00.b		; 00 00
	inc $1B.b,X		; F6 1B
	sbc $1DCB1B.l		; EF 1B CB 1D
	brk $00.b		; 00 00
	sbc ($3A.b),Y		; F1 3A
	cmp $3A.b,X		; D5 3A
	ldy $001D.w		; AC 1D 00
	brk $E5.b		; 00 E5
	trb $1CFF.w		; 1C FF 1C
	iny		; C8
	inc A		; 1A
	brk $00.b		; 00 00
	sbc ($24.b,S),Y		; F3 24
	sbc #$B224.w		; E9 24 B2
	and [$00.b]		; 27 00
	brk $DD.b		; 00 DD
	and $00.b,S		; 23 00
	and $A0.b,S		; 23 A0
	trb $0000.w		; 1C 00 00
	beq  33.b		; F0 21
	sbc $24BE21.l		; EF 21 BE 24
	brk $00.b		; 00 00
	sbc ($17.b),Y		; F1 17
	sed		; F8
	ora [$9F.b],Y		; 17 9F
	ora $F00000.l,X		; 1F 00 00 F0
	bit $EC.b		; 24 EC
	bit $BF.b		; 24 BF
	trb $0000.w		; 1C 00 00
	beq  30.b		; F0 1E
	sbc ($1E.b)		; F2 1E
	sta $000020.l,X		; 9F 20 00 00
	plx		; FA
	jsl $BD22E4.l		; 22 E4 22 BD
	eor $00.b,S		; 43 00
	brk $FF.b		; 00 FF
	asl $EB.b,X		; 16 EB
	asl $9C.b,X		; 16 9C
	and ($00.b,X)		; 21 00
	brk $FB.b		; 00 FB
	jsl $BD22E3.l		; 22 E3 22 BD
	mvp $00,$00		; 44 00 00
	brk $20.b		; 00 20
	cpx #$20.b		; E0 20
	stz $0021.w		; 9C 21 00
	brk $FD.b		; 00 FD
	clc		; 18
	xba		; EB
	clc		; 18
	lda $000042.l,X		; BF 42 00 00
	brk $21.b		; 00 21
	cmp $219E21.l,X		; DF 21 9E 21
	brk $00.b		; 00 00
	sbc $E81B.w,X		; FD 1B E8
	tas		; 1B
	lda $0047.w,Y		; B9 47 00
	brk $FD.b		; 00 FD
	tas		; 1B
	inx		; E8
	tas		; 1B
	txy		; 9B
	asl $0000.w,X		; 1E 00 00
	ora $D221.w		; 0D 21 D2
	and ($BE.b,X)		; 21 BE
	eor $00.b,S		; 43 00
	brk $1D.b		; 00 1D
	asl $CD.b,X		; 16 CD
	asl $A1.b,X		; 16 A1
	ora $0000.w,X		; 1D 00 00
	tsb $D61E.w		; 0C 1E D6
	asl $42BF.w,X		; 1E BF 42
	brk $00.b		; 00 00
	trb $18.b		; 14 18
	pei ($18.b)		; D4 18
	ldy #$1F.b		; A0 1F
	brk $00.b		; 00 00
	sbc [$23.b],Y		; F7 23
	inc $23.b		; E6 23
	ldx $4B.b,Y		; B6 4B
	brk $00.b		; 00 00
	inc $17.b,X		; F6 17
	sbc ($17.b,S),Y		; F3 17
	stz $0018.w,X		; 9E 18 00
	brk $F4.b		; 00 F4
	rol $E6.b		; 26 E6
	rol $BD.b		; 26 BD
	and [$00.b]		; 27 00
	brk $F1.b		; 00 F1
	clc		; 18
	sbc [$18.b],Y		; F7 18
	ldy #$1D.b		; A0 1D
	brk $00.b		; 00 00
	plx		; FA
	clc		; 18
	inc $C118.w		; EE 18 C1
	rti		; 40

	brk $00.b		; 00 00
	inc $1B.b,X		; F6 1B
	sbc $229F1B.l		; EF 1B 9F 22
	brk $00.b		; 00 00
	xce		; FB
	bit $E1.b		; 24 E1
	bit $BA.b		; 24 BA
	pha		; 48
	brk $00.b		; 00 00
	sbc [$1A.b],Y		; F7 1A
	sbc $1C9E1A.l		; EF 1A 9E 1C
	brk $00.b		; 00 00
	tsb $19.b		; 04 19
	sbc $19.b,S		; E3 19
.ACCU 8
	sep #$21		; E2 21
	brk $00.b		; 00 00
	cop $16.b		; 02 16
	inx		; E8
	asl $CB.b,X		; 16 CB
	ora [$00.b],Y		; 17 00
	brk $F5.b		; 00 F5
	ora $BD1FEC.l,X		; 1F EC 1F BD
	eor $00.b,S		; 43 00
	brk $F5.b		; 00 F5
	clc		; 18
	sbc ($18.b,S),Y		; F3 18
	sta $0020.w,X		; 9D 20 00
	brk $FA.b		; 00 FA
	jsr $20E6.w		; 20 E6 20
	lda $0047.w,Y		; B9 47 00
	brk $FD.b		; 00 FD
	clc		; 18
	xba		; EB
	clc		; 18
	txy		; 9B
	asl $0000.w,X		; 1E 00 00
	sbc ($1A.b),Y		; F1 1A
	sbc $1A.b,X		; F5 1A
	cpy #$24.b		; C0 24
	brk $00.b		; 00 00
	sbc ($18.b),Y		; F1 18
	sbc [$18.b],Y		; F7 18
	stz $0022.w,X		; 9E 22 00
	brk $E5.b		; 00 E5
	and $2DEE.w		; 2D EE 2D
.ACCU 16
	rep #$22		; C2 22
	brk $00.b		; 00 00
	sbc ($21.b)		; F2 21
	sbc $9E21.w		; ED 21 9E
	bit $00.b		; 24 00
	brk $F4.b		; 00 F4
	jsl $B422EA.l		; 22 EA 22 B4
	and $E20000.l		; 2F 00 00 E2
	ora $1D01.w,X		; 1D 01 1D
	sta $000026.l,X		; 9F 26 00 00
	sbc $25.b,X		; F5 25
	inc $25.b		; E6 25
	lda [$2C.b],Y		; B7 2C
	brk $00.b		; 00 00
.ACCU 8
	sep #$27		; E2 27
	sbc [$27.b],Y		; F7 27
	stz $002A.w,X		; 9E 2A 00
	brk $EF.b		; 00 EF
	and #$E8.b		; 29 E8
	and #$B5.b		; 29 B5
	bit $00.b		; 24 00
	brk $E1.b		; 00 E1
	jsl $9F22FD.l		; 22 FD 22 9F
	asl $00.b,X		; 16 00
	brk $F3.b		; 00 F3
	tas		; 1B
	sbc ($1B.b)		; F2 1B
	lda $26.b,X		; B5 26
	brk $00.b		; 00 00
	sbc $16.b,X		; F5 16
	sbc $16.b,X		; F5 16
	stz $0019.w		; 9C 19 00
	brk $ED.b		; 00 ED
	ora $B81FF4.l,X		; 1F F4 1F B8
	and $00.b,S		; 23 00
	brk $EF.b		; 00 EF
	tas		; 1B
	inc $1B.b,X		; F6 1B
	ldy #$18.b		; A0 18
	brk $00.b		; 00 00
	sbc ($34.b)		; F2 34
	phx		; DA
	bit $BD.b,X		; 34 BD
	jsl $F20000.l		; 22 00 00 F2
	ora [$F7.b],Y		; 17 F7
	ora [$A0.b],Y		; 17 A0
	asl $0000.w,X		; 1E 00 00
	sed		; F8
	asl $1EEA.w,X		; 1E EA 1E
.INDEX 8
	sep #$1E		; E2 1E
	brk $00.b		; 00 00
	xce		; FB
	trb $1CE9.w		; 1C E9 1C
.ACCU 16
	rep #$20		; C2 20
	brk $00.b		; 00 00
	jsr ($E321.w,X)		; FC 21 E3
	and ($E1.b,X)		; 21 E1
	jsr $0000.w		; 20 00 00
	cop $1A.b		; 02 1A
	cpx $1A.b		; E4 1A
	cmp $1E.b,S		; C3 1E
	brk $00.b		; 00 00
	sed		; F8
	jsl $E322E6.l		; 22 E6 22 E3
	ora $F30000.l,X		; 1F 00 00 F3
	and ($EC.b,X)		; 21 EC
	and ($CC.b,X)		; 21 CC
	ora [$00.b],Y		; 17 00
	brk $E8.b		; 00 E8
	pld		; 2B
	sbc $DA2B.w		; ED 2B DA
	and $00.b		; 25 00
	brk $E1.b		; 00 E1
	and ($FE.b,X)		; 21 FE
	and ($C5.b,X)		; 21 C5
	ora $0000.w,Y		; 19 00 00
	ora $1A.b		; 05 1A
	sbc ($1A.b,X)		; E1 1A
	inc $1E.b		; E6 1E
	brk $00.b		; 00 00
	tsb $DA1A.w		; 0C 1A DA
	inc A		; 1A
	wai		; CB
	tas		; 1B
	brk $00.b		; 00 00
	plx		; FA
	and $E32FD7.l		; 2F D7 2F E3
	ora $140000.l,X		; 1F 00 00 14
	trb $1CD0.w		; 1C D0 1C
	cmp $0016.w		; CD 16 00
	brk $0D.b		; 00 0D
	bit $3CB7.w,X		; 3C B7 3C
	sbc $1B.b		; E5 1B
	brk $00.b		; 00 00
	ora $17.b		; 05 17
	cpx $17.b		; E4 17
	cpy $001C.w		; CC 1C 00
	brk $0F.b		; 00 0F
	and #$29C8.w		; 29 C8 29
	sbc $1C.b		; E5 1C
	brk $00.b		; 00 00
	phd		; 0B
	clc		; 18
	cmp $CE18.w,X		; DD 18 CE
	ora [$00.b],Y		; 17 00
	brk $F4.b		; 00 F4
	ora $F7.b,X		; 15 F7
	ora $C2.b,X		; 15 C2
	.db $42, $00		; 42 00
	brk $F3.b		; 00 F3
	asl $F7.b,X		; 16 F7
	asl $8D.b,X		; 16 8D
	bit $00.b,X		; 34 00
	brk $F7.b		; 00 F7
	ora ($F7.b)		; 12 F7
	ora ($BB.b)		; 12 BB
	lsr $00.b		; 46 00
	brk $F6.b		; 00 F6
	ora $F5.b,X		; 15 F5
	ora $8A.b,X		; 15 8A
	and ($00.b),Y		; 31 00
	brk $F5.b		; 00 F5
	ora ($F9.b)		; 12 F9
	ora ($BC.b)		; 12 BC
	lsr $00.b		; 46 00
	brk $F6.b		; 00 F6
	ora $F5.b,X		; 15 F5
	ora $8B.b,X		; 15 8B
	and ($00.b),Y		; 31 00
	brk $FB.b		; 00 FB
	ora ($F3.b)		; 12 F3
	ora ($BE.b)		; 12 BE
	mvp $00,$00		; 44 00 00
	plx		; FA
	ora $F1.b,X		; 15 F1
	ora $8D.b,X		; 15 8D
	and ($00.b),Y		; 31 00
	brk $06.b		; 00 06
	ora $1DDD.w,X		; 1D DD 1D
	cpy #$41.b		; C0 41
	brk $00.b		; 00 00
	ora $36.b		; 05 36
	cmp $36.b		; C5 36
	stz $0022.w,X		; 9E 22 00
	brk $05.b		; 00 05
	trb $1CDF.w		; 1C DF 1C
	cmp $21.b		; C5 21
	brk $00.b		; 00 00
	ora $1D.b		; 05 1D
	dec $B91D.w,X		; DE 1D B9
	tsb $0000.w		; 0C 00 00
	sbc [$1B.b],Y		; F7 1B
	inc $B81B.w		; EE 1B B8
	bmi   0.b		; 30 00
	brk $EA.b		; 00 EA
	rol $F0.b		; 26 F0
	rol $9D.b		; 26 9D
	tas		; 1B
	brk $00.b		; 00 00
	sed		; F8
	ora [$F1.b],Y		; 17 F1
	ora [$C0.b],Y		; 17 C0
	trb $0000.w		; 1C 00 00
	sbc ($1C.b)		; F2 1C
	sbc ($1C.b)		; F2 1C
	lda $1D.b,S		; A3 1D
	brk $00.b		; 00 00
	sbc $1C.b,X		; F5 1C
	sbc $24DE1C.l		; EF 1C DE 24
	brk $00.b		; 00 00
	sbc [$18.b],Y		; F7 18
	sbc ($18.b),Y		; F1 18
	cmp $19.b		; C5 19
	brk $00.b		; 00 00
	pea $F517.w		; F4 17 F5
	ora [$C0.b],Y		; 17 C0
	.db $42, $00		; 42 00
	brk $F6.b		; 00 F6
	trb $F6.b		; 14 F6
	trb $9F.b		; 14 9F
	and ($00.b,X)		; 21 00
	brk $EA.b		; 00 EA
	ora $19FD.w,Y		; 19 FD 19
	ldx $0042.w,Y		; BE 42 00
	brk $EA.b		; 00 EA
	clc		; 18
	inc $9918.w,X		; FE 18 99
	and $00.b		; 25 00
	brk $E9.b		; 00 E9
	tas		; 1B
	jsr ($BE1B.w,X)		; FC 1B BE
	.db $42, $00		; 42 00
	brk $EA.b		; 00 EA
	clc		; 18
	inc $9918.w,X		; FE 18 99
	and $00.b		; 25 00
	brk $EE.b		; 00 EE
	jsl $BB22F0.l		; 22 F0 22 BB
	and $0000.w		; 2D 00 00
	sbc $1BF61B.l		; EF 1B F6 1B
	stz $001D.w,X		; 9E 1D 00
	brk $F0.b		; 00 F0
	plp		; 28
	inx		; E8
	plp		; 28
	lda $0023.w,X		; BD 23 00
	brk $DE.b		; 00 DE
	trb $1C06.w		; 1C 06 1C
	lda ($1C.b,X)		; A1 1C
	brk $00.b		; 00 00
	sbc $D43F.w		; ED 3F D4
	and $0021A4.l,X		; 3F A4 21 00
	brk $DC.b		; 00 DC
	bit $2CF8.w		; 2C F8 2C
	cmp $19.b		; C5 19
	brk $00.b		; 00 00
	cpy #$4B.b		; C0 4B
	sbc $4B.b,X		; F5 4B
	stz $002B.w,X		; 9E 2B 00
	brk $F4.b		; 00 F4
	asl $1EEE.w,X		; 1E EE 1E
	lda $000026.l,X		; BF 26 00 00
	jmp.w [$EE36]		; DC 36 EE
	rol $AF.b,X		; 36 AF
	ora $FC0000.l,X		; 1F 00 00 FC
	jsr $20E4.w		; 20 E4 20
	ldy $001F.w,X		; BC 1F 00
	brk $FD.b		; 00 FD
	and ($E2.b,X)		; 21 E2
	and ($C3.b,X)		; 21 C3
	bit $00.b		; 24 00
	brk $06.b		; 00 06
	jsr $20DA.w		; 20 DA 20
	ldx $20.b		; A6 20
	brk $00.b		; 00 00
	inc $15.b,X		; F6 15
	sbc $15.b,X		; F5 15
	pei ($2C.b)		; D4 2C
	brk $00.b		; 00 00
	inc $15.b,X		; F6 15
	sbc $15.b,X		; F5 15
	tsx		; BA
	inc A		; 1A
	brk $00.b		; 00 00
	xba		; EB
	bit $F1.b		; 24 F1
	bit $CC.b		; 24 CC
	and $00.b,X		; 35 00
	brk $F1.b		; 00 F1
	rol A		; 2A
	sbc $2A.b		; E5 2A
	lda ($19.b,S),Y		; B3 19
	brk $00.b		; 00 00
	sbc $19E819.l,X		; FF 19 E8 19
	tsx		; BA
	eor [$00.b]		; 47 00
	brk $EF.b		; 00 EF
	bit $2CE5.w		; 2C E5 2C
	sta $001D.w,X		; 9D 1D 00
	brk $F8.b		; 00 F8
	jsr $20E8.w		; 20 E8 20
	lda [$49.b],Y		; B7 49
	brk $00.b		; 00 00
	inc $26.b		; E6 26
	pea $A526.w		; F4 26 A5
	asl $00.b,X		; 16 00
	brk $F1.b		; 00 F1
	trb $1CF3.w		; 1C F3 1C
	.db $62, $45, $00		; 62 45 00
	brk $F1.b		; 00 F1
	trb $1CF3.w		; 1C F3 1C
	mvp $00,$1E		; 44 1E 00
	brk $EE.b		; 00 EE
	ora [$FB.b],Y		; 17 FB
	ora [$68.b],Y		; 17 68
	and $ED0000.l,X		; 3F 00 00 ED
	trb $1CF7.w		; 1C F7 1C
	lsr A		; 4A
	asl $0000.w,X		; 1E 00 00
	sbc #$FA1D.w		; E9 1D FA
	ora $3E71.w,X		; 1D 71 3E
	brk $00.b		; 00 00
	xba		; EB
	asl $1EF7.w,X		; 1E F7 1E
	tad		; 5B
	asl $00.b,X		; 16 00
	brk $F3.b		; 00 F3
	trb $1CF1.w		; 1C F1 1C
	ldy $0045.w,X		; BC 45 00
	brk $F3.b		; 00 F3
	trb $1CF1.w		; 1C F1 1C
	stz $001E.w,X		; 9E 1E 00
	brk $FB.b		; 00 FB
	ora [$EE.b],Y		; 17 EE
	ora [$C2.b],Y		; 17 C2
	and $F70000.l,X		; 3F 00 00 F7
	trb $1CED.w		; 1C ED 1C
	ldy $1E.b		; A4 1E
	brk $00.b		; 00 00
	plx		; FA
	ora $1DE9.w,X		; 1D E9 1D
	cmp $3E.b,S		; C3 3E
	brk $00.b		; 00 00
	sbc [$1E.b],Y		; F7 1E
	xba		; EB
	asl $16AD.w,X		; 1E AD 16
	brk $00.b		; 00 00
	sbc ($1C.b,S),Y		; F3 1C
	sbc ($1C.b),Y		; F1 1C
	.db $62, $45, $00		; 62 45 00
	brk $F3.b		; 00 F3
	trb $1CF1.w		; 1C F1 1C
	mvp $00,$1E		; 44 1E 00
	brk $FB.b		; 00 FB
	ora [$EE.b],Y		; 17 EE
	ora [$68.b],Y		; 17 68
	and $F70000.l,X		; 3F 00 00 F7
	trb $1CED.w		; 1C ED 1C
	lsr A		; 4A
	asl $0000.w,X		; 1E 00 00
	plx		; FA
	ora $1DE9.w,X		; 1D E9 1D
	adc ($3E.b),Y		; 71 3E
	brk $00.b		; 00 00
	sbc [$1E.b],Y		; F7 1E
	xba		; EB
	asl $165B.w,X		; 1E 5B 16
	brk $00.b		; 00 00
	sbc $2D.b		; E5 2D
	inc $C22D.w		; EE 2D C2
	jsl $F20000.l		; 22 00 00 F2
	and ($ED.b,X)		; 21 ED
	and ($9E.b,X)		; 21 9E
	bit $00.b		; 24 00
	brk $FC.b		; 00 FC
	and ($E3.b,X)		; 21 E3
	and ($E1.b,X)		; 21 E1
	jsr $0000.w		; 20 00 00
	cop $1A.b		; 02 1A
	cpx $1A.b		; E4 1A
	cmp $1E.b,S		; C3 1E
	brk $00.b		; 00 00
	asl $1B.b		; 06 1B
	cmp $20C61B.l,X		; DF 1B C6 20
	brk $00.b		; 00 00
	asl $1A.b		; 06 1A
	cpx #$1A.b		; E0 1A
	lda $000D.w,Y		; B9 0D 00
	brk $EB.b		; 00 EB
	rol $EF.b		; 26 EF
	rol $C3.b		; 26 C3
	rol $0000.w,X		; 3E 00 00
	inc $20.b,X		; F6 20
	nop		; EA
	jsr $1AA9.w		; 20 A9 1A
	brk $00.b		; 00 00
	sed		; F8
	ora [$F1.b],Y		; 17 F1
	ora [$C0.b],Y		; 17 C0
	trb $0000.w		; 1C 00 00
	sbc ($1C.b)		; F2 1C
	sbc ($1C.b)		; F2 1C
	lda $1D.b,S		; A3 1D
	brk $00.b		; 00 00
	inc $1B.b,X		; F6 1B
	sbc $29B61B.l		; EF 1B B6 29
	brk $00.b		; 00 00
	pea $EF1D.w		; F4 1D EF
	ora $1B9B.w,X		; 1D 9B 1B
	brk $00.b		; 00 00
	sed		; F8
	ora [$F1.b],Y		; 17 F1
	ora [$C0.b],Y		; 17 C0
	trb $0000.w		; 1C 00 00
	sbc ($1C.b)		; F2 1C
	sbc ($1C.b)		; F2 1C
	lda $1D.b,S		; A3 1D
	brk $00.b		; 00 00
	ora [$1C.b]		; 07 1C
	cmp $C91C.w,X		; DD 1C C9
	jsl $070000.l		; 22 00 00 07
	trb $1CDD.w		; 1C DD 1C
	lda [$12.b],Y		; B7 12
	brk $00.b		; 00 00
	asl $1E.b		; 06 1E
	jmp.w [$C51E]		; DC 1E C5
	rol $00.b		; 26 00
	brk $06.b		; 00 06
	ora $1DDD.w,X		; 1D DD 1D
	lda $000C.w,Y		; B9 0C 00
	brk $FD.b		; 00 FD
	asl $1EE5.w,X		; 1E E5 1E
	tyx		; BB
	eor $00.b		; 45 00
	brk $FF.b		; 00 FF
	trb $1CE5.w		; 1C E5 1C
	stz $001F.w		; 9C 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F4.b		; 00 F4
	clc		; 18
	pea $AF18.w		; F4 18 AF
	and $F40000.l		; 2F 00 00 F4
	clc		; 18
	pea $B118.w		; F4 18 B1
	bvc   0.b		; 50 00
	brk $F4.b		; 00 F4
	clc		; 18
	pea $C618.w		; F4 18 C6
	dec A		; 3A
	brk $00.b		; 00 00
	pea $F418.w		; F4 18 F4
	clc		; 18
	lda ($2F.b),Y		; B1 2F
	brk $00.b		; 00 00
	pea $F418.w		; F4 18 F4
	clc		; 18
	cmp ($2F.b,S),Y		; D3 2F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  20.b		; 10 14
	jmp.w [$9114]		; DC 14 91
	and $03.b,X		; 35 03
	brk $02.b		; 00 02
	eor $BB.b,S		; 43 BB
	eor $BF.b,S		; 43 BF
	asl A		; 0A
	ora $00.b,S		; 03 00
	ora ($20.b),Y		; 11 20
	cmp $369320.l		; CF 20 93 36
	ora ($00.b,X)		; 01 00
	phd		; 0B
	and $39BC.w,Y		; 39 BC 39
	sta $28.b,X		; 95 28
	ora $00.b,S		; 03 00
	and [$45.b]		; 27 45
	sty $45.b,X		; 94 45
	tay		; A8
	and $03.b		; 25 03
	brk $0C.b		; 00 0C
	bit $2CC8.w		; 2C C8 2C
	lda $000521.l,X		; BF 21 05 00
	xce		; FB
	lsr A		; 4A
	tyx		; BB
	lsr A		; 4A
	cpy $12.b		; C4 12
	ora $00.b		; 05 00
	inc $B151.w,X		; FE 51 B1
	eor ($D6.b),Y		; 51 D6
	ora $0003.w,Y		; 19 03 00
	asl $AD35.w,X		; 1E 35 AD
	and $B7.b,X		; 35 B7
	and $03.b		; 25 03
	brk $05.b		; 00 05
	eor $B8.b,S		; 43 B8
	eor $E2.b,S		; 43 E2
	ora ($02.b)		; 12 02
	brk $1A.b		; 00 1A
	lsr A		; 4A
	stz $E24A.w		; 9C 4A E2
	asl $02.b,X		; 16 02
	brk $09.b		; 00 09
	ora $C81FD8.l,X		; 1F D8 1F C8
	pld		; 2B
	brk $00.b		; 00 00
	ora $B235.w,Y		; 19 35 B2
	and $8C.b,X		; 35 8C
	pld		; 2B
	ora ($00.b,X)		; 01 00
	ora $469B46.l,X		; 1F 46 9B 46
	tyx		; BB
	and [$01.b]		; 27 01
	brk $FD.b		; 00 FD
	tsa		; 3B
	iny		; C8
	tsa		; 3B
	ldx $2A.b,Y		; B6 2A
	ora $00.b		; 05 00
	asl A		; 0A
	tsa		; 3B
	tyx		; BB
	tsa		; 3B
	cpy #$15.b		; C0 15
	ora $00.b		; 05 00
	brk $52.b		; 00 52
	ldx $BB52.w		; AE 52 BB
	bpl   3.b		; 10 03
	brk $00.b		; 00 00
	eor [$B9.b]		; 47 B9
	eor [$BC.b]		; 47 BC
	bpl   3.b		; 10 03
	brk $0D.b		; 00 0D
	eor $B0.b,S		; 43 B0
	eor $95.b,S		; 43 95
	plp		; 28
	ora $00.b,S		; 03 00
	ora ($32.b),Y		; 11 32
	lda $B132.w,X		; BD 32 B1
	jsl $000003.l		; 22 03 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E9.b		; 00 E9
	and $F2.b		; 25 F2
	and $C2.b		; 25 C2
	rti		; 40

	brk $00.b		; 00 00
	sbc #$F621.w		; E9 21 F6
	and ($9F.b,X)		; 21 9F
	and $00.b,S		; 23 00
	brk $E8.b		; 00 E8
	jsl $C022F6.l		; 22 F6 22 C0
	eor $00.b,S		; 43 00
	brk $E3.b		; 00 E3
	and $FA.b,S		; 23 FA
	and $A5.b,S		; 23 A5
	tas		; 1B
	brk $00.b		; 00 00
	cpx $F420.w		; EC 20 F4
	jsr $40C2.w		; 20 C2 40
	brk $00.b		; 00 00
	sbc $1BF61B.l		; EF 1B F6 1B
	lda [$1B.b]		; A7 1B
	brk $00.b		; 00 00
	nop		; EA
	jsr $20F6.w		; 20 F6 20
	rep #$41		; C2 41
	brk $00.b		; 00 00
	nop		; EA
	bit $F2.b		; 24 F2
	bit $B0.b		; 24 B0
	inc A		; 1A
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	sbc ($1F.b,X)		; E1 1F
	cmp [$28.b],Y		; D7 28
	brk $00.b		; 00 00
	sed		; F8
	ora $19EF.w,Y		; 19 EF 19
	cmp ($21.b,X)		; C1 21
	brk $00.b		; 00 00
	sbc $E225.w,Y		; F9 25 E2
	and $D5.b		; 25 D5
	bit $0000.w		; 2C 00 00
	cop $16.b		; 02 16
	inx		; E8
	asl $BA.b,X		; 16 BA
	tas		; 1B
	brk $00.b		; 00 00
	jsr ($E123.w,X)		; FC 23 E1
	and $DC.b,S		; 23 DC
	and $00.b,S		; 23 00
	brk $01.b		; 00 01
	inc A		; 1A
	sbc $1A.b		; E5 1A
	cmp $17.b		; C5 17
	brk $00.b		; 00 00
	inc $EF23.w		; EE 23 EF
	and $C3.b,S		; 23 C3
	and $FD0001.l,X		; 3F 01 00 FD
	ora [$EC.b],Y		; 17 EC
	ora [$A9.b],Y		; 17 A9
	inc A		; 1A
	ora ($00.b,X)		; 01 00
	sbc $DE29.w,Y		; F9 29 DE
	and #$28D9.w		; 29 D9 28
	cop $00.b		; 02 00
	sbc $E122.w,X		; FD 22 E1
	jsl $0215C4.l		; 22 C4 15 02
	brk $F5.b		; 00 F5
	rol $E5.b		; 26 E5
	rol $C1.b		; 26 C1
	and $FC0000.l,X		; 3F 00 00 FC
	trb $1CE8.w		; 1C E8 1C
	ldx $1B.b		; A6 1B
	brk $00.b		; 00 00
	sed		; F8
	and $E5.b,S		; 23 E5
	and $C0.b,S		; 23 C0
	rti		; 40

	brk $00.b		; 00 00
	sbc $1AE71A.l,X		; FF 1A E7 1A
	ldx $1A.b		; A6 1A
	brk $00.b		; 00 00
	xba		; EB
	and ($F4.b,X)		; 21 F4
	and ($C2.b,X)		; 21 C2
	rol $0000.w,X		; 3E 00 00
	cpx $F51F.w		; EC 1F F5
	ora $001DA5.l,X		; 1F A5 1D 00
	brk $F0.b		; 00 F0
	ora $C11FF1.l,X		; 1F F1 1F C1
	rti		; 40

	brk $00.b		; 00 00
	sbc ($1B.b),Y		; F1 1B
	pea $A51B.w		; F4 1B A5
	trb $0000.w		; 1C 00 00
	inc $F41E.w		; EE 1E F4
	asl $3EC2.w,X		; 1E C2 3E
	brk $00.b		; 00 00
	sbc $1EF31E.l		; EF 1E F3 1E
	lda #$0019.w		; A9 19 00
	brk $F3.b		; 00 F3
	trb $1CF1.w		; 1C F1 1C
	lda $000042.l,X		; BF 42 00 00
	sed		; F8
	ora [$F1.b],Y		; 17 F1
	ora [$A5.b],Y		; 17 A5
	inc A		; 1A
	brk $00.b		; 00 00
	sbc ($1C.b,S),Y		; F3 1C
	sbc ($1C.b),Y		; F1 1C
	ldx $0043.w,Y		; BE 43 00
	brk $F9.b		; 00 F9
	ora [$F0.b],Y		; 17 F0
	ora [$A3.b],Y		; 17 A3
	tas		; 1B
	brk $00.b		; 00 00
	sbc ($1C.b,S),Y		; F3 1C
	sbc ($1C.b),Y		; F1 1C
	lda $0042.w,X		; BD 42 00
	brk $FA.b		; 00 FA
	ora $F1.b,X		; 15 F1
	ora $A3.b,X		; 15 A3
	inc A		; 1A
	brk $00.b		; 00 00
	sbc [$1C.b],Y		; F7 1C
	sbc $BF1C.w		; ED 1C BF
	eor ($00.b,X)		; 41 00
	brk $FC.b		; 00 FC
	clc		; 18
	cpx $A318.w		; EC 18 A3
	trb $0000.w		; 1C 00 00
	inc $F31F.w		; EE 1F F3
	ora $0024C2.l,X		; 1F C2 24 00
	brk $F3.b		; 00 F3
	ora $19F4.w,Y		; 19 F4 19
	lda $1E.b,S		; A3 1E
	brk $00.b		; 00 00
	inc $F121.w		; EE 21 F1
	and ($BD.b,X)		; 21 BD
	and $00.b		; 25 00
	brk $F4.b		; 00 F4
	ora $19F3.w,Y		; 19 F3 19
	ldx $17.b		; A6 17
	brk $00.b		; 00 00
	sbc [$18.b],Y		; F7 18
	sbc ($18.b),Y		; F1 18
	lda $000044.l,X		; BF 44 00 00
	xce		; FB
	asl $EF.b,X		; 16 EF
	asl $A4.b,X		; 16 A4
	tas		; 1B
	brk $00.b		; 00 00
	sbc $E621.w,Y		; F9 21 E6
	and ($C3.b,X)		; 21 C3
	and $0000.w,X		; 3D 00 00
	jsr ($E71D.w,X)		; FC 1D E7
	ora $1BA8.w,X		; 1D A8 1B
	brk $00.b		; 00 00
	sbc $1D.b,X		; F5 1D
	inc $BE1D.w		; EE 1D BE
	eor $00.b,S		; 43 00
	brk $F9.b		; 00 F9
	clc		; 18
	sbc $1AA418.l		; EF 18 A4 1A
	brk $00.b		; 00 00
	sbc ($25.b)		; F2 25
	sbc #$C025.w		; E9 25 C0
	eor ($00.b,X)		; 41 00
	brk $F6.b		; 00 F6
	asl $1EEC.w,X		; 1E EC 1E
	lda $1B.b		; A5 1B
	brk $00.b		; 00 00
	sbc [$16.b],Y		; F7 16
	sbc ($16.b,S),Y		; F3 16
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	sbc $EC1B.w,Y		; F9 1B EC
	tas		; 1B
	ldy $1C.b		; A4 1C
	brk $00.b		; 00 00
	sed		; F8
	asl $1EEA.w,X		; 1E EA 1E
	cmp ($3F.b,X)		; C1 3F
	brk $00.b		; 00 00
	sbc $E61D.w,X		; FD 1D E6
	ora $1EA3.w,X		; 1D A3 1E
	brk $00.b		; 00 00
	inc $1D.b,X		; F6 1D
	sbc $C11D.w		; ED 1D C1
	and $FE0000.l,X		; 3F 00 00 FE
	ora $19E9.w,Y		; 19 E9 19
	lda $1E.b,S		; A3 1E
	brk $00.b		; 00 00
	tsb $1B.b		; 04 1B
	sbc ($1B.b,X)		; E1 1B
	dec $3B.b		; C6 3B
	brk $00.b		; 00 00
	php		; 08
	and ($D7.b,X)		; 21 D7
	and ($AF.b,X)		; 21 AF
	ora [$00.b],Y		; 17 00
	brk $16.b		; 00 16
	trb $1CCE.w		; 1C CE 1C
	lda $000041.l,X		; BF 41 00 00
	asl $C41E.w,X		; 1E 1E C4
	asl $1AA5.w,X		; 1E A5 1A
	brk $00.b		; 00 00
	tas		; 1B
	and $2DB8.w		; 2D B8 2D
	lda $0047.w,Y		; B9 47 00
	brk $2F.b		; 00 2F
	ora $19B8.w,Y		; 19 B8 19
	stz $001B.w,X		; 9E 1B 00
	brk $F3.b		; 00 F3
	asl $1EEF.w,X		; 1E EF 1E
	ldy $0028.w,X		; BC 28 00
	brk $F6.b		; 00 F6
	ora [$F3.b],Y		; 17 F3
	ora [$A4.b],Y		; 17 A4
	clc		; 18
	brk $00.b		; 00 00
	sbc ($1E.b,S),Y		; F3 1E
	sbc $24BA1E.l		; EF 1E BA 24
	brk $00.b		; 00 00
	sed		; F8
	ora $F3.b,X		; 15 F3
	ora $A4.b,X		; 15 A4
	asl $00.b,X		; 16 00
	brk $F4.b		; 00 F4
	bit $E8.b		; 24 E8
	bit $BD.b		; 24 BD
	and ($00.b,X)		; 21 00
	brk $F3.b		; 00 F3
	trb $F9.b		; 14 F9
	trb $A4.b		; 14 A4
	ora $0000.w,Y		; 19 00 00
	sbc $EA1D.w,Y		; F9 1D EA
	ora $25BC.w,X		; 1D BC 25
	brk $00.b		; 00 00
	sbc ($13.b,S),Y		; F3 13
	plx		; FA
	ora ($A7.b,S),Y		; 13 A7
	ora $00.b,X		; 15 00
	brk $F7.b		; 00 F7
	.db $42, $C7		; 42 C7
	.db $42, $C0		; 42 C0
	ora $ED0000.l,X		; 1F 00 00 ED
	inc A		; 1A
	sbc $A51A.w,Y		; F9 1A A5
	tas		; 1B
	brk $00.b		; 00 00
	xce		; FB
	jsl $DB22E3.l		; 22 E3 22 DB
	rol $00.b		; 26 00
	brk $FB.b		; 00 FB
	ora $C21FE6.l,X		; 1F E6 1F C2
	ora $0000.w,Y		; 19 00 00
	sbc $E122.w,X		; FD 22 E1
	jsl $0026DA.l		; 22 DA 26 00
	brk $FE.b		; 00 FE
	asl $1EE4.w,X		; 1E E4 1E
	cpy $16.b		; C4 16
	brk $00.b		; 00 00
	ora $1E.b,S		; 03 1E
	cmp $25DA1E.l,X		; DF 1E DA 25
	brk $00.b		; 00 00
	ora [$1E.b]		; 07 1E
	stp		; DB
	asl $18C2.w,X		; 1E C2 18
	brk $00.b		; 00 00
	sbc $29D829.l,X		; FF 29 D8 29
	phx		; DA
	and $00.b		; 25 00
	brk $0E.b		; 00 0E
	trb $1CD6.w		; 1C D6 1C
	lda $00001C.l,X		; BF 1C 00 00
	tsb $24.b		; 04 24
	cld		; D8
	bit $CE.b		; 24 CE
	and ($00.b)		; 32 00
	brk $12.b		; 00 12
	trb $1CD2.w		; 1C D2 1C
	bcs  30.b		; B0 1E
	brk $00.b		; 00 00
	jsr ($D133.w,X)		; FC 33 D1
	and ($E0.b,S),Y		; 33 E0
	jsl $FE0000.l		; 22 00 00 FE
	trb $EE.b		; 14 EE
	trb $C7.b		; 14 C7
	ora $0000.w,Y		; 19 00 00
	xce		; FB
	bit $E1.b		; 24 E1
	bit $E1.b		; 24 E1
	jsr $0000.w		; 20 00 00
	xce		; FB
	asl $EF.b,X		; 16 EF
	asl $C8.b,X		; 16 C8
	ora $0000.w,Y		; 19 00 00
	tsb $25.b		; 04 25
	cmp [$25.b],Y		; D7 25
	cmp $000021.l,X		; DF 21 00 00
	ora $D91A.w		; 0D 1A D9
	inc A		; 1A
	cpy $1B.b		; C4 1B
	brk $00.b		; 00 00
	asl $CC26.w		; 0E 26 CC
	rol $E0.b		; 26 E0
	ora $160000.l,X		; 1F 00 00 16
	and $C7.b,S		; 23 C7
	and $C3.b,S		; 23 C3
	ora $0000.w,X		; 1D 00 00
	asl $23.b,X		; 16 23
	cmp [$23.b]		; C7 23
	phx		; DA
	rol $00.b		; 26 00
	brk $18.b		; 00 18
	asl $D2.b,X		; 16 D2
	asl $C1.b,X		; 16 C1
	inc A		; 1A
	brk $00.b		; 00 00
	cpx $FD17.w		; EC 17 FD
	ora [$DE.b],Y		; 17 DE
	and $00.b,S		; 23 00
	brk $EC.b		; 00 EC
	ora $19FB.w,Y		; 19 FB 19
	cmp $1B.b,S		; C3 1B
	brk $00.b		; 00 00
	sbc ($15.b,S),Y		; F3 15
	sed		; F8
	ora $BE.b,X		; 15 BE
	lsr $00.b		; 46 00
	brk $F4.b		; 00 F4
	asl $F6.b,X		; 16 F6
	asl $A4.b,X		; 16 A4
	asl $0000.w,X		; 1E 00 00
	sbc [$15.b],Y		; F7 15
	pea $BB15.w		; F4 15 BB
	lsr $00.b		; 46 00
	brk $F6.b		; 00 F6
	ora $1DED.w,X		; 1D ED 1D
	txy		; 9B
	jsr $0000.w		; 20 00 00
	sbc [$15.b],Y		; F7 15
	pea $BA15.w		; F4 15 BA
	lsr $00.b		; 46 00
	brk $F4.b		; 00 F4
	ora $991FED.l,X		; 1F ED 1F 99
	and ($00.b,X)		; 21 00
	brk $F7.b		; 00 F7
	trb $1CED.w		; 1C ED 1C
	clv		; B8
	pha		; 48
	brk $00.b		; 00 00
	sed		; F8
	ora $19EF.w,Y		; 19 EF 19
	txs		; 9A
	asl $0000.w,X		; 1E 00 00
	brk $15.b		; 00 15
	xba		; EB
	ora $BB.b,X		; 15 BB
	lsr $00.b		; 46 00
	brk $FE.b		; 00 FE
	asl $EC.b,X		; 16 EC
	asl $9D.b,X		; 16 9D
	asl $0000.w,X		; 1E 00 00
	sbc $F320.w		; ED 20 F3
	jsr $43BD.w		; 20 BD 43
	brk $00.b		; 00 00
	beq  27.b		; F0 1B
	sbc $1B.b,X		; F5 1B
	stz $0021.w		; 9C 21 00
	brk $F9.b		; 00 F9
	and $E2.b		; 25 E2
	and $C6.b		; 25 C6
	and $0000.w,Y		; 39 00 00
	ora $1E.b,S		; 03 1E
	cmp $1FA71E.l,X		; DF 1E A7 1F
	brk $00.b		; 00 00
	tsb $DA1A.w		; 0C 1A DA
	inc A		; 1A
	rep #$46		; C2 46
	brk $00.b		; 00 00
	tsb $DD17.w		; 0C 17 DD
	ora [$A9.b],Y		; 17 A9
	inc A		; 1A
	brk $00.b		; 00 00
	cpx $1C.b		; E4 1C
	brk $1C.b		; 00 1C
	lda $0052.w		; AD 52 00
	brk $00.b		; 00 00
	trb $1CE4.w		; 1C E4 1C
	ldx $25.b		; A6 25
	brk $00.b		; 00 00
	inc $DE34.w		; EE 34 DE
	bit $9C.b,X		; 34 9C
	ora $0000.w,X		; 1D 00 00
	ora ($1D.b,S),Y		; 13 1D
	bne  29.b		; D0 1D
	lda ($2A.b)		; B2 2A
	brk $00.b		; 00 00
	ora $B532.w,Y		; 19 32 B5
	and ($8F.b)		; 32 8F
	asl $0000.w,X		; 1E 00 00
	ora $25.b		; 05 25
	dec $25.b,X		; D6 25
	plb		; AB
	and ($00.b,X)		; 21 00
	brk $23.b		; 00 23
	sec		; 38
	lda $38.b		; A5 38
	clv		; B8
	bit $00.b		; 24 00
	brk $0D.b		; 00 0D
	trb $1CD7.w		; 1C D7 1C
	tay		; A8
	jsr $0000.w		; 20 00 00
	asl $27.b,X		; 16 27
	cmp $27.b,S		; C3 27
	dec $0024.w,X		; DE 24 00
	brk $17.b		; 00 17
	rol $C3.b		; 26 C3
	rol $C6.b		; 26 C6
	clc		; 18
	brk $00.b		; 00 00
	asl A		; 0A
	ora [$DF.b],Y		; 17 DF
	ora [$BC.b],Y		; 17 BC
	eor $00.b		; 45 00
	brk $0F.b		; 00 0F
	ora [$DA.b],Y		; 17 DA
	ora [$9F.b],Y		; 17 9F
	ora $0000.w,X		; 1D 00 00
	sbc #$F225.w		; E9 25 F2
	and $62.b		; 25 62
	rti		; 40

	brk $00.b		; 00 00
	sbc #$F621.w		; E9 21 F6
	and ($3F.b,X)		; 21 3F
	and $00.b,S		; 23 00
	brk $EC.b		; 00 EC
	jsr $20F4.w		; 20 F4 20
	rtl		; 6B

	rti		; 40

	brk $00.b		; 00 00
	sbc $1BF61B.l		; EF 1B F6 1B
	bvc  27.b		; 50 1B
	brk $00.b		; 00 00
	nop		; EA
	jsr $20F6.w		; 20 F6 20
	adc ($41.b,S),Y		; 73 41
	brk $00.b		; 00 00
	nop		; EA
	bit $F2.b		; 24 F2
	bit $61.b		; 24 61
	inc A		; 1A
	brk $00.b		; 00 00
	sbc ($25.b)		; F2 25
	sbc #$C225.w		; E9 25 C2
	rti		; 40

	brk $00.b		; 00 00
	inc $21.b,X		; F6 21
	sbc #$9F21.w		; E9 21 9F
	and $00.b,S		; 23 00
	brk $F4.b		; 00 F4
	jsr $20EC.w		; 20 EC 20
	rep #$40		; C2 40
	brk $00.b		; 00 00
	inc $1B.b,X		; F6 1B
	sbc $1BA71B.l		; EF 1B A7 1B
	brk $00.b		; 00 00
	inc $20.b,X		; F6 20
	nop		; EA
	jsr $41C2.w		; 20 C2 41
	brk $00.b		; 00 00
	sbc ($24.b)		; F2 24
	nop		; EA
	bit $B0.b		; 24 B0
	inc A		; 1A
	brk $00.b		; 00 00
	sbc ($25.b)		; F2 25
	sbc #$6225.w		; E9 25 62
	rti		; 40

	brk $00.b		; 00 00
	inc $21.b,X		; F6 21
	sbc #$3F21.w		; E9 21 3F
	and $00.b,S		; 23 00
	brk $F4.b		; 00 F4
	jsr $20EC.w		; 20 EC 20
	rtl		; 6B

	rti		; 40

	brk $00.b		; 00 00
	inc $1B.b,X		; F6 1B
	sbc $1B501B.l		; EF 1B 50 1B
	brk $00.b		; 00 00
	inc $20.b,X		; F6 20
	nop		; EA
	jsr $4173.w		; 20 73 41
	brk $00.b		; 00 00
	sbc ($24.b)		; F2 24
	nop		; EA
	bit $61.b		; 24 61
	inc A		; 1A
	brk $00.b		; 00 00
	sbc ($1E.b,S),Y		; F3 1E
	sbc $24BA1E.l		; EF 1E BA 24
	brk $00.b		; 00 00
	sed		; F8
	ora $F3.b,X		; 15 F3
	ora $A4.b,X		; 15 A4
	asl $00.b,X		; 16 00
	brk $F7.b		; 00 F7
	.db $42, $C7		; 42 C7
	.db $42, $C0		; 42 C0
	ora $ED0000.l,X		; 1F 00 00 ED
	inc A		; 1A
	sbc $A51A.w,Y		; F9 1A A5
	tas		; 1B
	brk $00.b		; 00 00
	asl A		; 0A
	asl $1ED8.w,X		; 1E D8 1E
	cpy $3D.b		; C4 3D
	brk $00.b		; 00 00
	asl $D41E.w		; 0E 1E D4
	asl $20A4.w,X		; 1E A4 20
	brk $00.b		; 00 00
	bpl  22.b		; 10 16
	phx		; DA
	asl $BB.b,X		; 16 BB
	eor $00.b		; 45 00
	brk $0A.b		; 00 0A
	jsl $A022D4.l		; 22 D4 22 A0
	tas		; 1B
	brk $00.b		; 00 00
	sbc ($25.b)		; F2 25
	sbc #$C025.w		; E9 25 C0
	eor ($00.b,X)		; 41 00
	brk $F6.b		; 00 F6
	asl $1EEC.w,X		; 1E EC 1E
	lda $1B.b		; A5 1B
	brk $00.b		; 00 00
	sbc [$2A.b],Y		; F7 2A
	cmp $40C02A.l,X		; DF 2A C0 40
	brk $00.b		; 00 00
	phd		; 0B
	and [$CE.b]		; 27 CE
	and [$A3.b]		; 27 A3
	ora $0000.w,X		; 1D 00 00
	sbc ($30.b),Y		; F1 30
	cmp $3AC630.l,X		; DF 30 C6 3A
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	cpx $1C.b		; E4 1C
	tax		; AA
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $18.b,X		; F6 18
	sbc ($18.b)		; F2 18
	lda $2B.b,X		; B5 2B
	brk $00.b		; 00 00
	inc $18.b,X		; F6 18
	sbc ($18.b)		; F2 18
	ldx $4A.b,Y		; B6 4A
	brk $00.b		; 00 00
	inc $18.b,X		; F6 18
	sbc ($18.b)		; F2 18
	cmp [$37.b]		; C7 37
	brk $00.b		; 00 00
	inc $18.b,X		; F6 18
	sbc ($18.b)		; F2 18
	lda ($33.b)		; B2 33
	brk $00.b		; 00 00
	inc $EA18.w,X		; FE 18 EA
	clc		; 18
	cmp $002D.w,Y		; D9 2D 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $E4.b,X		; 16 E4
	asl $CD.b,X		; 16 CD
	ora ($03.b,S),Y		; 13 03
	brk $0C.b		; 00 0C
	asl $0EE6.w		; 0E E6 0E
	dec $19.b		; C6 19
	ora $00.b,S		; 03 00
	asl A		; 0A
	and ($D5.b,X)		; 21 D5
	and ($D0.b,X)		; 21 D0
	ora $FA0003.l		; 0F 03 00 FA
	plp		; 28
	dec $D128.w,X		; DE 28 D1
	asl $03.b,X		; 16 03
	brk $01.b		; 00 01
	and $2DD2.w		; 2D D2 2D
	dec $0314.w		; CE 14 03
	brk $FF.b		; 00 FF
	trb $1CE5.w		; 1C E5 1C
	dec $0519.w		; CE 19 05
	brk $FD.b		; 00 FD
	ora $1DE6.w,X		; 1D E6 1D
	cpx $19.b		; E4 19
	ora $00.b		; 05 00
	inc $E220.w,X		; FE 20 E2
	jsr $0EE1.w		; 20 E1 0E
	ora $00.b,S		; 03 00
	inc $2F.b,X		; F6 2F
	stp		; DB
	and $0211F1.l		; 2F F1 11 02
	brk $F2.b		; 00 F2
	brk $0E.b		; 00 0E
	brk $D9.b		; 00 D9
	brk $00.b		; 00 00
	brk $EC.b		; 00 EC
	brk $14.b		; 00 14
	brk $D9.b		; 00 D9
	brk $00.b		; 00 00
	brk $F3.b		; 00 F3
	bit $E9.b		; 24 E9
	bit $D5.b		; 24 D5
	and ($05.b,X)		; 21 05
	brk $FF.b		; 00 FF
	ora $CE1FE2.l,X		; 1F E2 1F CE
	tas		; 1B
	ora $00.b		; 05 00
	sed		; F8
	and #$29DF.w		; 29 DF 29
	sbc ($11.b),Y		; F1 11
	cop $00.b		; 02 00
	ora $22.b,S		; 03 22
	stp		; DB
	jsl $020DE3.l		; 22 E3 0D 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F5.b		; 00 F5
	ora [$F4.b],Y		; 17 F4
	ora [$DC.b],Y		; 17 DC
	bit $00.b		; 24 00
	brk $F4.b		; 00 F4
	asl $F6.b,X		; 16 F6
	asl $C0.b,X		; 16 C0
	trb $0000.w		; 1C 00 00
	sbc ($1B.b),Y		; F1 1B
	pea $DB1B.w		; F4 1B DB
	rol $00.b		; 26 00
	brk $EF.b		; 00 EF
	inc A		; 1A
	sbc [$1A.b],Y		; F7 1A
	cpy #$1B.b		; C0 1B
	brk $00.b		; 00 00
	sbc ($1C.b,S),Y		; F3 1C
	sbc ($1C.b),Y		; F1 1C
	stp		; DB
	rol $00.b		; 26 00
	brk $FB.b		; 00 FB
	inc A		; 1A
	xba		; EB
	inc A		; 1A
	cpy #$1C.b		; C0 1C
	brk $00.b		; 00 00
	sbc ($18.b,S),Y		; F3 18
	sbc $18.b,X		; F5 18
	cmp $000022.l,X		; DF 22 00 00
	pea $F418.w		; F4 18 F4
	clc		; 18
	cmp ($1E.b,X)		; C1 1E
	brk $00.b		; 00 00
	sbc ($1A.b,S),Y		; F3 1A
	sbc ($1A.b,S),Y		; F3 1A
	sbc [$1A.b]		; E7 1A
	brk $00.b		; 00 00
	beq  25.b		; F0 19
	sbc [$19.b],Y		; F7 19
	cmp $000018.l		; CF 18 00 00
	pea $F319.w		; F4 19 F3
	ora $1BE5.w,Y		; 19 E5 1B
	brk $00.b		; 00 00
	sbc $18.b,X		; F5 18
	sbc ($18.b,S),Y		; F3 18
	dex		; CA
	trb $0000.w		; 1C 00 00
	sbc $1A.b,X		; F5 1A
	sbc ($1A.b),Y		; F1 1A
	nop		; EA
	ora [$00.b],Y		; 17 00
	brk $F6.b		; 00 F6
	ora [$F3.b],Y		; 17 F3
	ora [$D2.b],Y		; 17 D2
	clc		; 18
	brk $00.b		; 00 00
	pea $F418.w		; F4 18 F4
	clc		; 18
	cpx #$21.b		; E0 21
	ora ($00.b,X)		; 01 00
	sbc [$16.b],Y		; F7 16
	sbc ($16.b,S),Y		; F3 16
.INDEX 16
	rep #$1D		; C2 1D
	ora ($00.b,X)		; 01 00
	inc $17.b,X		; F6 17
	sbc ($17.b,S),Y		; F3 17
	nop		; EA
	asl $02.b,X		; 16 02
	brk $F5.b		; 00 F5
	clc		; 18
	sbc ($18.b,S),Y		; F3 18
	cmp $00021B.l		; CF 1B 02 00
	sbc $19.b,X		; F5 19
	sbc ($19.b)		; F2 19
	stp		; DB
	rol $00.b		; 26 00
	brk $FB.b		; 00 FB
	ora ($F2.b,S),Y		; 13 F2
	ora ($BA.b,S),Y		; 13 BA
	and ($00.b,X)		; 21 00
	brk $F4.b		; 00 F4
	clc		; 18
	pea $DA18.w		; F4 18 DA
	rol $00.b		; 26 00
	brk $FC.b		; 00 FC
	ora [$ED.b],Y		; 17 ED
	ora [$C0.b],Y		; 17 C0
	inc A		; 1A
	brk $00.b		; 00 00
	sbc $1A.b,X		; F5 1A
	sbc ($1A.b),Y		; F1 1A
	stp		; DB
	rol $00.b		; 26 00
	brk $F7.b		; 00 F7
	ora $F4.b,X		; 15 F4
	ora $BF.b,X		; 15 BF
	trb $0000.w		; 1C 00 00
	sbc $1B.b,X		; F5 1B
	beq  27.b		; F0 1B
	dec $0023.w,X		; DE 23 00
	brk $F8.b		; 00 F8
	ora $F3.b,X		; 15 F3
	ora $C0.b,X		; 15 C0
	asl $0000.w,X		; 1E 00 00
	sbc $19.b,X		; F5 19
	sbc ($19.b)		; F2 19
	jmp.w [$0025]		; DC 25 00
	brk $F8.b		; 00 F8
	asl $F2.b,X		; 16 F2
	asl $C1.b,X		; 16 C1
	tas		; 1B
	brk $00.b		; 00 00
	inc $16.b,X		; F6 16
	pea $DF16.w		; F4 16 DF
	and ($00.b,X)		; 21 00
	brk $F6.b		; 00 F6
	ora [$F3.b],Y		; 17 F3
	ora [$BF.b],Y		; 17 BF
	jsr $0000.w		; 20 00 00
	sbc $18.b,X		; F5 18
	sbc ($18.b,S),Y		; F3 18
	cmp $0022.w,X		; DD 22 00
	brk $F4.b		; 00 F4
	ora $19F3.w,Y		; 19 F3 19
	ldx $001F.w,Y		; BE 1F 00
	brk $F6.b		; 00 F6
	ora [$F3.b],Y		; 17 F3
	ora [$DE.b],Y		; 17 DE
	jsl $F70000.l		; 22 00 00 F7
	asl $F3.b,X		; 16 F3
	asl $BC.b,X		; 16 BC
	jsl $F80000.l		; 22 00 00 F8
	ora ($F5.b,S),Y		; 13 F5
	ora ($D8.b,S),Y		; 13 D8
	ora $0000.w,Y		; 19 00 00
	inc $15.b,X		; F6 15
	sbc $15.b,X		; F5 15
	tsx		; BA
	asl $0000.w,X		; 1E 00 00
	pea $F319.w		; F4 19 F3
	ora $1DD2.w,Y		; 19 D2 1D
	brk $00.b		; 00 00
	sbc $17.b,X		; F5 17
	pea $BB17.w		; F4 17 BB
	ora [$00.b],Y		; 17 00
	brk $F8.b		; 00 F8
	ora ($F5.b,S),Y		; 13 F5
	ora ($DD.b,S),Y		; 13 DD
	and $00.b,S		; 23 00
	brk $F5.b		; 00 F5
	ora $F6.b,X		; 15 F6
	ora $BC.b,X		; 15 BC
	and ($00.b,X)		; 21 00
	brk $F8.b		; 00 F8
	trb $F4.b		; 14 F4
	trb $E0.b		; 14 E0
	jsr $0000.w		; 20 00 00
	sed		; F8
	trb $F4.b		; 14 F4
	trb $BB.b		; 14 BB
	and $00.b		; 25 00
	brk $F8.b		; 00 F8
	trb $F4.b		; 14 F4
	trb $E0.b		; 14 E0
	jsr $0000.w		; 20 00 00
	sed		; F8
	trb $F4.b		; 14 F4
	trb $BD.b		; 14 BD
	and $00.b,S		; 23 00
	brk $F9.b		; 00 F9
	ora ($F4.b,S),Y		; 13 F4
	ora ($DF.b,S),Y		; 13 DF
	jsl $F60000.l		; 22 00 00 F6
	ora [$F3.b],Y		; 17 F3
	ora [$BD.b],Y		; 17 BD
	jsl $F40000.l		; 22 00 00 F4
	ora [$F5.b],Y		; 17 F5
	ora [$DD.b],Y		; 17 DD
	bit $00.b		; 24 00
	brk $F4.b		; 00 F4
	ora [$F5.b],Y		; 17 F5
	ora [$BF.b],Y		; 17 BF
	asl $0000.w,X		; 1E 00 00
	xce		; FB
	asl $EF.b,X		; 16 EF
	asl $DF.b,X		; 16 DF
	and ($00.b,X)		; 21 00
	brk $FE.b		; 00 FE
	clc		; 18
	nop		; EA
	clc		; 18
	lda $000020.l,X		; BF 20 00 00
	ora ($14.b,X)		; 01 14
	xba		; EB
	trb $DC.b		; 14 DC
	and $00.b		; 25 00
	brk $08.b		; 00 08
	ora [$E1.b],Y		; 17 E1
	ora [$BE.b],Y		; 17 BE
	asl $0000.w,X		; 1E 00 00
	sbc [$16.b],Y		; F7 16
	sbc ($16.b,S),Y		; F3 16
	jmp.w [$0024]		; DC 24 00
	brk $EA.b		; 00 EA
	tas		; 1B
	xce		; FB
	tas		; 1B
	lda $00001D.l,X		; BF 1D 00 00
	pea $E329.w		; F4 29 E3
	and #$24DD.w		; 29 DD 24
	brk $00.b		; 00 00
	sbc [$21.b]		; E7 21
	sed		; F8
	and ($BD.b,X)		; 21 BD
	jsr $0000.w		; 20 00 00
	inc $25.b,X		; F6 25
	sbc $25.b		; E5 25
	cmp $000021.l,X		; DF 21 00 00
	sbc ($21.b,X)		; E1 21
	inc $C421.w,X		; FE 21 C4
	tas		; 1B
	brk $00.b		; 00 00
	ora $15.b,S		; 03 15
	inx		; E8
	ora $D9.b,X		; 15 D9
	plp		; 28
	brk $00.b		; 00 00
	jsr ($E81C.w,X)		; FC 1C E8
	trb $1DBC.w		; 1C BC 1D
	brk $00.b		; 00 00
	cop $1E.b		; 02 1E
	cpx #$D81E.w		; E0 1E D8
	plp		; 28
	brk $00.b		; 00 00
	brk $1B.b		; 00 1B
	sbc $1B.b		; E5 1B
	ldy $001C.w,X		; BC 1C 00
	brk $F7.b		; 00 F7
	clc		; 18
	sbc ($18.b),Y		; F1 18
	cmp [$2B.b],Y		; D7 2B
	brk $00.b		; 00 00
	pea $F01C.w		; F4 1C F0
	trb $19BE.w		; 1C BE 19
	brk $00.b		; 00 00
	sbc $1D.b,X		; F5 1D
	inc $D91D.w		; EE 1D D9
	ora $00.b,X		; 15 00
	brk $FB.b		; 00 FB
	ora $19EC.w,Y		; 19 EC 19
	tyx		; BB
	asl $0000.w,X		; 1E 00 00
	sbc [$19.b],Y		; F7 19
	beq  25.b		; F0 19
	cmp $000012.l,X		; DF 12 00 00
	sbc $EC17.w,X		; FD 17 EC
	ora [$C1.b],Y		; 17 C1
	asl $0000.w,X		; 1E 00 00
	inc $EB17.w,X		; FE 17 EB
	ora [$D6.b],Y		; 17 D6
	inc A		; 1A
	brk $00.b		; 00 00
	inc $19.b,X		; F6 19
	sbc ($19.b),Y		; F1 19
	ldx $001B.w,Y		; BE 1B 00
	brk $FB.b		; 00 FB
	inc A		; 1A
	xba		; EB
	inc A		; 1A
	cld		; D8
	ora $00.b,X		; 15 00
	brk $F5.b		; 00 F5
	ora $1DEE.w,X		; 1D EE 1D
.INDEX 16
	rep #$16		; C2 16
	brk $00.b		; 00 00
	sbc $EB18.w,X		; FD 18 EB
	clc		; 18
	dec $19.b,X		; D6 19
	brk $00.b		; 00 00
	pea $F715.w		; F4 15 F7
	ora $C4.b,X		; 15 C4
	asl $0000.w,X		; 1E 00 00
	sbc $19.b,X		; F5 19
	sbc ($19.b)		; F2 19
	cpx $0015.w		; EC 15 00
	brk $F4.b		; 00 F4
	inc A		; 1A
	sbc ($1A.b)		; F2 1A
	cmp $001F.w		; CD 1F 00
	brk $F6.b		; 00 F6
	ora [$F3.b],Y		; 17 F3
	ora [$EA.b],Y		; 17 EA
	ora [$00.b],Y		; 17 00
	brk $F7.b		; 00 F7
	asl $F3.b,X		; 16 F3
	asl $CC.b,X		; 16 CC
	asl $0000.w,X		; 1E 00 00
	pea $F616.w		; F4 16 F6
	asl $EE.b,X		; 16 EE
	trb $00.b		; 14 00
	brk $EE.b		; 00 EE
	trb $FE.b		; 14 FE
	trb $CD.b		; 14 CD
	and ($00.b,X)		; 21 00
	brk $F2.b		; 00 F2
	tas		; 1B
	sbc ($1B.b,S),Y		; F3 1B
	sbc ($11.b),Y		; F1 11
	brk $00.b		; 00 00
	beq  23.b		; F0 17
	sbc $D117.w,Y		; F9 17 D1
	jsr $0000.w		; 20 00 00
	sbc $F413.w,Y		; F9 13 F4
	ora ($D9.b,S),Y		; 13 D9
	plp		; 28
	brk $00.b		; 00 00
	sbc $F314.w,Y		; F9 14 F3
	trb $B7.b		; 14 B7
	jsl $FD0000.l		; 22 00 00 FD
	ora ($F2.b),Y		; 11 F2
	ora ($D7.b),Y		; 11 D7
	rol A		; 2A
	brk $00.b		; 00 00
	xce		; FB
	asl $EF.b,X		; 16 EF
	asl $B8.b,X		; 16 B8
	ora $020000.l,X		; 1F 00 00 02
	bpl -18.b		; 10 EE
	bpl -39.b		; 10 D9
	and [$00.b]		; 27 00
	brk $00.b		; 00 00
	asl $EA.b,X		; 16 EA
	asl $BB.b,X		; 16 BB
	ora $0000.w,X		; 1D 00 00
	plx		; FA
	ora ($F3.b,S),Y		; 13 F3
	ora ($D9.b,S),Y		; 13 D9
	plp		; 28
	brk $00.b		; 00 00
	plx		; FA
	ora [$EF.b],Y		; 17 EF
	ora [$BA.b],Y		; 17 BA
	ora $010000.l,X		; 1F 00 00 01
	ora $0DF2.w		; 0D F2 0D
	jmp.w [$0024]		; DC 24 00
	brk $01.b		; 00 01
	asl $E9.b,X		; 16 E9
	asl $BA.b,X		; 16 BA
	jsl $030000.l		; 22 00 00 03
	trb $1CE1.w		; 1C E1 1C
	phx		; DA
	rol $00.b		; 26 00
	brk $0C.b		; 00 0C
	trb $1CD8.w		; 1C D8 1C
	tyx		; BB
	ora $FB0000.l,X		; 1F 00 00 FB
	trb $F1.b		; 14 F1
	trb $DE.b		; 14 DE
	ora ($00.b,S),Y		; 13 00
	brk $FA.b		; 00 FA
	ora $F1.b,X		; 15 F1
	ora $CD.b,X		; 15 CD
	ora ($00.b),Y		; 11 00
	brk $F0.b		; 00 F0
	jsl $E222EE.l		; 22 EE 22 E2
	ora ($00.b),Y		; 11 00
	brk $F6.b		; 00 F6
	ora $19F1.w,Y		; 19 F1 19
	wai		; CB
	ora [$00.b],Y		; 17 00
	brk $E9.b		; 00 E9
	rol A		; 2A
	sbc $E52A.w		; ED 2A E5
	ora ($00.b),Y		; 11 00
	brk $F6.b		; 00 F6
	tas		; 1B
	sbc $19CC1B.l		; EF 1B CC 19
	brk $00.b		; 00 00
	sbc $1DF41D.l		; EF 1D F4 1D
	cmp [$16.b],Y		; D7 16
	brk $00.b		; 00 00
	sbc $1CF51C.l		; EF 1C F5 1C
	lda $001A.w,X		; BD 1A 00
	brk $FC.b		; 00 FC
	tas		; 1B
	sbc #$DD1B.w		; E9 1B DD
	ora $00.b,X		; 15 00
	brk $FA.b		; 00 FA
	jsl $C622E4.l		; 22 E4 22 C6
	ora [$00.b],Y		; 17 00
	brk $FC.b		; 00 FC
	tas		; 1B
	sbc #$E01B.w		; E9 1B E0
	trb $00.b		; 14 00
	brk $F9.b		; 00 F9
	asl $1EE9.w,X		; 1E E9 1E
	cmp $1B.b		; C5 1B
	brk $00.b		; 00 00
	sbc [$16.b],Y		; F7 16
	sbc ($16.b,S),Y		; F3 16
	cpx #$0022.w		; E0 22 00
	brk $F8.b		; 00 F8
	trb $F4.b		; 14 F4
	trb $BC.b		; 14 BC
	bit $00.b		; 24 00
	brk $F7.b		; 00 F7
	inc A		; 1A
	sbc $15EC1A.l		; EF 1A EC 15
	brk $00.b		; 00 00
	sbc [$1B.b],Y		; F7 1B
	inc $CE1B.w		; EE 1B CE
	asl $0000.w,X		; 1E 00 00
	sbc $E91A.w,X		; FD 1A E9
	inc A		; 1A
	stp		; DB
	rol $00.b		; 26 00
	brk $01.b		; 00 01
	ora $EA.b,X		; 15 EA
	ora $BF.b,X		; 15 BF
	trb $0000.w		; 1C 00 00
	sbc $E91A.w,X		; FD 1A E9
	inc A		; 1A
	stp		; DB
	rol $00.b		; 26 00
	brk $01.b		; 00 01
	ora $EA.b,X		; 15 EA
	ora $BF.b,X		; 15 BF
	trb $0000.w		; 1C 00 00
	sbc $17.b,X		; F5 17
	pea $9D17.w		; F4 17 9D
	bit $00.b		; 24 00
	brk $F4.b		; 00 F4
	asl $F6.b,X		; 16 F6
	asl $81.b,X		; 16 81
	trb $0000.w		; 1C 00 00
	sbc ($1C.b,S),Y		; F3 1C
	sbc ($1C.b),Y		; F1 1C
	ldx #$0026.w		; A2 26 00
	brk $FB.b		; 00 FB
	inc A		; 1A
	xba		; EB
	inc A		; 1A
	sta [$1C.b]		; 87 1C
	brk $00.b		; 00 00
	sbc ($18.b,S),Y		; F3 18
	sbc $18.b,X		; F5 18
	tay		; A8
	jsl $F40000.l		; 22 00 00 F4
	clc		; 18
	pea $8A18.w		; F4 18 8A
	asl $0000.w,X		; 1E 00 00
	pea $F517.w		; F4 17 F5
	ora [$DC.b],Y		; 17 DC
	bit $00.b		; 24 00
	brk $F6.b		; 00 F6
	asl $F4.b,X		; 16 F4
	asl $C0.b,X		; 16 C0
	trb $0000.w		; 1C 00 00
	sbc ($1C.b),Y		; F1 1C
	sbc ($1C.b,S),Y		; F3 1C
	stp		; DB
	rol $00.b		; 26 00
	brk $EB.b		; 00 EB
	inc A		; 1A
	xce		; FB
	inc A		; 1A
	cpy #$001C.w		; C0 1C 00
	brk $F5.b		; 00 F5
	clc		; 18
	sbc ($18.b,S),Y		; F3 18
	cmp $000022.l,X		; DF 22 00 00
	pea $F418.w		; F4 18 F4
	clc		; 18
	cmp ($1E.b,X)		; C1 1E
	brk $00.b		; 00 00
	pea $F517.w		; F4 17 F5
	ora [$9D.b],Y		; 17 9D
	bit $00.b		; 24 00
	brk $F6.b		; 00 F6
	asl $F4.b,X		; 16 F4
	asl $81.b,X		; 16 81
	trb $0000.w		; 1C 00 00
	sbc ($1C.b),Y		; F1 1C
	sbc ($1C.b,S),Y		; F3 1C
	ldx #$0026.w		; A2 26 00
	brk $EB.b		; 00 EB
	inc A		; 1A
	xce		; FB
	inc A		; 1A
	sta [$1C.b]		; 87 1C
	brk $00.b		; 00 00
	sbc $18.b,X		; F5 18
	sbc ($18.b,S),Y		; F3 18
	tay		; A8
	jsl $F40000.l		; 22 00 00 F4
	clc		; 18
	pea $8A18.w		; F4 18 8A
	asl $0000.w,X		; 1E 00 00
	sbc [$19.b],Y		; F7 19
	beq  25.b		; F0 19
	cmp $000012.l,X		; DF 12 00 00
	sbc $EC17.w,X		; FD 17 EC
	ora [$C1.b],Y		; 17 C1
	asl $0000.w,X		; 1E 00 00
	xce		; FB
	inc A		; 1A
	xba		; EB
	inc A		; 1A
	cld		; D8
	ora $00.b,X		; 15 00
	brk $F5.b		; 00 F5
	ora $1DEE.w,X		; 1D EE 1D
.INDEX 16
	rep #$16		; C2 16
	brk $00.b		; 00 00
	pea $F21A.w		; F4 1A F2
	inc A		; 1A
	sbc #$0018.w		; E9 18 00
	brk $F3.b		; 00 F3
	clc		; 18
	sbc $18.b,X		; F5 18
	cmp $001C.w		; CD 1C 00
	brk $F2.b		; 00 F2
	tas		; 1B
	sbc ($1B.b,S),Y		; F3 1B
	sbc ($11.b),Y		; F1 11
	brk $00.b		; 00 00
	beq  23.b		; F0 17
	sbc $D117.w,Y		; F9 17 D1
	jsr $0000.w		; 20 00 00
	pea $F21A.w		; F4 1A F2
	inc A		; 1A
	stp		; DB
	rol $00.b		; 26 00
	brk $F5.b		; 00 F5
	ora $F6.b,X		; 15 F6
	ora $BF.b,X		; 15 BF
	trb $0000.w		; 1C 00 00
	sbc ($1A.b,S),Y		; F3 1A
	sbc ($1A.b,S),Y		; F3 1A
	stp		; DB
	rol $00.b		; 26 00
	brk $F6.b		; 00 F6
	ora $F5.b,X		; 15 F5
	ora $BF.b,X		; 15 BF
	trb $0000.w		; 1C 00 00
	sbc [$1A.b],Y		; F7 1A
	sbc $18E91A.l		; EF 1A E9 18
	brk $00.b		; 00 00
	inc $16.b,X		; F6 16
	pea $CF16.w		; F4 16 CF
	inc A		; 1A
	brk $00.b		; 00 00
	sbc [$1A.b],Y		; F7 1A
	sbc $18E91A.l		; EF 1A E9 18
	brk $00.b		; 00 00
	plx		; FA
	clc		; 18
	inc $D118.w		; EE 18 D1
	clc		; 18
	brk $00.b		; 00 00
	plx		; FA
	asl $F0.b,X		; 16 F0
	asl $EC.b,X		; 16 EC
	trb $00.b		; 14 00
	brk $FD.b		; 00 FD
	trb $EF.b		; 14 EF
	trb $D1.b		; 14 D1
	tas		; 1B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$15.b],Y		; F7 15
	pea $C015.w		; F4 15 C0
	dec A		; 3A
	brk $00.b		; 00 00
	sbc [$15.b],Y		; F7 15
	pea $C315.w		; F4 15 C3
	rol $0000.w,X		; 3E 00 00
	sbc [$15.b],Y		; F7 15
	pea $D315.w		; F4 15 D3
	rol $0000.w		; 2E 00 00
	sbc [$15.b],Y		; F7 15
	pea $CA15.w		; F4 15 CA
	and ($00.b,S),Y		; 33 00
	brk $F7.b		; 00 F7
	ora $F4.b,X		; 15 F4
	ora $CB.b,X		; 15 CB
	and ($00.b,S),Y		; 33 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F5.b		; 00 F5
	ora $F6.b,X		; 15 F6
	ora $F6.b,X		; 15 F6
	trb $07.b		; 14 07
	brk $F5.b		; 00 F5
	bpl  -5.b		; 10 FB
	bpl -14.b		; 10 F2
	asl $0007.w,X		; 1E 07 00
	cpx $FC18.w		; EC 18 FC
	clc		; 18
	nop		; EA
	rol $0007.w		; 2E 07 00
	inc $FE04.w,X		; FE 04 FE
	tsb $80.b		; 04 80
	cpy #$0003.w		; C0 03 00
	inc $FC06.w,X		; FE 06 FC
	asl $80.b		; 06 80
	cpy #$0003.w		; C0 03 00
	sbc $FC07.w,X		; FD 07 FC
	ora [$80.b]		; 07 80
	cpy #$0003.w		; C0 03 00
	jsr ($FB09.w,X)		; FC 09 FB
	ora #$C080.w		; 09 80 C0
	ora $00.b,S		; 03 00
	xce		; FB
	phd		; 0B
	plx		; FA
	phd		; 0B
	bra -64.b		; 80 C0
	ora $00.b,S		; 03 00
	plx		; FA
	asl $0EF8.w		; 0E F8 0E
	bra -64.b		; 80 C0
	ora $00.b,S		; 03 00
	sbc $F80F.w,Y		; F9 0F F8
	ora $03C080.l		; 0F 80 C0 03
	brk $F7.b		; 00 F7
	ora ($F6.b,S),Y		; 13 F6
	ora ($80.b,S),Y		; 13 80
	cpy #$0003.w		; C0 03 00
	sbc $17.b,X		; F5 17
	pea $8017.w		; F4 17 80
	cpy #$0003.w		; C0 03 00
	sbc ($1B.b,S),Y		; F3 1B
	sbc ($1B.b)		; F2 1B
	bra -64.b		; 80 C0
	ora $00.b,S		; 03 00
	beq  33.b		; F0 21
	sbc $C08021.l		; EF 21 80 C0
	ora $00.b,S		; 03 00
	sbc $EC27.w		; ED 27 EC
	and [$80.b]		; 27 80
	cpy #$0003.w		; C0 03 00
	inx		; E8
	bmi -24.b		; 30 E8
	bmi -128.b		; 30 80
	cpy #$0003.w		; C0 03 00
	sbc $15.b,X		; F5 15
	inc $15.b,X		; F6 15
	inc $14.b,X		; F6 14
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($1A.b),Y		; F1 1A
	sbc $1A.b,X		; F5 1A
	inc $15.b,X		; F6 15
	ora [$00.b]		; 07 00
	sbc ($1F.b),Y		; F1 1F
	beq  31.b		; F0 1F
	cpy #$0735.w		; C0 35 07
	brk $F1.b		; 00 F1
	inc A		; 1A
	sbc $1A.b,X		; F5 1A
	inc $15.b,X		; F6 15
	ora [$00.b]		; 07 00
	beq  31.b		; F0 1F
	sbc ($1F.b),Y		; F1 1F
	cpy #$0735.w		; C0 35 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F4.b		; 00 F4
	and [$E5.b]		; 27 E5
	and [$E8.b]		; 27 E8
	ora ($07.b),Y		; 11 07
	brk $F4.b		; 00 F4
	and [$E5.b]		; 27 E5
	and [$E8.b]		; 27 E8
	ora ($07.b),Y		; 11 07
	brk $F7.b		; 00 F7
	bit $E5.b		; 24 E5
	bit $DF.b		; 24 DF
	and [$07.b]		; 27 07
	brk $F7.b		; 00 F7
	bit $E5.b		; 24 E5
	bit $DF.b		; 24 DF
	and [$07.b]		; 27 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	plp		; 28
	inx		; E8
	plp		; 28
	sbc $19.b,X		; F5 19
	ora [$00.b]		; 07 00
	beq  40.b		; F0 28
	inx		; E8
	plp		; 28
	sbc $19.b,X		; F5 19
	ora [$00.b]		; 07 00
	sbc $16.b,X		; F5 16
	sbc $16.b,X		; F5 16
	sbc $070C.w,Y		; F9 0C 07
	brk $F4.b		; 00 F4
	ora [$F5.b],Y		; 17 F5
	ora [$E7.b],Y		; 17 E7
	ora $0007.w,Y		; 19 07 00
	sed		; F8
	bpl  -8.b		; 10 F8
	bpl -128.b		; 10 80
	cpy #$0007.w		; C0 07 00
	sed		; F8
	bpl  -8.b		; 10 F8
	bpl -128.b		; 10 80
	cpy #$0007.w		; C0 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $1B.b		; E4 1B
	ora ($1B.b,X)		; 01 1B
	plx		; FA
	ora $0007.w		; 0D 07 00
	sbc $16.b,X		; F5 16
	sbc $16.b,X		; F5 16
	sbc ($2F.b),Y		; F1 2F
	ora [$00.b]		; 07 00
	sbc $16.b,X		; F5 16
	sbc $16.b,X		; F5 16
	sbc ($24.b),Y		; F1 24
	ora [$00.b]		; 07 00
	inc $34.b		; E6 34
	inc $34.b		; E6 34
	sta [$6C.b],Y		; 97 6C
	ora [$00.b]		; 07 00
	beq  32.b		; F0 20
	beq  32.b		; F0 20
	dec $0726.w,X		; DE 26 07
	brk $E4.b		; 00 E4
	tas		; 1B
	ora ($1B.b,X)		; 01 1B
	plx		; FA
	ora $0007.w		; 0D 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $14.b		; 06 14
	inc $14.b		; E6 14
	inc $14.b		; E6 14
	ora [$00.b]		; 07 00
	asl $14.b		; 06 14
	inc $14.b		; E6 14
	inc $14.b		; E6 14
	ora [$00.b]		; 07 00
	asl $14.b		; 06 14
	inc $14.b		; E6 14
	inc $14.b		; E6 14
	ora [$00.b]		; 07 00
	asl $14.b		; 06 14
	inc $14.b		; E6 14
	inc $14.b		; E6 14
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $16.b,X		; F6 16
	pea $E516.w		; F4 16 E5
	asl $07.b,X		; 16 07
	brk $F6.b		; 00 F6
	asl $F4.b,X		; 16 F4
	asl $E5.b,X		; 16 E5
	asl $07.b,X		; 16 07
	brk $F6.b		; 00 F6
	asl $F4.b,X		; 16 F4
	asl $E5.b,X		; 16 E5
	asl $07.b,X		; 16 07
	brk $F6.b		; 00 F6
	asl $F4.b,X		; 16 F4
	asl $C4.b,X		; 16 C4
	asl $07.b,X		; 16 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	ora $BA1FF1.l,X		; 1F F1 1F BA
	eor $07.b		; 45 07
	brk $F0.b		; 00 F0
	ora $821FF1.l,X		; 1F F1 1F 82
	adc $0007.w,X		; 7D 07 00
	sbc ($1F.b),Y		; F1 1F
	beq  31.b		; F0 1F
	.db $82, $7D, $07		; 82 7D 07
	brk $F1.b		; 00 F1
	ora $BA1FF0.l,X		; 1F F0 1F BA
	eor $07.b		; 45 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E7.b		; 00 E7
	rol $2EEB.w		; 2E EB 2E
	sbc $070F.w,Y		; F9 0F 07
	brk $F9.b		; 00 F9
	bpl  -9.b		; 10 F7
	bpl  -9.b		; 10 F7
	bpl   7.b		; 10 07
	brk $F9.b		; 00 F9
	bpl  -9.b		; 10 F7
	bpl  -9.b		; 10 F7
	bpl   7.b		; 10 07
	brk $F7.b		; 00 F7
	bpl  -7.b		; 10 F9
	bpl  -7.b		; 10 F9
	bpl   7.b		; 10 07
	brk $F7.b		; 00 F7
	bpl  -7.b		; 10 F9
	bpl  -8.b		; 10 F8
	bpl   7.b		; 10 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
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
	brk $04.b		; 00 04
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
	brk $04.b		; 00 04
	bra -128.b		; 80 80
	bpl   0.b		; 10 00
	ora ($00.b),Y		; 11 00
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
	brk $00.b		; 00 00
	.db $00		; Opcode 00 overrunning bank boundry at 0AFFFF. Skipping.
.ENDS
