.BANK 6 SLOT 0
.ORG $0000

.SECTION "Bank6" FORCE

	sbc $808DFF.l,X		; FF FF 8D 80
	stx $8F80.w		; 8E 80 8F
	bra -112.b		; 80 90
	bra -111.b		; 80 91
	bra -110.b		; 80 92
	bra -109.b		; 80 93
	bra -108.b		; 80 94
	sbc $95807F.l,X		; FF 7F 80 95
	bra -106.b		; 80 96
	bra -105.b		; 80 97
	bra -104.b		; 80 98
	bra -103.b		; 80 99
	bra -102.b		; 80 9A
	bra -101.b		; 80 9B
	bra -100.b		; 80 9C
	sed		; F8
	sbc $9BC0FE.l,X		; FF FE C0 9B
	cpy #$9A.b		; C0 9A
	cpy #$99.b		; C0 99
	cpy #$98.b		; C0 98
	cpy #$97.b		; C0 97
	cpy #$96.b		; C0 96
	sbc $95C0FF.l,X		; FF FF C0 95
	cpy #$94.b		; C0 94
	cpy #$93.b		; C0 93
	cpy #$92.b		; C0 92
	cpy #$91.b		; C0 91
	cpy #$90.b		; C0 90
	cpy #$8F.b		; C0 8F
	cpy #$8E.b		; C0 8E
	sbc $8DC0F0.l,X		; FF F0 C0 8D
	cpy #$7D.b		; C0 7D
	bra 126.b		; 80 7E
	bra 127.b		; 80 7F
	bra  -1.b		; 80 FF
	sta ($80.b,X)		; 81 80
	.db $82, $FF, $FF		; 82 FF FF
	bra -125.b		; 80 83
	bra -124.b		; 80 84
	bra -123.b		; 80 85
	bra -122.b		; 80 86
	bra -121.b		; 80 87
	bra -120.b		; 80 88
	bra -119.b		; 80 89
	bra -118.b		; 80 8A
	sta [$FF.b]		; 87 FF
	bra -117.b		; 80 8B
	bra -116.b		; 80 8C
	inc $8BC0.w,X		; FE C0 8B
	cpy #$8A.b		; C0 8A
	cpy #$89.b		; C0 89
	cpy #$88.b		; C0 88
	sbc $87C0FF.l,X		; FF FF C0 87
	cpy #$86.b		; C0 86
	cpy #$85.b		; C0 85
	cpy #$84.b		; C0 84
	cpy #$83.b		; C0 83
	cpy #$82.b		; C0 82
	cpy #$81.b		; C0 81
	cpy #$80.b		; C0 80
	sta [$FF.b]		; 87 FF
	cpy #$7F.b		; C0 7F
	cpy #$7E.b		; C0 7E
	rep #$C0		; C2 C0
	adc $6E80.w		; 6D 80 6E
	bra 111.b		; 80 6F
	bra 112.b		; 80 70
	sbc $7180FF.l,X		; FF FF 80 71
	bra 114.b		; 80 72
	bra 115.b		; 80 73
	bra 116.b		; 80 74
	bra 117.b		; 80 75
	bra 118.b		; 80 76
	bra 119.b		; 80 77
	bra 120.b		; 80 78
	adc $7980F8.l,X		; 7F F8 80 79
	bra 122.b		; 80 7A
	bra 123.b		; 80 7B
	bra 124.b		; 80 7C
	inc $7BC0.w,X		; FE C0 7B
	cpy #$7A.b		; C0 7A
	sbc $79C0FF.l,X		; FF FF C0 79
	cpy #$78.b		; C0 78
	cpy #$77.b		; C0 77
	cpy #$76.b		; C0 76
	cpy #$75.b		; C0 75
	cpy #$74.b		; C0 74
	cpy #$73.b		; C0 73
	cpy #$72.b		; C0 72
	adc $71C0F8.l,X		; 7F F8 C0 71
	cpy #$70.b		; C0 70
	cpy #$6F.b		; C0 6F
	cpy #$6E.b		; C0 6E
	rep #$C0		; C2 C0
	eor $5E80.w,X		; 5D 80 5E
	sbc $5F80FF.l,X		; FF FF 80 5F
	bra  96.b		; 80 60
	bra  97.b		; 80 61
	bra  98.b		; 80 62
	bra  99.b		; 80 63
	bra 100.b		; 80 64
	bra 101.b		; 80 65
	bra 102.b		; 80 66
	sbc $678087.l,X		; FF 87 80 67
	bra 104.b		; 80 68
	bra 105.b		; 80 69
	bra 106.b		; 80 6A
	bra 107.b		; 80 6B
	bra 108.b		; 80 6C
	inc $FFFF.w,X		; FE FF FF
	cpy #$6B.b		; C0 6B
	cpy #$6A.b		; C0 6A
	cpy #$69.b		; C0 69
	cpy #$68.b		; C0 68
	cpy #$67.b		; C0 67
	cpy #$66.b		; C0 66
	cpy #$65.b		; C0 65
	cpy #$64.b		; C0 64
	sbc $63C087.l,X		; FF 87 C0 63
	cpy #$62.b		; C0 62
	cpy #$61.b		; C0 61
	cpy #$60.b		; C0 60
	cpy #$5F.b		; C0 5F
	cpy #$5E.b		; C0 5E
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sbc $804DC0.l,X		; FF C0 4D 80
	lsr $4F80.w		; 4E 80 4F
	bra  80.b		; 80 50
	bra  81.b		; 80 51
	bra  82.b		; 80 52
	bra  83.b		; 80 53
	bra  84.b		; 80 54
	sbc $55807F.l,X		; FF 7F 80 55
	bra  86.b		; 80 56
	bra  87.b		; 80 57
	bra  88.b		; 80 58
	bra  89.b		; 80 59
	bra  90.b		; 80 5A
	bra  91.b		; 80 5B
	bra  92.b		; 80 5C
	sed		; F8
	sbc $5BC0FE.l,X		; FF FE C0 5B
	cpy #$C05A.w		; C0 5A C0
	eor $58C0.w,Y		; 59 C0 58
	cpy #$C057.w		; C0 57 C0
	lsr $FF.b,X		; 56 FF
	adc $C055C0.l,X		; 7F C0 55 C0
	mvn $53,$C0		; 54 C0 53
	cpy #$C052.w		; C0 52 C0
	eor ($C0.b),Y		; 51 C0
	bvc -64.b		; 50 C0
	eor $F84EC0.l		; 4F C0 4E F8
	sbc $3DC0C2.l,X		; FF C2 C0 3D
	bra  62.b		; 80 3E
	bra  63.b		; 80 3F
	bra  64.b		; 80 40
	bra  65.b		; 80 41
	bra  66.b		; 80 42
	sbc $4380FF.l,X		; FF FF 80 43
	bra  68.b		; 80 44
	bra  69.b		; 80 45
	bra  70.b		; 80 46
	bra  71.b		; 80 47
	bra  72.b		; 80 48
	bra  73.b		; 80 49
	bra  74.b		; 80 4A
	sta [$FF.b]		; 87 FF
	bra  75.b		; 80 4B
	bra  76.b		; 80 4C
	inc $4BC0.w,X		; FE C0 4B
	cpy #$C04A.w		; C0 4A C0
	eor #$48C0.w		; 49 C0 48
	sbc $47C0FF.l,X		; FF FF C0 47
	cpy #$C046.w		; C0 46 C0
	eor $C0.b		; 45 C0
	mvp $43,$C0		; 44 C0 43
	cpy #$C042.w		; C0 42 C0
	eor ($C0.b,X)		; 41 C0
	rti		; 40

	sta [$FF.b]		; 87 FF
	cpy #$C03F.w		; C0 3F C0
	rol $C0C2.w,X		; 3E C2 C0
	and $2E80.w		; 2D 80 2E
	bra  47.b		; 80 2F
	bra  48.b		; 80 30
	sbc $3180FF.l,X		; FF FF 80 31
	bra  50.b		; 80 32
	bra  51.b		; 80 33
	bra  52.b		; 80 34
	bra  53.b		; 80 35
	bra  54.b		; 80 36
	bra  55.b		; 80 37
	bra  56.b		; 80 38
	adc $3980F8.l,X		; 7F F8 80 39
	bra  58.b		; 80 3A
	bra  59.b		; 80 3B
	bra  60.b		; 80 3C
	inc $3BC0.w,X		; FE C0 3B
	cpy #$FF3A.w		; C0 3A FF
	sbc $C039C0.l,X		; FF C0 39 C0
	sec		; 38
	cpy #$C037.w		; C0 37 C0
	rol $C0.b,X		; 36 C0
	and $C0.b,X		; 35 C0
	bit $C0.b,X		; 34 C0
	and ($C0.b,S),Y		; 33 C0
	and ($7F.b)		; 32 7F
	sed		; F8
	cpy #$C031.w		; C0 31 C0
	bmi -64.b		; 30 C0
	and $C22EC0.l		; 2F C0 2E C2
	cpy #$801D.w		; C0 1D 80
	asl $FFFF.w,X		; 1E FF FF
	bra  31.b		; 80 1F
	bra  32.b		; 80 20
	bra  33.b		; 80 21
	bra  34.b		; 80 22
	bra  35.b		; 80 23
	bra  36.b		; 80 24
	bra  37.b		; 80 25
	bra  38.b		; 80 26
	sbc $278087.l,X		; FF 87 80 27
	bra  40.b		; 80 28
	bra  41.b		; 80 29
	bra  42.b		; 80 2A
	bra  43.b		; 80 2B
	bra  44.b		; 80 2C
	inc $FFFF.w,X		; FE FF FF
	cpy #$C02B.w		; C0 2B C0
	rol A		; 2A
	cpy #$C029.w		; C0 29 C0
	plp		; 28
	cpy #$C027.w		; C0 27 C0
	rol $C0.b		; 26 C0
	and $C0.b		; 25 C0
	bit $FF.b		; 24 FF
	sta [$C0.b]		; 87 C0
	and $C0.b,S		; 23 C0
	jsl $C021C0.l		; 22 C0 21 C0
	jsr $1FC0.w		; 20 C0 1F
	cpy #$C21E.w		; C0 1E C2
	sbc $14C0FD.l,X		; FF FD C0 14
	bra  21.b		; 80 15
	bra  22.b		; 80 16
	bra  23.b		; 80 17
	bra  24.b		; 80 18
	inc $0EF8.w,X		; FE F8 0E
	ora $1A80.w,Y		; 19 80 1A
	bra -61.b		; 80 C3
	lda $1C801B.l,X		; BF 1B 80 1C
	inc $1BC0.w,X		; FE C0 1B
	cpy #$C01A.w		; C0 1A C0
	ora $18C0.w,Y		; 19 C0 18
	ora $F8FEFE.l,X		; 1F FE FE F8
	asl $C017.w		; 0E 17 C0
	asl $C0.b,X		; 16 C0
	ora $C2.b,X		; 15 C2
	cpy #$800D.w		; C0 0D 80
	asl $0F80.w		; 0E 80 0F
	sbc $80F0.w,X		; FD F0 80
	bpl  -2.b		; 10 FE
	sed		; F8
	ora ($11.b)		; 12 11
	bra  18.b		; 80 12
	bra  19.b		; 80 13
	inc $12C0.w,X		; FE C0 12
	cpy #$F87B.w		; C0 7B F8
	ora ($C0.b),Y		; 11 C0
	bpl  -2.b		; 10 FE
	sed		; F8
	ora ($0F.b)		; 12 0F
	cpy #$C20E.w		; C0 0E C2
	cpy #$8006.w		; C0 06 80
	ora [$F7.b]		; 07 F7
	cmp $80.b,S		; C3 80
	php		; 08
	bra   9.b		; 80 09
	inc $12F8.w,X		; FE F8 12
	asl A		; 0A
	bra  11.b		; 80 0B
	bra  12.b		; 80 0C
	inc $EFC0.w,X		; FE C0 EF
	sbc ($0B.b,X)		; E1 0B
	cpy #$C00A.w		; C0 0A C0
	ora #$F8FE.w		; 09 FE F8
	ora ($08.b)		; 12 08
	cpy #$C207.w		; C0 07 C2
	cpy #$8205.w		; C0 05 82
	phd		; 0B
	bra  -2.b		; 80 FE
	sed		; F8
	asl $FEDE.w,X		; 1E DE FE
	sed		; F8
	trb $8004.w		; 1C 04 80
	inc $1EF8.w,X		; FE F8 1E
	rol $DEB8.w		; 2E B8 DE
	inc $1CF8.w,X		; FE F8 1C
	ora $80.b,S		; 03 80
	inc $1EF8.w,X		; FE F8 1E
	dec $F8FE.w,X		; DE FE F8
	trb $8002.w		; 1C 02 80
	rts		; 60

	plp		; 28
	inc $1EF8.w,X		; FE F8 1E
	dec $F8FE.w,X		; DE FE F8
	trb $FE01.w		; 1C 01 FE
	bra  -2.b		; 80 FE
	sed		; F8
	trb $0B19.w		; 1C 19 0B
	dec $F8FE.w,X		; DE FE F8
	ora $DE40.w,Y		; 19 40 DE
	brk $FE.b		; 00 FE
	sed		; F8
	trb $B82E.w		; 1C 2E B8
	dec $F8FE.w,X		; DE FE F8
	trb $0002.w		; 1C 02 00
	inc $1EF8.w,X		; FE F8 1E
	dec $F8FE.w,X		; DE FE F8
	trb $0003.w		; 1C 03 00
	cpx #$FE82.w		; E0 82 FE
	sed		; F8
	asl $FEDE.w,X		; 1E DE FE
	sed		; F8
	trb $0004.w		; 1C 04 00
	inc $1EF8.w,X		; FE F8 1E
	dec $FE0B.w,X		; DE 0B FE
	inc $1CF8.w,X		; FE F8 1C
	ora $00.b		; 05 00
	inc $1EF8.w,X		; FE F8 1E
	dec $F8FE.w,X		; DE FE F8
	trb $0006.w		; 1C 06 00
	ora [$00.b]		; 07 00
	php		; 08
	sbc $00F0.w,X		; FD F0 00
	ora #$F8FE.w		; 09 FE F8
	ora ($0A.b)		; 12 0A
	brk $0B.b		; 00 0B
	brk $0C.b		; 00 0C
	inc $0B40.w,X		; FE 40 0B
	rti		; 40

	tda		; 7B
	sed		; F8
	asl A		; 0A
	rti		; 40

	ora #$F8FE.w		; 09 FE F8
	ora ($08.b)		; 12 08
	rti		; 40

	ora [$C2.b]		; 07 C2
	rti		; 40

	ora $0E00.w		; 0D 00 0E
	sbc [$C3.b],Y		; F7 C3
	brk $0F.b		; 00 0F
	brk $10.b		; 00 10
	inc $12F8.w,X		; FE F8 12
	ora ($00.b),Y		; 11 00
	ora ($00.b)		; 12 00
	ora ($FE.b,S),Y		; 13 FE
	rti		; 40

	sbc $4012E1.l		; EF E1 12 40
	ora ($40.b),Y		; 11 40
	bpl  -2.b		; 10 FE
	sed		; F8
	ora ($0F.b)		; 12 0F
	rti		; 40

	asl $40C2.w		; 0E C2 40
	trb $7F.b		; 14 7F
	sbc $001500.l,X		; FF 00 15 00
	asl $00.b,X		; 16 00
	ora [$00.b],Y		; 17 00
	clc		; 18
	inc $0EF8.w,X		; FE F8 0E
	ora $1A00.w,Y		; 19 00 1A
	brk $1B.b		; 00 1B
	brk $F0.b		; 00 F0
	sbc $40FE1C.l		; EF 1C FE 40
	tas		; 1B
	rti		; 40

	inc A		; 1A
	rti		; 40

	ora $1840.w,Y		; 19 40 18
	inc $0EF8.w,X		; FE F8 0E
	ora [$87.b],Y		; 17 87
	sbc $401640.l,X		; FF 40 16 40
	ora $C2.b,X		; 15 C2
	rti		; 40

	ora $1E00.w,X		; 1D 00 1E
	brk $1F.b		; 00 1F
	brk $20.b		; 00 20
	sbc $2100FF.l,X		; FF FF 00 21
	brk $22.b		; 00 22
	brk $23.b		; 00 23
	brk $24.b		; 00 24
	brk $25.b		; 00 25
	brk $26.b		; 00 26
	brk $27.b		; 00 27
	brk $28.b		; 00 28
	adc $2900F8.l,X		; 7F F8 00 29
	brk $2A.b		; 00 2A
	brk $2B.b		; 00 2B
	brk $2C.b		; 00 2C
	inc $2B40.w,X		; FE 40 2B
	rti		; 40

	rol A		; 2A
	sbc $2940FF.l,X		; FF FF 40 29
	rti		; 40

	plp		; 28
	rti		; 40

	and [$40.b]		; 27 40
	rol $40.b		; 26 40
	and $40.b		; 25 40
	bit $40.b		; 24 40
	and $40.b,S		; 23 40
	jsl $40F87F.l		; 22 7F F8 40
	and ($40.b,X)		; 21 40
	jsr $1F40.w		; 20 40 1F
	rti		; 40

	asl $40C2.w,X		; 1E C2 40
	and $2E00.w		; 2D 00 2E
	sbc $2F00FF.l,X		; FF FF 00 2F
	brk $30.b		; 00 30
	brk $31.b		; 00 31
	brk $32.b		; 00 32
	brk $33.b		; 00 33
	brk $34.b		; 00 34
	brk $35.b		; 00 35
	brk $36.b		; 00 36
	sbc $370087.l,X		; FF 87 00 37
	brk $38.b		; 00 38
	brk $39.b		; 00 39
	brk $3A.b		; 00 3A
	brk $3B.b		; 00 3B
	brk $3C.b		; 00 3C
	inc $FFFF.w,X		; FE FF FF
	rti		; 40

	tsa		; 3B
	rti		; 40

	dec A		; 3A
	rti		; 40

	and $3840.w,Y		; 39 40 38
	rti		; 40

	and [$40.b],Y		; 37 40
	rol $40.b,X		; 36 40
	and $40.b,X		; 35 40
	bit $FF.b,X		; 34 FF
	sta [$40.b]		; 87 40
	and ($40.b,S),Y		; 33 40
	and ($40.b)		; 32 40
	and ($40.b),Y		; 31 40
	bmi  64.b		; 30 40
	and $C22E40.l		; 2F 40 2E C2
	sbc $3D40FF.l,X		; FF FF 40 3D
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $40.b		; 00 40
	brk $41.b		; 00 41
	brk $42.b		; 00 42
	brk $43.b		; 00 43
	brk $44.b		; 00 44
	sbc $45007F.l,X		; FF 7F 00 45
	brk $46.b		; 00 46
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $49.b		; 00 49
	brk $4A.b		; 00 4A
	brk $4B.b		; 00 4B
	brk $4C.b		; 00 4C
	sed		; F8
	sbc $4B40FE.l,X		; FF FE 40 4B
	rti		; 40

	lsr A		; 4A
	rti		; 40

	eor #$4840.w		; 49 40 48
	rti		; 40

	eor [$40.b]		; 47 40
	lsr $FF.b		; 46 FF
	cmp $40.b,S		; C3 40
	eor $40.b		; 45 40
	mvp $43,$40		; 44 40 43
	rti		; 40

	.db $42, $40		; 42 40
	eor ($40.b,X)		; 41 40
	sbc $FFE13F.l,X		; FF 3F E1 FF
	rti		; 40

	rol $40C2.w,X		; 3E C2 40
	eor $4E00.w		; 4D 00 4E
	brk $4F.b		; 00 4F
	brk $50.b		; 00 50
	brk $51.b		; 00 51
	sbc $5200FF.l,X		; FF FF 00 52
	brk $53.b		; 00 53
	brk $54.b		; 00 54
	brk $55.b		; 00 55
	brk $56.b		; 00 56
	brk $57.b		; 00 57
	brk $58.b		; 00 58
	brk $59.b		; 00 59
	ora $5A00FE.l,X		; 1F FE 00 5A
	brk $5B.b		; 00 5B
	brk $5C.b		; 00 5C
	inc $5B40.w,X		; FE 40 5B
	rti		; 40

	phy		; 5A
	rti		; 40

	eor $FFFF.w,Y		; 59 FF FF
	rti		; 40

	cli		; 58
	rti		; 40

	eor [$40.b],Y		; 57 40
	lsr $40.b,X		; 56 40
	eor $40.b,X		; 55 40
	mvn $53,$40		; 54 40 53
	rti		; 40

	eor ($40.b)		; 52 40
	eor ($1F.b),Y		; 51 1F
	inc $5040.w,X		; FE 40 50
	rti		; 40

	eor $C24E40.l		; 4F 40 4E C2
	rti		; 40

	eor $5E00.w,X		; 5D 00 5E
	brk $5F.b		; 00 5F
	sbc $6000FF.l,X		; FF FF 00 60
	brk $61.b		; 00 61
	brk $62.b		; 00 62
	brk $63.b		; 00 63
	brk $64.b		; 00 64
	brk $65.b		; 00 65
	brk $66.b		; 00 66
	brk $67.b		; 00 67
	sbc $6800E1.l,X		; FF E1 00 68
	brk $69.b		; 00 69
	brk $6A.b		; 00 6A
	brk $6B.b		; 00 6B
	brk $6C.b		; 00 6C
	inc $6B40.w,X		; FE 40 6B
	sbc $6A40FF.l,X		; FF FF 40 6A
	rti		; 40

	adc #$6840.w		; 69 40 68
	rti		; 40

	adc [$40.b]		; 67 40
	ror $40.b		; 66 40
	adc $40.b		; 65 40
	stz $40.b		; 64 40
	adc $FF.b,S		; 63 FF
	sbc ($40.b,X)		; E1 40
	.db $62, $40, $61		; 62 40 61
	rti		; 40

	rts		; 60

	rti		; 40

	eor $C25E40.l,X		; 5F 40 5E C2
	rti		; 40

	adc $FFFF.w		; 6D FF FF
	brk $6E.b		; 00 6E
	brk $6F.b		; 00 6F
	brk $70.b		; 00 70
	brk $71.b		; 00 71
	brk $72.b		; 00 72
	brk $73.b		; 00 73
	brk $74.b		; 00 74
	brk $75.b		; 00 75
	sbc $76001F.l,X		; FF 1F 00 76
	brk $77.b		; 00 77
	brk $78.b		; 00 78
	brk $79.b		; 00 79
	brk $7A.b		; 00 7A
	brk $7B.b		; 00 7B
	brk $7C.b		; 00 7C
	inc $FEFF.w,X		; FE FF FE
	rti		; 40

	tda		; 7B
	rti		; 40

	ply		; 7A
	rti		; 40

	adc $7840.w,Y		; 79 40 78
	rti		; 40

	adc [$40.b],Y		; 77 40
	ror $40.b,X		; 76 40
	adc $FF.b,X		; 75 FF
	ora $407440.l,X		; 1F 40 74 40
	adc ($40.b,S),Y		; 73 40
	adc ($40.b)		; 72 40
	adc ($40.b),Y		; 71 40
	bvs  64.b		; 70 40
	adc $FE6E40.l		; 6F 40 6E FE
	sbc $7D40C2.l,X		; FF C2 40 7D
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	brk $80.b		; 00 80
	brk $81.b		; 00 81
	brk $82.b		; 00 82
	brk $83.b		; 00 83
	sbc $8400FF.l,X		; FF FF 00 84
	brk $85.b		; 00 85
	brk $86.b		; 00 86
	brk $87.b		; 00 87
	brk $88.b		; 00 88
	brk $89.b		; 00 89
	brk $8A.b		; 00 8A
	brk $8B.b		; 00 8B
	sbc ($FF.b,X)		; E1 FF
	brk $8C.b		; 00 8C
	inc $8B40.w,X		; FE 40 8B
	rti		; 40

	txa		; 8A
	rti		; 40

	bit #$8840.w		; 89 40 88
	rti		; 40

	sta [$FF.b]		; 87 FF
	sbc $408640.l,X		; FF 40 86 40
	sta $40.b		; 85 40
	sty $40.b		; 84 40
	sta $40.b,S		; 83 40
	.db $82, $40, $81		; 82 40 81
	rti		; 40

	bra  64.b		; 80 40
	adc $40FFE1.l,X		; 7F E1 FF 40
	ror $40C2.w,X		; 7E C2 40
	sta $8E00.w		; 8D 00 8E
	brk $8F.b		; 00 8F
	brk $90.b		; 00 90
	brk $91.b		; 00 91
	sbc $9200FF.l,X		; FF FF 00 92
	brk $93.b		; 00 93
	brk $94.b		; 00 94
	brk $95.b		; 00 95
	brk $96.b		; 00 96
	brk $97.b		; 00 97
	brk $98.b		; 00 98
	brk $99.b		; 00 99
	ora $9A00FE.l,X		; 1F FE 00 9A
	brk $9B.b		; 00 9B
	brk $9C.b		; 00 9C
	inc $9B40.w,X		; FE 40 9B
	rti		; 40

	txs		; 9A
	rti		; 40

	sta $FFFF.w,Y		; 99 FF FF
	rti		; 40

	tya		; 98
	rti		; 40

	sta [$40.b],Y		; 97 40
	stx $40.b,Y		; 96 40
	sta $40.b,X		; 95 40
	sty $40.b,X		; 94 40
	sta ($40.b,S),Y		; 93 40
	sta ($40.b)		; 92 40
	sta ($1F.b),Y		; 91 1F
	asl A		; 0A
	rti		; 40

	bcc  64.b		; 90 40
	sta $C28E40.l		; 8F 40 8E C2
	rti		; 40

	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7D.b		; 00 7D
	sbc $F8FF00.l,X		; FF 00 FF F8
	txa		; 8A
	adc $6E16.w		; 6D 16 6E
	asl $E0.b,X		; 16 E0
	sed		; F8
	tas		; 1B
	ror $7256.w		; 6E 56 72
	asl $73.b,X		; 16 73
	asl $FF.b,X		; 16 FF
	sbc $1674.w,X		; FD 74 16
	adc $16.b,X		; 75 16
	txa		; 8A
	asl $8B.b,X		; 16 8B
	asl $6D.b,X		; 16 6D
	lsr $E2.b,X		; 56 E2
	sed		; F8
	ora $1601.w		; 0D 01 16
	cop $0E.b		; 02 0E
	sbc $1603FF.l,X		; FF FF 03 16
	tsb $16.b		; 04 16
	ora $16.b		; 05 16
	asl $16.b		; 06 16
	ora [$16.b]		; 07 16
	php		; 08
	asl $09.b,X		; 16 09
	asl $0A.b,X		; 16 0A
	asl $FF.b,X		; 16 FF
	sbc $0C160B.l,X		; FF 0B 16 0C
	asl $0D.b,X		; 16 0D
	asl $0E.b,X		; 16 0E
	asl $0E79.w		; 0E 79 0E
	ply		; 7A
	asl $0E7B.w		; 0E 7B 0E
	jmp ($FF16.w,X)		; 7C 16 FF
	adc $7E167D.l,X		; 7F 7D 16 7E
	asl $7F.b,X		; 16 7F
	asl $80.b		; 06 80
	asl $81.b		; 06 81
	asl $82.b		; 06 82
	asl $83.b,X		; 16 83
	asl $0684.w		; 0E 84 06
	sbc $FEC47F.l,X		; FF 7F C4 FE
	ora $0E100E.l		; 0F 0E 10 0E
	ora ($16.b),Y		; 11 16
	ora ($16.b)		; 12 16
	ora ($16.b,S),Y		; 13 16
	trb $16.b		; 14 16
	ora $16.b,X		; 15 16
	sed		; F8
	sbc $1617FF.l,X		; FF FF 17 16
	clc		; 18
	asl $19.b,X		; 16 19
	asl $1A.b,X		; 16 1A
	asl $1B.b,X		; 16 1B
	asl $1C.b,X		; 16 1C
	asl $7F.b,X		; 16 7F
	sbc $1E161D.l,X		; FF 1D 16 1E
	asl $0E89.w		; 0E 89 0E
	ror $D68E.w		; 6E 8E D6
	jsr ($068C.w,X)		; FC 8C 06
	sta $8E06.w		; 8D 06 8E
	asl $BF.b		; 06 BF
	sbc ($8F.b),Y		; F1 8F
	asl $90.b		; 06 90
	ora ($91.b)		; 12 91
	ora ($92.b)		; 12 92
	cpy #$1FFF.w		; C0 FF 1F
	cpy $20.b		; C4 20
	asl $FF.b,X		; 16 FF
	sbc $221621.l,X		; FF 21 16 22
	asl $23.b,X		; 16 23
	asl $24.b,X		; 16 24
	asl $25.b,X		; 16 25
	asl $26.b,X		; 16 26
	asl $27.b,X		; 16 27
	asl $28.b,X		; 16 28
	asl $FF.b,X		; 16 FF
	jsr ($1629.w,X)		; FC 29 16
	rol A		; 2A
	asl $2B.b,X		; 16 2B
	asl $2C.b,X		; 16 2C
	asl $2D.b,X		; 16 2D
	rol A		; 2A
	sta [$16.b],Y		; 97 16
	tya		; 98
	sbc $99167F.l,X		; FF 7F 16 99
	asl $9A.b,X		; 16 9A
	asl $9B.b		; 06 9B
	asl $9C.b		; 06 9C
	asl $4C.b		; 06 4C
	asl $9D.b		; 06 9D
	asl $9E.b		; 06 9E
	asl $9F.b		; 06 9F
	sbc $FFC0FF.l,X		; FF FF C0 FF
	rol $2F16.w		; 2E 16 2F
	asl $30.b,X		; 16 30
	asl $31.b,X		; 16 31
	asl $32.b,X		; 16 32
	asl $33.b,X		; 16 33
	asl $34.b,X		; 16 34
	asl $8F.b,X		; 16 8F
	sbc $361635.l,X		; FF 35 16 36
	asl $37.b,X		; 16 37
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	asl $39.b,X		; 16 39
	asl $3A.b,X		; 16 3A
	asl $3B.b,X		; 16 3B
	sbc $3C16FF.l,X		; FF FF 16 3C
	asl $A4.b,X		; 16 A4
	asl $A5.b,X		; 16 A5
	asl $A6.b,X		; 16 A6
	asl $A7.b,X		; 16 A7
	asl $A8.b,X		; 16 A8
	asl $A9.b,X		; 16 A9
	asl $AA.b		; 06 AA
	sbc ($1B.b),Y		; F1 1B
	asl $AB.b		; 06 AB
	iny		; C8
	ldy $AD06.w		; AC 06 AD
	asl $AE.b		; 06 AE
	cpy #$3DFF.w		; C0 FF 3D
	sbc $3EC4FF.l,X		; FF FF C4 3E
	asl $3F.b,X		; 16 3F
	asl $1640.w		; 0E 40 16
	eor ($16.b,X)		; 41 16
	.db $42, $16		; 42 16
	eor $16.b,S		; 43 16
	mvp $FF,$16		; 44 16 FF
	sbc $461645.l,X		; FF 45 16 46
	asl $47.b,X		; 16 47
	asl $48.b,X		; 16 48
	asl $49.b,X		; 16 49
	asl $4A.b,X		; 16 4A
	asl $4B.b,X		; 16 4B
	asl $B3.b,X		; 16 B3
	asl $3F.b,X		; 16 3F
	inc $16B4.w,X		; FE B4 16
	lda $16.b,X		; B5 16
	ldx $16.b,Y		; B6 16
	lda [$76.b],Y		; B7 76
	clv		; B8
	asl $B9.b		; 06 B9
	asl $BA.b		; 06 BA
	cmp $BB06FF.l,X		; DF FF 06 BB
	asl $BC.b		; 06 BC
	asl $BD.b		; 06 BD
	cpy #$4CFF.w		; C0 FF 4C
	asl $4D.b,X		; 16 4D
	asl $4E.b,X		; 16 4E
	asl $0E4F.w		; 0E 4F 0E
	sbc $0E503F.l,X		; FF 3F 50 0E
	eor ($0E.b),Y		; 51 0E
	eor ($0E.b)		; 52 0E
	eor ($0E.b,S),Y		; 53 0E
	mvn $55,$16		; 54 16 55
	asl $56.b,X		; 16 56
	asl $57.b,X		; 16 57
	inc $D2FF.w,X		; FE FF D2
	cli		; 58
	asl $59.b,X		; 16 59
	asl $5A.b,X		; 16 5A
	asl $BF.b,X		; 16 BF
	asl $C0.b,X		; 16 C0
	asl $C1.b,X		; 16 C1
	asl $C2.b,X		; 16 C2
	sbc $C3167F.l,X		; FF 7F 16 C3
	asl $C4.b,X		; 16 C4
	asl $C5.b		; 06 C5
	asl $C6.b		; 06 C6
	asl $C7.b		; 06 C7
	asl $C8.b		; 06 C8
	asl $C9.b		; 06 C9
	asl $CA.b		; 06 CA
	sbc $FFC0FF.l,X		; FF FF C0 FF
	tad		; 5B
	asl $0E5C.w		; 0E 5C 0E
	eor $5E0E.w,X		; 5D 0E 5E
	asl $0E5F.w		; 0E 5F 0E
	rts		; 60

	asl $1661.w		; 0E 61 16
	sta [$FF.b]		; 87 FF
	.db $62, $16, $63		; 62 16 63
	asl $FA.b,X		; 16 FA
	stz $16.b		; 64 16
	adc $16.b		; 65 16
	ror $16.b		; 66 16
	adc [$0E.b]		; 67 0E
	sbc $1668FF.l,X		; FF FF 68 16
	adc #$CB16.w		; 69 16 CB
	asl $CC.b,X		; 16 CC
	asl $CD.b		; 06 CD
	asl $CE.b		; 06 CE
	asl $CF.b		; 06 CF
	asl $D0.b		; 06 D0
	asl $FF.b		; 06 FF
.INDEX 16
	rep #$D1		; C2 D1
	asl $D2.b		; 06 D2
	asl $D3.b		; 06 D3
	asl $D4.b		; 06 D4
	asl $D5.b		; 06 D5
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sbc $FFEF6A.l,X		; FF 6A EF FF
	asl $0E6B.w		; 0E 6B 0E
	jmp ($0C0E.w)		; 6C 0E 0C
	beq  19.b		; F0 13
	ror $0E.b,X		; 76 0E
	adc [$0E.b],Y		; 77 0E
	sei		; 78
	asl $0ED6.w		; 0E D6 0E
	cmp [$FF.b],Y		; D7 FF
	sbc $06D812.l,X		; FF 12 D8 06
	cmp $DA06.w,Y		; D9 06 DA
	asl $DB.b		; 06 DB
	asl $DC.b		; 06 DC
	asl $DD.b		; 06 DD
	asl $DE.b		; 06 DE
	asl $DF.b		; 06 DF
	lda $06FE.w,X		; BD FE 06
	cpx #$F8C0.w		; E0 C0 F8
	asl A		; 0A
	adc $C2700E.l		; 6F 0E 70 C2
	sed		; F8
	trb $FF.b		; 14 FF
	sed		; F8
	ora #$0685.w		; 09 85 06
	stx $06.b		; 86 06
	sta [$FF.b]		; 87 FF
	sta [$06.b],Y		; 97 06
	dey		; 88
	asl $A0.b		; 06 A0
	asl $A1.b		; 06 A1
	asl $A2.b		; 06 A2
	asl $A3.b		; 06 A3
	asl $BE.b		; 06 BE
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	asl A		; 0A
	asl A		; 0A
	sbc $8671FF.l,X		; FF FF 71 86
	inx		; E8
	trb $93FF.w		; 1C FF 93
	asl $94.b		; 06 94
	asl $95.b		; 06 95
	asl $96.b		; 06 96
	adc $AF06FD.l,X		; 7F FD 06 AF
	asl $B0.b		; 06 B0
	asl $B1.b		; 06 B1
	asl $B2.b		; 06 B2
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	asl $FCFF.w		; 0E FF FC
	ora $0E01.w		; 0D 01 0E
	ora ($FF.b,X)		; 01 FF
	sbc $20010F.l,X		; FF 0F 01 20
	ora ($21.b,X)		; 01 21
	ora ($22.b,X)		; 01 22
	ora ($23.b,X)		; 01 23
	ora ($24.b,X)		; 01 24
	ora ($25.b,X)		; 01 25
	ora ($26.b,X)		; 01 26
	ora ($FF.b,X)		; 01 FF
	sbc $280127.l,X		; FF 27 01 28
	ora ($29.b,X)		; 01 29
	ora ($2A.b,X)		; 01 2A
	ora ($2B.b,X)		; 01 2B
	ora ($2C.b,X)		; 01 2C
	ora ($2D.b,X)		; 01 2D
	ora ($2E.b,X)		; 01 2E
	ora ($DF.b,X)		; 01 DF
	sbc $40012F.l,X		; FF 2F 01 40
	ora ($41.b,X)		; 01 41
	ora ($9C.b,X)		; 01 9C
	sed		; F8
	ora $1D.b,X		; 15 1D
	ora ($1E.b,X)		; 01 1E
	ora ($1F.b,X)		; 01 1F
	ora ($30.b,X)		; 01 30
	ora ($FF.b,X)		; 01 FF
	sbc $320131.l,X		; FF 31 01 32
	ora ($33.b,X)		; 01 33
	ora ($34.b,X)		; 01 34
	ora ($35.b,X)		; 01 35
	ora ($36.b,X)		; 01 36
	ora ($37.b,X)		; 01 37
	ora ($38.b,X)		; 01 38
	ora ($FF.b,X)		; 01 FF
	sbc $3A0139.l,X		; FF 39 01 3A
	ora ($3B.b,X)		; 01 3B
	ora ($3C.b,X)		; 01 3C
	ora ($3D.b,X)		; 01 3D
	ora ($3E.b,X)		; 01 3E
	ora ($3F.b,X)		; 01 3F
	ora ($50.b,X)		; 01 50
	ora ($FA.b,X)		; 01 FA
	sbc $F8C051.l,X		; FF 51 C0 F8
	asl $FF.b,X		; 16 FF
	sed		; F8
	tsa		; 3B
	rtl		; 6B

	ora $196C.w,Y		; 19 6C 19
	adc $6E19.w		; 6D 19 6E
	ora $196F.w,Y		; 19 6F 19
	bra  -1.b		; 80 FF
	inc $8119.w,X		; FE 19 81
	ora $1982.w,Y		; 19 82 19
	sta $19.b,S		; 83 19
	sty $19.b		; 84 19
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	ora #$42.b		; 09 42
	ora $1943.w,Y		; 19 43 19
	mvp $7F,$FF		; 44 FF 7F
	ora $1945.w,Y		; 19 45 19
	lsr $19.b		; 46 19
	eor [$19.b]		; 47 19
	pha		; 48
	ora $1949.w,Y		; 19 49 19
	lsr A		; 4A
	ora $194B.w,Y		; 19 4B 19
	jmp $FFE1.w		; 4C E1 FF
	cpx #$F8.b		; E0 F8
	asl A		; 0A
	sbc $7C197B.l,X		; FF 7B 19 7C
	ora $197D.w,Y		; 19 7D 19
	ror $7F19.w,X		; 7E 19 7F
	ora $FEFF.w,Y		; 19 FF FE
	bcc  25.b		; 90 19
	sta ($19.b),Y		; 91 19
	sta ($19.b)		; 92 19
	sta ($19.b,S),Y		; 93 19
	sty $E0.b,X		; 94 E0
	sed		; F8
	asl A		; 0A
	eor ($19.b)		; 52 19
	eor ($19.b,S),Y		; 53 19
	mvn $7F,$FF		; 54 FF 7F
	ora $1955.w,Y		; 19 55 19
	lsr $19.b,X		; 56 19
	eor [$19.b],Y		; 57 19
	cli		; 58
	ora $1959.w,Y		; 19 59 19
	phy		; 5A
	ora $195B.w,Y		; 19 5B 19
	jmp $C0FFFF.l		; 5C FF FF C0
	sed		; F8
	tsb $198F.w		; 0C 8F 19
	ldy #$19.b		; A0 19
	sta $19.b		; 85 19
	stx $19.b		; 86 19
	sta [$19.b]		; 87 19
	dey		; 88
	ora $1989.w,Y		; 19 89 19
	lda ($FF.b,S),Y		; B3 FF
	lda ($19.b,X)		; A1 19
	ldx #$F2.b		; A2 F2
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	adc ($19.b,X)		; 61 19
	.db $62, $19, $63		; 62 19 63
	ora $FF64.w,Y		; 19 64 FF
	ora [$19.b],Y		; 17 19
	adc $19.b		; 65 19
	ror $19.b		; 66 19
	adc [$19.b]		; 67 19
	pla		; 68
	ora $1969.w,Y		; 19 69 19
	ror A		; 6A
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	tsb $FFFE.w		; 0C FE FF
	sbc $B0199F.l,X		; FF 9F 19 B0
	ora $1995.w,Y		; 19 95 19
	stx $19.b,Y		; 96 19
	sta [$19.b],Y		; 97 19
	tya		; 98
	ora $1999.w,Y		; 19 99 19
	lda ($FF.b,S),Y		; B3 FF
	lda ($19.b),Y		; B1 19
	lda ($F2.b)		; B2 F2
	jsl $7219F7.l		; 22 F7 19 72
	ora $1973.w,Y		; 19 73 19
	stz $19.b,X		; 74 19
	sbc $1975EB.l,X		; FF EB 75 19
	ror $19.b,X		; 76 19
	adc [$19.b],Y		; 77 19
	sei		; 78
	ora $1979.w,Y		; 19 79 19
	ply		; 7A
	cpy #$0EF8.w		; C0 F8 0E
	bra  -8.b		; 80 F8
	ora $7F8A.w		; 0D 8A 7F
	sbc $198B19.l,X		; FF 19 8B 19
	sty $8D19.w		; 8C 19 8D
	ora $DA8E.w,Y		; 19 8E DA
	sbc $194D.w,X		; FD 4D 19
	lsr $4F19.w		; 4E 19 4F
	ora $F67C.w,Y		; 19 7C F6
	rts		; 60

	bra -93.b		; 80 A3
	ora $74A4.w,Y		; 19 A4 74
	bra  -8.b		; 80 F8
	tas		; 1B
	txs		; 9A
	ora $7FBF.w,Y		; 19 BF 7F
	txy		; 9B
	ora $199C.w,Y		; 19 9C 19
	sta $9E19.w,X		; 9D 19 9E
	phx		; DA
	sbc $195D.w,X		; FD 5D 19
	lsr $5F19.w,X		; 5E 19 5F
	ora $3E70.w,Y		; 19 70 3E
	xce		; FB
	bra -77.b		; 80 B3
	ora $74B4.w,Y		; 19 B4 74
	mvp $49,$F0		; 44 F0 49
	cmp ($18.b,X)		; C1 18
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sbc $18C318.l,X		; FF 18 C3 18
	cpy $18.b		; C4 18
	cmp $18.b		; C5 18
	dec $18.b		; C6 18
	cmp [$18.b]		; C7 18
	iny		; C8
	clc		; 18
	cmp #$CA18.w		; C9 18 CA
	sbc $CB18FF.l,X		; FF FF 18 CB
	clc		; 18
	cpy $CD18.w		; CC 18 CD
	clc		; 18
	dec $CF18.w		; CE 18 CF
	clc		; 18
	cpx #$E118.w		; E0 18 E1
	clc		; 18
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sbc $18E318.l,X		; FF 18 E3 18
	cpx $18.b		; E4 18
	sbc $18.b		; E5 18
	inc $18.b		; E6 18
	sbc [$18.b]		; E7 18
	inx		; E8
	clc		; 18
	sbc #$18.b		; E9 18
	nop		; EA
	sbc $EB18FF.l		; EF FF 18 EB
	clc		; 18
	cpx $C018.w		; EC 18 C0
	inc $18D1.w,X		; FE D1 18
	cmp ($18.b)		; D2 18
	cmp ($18.b,S),Y		; D3 18
	pei ($18.b)		; D4 18
	cmp $FF.b,X		; D5 FF
	sbc $18D618.l,X		; FF 18 D6 18
	cmp [$18.b],Y		; D7 18
	cld		; D8
	clc		; 18
	cmp $DA18.w,Y		; D9 18 DA
	clc		; 18
	stp		; DB
	clc		; 18
	jmp.w [$DD18]		; DC 18 DD
	sbc $DE18FF.l,X		; FF FF 18 DE
	clc		; 18
	cmp $18F018.l,X		; DF 18 F0 18
	sbc ($18.b),Y		; F1 18
	sbc ($18.b)		; F2 18
	sbc ($18.b,S),Y		; F3 18
	pea $F518.w		; F4 18 F5
	sbc $F618DF.l,X		; FF DF 18 F6
	clc		; 18
	sbc [$18.b],Y		; F7 18
	sed		; F8
	clc		; 18
	sbc $FA18.w,Y		; F9 18 FA
	clc		; 18
	xce		; FB
	clc		; 18
	jsr ($FFC0.w,X)		; FC C0 FF
	ora $18EDFF.l		; 0F FF ED 18
	inc $EF18.w		; EE 18 EF
	sbc ($19.b)		; F2 19
	ora ($19.b,X)		; 01 19
	cop $19.b		; 02 19
	ora $19.b,S		; 03 19
	sbc $1904FF.l,X		; FF FF 04 19
	ora $19.b		; 05 19
	asl $19.b		; 06 19
	ora [$19.b]		; 07 19
	php		; 08
	ora $1909.w,Y		; 19 09 19
	asl A		; 0A
	ora $190B.w,Y		; 19 0B 19
	inc $0CFF.w,X		; FE FF 0C
	asl $F8.b,X		; 16 F8
	jsr $18FD.w		; 20 FD 18
	inc $FF18.w,X		; FE 18 FF
	clc		; 18
	bpl  25.b		; 10 19
	ora ($19.b),Y		; 11 19
	ora ($19.b)		; 12 19
	ora ($FF.b,S),Y		; 13 FF
	cmp $19.b,S		; C3 19
	trb $19.b		; 14 19
	ora $19.b,X		; 15 19
	asl $19.b,X		; 16 19
	ora [$19.b],Y		; 17 19
	clc		; 18
	ora $1AFF.w,Y		; 19 FF 1A
	eor [$05.b],Y		; 57 05
	ora $191B.w,Y		; 19 1B 19
	trb $F0D6.w		; 1C D6 F0
	lsr A		; 4A
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	trb $00.b		; 14 00
	beq   0.b		; F0 00
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
	inc $9EF8.w,X		; FE F8 9E
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
	sbc $01BEF8.l,X		; FF F8 BE 01
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	sbc [$00.b],Y		; F7 00
	sbc $0C46F8.l,X		; FF F8 46 0C
	brk $0B.b		; 00 0B
	tsb $12.b		; 04 12
	tsb $0A15.w		; 0C 15 0A
	inc $09F8.w		; EE F8 09
	tsb $00.b		; 04 00
	tda		; 7B
	cmp ($0D.b,X)		; C1 0D
	brk $0E.b		; 00 0E
	jmp.w [$0CF8]		; DC F8 0C
	sta ($00.b,X)		; 81 00
	.db $42, $CA		; 42 CA
	sed		; F8
	asl $FFEE.w		; 0E EE FF
	jsr ($170F.w,X)		; FC 0F 17
	jsr $5000.w		; 20 00 50
	brk $B0.b		; 00 B0
	jsr ($9020.w,X)		; FC 20 90
	rts		; 60

	inc $FE.b		; E6 FE
	lsr $EEFD.w,X		; 5E FD EE
	rti		; 40

	brk $A0.b		; 00 A0
	brk $F1.b		; 00 F1
	sbc $FCF8FF.l,X		; FF FF F8 FC
	sbc $149BF8.l,X		; FF F8 9B 14
	phd		; 0B
	tsb $0B.b		; 04 0B
	and $020D1D.l,X		; 3F 1D 0D 02
	asl A		; 0A
	tsb $04.b		; 04 04
	brk $08.b		; 00 08
	inc $0F01.w,X		; FE 01 0F
	brk $FE.b		; 00 FE
	php		; 08
	inc $0006.w,X		; FE 06 00
	ora $00.b		; 05 00
	ora $00.b,S		; 03 00
	ora [$FE.b]		; 07 FE
	lda [$FF.b]		; A7 FF
	inc $BC.b,X		; F6 BC
	brk $C1.b		; 00 C1
	cmp $0265.w,Y		; D9 65 02
	bra   0.b		; 80 00
	bvs  64.b		; 70 40
	lda $FF28.w,Y		; B9 28 FF
	sbc $0043D9.l,X		; FF D9 43 00
	rol $FF00.w,X		; 3E 00 FF
	brk $9F.b		; 00 9F
	brk $7F.b		; 00 7F
	brk $BF.b		; 00 BF
	bmi 110.b		; 30 6E
	pha		; 48
	ror $E1FF.w,X		; 7E FF E1
	pha		; 48
	bcs  64.b		; B0 40
	bmi -64.b		; 30 C0
	beq   0.b		; F0 00
	bmi   0.b		; 30 00
	bpl  -2.b		; 10 FE
	cpx #$DF90.w		; E0 90 DF
	sed		; F8
	rts		; 60

	bpl -16.b		; 10 F0
	rts		; 60

	brk $E0.b		; 00 E0
	tsb $F1.b		; 04 F1
	cpy #$40FA.w		; C0 FA 40
	rti		; 40

	ldy #$DB6B.w		; A0 6B DB
	jsr $A0A0.w		; 20 A0 A0
	lda $F0.b,S		; A3 F0
	jsr ($F8FF.w,X)		; FC FF F8
	sty $FF.b		; 84 FF
	jsr ($0FFD.w,X)		; FC FD 0F
	phy		; 5A
	sbc ($80.b),Y		; F1 80
	php		; 08
	cpx #$FF11.w		; E0 11 FF
	sbc $06CE04.l,X		; FF 04 CE 06
	and $00C303.l,X		; 3F 03 C3 00
	adc $028701.l,X		; 7F 01 87 02
	ora $081807.l		; 0F 07 18 08
	ora $B1.b,S		; 03 B1
	sbc $EA0100.l,X		; FF 00 01 EA
	bit $FDE2.w,X		; 3C E2 FD
	ora [$00.b]		; 07 00
	php		; 08
	sbc $F900.w,Y		; F9 00 F9
	bcc -16.b		; 90 F0
	sbc $C0C8E0.l,X		; FF E0 C8 C0
	cmp $F8.b		; C5 F8
	tda		; 7B
	sbc $FCFEC0.l,X		; FF C0 FE FC
	asl $2E08.w,X		; 1E 08 2E
	eor $1F08FA.l,X		; 5F FA 08 1F
	ora ($7F.b)		; 12 7F
	brk $3A.b		; 00 3A
	cpx #$FFD9.w		; E0 D9 FF
	clc		; 18
	beq  31.b		; F0 1F
	beq  63.b		; F0 3F
	adc $2FB078.l,X		; 7F 78 B0 2F
	bmi  96.b		; 30 60
	rti		; 40

	cpy #$60F0.w		; C0 F0 60
	jsr $20A0.w		; 20 A0 20
	eor [$14.b]		; 47 14
	jsr $96F4.w		; 20 F4 96
	inc $F6D6.w,X		; FE D6 F6
	ror $F556.w,X		; 7E 56 F5
	jsr ($9E70.w,X)		; FC 70 9E
	cmp $FEFF.w,Y		; D9 FF FE
	ply		; 7A
	sed		; F8
	ora ($FF.b),Y		; 11 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	rts		; 60

	ora ($00.b,X)		; 01 00
	sbc $0103A0.l,X		; FF A0 03 01
	asl $02.b		; 06 02
	tsb $0804.w		; 0C 04 08
	brk $18.b		; 00 18
	sbc $F8EC.w,X		; FD EC F8
	ora #$B6DF.w		; 09 DF B6
	asl $30E3.w,X		; 1E E3 30
	bpl -32.b		; 10 E0
	jsr $6F80.w		; 20 80 6F
	sbc [$3E.b],Y		; F7 3E
	phx		; DA
	sbc #$4C1F.w		; E9 1F 4C
	sbc ($FF.b),Y		; F1 FF
	and $FDFE0C.l,X		; 3F 0C FE FD
	cmp ($00.b,X)		; C1 00
	ror $3E7C.w,X		; 7E 7C 3E
	bit $1EFE.w,X		; 3C FE 1E
	trb $0B43.w		; 1C 43 0B
	inc $080C.w,X		; FE 0C 08
	inc $443C.w,X		; FE 3C 44
	sbc ($C0.b),Y		; F1 C0
	jsl $7551E3.l		; 22 E3 51 75
	inc $FEF0.w,X		; FE F0 FE
	tsb $FFF4.w		; 0C F4 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	stz $D168.w,X		; 9E 68 D1
	bpl  32.b		; 10 20
	adc ($6D.b),Y		; 71 6D
	ror $FED1.w		; 6E D1 FE
	jsr $6C40.w		; 20 40 6C
	cmp ($20.b,X)		; C1 20
	cmp ($1F.b)		; D2 1F
	inc $3FFD.w,X		; FE FD 3F
	jsr ($FEE1.w,X)		; FC E1 FE
	adc ($20.b,X)		; 61 20
	cmp $C0.b,S		; C3 C0
	.db $82, $80, $FE		; 82 80 FE
	tsb $00.b		; 04 00
	lda $0105F1.l,X		; BF F1 05 01
	ora $00.b		; 05 00
	ora #$9E00.w		; 09 00 9E
	tsb $E1.b		; 04 E1
	adc $FBFE.w,X		; 7D FE FB
	brk $F8.b		; 00 F8
	sbc $F6FEFA.l,X		; FF FA FE F6
	brk $82.b		; 00 82
	brk $3D.b		; 00 3D
	bit $427E.w,X		; 3C 7E 42
	sbc ($A0.b)		; F2 A0
	sbc ($0F.b),Y		; F1 0F
	eor [$20.b],Y		; 57 20
	sed		; F8
	bmi  -8.b		; 30 F8
	bne  -2.b		; D0 FE
	jmp ($C200.w,X)		; 7C 00 C2
	asl A		; 0A
	cmp ($DC.b,X)		; C1 DC
	phx		; DA
	plb		; AB
	cpx #$F8FF.w		; E0 FF F8
	ora #$2E80.w		; 09 80 2E
	cpx #$1EFC.w		; E0 FC 1E
	cpx #$2A85.w		; E0 85 2A
	sbc ($FC.b)		; F2 FC
	sbc $6011F8.l,X		; FF F8 11 60
	sbc $24201F.l,X		; FF 1F 20 24
	tsb $24.b		; 04 24
	brk $F2.b		; 00 F2
	bpl  -7.b		; 10 F9
	php		; 08
	jsr ($FF04.w,X)		; FC 04 FF
	ora ($FF.b,X)		; 01 FF
	adc $F3.b,S		; 63 F3
	phx		; DA
	tas		; 1B
	inc $260D.w,X		; FE 0D 26
	cmp ($03.b,X)		; C1 03
	cpx #$FF0B.w		; E0 0B FF
	ora $0A0B02.l		; 0F 02 0B 0A
	ora ($02.b,S),Y		; 13 02
	and [$14.b],Y		; 37 14
	cmp $161F08.l		; CF 08 1F 16
	sbc $E6F1C0.l,X		; FF C0 F1 E6
	cpx #$FEF4.w		; E0 F4 FE
	cpx $C800.w		; EC 00 C8
	pei ($C9.b)		; D4 C9
	cpx #$E9E0.w		; E0 E0 E9
	lda [$A8.b],Y		; B7 A8
	bra  -2.b		; 80 FE
	lda $58FF80.l		; AF 80 FF 58
	sbc $DAEE60.l,X		; FF 60 EE DA
	bvc  30.b		; 50 1E
	eor ($FE.b,X)		; 41 FE
	sbc $F8FF.w,X		; FD FF F8
	ora $00F0.w		; 0D F0 00
	inc $FCE4.w,X		; FE E4 FC
	cpy $05FC.w		; CC FC 05
	brk $FF.b		; 00 FF
	sed		; F8
	phd		; 0B
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp [$FF.b]		; C7 FF
	brk $00.b		; 00 00
	ora ($FE.b,X)		; 01 FE
	ora [$00.b]		; 07 00
	ora #$0F06.w		; 09 06 0F
	ora $60020E.l		; 0F 0E 02 60
	tsb $03.b		; 04 03
	sbc ($FF.b),Y		; F1 FF
	sbc $FE06.w,X		; FD 06 FE
	inx		; E8
	sed		; F8
	sbc $E7F0F0.l,X		; FF F0 F0 E7
	sbc $9CFF96.l,X		; FF 96 FF 9C
	and [$DA.b]		; 27 DA
	sbc $0927.w,X		; FD 27 09
	sbc $FFFFFF.l,X		; FF FF FF FF
	dec $007E.w,X		; DE 7E 00
	.db $42, $00		; 42 00
	stx $00.b		; 86 00
	dey		; 88
	brk $12.b		; 00 12
	brk $21.b		; 00 21
	brk $C1.b		; 00 C1
	brk $33.b		; 00 33
	stx $CC.b		; 86 CC
	brk $80.b		; 00 80
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	ora $C5.b,S		; 03 C5
	lda ($11.b,X)		; A1 11
	ora $07.b		; 05 07
	tsx		; BA
	ora [$BF.b]		; 07 BF
	sbc $EC02.w,X		; FD 02 EC
	inx		; E8
	sbc $9AF8C0.l,X		; FF C0 F8 9A
	sty $26.b		; 84 26
	jmp.w [$8CAE]		; DC AE 8C
	ldx $BB74.w		; AE 74 BB
	adc [$FF.b],Y		; 77 FF
	sbc $7AC8FF.l,X		; FF FF C8 7A
	pei ($AC.b)		; D4 AC
	bvs -124.b		; 70 84
	brk $DC.b		; 00 DC
	brk $8C.b		; 00 8C
	bvs   4.b		; 70 04
	sed		; F8
	ora [$F8.b]		; 07 F8
	sbc $30C0FF.l		; EF FF C0 30
	mvn $30,$20		; 54 20 30
	cpy #$24F8.w		; C0 F8 24
	stx $76AC.w		; 8E AC 76
	jsr ($FF73.w,X)		; FC 73 FF
	eor $FE3AF8.l		; 4F F8 3A FE
	sbc [$F4.b],Y		; F7 F4
	cpy #$50FD.w		; C0 FD 50
	tsb $20.b		; 04 20
	ora [$30.b]		; 07 30
	bra  64.b		; 80 40
	stz $00.b,X		; 74 00
	cpy #$26F8.w		; C0 F8 26
	sty $BF66.w		; 8C 66 BF
	beq  36.b		; F0 24
	adc ($37.b,S),Y		; 73 37
	eor $FC3A88.l		; 4F 88 3A FC
	cpy #$FAFC.w		; C0 FC FA
	jmp.w [$CFF8]		; DC F8 CF
	sbc [$2F.b],Y		; F7 2F
	sed		; F8
	beq 112.b		; F0 70
	jmp ($F8C0.w,X)		; 7C C0 F8
	rol $AE.b		; 26 AE
	ldy $7CFE.w		; AC FE 7C
	xce		; FB
	adc $F8807F.l,X		; 7F 7F 80 F8
	asl A		; 0A
	trb $2A.b		; 14 2A
	lsr $47.b		; 46 47
	bra  -1.b		; 80 FF
	cmp $FE05.w		; CD 05 FE
	sed		; F8
	asl A		; 0A
	bcs -14.b		; B0 F2
	cpy $EEF8.w		; CC F8 EE
	cop $01.b		; 02 01
	inc $DFC0.w,X		; FE C0 DF
	ora #$FFF9.w		; 09 F9 FF
	sbc $1ECB0F.l,X		; FF 0F CB 1E
	cmp $C49B47.l,X		; DF 47 9B C4
	ora ($C0.b,X)		; 01 C0
	ldy $F860.w,X		; BC 60 F8
	brk $09.b		; 00 09
	brk $CF.b		; 00 CF
	sbc $3E0007.l,X		; FF 07 00 3E
	cpy #$C027.w		; C0 27 C0
	bit $C0.b		; 24 C0
	asl $03E0.w,X		; 1E E0 03
	jsr ($7D03.w,X)		; FC 03 7D
	sbc ($FF.b,X)		; E1 FF
	sbc $0A80F8.l,X		; FF F8 80 0A
	asl A		; 0A
	brk $14.b		; 00 14
	brk $28.b		; 00 28
	brk $D0.b		; 00 D0
	bra -32.b		; 80 E0
	cpy #$5FF8.w		; C0 F8 5F
	cpy #$0CF2.w		; C0 F2 0C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	jsl $05F8F1.l		; 22 F1 F8 05
	sbc $783088.l,X		; FF 88 30 78
	sec		; 38
	bmi  16.b		; 30 10
	cmp ($F8.b)		; D2 F8
	ora #$E9E8.w		; 09 E8 E9
	sbc $0AF8F3.l,X		; FF F3 F8 0A
	rep #$03		; C2 03
	ora $000F01.l		; 0F 01 0F 00
	ora [$08.b],Y		; 17 08
	bit $5810.w		; 2C 10 58
	and $B0200C.l		; 2F 0C 20 B0
	rti		; 40

	rts		; 60

	bra -65.b		; 80 BF
	sbc ($BF.b,S),Y		; F3 BF
	rol $1000.w,X		; 3E 00 10
	asl $26.b		; 06 26
	ora ($F0.b,S),Y		; 13 F0
	tyx		; BB
	sed		; F8
	bcs  -7.b		; B0 F9
	eor ($FF.b)		; 52 FF
	clv		; B8
	sbc $F8C2FE.l,X		; FF FE C2 F8
	ora $FCC0.w		; 0D C0 FC
	ora $0C.b,S		; 03 0C
	ora #$101E.w		; 09 1E 10
	bit $8607.w,X		; 3C 07 86
	jsr $4078.w		; 20 78 40
	beq 125.b		; F0 7D
	cpy #$ABDB.w		; C0 DB AB
	cmp ($20.b)		; D2 20
	brk $40.b		; 00 40
	cmp #$C0FC.w		; C9 FC C0
	sed		; F8
	bit $AA.b		; 24 AA
	sbc ($CD.b),Y		; F1 CD
	inc $0CC0.w,X		; FE C0 0C
	sbc $1E1CFD.l,X		; FF FD 1C 1E
	rol $7C3C.w,X		; 3E 3C 7C
	sei		; 78
	sed		; F8
	beq -16.b		; F0 F0
	cpx #$F880.w		; E0 80 F8
	bit $1F.b		; 24 1F
	tsb $1C3E.w		; 0C 3E 1C
	cmp [$02.b]		; C7 02
	jmp ($F838.w,X)		; 7C 38 F8
	bvs -47.b		; 70 D1
	cpy #$E0FE.w		; C0 FE E0
	ora #$58FF.w		; 09 FF 58
	ora ($B0.b),Y		; 11 B0
	bra  -8.b		; 80 F8
	and ($04.b,X)		; 21 04
	cld		; D8
	sbc #$F7BE.w		; E9 BE F7
	jmp ($F7FA.w,X)		; 7C FA F7
	cpy #$BE01.w		; C0 01 BE
	beq  10.b		; F0 0A
	cpy #$7100.w		; C0 00 71
	brk $32.b		; 00 32
	brk $FC.b		; 00 FC
	bne  -8.b		; D0 F8
	asl A		; 0A
	stx $08.b		; 86 08
	asl A		; 0A
	brk $CC.b		; 00 CC
	ora $0CF0.w		; 0D F0 0C
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	adc $F8FF00.l,X		; 7F 00 FF F8
	jsl $050003.l		; 22 03 00 05
	ora $0B.b,S		; 03 0B
	ora [$17.b]		; 07 17
	ora $2F0F1F.l		; 0F 1F 0F 2F
	ora $EFF87F.l,X		; 1F 7F F8 EF
	sbc $0107.w,X		; FD 07 01
	ora $071F03.l		; 0F 03 1F 07
	inc $3F3F.w,X		; FE 3F 3F
	brk $DD.b		; 00 DD
	tsa		; 3B
	sty $3E.b		; 84 3E
	adc $FCFFFF.l,X		; 7F FF FF FC
	sbc $FCFE.w,X		; FD FE FC
	brk $EF.b		; 00 EF
	and $FFFC.w,X		; 3D FC FF
	and $F0FDF0.l,X		; 3F F0 FD F0
	sbc $00F0CF.l,X		; FF CF F0 00
	cpy #$B000.w		; C0 00 B0
	cpy #$11FF.w		; C0 FF 11
	inx		; E8
	beq  -4.b		; F0 FC
	sed		; F8
	plx		; FA
	jsr ($3CDE.w,X)		; FC DE 3C
	ldx $C2C4.w,Y		; BE C4 C2
	asl $EF1F.w		; 0E 1F EF
	beq -64.b		; F0 C0
	sed		; F8
	sbc $08FE38.l		; EF 38 FE 08
	inc $8C00.w,X		; FE 00 8C
	cmp ($FE.b,X)		; C1 FE
	sbc $FE01FF.l,X		; FF FF 01 FE
	cop $FD.b		; 02 FD
	sbc $7F0DF8.l		; EF F8 0D 7F
	plp		; 28
	ora $3F.b,S		; 03 3F
	ora $7F3F5F.l,X		; 1F 5F 3F 7F
	and $7F9DBF.l,X		; 3F BF 9D 7F
	txs		; 9A
	jsr ($000C.w,X)		; FC 0C 00
	stx $7F1F.w		; 8E 1F 7F
	inc $A89E.w,X		; FE 9E A8
	adc $98EDFE.l		; 6F FE ED 98
	sbc $FE82.w,X		; FD 82 FE
	sbc [$F9.b],Y		; F7 F9
	sbc $F8F0E7.l,X		; FF E7 F0 F8
	ora #$7CFC.w		; 09 FC 7C
	plx		; FA
	bra -29.b		; 80 E3
	sbc $F4F8F7.l,X		; FF F7 F8 F4
	cmp $9D63E3.l,X		; DF E3 63 9D
	sbc $38.b,S		; E3 38
	inc $F97F.w,X		; FE 7F F9
	rts		; 60

	cpx #$FBFF.w		; E0 FF FB
	sbc $888CC1.l,X		; FF C1 8C 88
	pla		; 68
	sbc $50E03C.l,X		; FF 3C E0 50
	and $E0711C.l,X		; 3F 1C 71 E0
	bra -32.b		; 80 E0
	cpy #$E0F0.w		; C0 F0 E0
	inc $00F8.w,X		; FE F8 00
	inc $84.b		; E6 84
	ora $FFEFFD.l,X		; 1F FD EF FF
	phy		; 5A
	brk $F8.b		; 00 F8
	bra  -2.b		; 80 FE
	ora $01.b,S		; 03 01
	.db $62, $01, $04		; 62 01 04
	ora [$02.b]		; 07 02
	ora $EFFE00.l		; 0F 00 FE EF
	brk $C0.b		; 00 C0
	tsb $EF.b		; 04 EF
	cop $EF.b		; 02 EF
	brk $F9.b		; 00 F9
	jmp $0FFA.w		; 4C FA 0F
	ora $AE.b,X		; 15 AE
	sbc $F00BF8.l,X		; FF F8 0B F0
	sed		; F8
	phd		; 0B
	lda $D67FDF.l,X		; BF DF 7F D6
	cmp ($BF.b,X)		; C1 BF
	cpx $F8.b		; E4 F8
	phd		; 0B
	sta $FFF7E2.l		; 8F E2 F7 FF
	jsr ($E0DF.w,X)		; FC DF E0
	cli		; 58
	sbc $EC0BF8.l,X		; FF F8 0B EC
	tas		; 1B
	bra 106.b		; 80 6A
	sbc $7B09F8.l,X		; FF F8 09 7B
	jsr ($03FD.w,X)		; FC FD 03
	beq  -8.b		; F0 F8
	phd		; 0B
	bmi -11.b		; 30 F5
	eor $F8FF46.l,X		; 5F 46 FF F8
	phd		; 0B
	ldx #$FCF2.w		; A2 F2 FC
	beq  -6.b		; F0 FA
	jsr ($CEB5.w,X)		; FC B5 CE
	inc $80F1.w		; EE F1 80
	sbc ($21.b,S),Y		; F3 21
	jmp $F2A2.w		; 4C A2 F2
	sbc $C0DAFE.l		; EF FE DA C0
	sbc $054186.l,X		; FF 86 41 05
	lda ($F0.b),Y		; B1 F0
	ora #$2980.w		; 09 80 29
	brk $D0.b		; 00 D0
	sbc $F8EF.w,X		; FD EF F8
	ora $1270.w		; 0D 70 12
	trb $F793.w		; 1C 93 F7
	cop $01.b		; 02 01
	trb $82.b		; 14 82
	beq  10.b		; F0 0A
	trb $0A.b		; 14 0A
	pea $F118.w		; F4 18 F1
	.db $82, $F0, $0D		; 82 F0 0D
	sbc $F0820F.l,X		; FF 0F 82 F0
	asl A		; 0A
	rep #$0B		; C2 0B
	inc $F816.w,X		; FE 16 F8
	phd		; 0B
	.db $82, $F6, $F9		; 82 F6 F9
	tyx		; BB
	cmp [$F0.b]		; C7 F0
	sed		; F8
	ora #$02F7.w		; 09 F7 02
	.db $82, $E0, $FF		; 82 E0 FF
	ora ($EE.b,X)		; 01 EE
	sbc [$BF.b],Y		; F7 BF
	cpy #$07CF.w		; C0 CF 07
	sed		; F8
	asl A		; 0A
	cpx $80.b		; E4 80
	adc ($60.b,X)		; 61 60
	and #$FEAC.w		; 29 AC FE
	jsr ($80F6.w,X)		; FC F6 80
	sta $331763.l,X		; 9F 63 17 33
	beq  10.b		; F0 0A
	beq -30.b		; F0 E2
	ora [$B2.b]		; 07 B2
	beq  11.b		; F0 0B
	brk $1F.b		; 00 1F
	tya		; 98
	sed		; F8
	asl A		; 0A
	iny		; C8
	plp		; 28
	tax		; AA
	cpy $FF.b		; C4 FF
	sed		; F8
	ora #$E00F.w		; 09 0F E0
	stx $F0.b		; 86 F0
	phd		; 0B
	bra -80.b		; 80 B0
	sbc ($FE.b,S),Y		; F3 FE
	ldy $F0F6.w		; AC F6 F0
	inc $FFF0.w		; EE F0 FF
	ora $1FF1EA.l,X		; 1F EA F1 1F
	ora $F7EFEF.l,X		; 1F EF EF F7
	lda $FB77F7.l,X		; BF F7 77 FB
	sbc $FEC0FB.l,X		; FF FB C0 FE
.INDEX 8
	sep #$DF		; E2 DF
	sty $0E.b		; 84 0E
	ldx #$87.b		; A2 87
	sbc $73FFA3.l,X		; FF A3 FF 73
	sbc $F1E0F1.l,X		; FF F1 E0 F1
	lda $008000.l,X		; BF 00 80 00
	rts		; 60

	bra -48.b		; 80 D0
	cpx #$EC.b		; E0 EC
	ldy $D6F1.w,X		; BC F1 D6
	asl $D0.b,X		; 16 D0
	cmp $E8.b,X		; D5 E8
	pea $BC80.w		; F4 80 BC
	sbc ($78.b,S),Y		; F3 78
	cli		; 58
	sbc $920CF8.l,X		; FF F8 0C 92
	sta [$C0.b]		; 87 C0
	sbc $E0.b		; E5 E0
	ora $E9EEEF.l		; 0F EF EE E9
	cop $0F.b		; 02 0F
	asl $FE.b		; 06 FE
	sta $F1.b,S		; 83 F1
	adc $FE8F74.l,X		; 7F 74 8F FE
	sbc ($E4.b,X)		; E1 E4
	asl $FE.b		; 06 FE
	asl $E100.w		; 0E 00 E1
	beq 117.b		; F0 75
	bvs  -2.b		; 70 FE
	ora [$FB.b]		; 07 FB
	tsa		; 3B
	dey		; 88
	sbc $17EFDF.l		; EF DF EF 17
	inc $DFAF.w,X		; FE AF DF
	eor $F2B8BF.l,X		; 5F BF B8 F2
	pei ($73.b)		; D4 73
	ora $E71F63.l		; 0F 63 1F E7
	ora $CFE107.l,X		; 1F 07 E1 CF
	and $2A7F8F.l,X		; 3F 8F 7F 2A
	sbc $9BF1.w		; ED F1 9B
	sbc $0E10FF.l		; EF FF 10 0E
	cmp $FADDFE.l,X		; DF FE DD FA
	xba		; EB
	xba		; EB
	sbc [$D0.b],Y		; F7 D0
	adc $5A.b,S		; 63 5A
	jsl $E1CAC7.l		; 22 C7 CA E1
	sta $09FF.w		; 8D FF 09
	trb $6C83.w		; 1C 83 6C
	sty $DFFE.w		; 8C FE DF
	dex		; CA
	sbc ($F9.b,S),Y		; F3 F9
	rol $E7.b,X		; 36 E7
	bit $FA29.w		; 2C 29 FA
	ora ($DE.b)		; 12 DE
	sbc ($F0.b,S),Y		; F3 F0
	and $EB.b		; 25 EB
	stz $46EA.w		; 9C EA 46
	eor ($BF.b,X)		; 41 BF
	adc $FCFFFA.l		; 6F FA FF FC
	txy		; 9B
	beq  -8.b		; F0 F8
	ora $E10F.w		; 0D 0F E1
	sbc $CB1DF8.l,X		; FF F8 1D CB
	sbc $093F.w,X		; FD 3F 09
	sbc $F2B6.w,X		; FD B6 F2
	sbc $F8FF.w,X		; FD FF F8
	pea $E4FB.w		; F4 FB E4
	xce		; FB
	inx		; E8
	sbc [$C9.b],Y		; F7 C9
	sbc $F0A838.l,X		; FF 38 A8 F0
	jsr ($BFE3.w,X)		; FC E3 BF
	sbc $F7E7FB.l,X		; FF FB E7 F7
	cmp [$F7.b]		; C7 F7
	cpy $BCEC.w		; CC EC BC
	sbc ($FC.b)		; F2 FC
	sbc $74FDFA.l,X		; FF FA FD 74
	xce		; FB
	php		; 08
	phd		; 0B
	sbc $7F80F7.l,X		; FF F7 80 7F
	sta [$F2.b],Y		; 97 F2
	sbc ($F8.b)		; F2 F8
	jsr ($FB73.w,X)		; FC 73 FB
	ora [$77.b]		; 07 77
	ora $6FFFFF.l		; 0F FF FF 6F
	sta $1F1FAF.l		; 8F AF 1F 1F
	ldy #$C0.b		; A0 C0
	brk $FC.b		; 00 FC
	sty $0773.w		; 8C 73 07
	sed		; F8
	ora ($FE.b,X)		; 01 FE
	cop $B0.b		; 02 B0
	cpx #$FD.b		; E0 FD
	dec $EE11.w,X		; DE 11 EE
	ldy $EFE9.w		; AC E9 EF
	sta ($F3.b,X)		; 81 F3
	inc $FEAF.w,X		; FE AF FE
	inc $F9F9.w,X		; FE F9 F9
	sbc [$F7.b],Y		; F7 F7
	cmp ($F0.b)		; D2 F0
	tsb $E22E.w		; 0C 2E E2
	sbc $020EF8.l,X		; FF F8 0E 02
	adc $3D0A.w,X		; 7D 0A 3D
	asl A		; 0A
	sbc $1C7DF0.l,X		; FF F0 7D 1C
	adc $19FF1C.l,X		; 7F 1C FF 19
	sbc $FE7F39.l,X		; FF 39 7F FE
	cop $02.b		; 02 02
	inc A		; 1A
	ora $3A025F.l,X		; 1F 5F 02 3A
	cop $3C.b		; 02 3C
	ora ($7C.b,X)		; 01 7C
	inc $81FC.w,X		; FE FC 81
	sbc $1C81.w,X		; FD 81 1C
	cpx #$0D.b		; E0 0D
	adc ($75.b)		; 72 75
	jsl $0DF8EE.l		; 22 EE F8 0D
	sbc [$EF.b],Y		; F7 EF
	cpy #$F1.b		; C0 F1
	inc $C1FD.w,X		; FE FD C1
	sbc ($EF.b),Y		; F1 EF
	sta [$C1.b]		; 87 C1
	asl $26.b,X		; 16 26
	sbc ($FE.b),Y		; F1 FE
	dec $F2.b		; C6 F2
	sta ($B4.b,X)		; 81 B4
	sbc ($C0.b,X)		; E1 C0
	tsb $F8.b		; 04 F8
	trb $1EB4.w		; 1C B4 1E
	ldx $74.b,Y		; B6 74
	cpx #$0D.b		; E0 0D
	dec A		; 3A
	cpx #$0F.b		; E0 0F
	sed		; F8
	cpy #$F8.b		; C0 F8
	asl A		; 0A
	sta $DCFC.w,X		; 9D FC DC
	sbc $058CFB.l,X		; FF FB 8C 05
	stx $F186.w		; 8E 86 F1
	cmp [$9C.b]		; C7 9C
	ora [$5E.b]		; 07 5E
	sbc ($15.b),Y		; F1 15
	and $CCFC.w		; 2D FC CC
	sed		; F8
	ora $F8B0.w		; 0D B0 F8
	ora $FF531F.l		; 0F 1F 53 FF
	ldy $E3.b,X		; B4 E3
	jsr ($F7C8.w,X)		; FC C8 F7
	sta ($FA.b),Y		; 91 FA
	and $EC10EE.l		; 2F EE 10 EC
	stz $D9.b		; 64 D9
	jsr ($F3C3.w,X)		; FC C3 F3
	sta $DF1FEF.l		; 8F EF 1F DF
	inx		; E8
	asl $C0F1.w		; 0E F1 C0
	sbc $01E6FC.l,X		; FF FC E6 01
	inc $4BB4.w,X		; FE B4 4B
	and $12D2.w		; 2D D2 12
	sbc $FFCB.w		; ED CB FF
	sbc $E6C6EB.l,X		; FF EB C6 E6
	ora $0BED.w		; 0D ED 0B
	xba		; EB
	ora $43.b,S		; 03 43
	ldy $B4.b,X		; B4 B4
	adc $DB6D.w		; 6D 6D DB
	stp		; DB
	cpy #$FF.b		; C0 FF
	sbc $DF203F.l,X		; FF 3F 20 DF
	ldy #$5F.b		; A0 5F
	bcs  79.b		; B0 4F
	bmi -113.b		; 30 8F
	ora #$26E6.w		; 09 E6 26
	cmp ($40.b),Y		; D1 40
	lda $C7DF.w,Y		; B9 DF C7
	sbc $3F3FDF.l,X		; FF DF 3F 3F
	lda $7F7FFF.l,X		; BF FF 7F 7F
	ora $EEEE1F.l,X		; 1F 1F EE EE
	dec $C6.b		; C6 C6
	sbc $DB2401.l,X		; FF 01 24 DB
	lsr A		; 4A
	lda $10.b,X		; B5 10
	sbc $00BF40.l		; EF 40 BF 00
	sbc $7E1ED8.l,X		; FF D8 1E 7E
	plx		; FA
	rti		; 40

	and $CCECEC.l,X		; 3F EC EC CC
	lda [$B7.b],Y		; B7 B7
	adc $5F5F6F.l		; 6F 6F 5F 5F
	bvc -100.b		; 50 9C
	cld		; D8
	phk		; 4B
.ACCU 8
.INDEX 8
	sep #$38		; E2 38
	sbc $FE.b		; E5 FE
	cop $01.b		; 02 01
	bit $19.b,X		; 34 19
	inc $F47B.w,X		; FE 7B F4
	adc [$F3.b],Y		; 77 F3
	cop $FE.b		; 02 FE
	sty $1BF2.w		; 8C F2 1B
	dec $70.b		; C6 70
	inc $19BF.w,X		; FE BF 19
	inc $FE09.w,X		; FE 09 FE
	cmp $4E83F9.l,X		; DF F9 83 4E
	sbc $FE43FE.l		; EF FE 43 FE
	sbc $FD41.w,X		; FD 41 FD
	and ($B2.b,X)		; 21 B2
	bne   9.b		; D0 09
	sbc $FFEF.w,X		; FD EF FF
	inc $FEF9.w,X		; FE F9 FE
	plx		; FA
	sbc $FFF0.w,X		; FD F0 FF
	jsr ($FCFD.w,X)		; FC FD FC
	sbc $FAF8.w,Y		; F9 F8 FA
	sed		; F8
	sbc $FFE1F7.l		; EF F7 E1 FF
	xba		; EB
	sbc [$40.b],Y		; F7 40
	cmp $FC.b,S		; C3 FC
	tsb $FB.b		; 04 FB
	pla		; 68
	sta [$A1.b],Y		; 97 A1
	lsr $1FE0.w,X		; 5E E0 1F
	inc $C03F.w,X		; FE 3F C0
	cpy $80F1.w		; CC F1 80
	jsr ($FB03.w,X)		; FC 03 FB
	ora [$87.b]		; 07 87
	adc $0FAF0F.l		; 6F 0F AF 0F
	inc $FD0E.w		; EE 0E FD
	lda $FF0CD4.l,X		; BF D4 0C FF
	cmp ($3E.b,X)		; C1 3E
	dey		; 88
	eor [$10.b],Y		; 57 10
	lda $20BF00.l		; AF 00 BF 20
	eor $62003F.l,X		; 5F 3F 00 62
	sep #$00		; E2 00
	asl $C1C1.w,X		; 1E C1 C1
	lda $FF5EAF.l		; AF AF 5E FF
	sed		; F8
	tsa		; 3B
	sec		; 38
	bit $FFD3.w		; 2C D3 FF
	tya		; 98
	adc [$02.b]		; 67 02
	sbc $4C01.w,X		; FD 01 4C
	cmp $F708.w,Y		; D9 08 F7
	ora $07E0FE.l		; 0F FE E0 07
	sed		; F8
	sta $35.b,X		; 95 35
	sbc ($E7.b,X)		; E1 E7
	sbc [$E8.b]		; E7 E8
	inx		; E8
	cmp ($FF.b,S),Y		; D3 FF
	and $FE81FC.l,X		; 3F FC 81 FE
	asl $1EF1.w		; 0E F1 1E
	sbc ($05.b,X)		; E1 05
	plx		; FA
	ora $AEE2.w,X		; 1D E2 AE
	eor ($06.b),Y		; 51 06
	sbc $FFFC.w,Y		; F9 FC FF
	ldx $01.b		; A6 01
	sbc ($0E.b),Y		; F1 0E
	inc $DE1E.w		; EE 1E DE
	ora $C5.b		; 05 C5
	ora $BE5D.w,X		; 1D 5D BE
	ldx $C37E.w,Y		; BE 7E C3
	cmp ($7E.b,S),Y		; D3 7E
	stx $087F.w		; 8E 7F 08
	bit #$76.b		; 89 76
	ora $FC.b,S		; 03 FC
	cpy #$82.b		; C0 82
	sbc $847DFF.l,X		; FF FF 7D 84
	tda		; 7B
	bra -97.b		; 80 9F
	cpx #$E6.b		; E0 E6
	sbc $1BF9.w,Y		; F9 F9 1B
	tas		; 1B
.ACCU 8
	sep #$E2		; E2 E2
	ora $FB19.w,Y		; 19 19 FB
	cmp $00.b,S		; C3 00
	xce		; FB
	sty $84.b		; 84 84
	sep #$88		; E2 88
	adc [$E4.b],Y		; 77 E4
	ora $3C.b,S		; 03 3C
	ldy $BF40.w		; AC 40 BF
	plx		; FA
	jmp $3FBB44.l		; 5C 44 BB 3F
	and $EA00C0.l,X		; 3F C0 00 EA
	sbc $C6FDFD.l,X		; FF FD FD C6
	bpl   1.b		; 10 01
	stz $7F3C.w,X		; 9E 3C 7F
.ACCU 16
	rep #$EA		; C2 EA
	stx $1F.b		; 86 1F
.ACCU 8
	sep #$60		; E2 60
	sta $7F80C2.l,X		; 9F C2 80 7F
.ACCU 16
.INDEX 16
	rep #$3D		; C2 3D
	bcs 127.b		; B0 7F
	pea $E4FF.w		; F4 FF E4
	rol $F5.b,X		; 36 F5
	and $F1.b,X		; 35 F1
	cmp $8585CF.l		; CF CF 85 85
	php		; 08
	inc $04.b,X		; F6 04
	plx		; FA
	and ($CE.b),Y		; 31 CE
	adc ($18.b,X)		; 61 18
	ora #$80F4.w		; 09 F4 80
	lda $5A.b		; A5 5A
	plx		; FA
	eor ($AC.b,S),Y		; 53 AC
	rts		; 60

	.db $82, $A4, $C4		; 82 A4 C4
	sbc $F5.b,X		; F5 F5
	ldx $7FFF.w,Y		; BE FF 7F
	clc		; 18
	tad		; 5B
	tad		; 5B
	eor ($53.b,S),Y		; 53 53
	sta ($7E.b,X)		; 81 7E
	bra 126.b		; 80 7E
	dey		; 88
	cpy $3B.b		; C4 3B
	ror $67FD.w,X		; 7E FD 67
	beq   7.b		; F0 07
	cmp ($1E.b,X)		; C1 1E
	asl A		; 0A
	adc $EC06.w,X		; 7D 06 EC
	sbc $F1.b,S		; E3 F1
	sbc $FBF8.w,X		; FD F8 FB
	cpx #$55F0.w		; E0 F0 55
	sbc [$72.b]		; E7 72
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	asl $D3.b		; 06 D3
	dex		; CA
	cpy $C9.b		; C4 C9
	ldy $D2.b,X		; B4 D2
	sbc $1A.b,S		; E3 1A
	sty $07F1.w		; 8C F1 07
	inc $060F.w,X		; FE 0F 06
	cpy $C9.b		; C4 C9
	rol $CA.b,X		; 36 CA
	ora $0FC2.w		; 0D C2 0F
	bra -17.b		; 80 EF
	inc $F712.w,X		; FE 12 F7
	asl A		; 0A
	xce		; FB
	sty $E1FD.w		; 8C FD E1
	sbc $C6C6FE.l,X		; FF FE C6 C6
	and ($7C.b,X)		; 21 7C
	ora ($7E.b),Y		; 11 7E
	bpl 126.b		; 10 7E
	php		; 08
	rol $3F84.w,X		; 3E 84 3F
	sbc $1F82DF.l,X		; FF DF 82 1F
.INDEX 16
	rep #$9F		; C2 9F
	cmp ($FB.b,X)		; C1 FB
	jsr ($FEF9.w,X)		; FC F9 FE
	sbc [$F8.b],Y		; F7 F8
	sed		; F8
	sbc $C9F67C.l,X		; FF 7C F6 C9
	inc $38FF.w,X		; FE FF 38
	ldy #$FBE9.w		; A0 E9 FB
	sed		; F8
	sbc $F7F8.w,Y		; F9 F8 F7
	beq 120.b		; F0 78
	sed		; F8
	jmp ($3BFC.w,X)		; 7C FC 3B
	sei		; 78
	sec		; 38
	and $BF78FC.l,X		; 3F FC 78 BF
	and $D0AF50.l,X		; 3F 50 AF D0
	and $A758FC.l		; 2F FC 58 A7
	inc $8F11.w		; EE 11 8F
	sbc ($01.b),Y		; F1 01
	bvs 119.b		; 70 77
	cld		; D8
	lsr $DE1E.w,X		; 5E 1E DE
	asl $3EFC.w,X		; 1E FC 3E
	inc $EEFE.w,X		; FE FE EE
	asl $0F8F.w		; 0E 8F 0F
	adc [$EF.b],Y		; 77 EF
	jsl $7D025D.l		; 22 5D 02 7D
	ora ($3F.b,X)		; 01 3F
	bit $307E.w		; 2C 7E 30
	lsr $453A.w		; 4E 3A 45
	asl $1EA1.w,X		; 1E A1 1E
	asl $C4FF.w,X		; 1E FF C4
	nop		; EA
	sbc $FF3F.w,X		; FD 3F FF
	ldx $5EBE.w,Y		; BE BE 5E
	lsr $8080.w,X		; 5E 80 80
	brk $3F.b		; 00 3F
	asl $E9.b,X		; 16 E9
	php		; 08
	sbc [$3C.b],Y		; F7 3C
	jmp ($7224.w,X)		; 7C 24 72
	sta $0FF0.w		; 8D F0 0F
	inc $07F8.w,X		; FE F8 07
	adc $F786.w,Y		; 79 86 F7
	tsb $E9.b		; 04 E9
	sta ($26.b,S),Y		; 93 26
	jmp.w [$FFF2]		; DC F2 FF
	tda		; 7B
	tda		; 7B
	sbc $FC037F.l,X		; FF 7F 03 FC
	pha		; 48
	lda [$15.b],Y		; B7 15
	sbc $23E913.l		; EF 13 E9 23
	dec $B044.w,X		; DE 44 B0
	ldx #$4D58.w		; A2 58 4D
	ldy #$FFF8.w		; A0 F8 FF
	jsl $F07878.l		; 22 78 78 F0
	beq -10.b		; F0 F6
	beq -31.b		; F0 E1
	cpx #$C0CF.w		; E0 CF C0
	lda [$A0.b]		; A7 A0
	sbc $415EC3.l,X		; FF C3 5E 41
	adc $9A.b		; 65 9A
	tsa		; 3B
	mvp $64,$DB		; 44 DB 64
	sta [$B8.b]		; 87 B8
	sbc [$B9.b],Y		; F7 B9
	sec		; 38
	sbc $4AF5FF.l,X		; FF FF F5 4A
	cmp $BA.b,X		; D5 BA
	adc $BB7D.w,X		; 7D 7D BB
	tsa		; 3B
	txy		; 9B
	tas		; 1B
	eor [$07.b]		; 47 07
	cmp [$37.b]		; C7 37
	sta [$77.b]		; 87 77
	eor ($FE.b,X)		; 41 FE
	ora $F5.b		; 05 F5
	inc $F330.w,X		; FE 30 F3
	inc $3FC0.w,X		; FE C0 3F
	cpx #$A01F.w		; E0 1F A0
	sbc $D47FE0.l,X		; FF E0 7F D4
	cpy $D195.w		; CC 95 D1
	plx		; FA
	plx		; FA
	jsr ($EDFC.w,X)		; FC FC ED
	cpx $FF15.w		; EC 15 FF
	sbc $00DA.w,X		; FD DA 00
	sta $8001.w		; 8D 01 80
	asl $C0.b		; 06 C0
	tsb $83.b		; 04 83
	sta $DFD9A1.l,X		; 9F A1 D9 DF
	bit $25.b		; 24 25
	ora $E1.b		; 05 E1
	php		; 08
	adc ($00.b)		; 72 00
	sed		; F8
	lda $FA7C80.l,X		; BF 80 7C FA
	sbc $DBCBFF.l,X		; FF FF CB DB
	brk $00.b		; 00 00
	sbc $1F10.w,Y		; F9 10 1F
	bit #$312F.w		; 89 2F 31
	dec $73.b		; C6 73
	tsb $F0.b		; 04 F0
	ora [$FB.b]		; 07 FB
	sbc $E70CC7.l,X		; FF C7 0C E7
	asl $0606.w		; 0E 06 06
	cpx #$D001.w		; E0 01 D0
	ora $38.b,S		; 03 38
	ora $F8.b,S		; 03 F8
	inc $FEFE.w,X		; FE FE FE
	beq -116.b		; F0 8C
	sbc ($2D.b),Y		; F1 2D
	sbc ($B7.b,S),Y		; F3 B7
	cmp $B43FC7.l		; CF C7 3F B4
	dex		; CA
	adc $EF779F.l		; 6F 9F 77 EF
	jmp ($F4AC.w,X)		; 7C AC F4
	sbc ($C9.b,S),Y		; F3 C9
	inc $0BF8.w,X		; FE F8 0B
	rol $CD.b		; 26 CD
	inc $0107.w,X		; FE 07 01
	ora #$6A92.w		; 09 92 6A
	asl $26.b		; 06 26
	dec $78EF.w		; CE EF 78
	sbc ($26.b)		; F2 26
	iny		; C8
	ora #$E63E.w		; 09 3E E6
	beq  -8.b		; F0 F8
	ora $A1C3.w		; 0D C3 A1
	beq -68.b		; F0 BC
	lda $F1FE.w,Y		; B9 FE F1
	rti		; 40

	sbc ($FE.b,X)		; E1 FE
	jsr ($BCFF.w,X)		; FC FF BC
	cmp $C3.b,S		; C3 C3
	sbc $FEE08F.l,X		; FF 8F E0 FE
	sta [$F0.b]		; 87 F0
	cmp $F8.b,S		; C3 F8
	inc $C3F1.w,X		; FE F1 C3
	eor $FC.b,S		; 43 FC
	clv		; B8
	inc $3FF0.w,X		; FE F0 3F
	adc $FEFF9F.l,X		; 7F 9F FF FE
	cmp $0A3FFF.l		; CF FF 3F 0A
	sbc #$FFC6.w		; E9 C6 FF
	sta $11FF.w,X		; 9D FF 11
	sbc ($9F.b,S),Y		; F3 9F
	lda $CF3F9F.l,X		; BF 9F 3F CF
	ora $2DFCC3.l,X		; 1F C3 FC 2D
	asl $08.b,X		; 16 08
	dec $00.b		; C6 00
	lda $7D00.w,X		; BD 00 7D
	tsb $E4C4.w		; 0C C4 E4
	cpx #$D9D4.w		; E0 D4 D9
	rti		; 40

	sbc $7EA405.l,X		; FF 05 A4 7E
	lsr $F0CB.w,X		; 5E CB F0
	sbc $0FF080.l,X		; FF 80 F0 0F
	cpy #$FFF8.w		; C0 F8 FF
	rol $FE55.w,X		; 3E 55 FE
	brk $3F.b		; 00 3F
	cmp $1DDCAB.l,X		; DF AB DC 1D
	sbc $0B.b,S		; E3 0B
	pea $A904.w		; F4 04 A9
	sta [$FB.b]		; 87 FB
	ora [$52.b]		; 07 52
	sbc $FD4A.w,Y		; F9 4A FD
	and $641FC0.l,X		; 3F C0 1F 64
	sbc $01F007.l,X		; FF 07 F0 01
	asl $00.b,X		; 16 00
	inc A		; 1A
	sbc $9C.b		; E5 9C
	adc $ED.b,S		; 63 ED
	sta ($81.b)		; 92 81
	ror $FABE.w,X		; 7E BE FA
	sbc [$FE.b],Y		; F7 FE
	and ($FE.b,X)		; 21 FE
	inc A		; 1A
	txs		; 9A
	trb $0DDC.w		; 1C DC 0D
	sbc $E2FC.w		; ED FC E2
	ror $FFEE.w		; 6E EE FF
	sbc $07F666.l,X		; FF 66 F6 07
	and [$83.b],Y		; 37 83
	adc $7887.w,X		; 7D 87 78
	ora ($EE.b),Y		; 11 EE
	and $A45BD0.l		; 2F D0 5B A4
	eor $BC.b,S		; 43 BC
	ora $48B7FE.l,X		; 1F FE B7 48
	adc ($9E.b,X)		; 61 9E
	cpx #$9EE3.w		; E0 E3 9E
	beq -15.b		; F0 F1
	sbc $DBDBEF.l		; EF EF DB DB
	sbc $C3C31B.l,X		; FF 1B C3 C3
	sbc [$F7.b],Y		; F7 F7
	adc $7EF16F.l		; 6F 6F F1 7E
	adc $7CFE.w,Y		; 79 FE 7C
	ora $DB.b,X		; 15 DB
	cmp $FE947F.l,X		; DF 7F 94 FE
	sbc $F9011F.l		; EF 1F 01 F9
	ora ($FD.b,X)		; 01 FD
	bit #$D1E4.w		; 89 E4 D1
	cpx #$FE7F.w		; E0 7F FE
	lsr A		; 4A
	sbc ($0E.b)		; F2 0E
	eor $BC.b		; 45 BC
	and ($C8.b),Y		; 31 C8
	ora [$FC.b]		; 07 FC
	cpx #$82FE.w		; E0 FE 82
	sbc $F166A0.l,X		; FF A0 66 F1
	beq  67.b		; F0 43
	rti		; 40

	and [$30.b],Y		; 37 30
	ora $C0.b,S		; 03 C0
	ora #$01FE.w		; 09 FE 01
	sed		; F8
	phx		; DA
	inc $209F.w,X		; FE 9F 20
	sta $413F40.l,X		; 9F 40 3F 41
	adc ($F8.b,X)		; 61 F8
	adc $34F380.l,X		; 7F 80 F3 34
	cmp [$3C.b]		; C7 3C
	sta $00DF6E.l,X		; 9F 6E DF 00
	xce		; FB
	sbc $BE00BF.l,X		; FF BF 00 BE
	txy		; 9B
	sbc ($38.b,S),Y		; F3 38
	brk $01.b		; 00 01
	cmp $08.b,S		; C3 08
	sbc $CD1DF6.l,X		; FF F6 1D CD
	tas		; 1B
	stp		; DB
	sbc $B9371F.l,X		; FF 1F 37 B9
	adc [$7D.b],Y		; 77 7D
	xce		; FB
	sbc $E7C7.w,Y		; F9 C7 E7
	cmp $E0DFF7.l,X		; DF F7 DF E0
	ora [$E0.b]		; 07 E0
	asl $25E1.w,X		; 1E E1 25
	ora $203F90.l,X		; 1F 90 3F 20
	cmp $40A0.w,X		; DD A0 40
	sbc $FB5415.l,X		; FF 15 54 FB
	jsr ($BCDC.w,X)		; FC DC BC
	plx		; FA
	jsr ($62F2.w,X)		; FC F2 62
	beq  14.b		; F0 0E
	ldy #$0CC0.w		; A0 C0 0C
	brk $B0.b		; 00 B0
	asl $EFFB.w		; 0E FB EF
	lsr $F3.b,X		; 56 F3
	phd		; 0B
	sta $2FB1.w,Y		; 99 B1 2F
	ora [$57.b],Y		; 17 57
	tsa		; 3B
	tda		; 7B
	and $7EBF.w,X		; 3D BF 7E
	adc $F2.b		; 65 F2
	brk $FF.b		; 00 FF
	eor [$0F.b],Y		; 57 0F
	brk $1F.b		; 00 1F
	ora $3F.b,S		; 03 3F
	ora ($7F.b,X)		; 01 7F
	bpl 127.b		; 10 7F
	bit $3EFF.w,X		; 3C FF 3E
	nop		; EA
	sbc ($52.b,X)		; E1 52
	beq   9.b		; F0 09
	eor [$BA.b],Y		; 57 BA
	php		; 08
	cmp #$DF7F.w		; C9 7F DF
	sta $7CC1.w,X		; 9D C1 7C
	dec $F6.b,X		; D6 F6
	ora $FFBEFF.l,X		; 1F FF BE FF
	sta $BFC2E1.l		; 8F E1 C2 BF
	inc $DFBF.w,X		; FE BF DF
	ldx $DEBF.w,Y		; BE BF DE
	ldy $FDDF.w,X		; BC DF FD
	cmp $7FF7BC.l,X		; DF BC F7 7F
	inc $FF9E.w		; EE 9E FF
	stz $FDFE.w		; 9C FE FD
	sta $0DFF.w,X		; 9D FF 0D
	cmp $01BB19.l		; CF 19 BB 01
	sbc [$83.b],Y		; F7 83
	adc $24FFF8.l		; 6F F8 FF 24
	cmp $BF.b,S		; C3 BF
	sbc [$AF.b],Y		; F7 AF
	adc [$BF.b],Y		; 77 BF
	adc $7D30.w,X		; 7D 30 7D
	mvp $08,$7D		; 44 7D 08
	ora $903B41.l		; 0F 41 3B 90
	tas		; 1B
	cpy #$3503.w		; C0 03 35
	beq  -2.b		; F0 FE
	jmp $2A09B8.l		; 5C B8 09 2A
	sta ($3C.b)		; 92 3C
	dec $BCA1.w,X		; DE A1 BC
	inc $FF37.w,X		; FE 37 FF
	ora $8FAA41.l,X		; 1F 41 AA 8F
	sed		; F8
	ora $8CF3.w		; 0D F3 8C
	sbc ($09.b)		; F2 09
	sbc ($8D.b)		; F2 8D
	inc $0B.b		; E6 0B
	inc $1F.b		; E6 1F
	inc $659F.w,X		; FE 9F 65
	brk $E7.b		; 00 E7
	brk $2C.b		; 00 2C
	brk $CD.b		; 00 CD
	brk $2D.b		; 00 2D
	brk $D9.b		; 00 D9
	brk $19.b		; 00 19
	sbc $C0D81F.l,X		; FF 1F D8 C0
	adc $FB19F6.l,X		; 7F F6 19 FB
	tsb $07F8.w		; 0C F8 07
	sbc $FC02.w,Y		; F9 02 FC
	ora $FF.b,S		; 03 FF
	eor $8793FE.l		; 4F FE 93 87
	ora [$E7.b]		; 07 E7
	ora [$F3.b]		; 07 F3
	ora $F8.b,S		; 03 F8
	brk $FD.b		; 00 FD
	ora ($FF.b,X)		; 01 FF
	and $006CFE.l,X		; 3F FE 6C 00
	sta ($6E.b),Y		; 91 6E
	ora ($FE.b,X)		; 01 FE
	bmi -49.b		; 30 CF
	dec $1221.w,X		; DE 21 12
	sbc $FA05.w		; ED 05 FA
	cpy #$F6FE.w		; C0 FE F6
	inc $9F9F.w,X		; FE 9F 9F
	sty $DA.b		; 84 DA
	cmp $D3D3DF.l,X		; DF DF D3 D3
	cmp $BFFF.w		; CD FF BF
	cmp $FDFD.w		; CD FD FD
	and $F73D.w,X		; 3D 3D F7
	ora $3F07F9.l		; 0F F9 07 3F
	cpy #$E11E.w		; C0 1E E1
	tas		; 1B
	cpx $EA.b		; E4 EA
	adc ($3A.b),Y		; 71 3A
	cmp $E156.w,Y		; D9 56 E1
	jmp $EA76F2.l		; 5C F2 76 EA
	plx		; FA
	xce		; FB
	plx		; FA
	sbc $08F7F7.l,X		; FF F7 F7 08
	ora $F098F2.l,X		; 1F F2 98 F0
	ora [$06.b]		; 07 06
	sbc $3FC0.w,Y		; F9 C0 3F
	sty $FF.b,X		; 94 FF
	ldx #$D2C7.w		; A2 C7 D2
	bcc -32.b		; 90 E0
	asl A		; 0A
	jmp $6D9E.w		; 4C 9E 6D
	lsr $4DA5.w,X		; 5E A5 4D
	lda ($61.b,S),Y		; B3 61
	bra  35.b		; 80 23
	cmp $EF10FE.l,X		; DF FE 10 EF
	cld		; D8
	inc $C1C2.w,X		; FE C2 C1
	tsb $82.b		; 04 82
	beq  12.b		; F0 0C
.INDEX 16
	rep #$DF		; C2 DF
	and [$6F.b],Y		; 37 6F
	tyx		; BB
	and $C9.b		; 25 C9
	ora ($C0.b,X)		; 01 C0
	cmp $F3FDEF.l,X		; DF EF FD F3
	sbc $F060.w,X		; FD 60 F0
	ora $2DBF1D.l		; 0F 1D BF 2D
	cmp ($26.b,S),Y		; D3 26
	lda ($FB.b)		; B2 FB
	sbc $F08F.w,X		; FD 8F F0
	sbc $E0DFF0.l		; EF F0 DF E0
	bpl  63.b		; 10 3F
	inx		; E8
	sbc $FC56.w,X		; FD 56 FC
	lda ($F8.b,S),Y		; B3 F8
	asl $05F1.w		; 0E F1 05
	ora $3D.b,S		; 03 3D
	ldy $0FFE.w,X		; BC FE 0F
	ora $17.b,S		; 03 17
	phd		; 0B
	inc $1F2F.w,X		; FE 2F 1F
	and $5E1E1F.l,X		; 3F 1F 1E 5E
	jsl $E197DA.l		; 22 DA 97 E1
	ora $FE1F01.l		; 0F 01 1F FE
	ora $3F.b		; 05 3F
	tsb $CB3F.w		; 0C 3F CB
	sbc ($03.b),Y		; F1 03
	ply		; 7A
	stp		; DB
	lda $6CB6FB.l		; AF FB B6 6C
	sbc $FFCFFC.l		; EF FC CF FF
	sbc ($1D.b)		; F2 1D
	rol $B930.w,X		; 3E 30 B9
	rol $DFB9.w		; 2E B9 DF
	adc $FF6F82.l,X		; 7F 82 6F FF
	lda [$BF.b],Y		; B7 BF
	cmp [$FE.b],Y		; D7 FE
	adc $80.b,S		; 63 80
	sbc $8FF7AF.l		; EF AF F7 8F
	sbc $27FF4F.l,X		; FF 4F FF 27
	inc $0B97.w,X		; FE 97 0B
	php		; 08
	stx $E1.b		; 86 E1
	phd		; 0B
	dec A		; 3A
	cmp ($E0.b,X)		; C1 E0
	adc $E8.b		; 65 E8
	cop $68.b		; 02 68
	xce		; FB
	adc $8DEBC3.l,X		; 7F C3 EB 8D
	cpx $B1.b		; E4 B1
	jmp.w [$BFF8]		; DC F8 BF
	inc $C61A.w,X		; FE 1A C6
	lda ($7F.b,S),Y		; B3 7F
	sbc ($7F.b,S),Y		; F3 7F
	sbc $7077.w,Y		; F9 77 70
	sbc $E0FB7C.l,X		; FF 7C FB E0
	bmi -22.b		; 30 EA
	sbc ($FE.b)		; F2 FE
	jmp $43F2.w		; 4C F2 43
	sed		; F8
	inc $FC61.w,X		; FE 61 FC
	jmp ($FE8C.w,X)		; 7C 8C FE
	adc ($FC.b),Y		; 71 FC
	sbc $ECFC.w,Y		; F9 FC EC
	trb $AAEE.w		; 1C EE AA
	sbc $F4389F.l,X		; FF 9F 38 F4
	lda $F24AEA.l,X		; BF EA 4A F2
	ora $1F09F8.l,X		; 1F F8 09 1F
	bra  15.b		; 80 0F
	brk $05.b		; 00 05
	ora ($04.b)		; 12 04
	sbc $C4FAFE.l,X		; FF FE FA C4
	sbc ($82.b),Y		; F1 82
	sbc #$FDE2.w		; E9 E2 FD
	sta ($F8.b,X)		; 81 F8
	rol $EA.b		; 26 EA
	sbc $1500.w		; ED 00 15
	brk $EE.b		; 00 EE
	sbc $9600FF.l,X		; FF FF 00 96
	brk $EA.b		; 00 EA
	brk $97.b		; 00 97
	brk $FD.b		; 00 FD
	cop $F9.b		; 02 F9
	cop $FD.b		; 02 FD
	asl $FB.b		; 06 FB
	asl $F1.b		; 06 F1
	adc $F00410.l,X		; 7F 10 04 F0
	ora $EF1877.l		; 0F 77 18 EF
	bmi  -3.b		; 30 FD
	inc $E15B.w		; EE 5B E1
	plx		; FA
	sbc $C5FBFE.l,X		; FF FE FB C5
	lda ($E7.b,X)		; A1 E7
	ora [$CF.b]		; 07 CF
	ora $CA6E51.l		; 0F 51 6E CA
	ora $E0.b,X		; 15 E0
	ora $FFFFE8.l		; 0F E8 FF FF
	ora $3D7F40.l		; 0F 40 7F 3D
	rep #$04		; C2 04
	xce		; FB
	and ($DE.b,X)		; 21 DE
	sta $EE1D.w,X		; 9D 1D EE
	asl $06F6.w		; 0E F6 06
	sbc ($EF.b)		; F2 EF
	sbc $038302.l,X		; FF 02 83 03
	and $DC3D.w,X		; 3D 3D DC
	cmp ($FD.b,X)		; C1 FD
	bra 127.b		; 80 7F
	bra 119.b		; 80 77
	iny		; C8
	and [$E2.b],Y		; 37 E2
	ora $FDFF.w,X		; 1D FF FD
	php		; 08
	sbc [$01.b],Y		; F7 01
	asl $F201.w		; 0E 01 F2
	rts		; 60

	sta $F7F7.w,X		; 9D F7 F7
	dec $0CCC.w,X		; DE CC 0C
	tsb $F1F1.w		; 0C F1 F1
	ora [$FE.b],Y		; 17 FE
	ora $620D.w		; 0D 0D 62
	.db $62, $48, $C2		; 62 48 C2
	inc $BE41.w,X		; FE 41 BE
	asl A		; 0A
	sbc $16.b,X		; F5 16
	sbc #$BE17.w		; E9 17 BE
	adc $1C86.w,Y		; 79 86 1C
	sbc $E2.b,S		; E3 E2
	jsr ($BBC8.w,X)		; FC C8 BB
	tyx		; BB
	ldx $B6.b,Y		; B6 B6
	sbc $0FFF.w,Y		; F9 FF 0F
	sbc ($F1.b,X)		; E1 F1
	stz $8B.b,X		; 74 8B
	and ($C9.b)		; 32 C9
.ACCU 16
.INDEX 16
	rep #$31		; C2 31
	ora $F4.b,S		; 03 F4
	ora [$E8.b]		; 07 E8
	eor [$A8.b]		; 47 A8
	sbc $46FC3F.l,X		; FF 3F FC 46
	lda #$F7F0.w		; A9 F0 F7
	pea $ECF7.w		; F4 F7 EC
	sbc $D7EBEA.l		; EF EA EB D7
	cmp [$57.b],Y		; D7 57
	eor [$5C.b],Y		; 57 5C
	sed		; F8
	jsr ($D6D6.w,X)		; FC D6 D6
	ora $FEE91C.l,X		; 1F 1C E9 FE
	ora $7F87FF.l		; 0F FF 87 7F
	eor $3FC6E1.l,X		; 5F E1 C6 3F
	sbc $1E.b		; E5 1E
	inc $1D.b		; E6 1D
	and $F8.b		; 25 F8
	ora #$E222.w		; 09 22 E2
	inc $CAF7.w,X		; FE F7 CA
	sbc $C1BA87.l,X		; FF 87 BA C1
	cmp $4983.w,X		; DD 83 49
	sta [$F3.b]		; 87 F3
	eor $9E3EC1.l		; 4F C1 3E 9E
	adc ($DA.b,X)		; 61 DA
	sbc ($65.b,X)		; E1 65
	trb $E1.b		; 14 E1
	stz $C738.w		; 9C 38 C7
	bmi -49.b		; 30 CF
	and $DAE1.w,Y		; 39 E1 DA
	sbc ($FF.b,X)		; E1 FF
	jmp ($FCCA.w)		; 6C CA FC
	and $0F1F1F.l		; 2F 1F 1F 0F
	ora [$0F.b],Y		; 17 0F
	ora #$0707.w		; 09 07 07
	brk $E1.b		; 00 E1
	adc $0E.b,X		; 75 0E
	adc $7F0FFE.l,X		; 7F FE 0F 7F
	ora [$3F.b]		; 07 3F
	and $E9.b,X		; 35 E9
	ror $00D9.w,X		; 7E D9 00
	ora [$EB.b]		; 07 EB
	rol A		; 2A
	ora $F1.b,S		; 03 F1
	sbc $F24D.w,X		; FD 4D F2
	lsr A		; 4A
	pea $3FDF.w		; F4 DF 3F
	stz $E6F2.w		; 9C F2 E6
	lda ($5C.b)		; B2 5C
	ldx #$FFFD.w		; A2 FD FF
	inc $DBF7.w,X		; FE F7 DB
	cmp $EDFBEB.l,X		; DF EB FB ED
	adc $76FDF5.l		; 6F F5 FD 76
	sbc [$7A.b],Y		; F7 7A
	ldx $18F7.w,Y		; BE F7 18
	tda		; 7B
	tda		; 7B
	lda $A483.w,X		; BD 83 A4
	sta ($41.b),Y		; 91 41
	sbc $30FE60.l,X		; FF 60 FE 30
	ora $3C.b,S		; 03 3C
	inc $E038.w,X		; FE 38 E0
.ACCU 8
.INDEX 8
	sep #$F5		; E2 F5
	sbc $FCFAF5.l,X		; FF F5 FA FC
	ora ($E0.b,X)		; 01 E0
	plx		; FA
	sbc $7BFEFA.l,X		; FF FA FE 7B
	sbc $C0E27F.l,X		; FF 7F E2 C0
	pld		; 2B
	inc $3A6A.w,X		; FE 6A 3A
	nop		; EA
	bvs  -1.b		; 70 FF
	ply		; 7A
	rol $B2E1.w,X		; 3E E1 B2
	lda #$C2.b		; A9 C2
	sbc $F3FEF4.l,X		; FF F4 FE F3
	sbc $B5FE76.l,X		; FF 76 FE B5
	adc $BF73.w,X		; 7D 73 BF
	sbc $FC37.w,Y		; F9 37 FC
	jsr ($FCF0.w,X)		; FC F0 FC
	sbc ($1E.b)		; F2 1E
	cmp #$77.b		; C9 77
	inc $37F1.w,X		; FE F1 37
	sbc ($13.b)		; F2 13
	sed		; F8
	phb		; 8B
	lda $16FF37.l,X		; BF 37 FF 16
	tya		; 98
	lda ($32.b)		; B2 32
	rts		; 60

	adc $C3DFC0.l,X		; 7F C0 DF C3
	jmp.w [$0FFF]		; DC FF 0F
	bit #$FC.b		; 89 FC
	adc $009F00.l,X		; 7F 00 9F 00
	sbc $F480.w		; ED 80 F4
	jsr $23F8.w		; 20 F8 23
	cpx #$FC.b		; E0 FC
	pld		; 2B
	clv		; B8
	ldy $40.b,X		; B4 40
	sbc $1AE2C6.l,X		; FF C6 E2 1A
.ACCU 16
.INDEX 16
	rep #$FA		; C2 FA
	pla		; 68
	sbc ($FE.b)		; F2 FE
	brk $FF.b		; 00 FF
	sbc $01D91B.l,X		; FF 1B D9 01
	sbc $03.b,S		; E3 03
	sbc ($05.b),Y		; F1 05
	ora ($0D.b,X)		; 01 0D
	stx $E9.b,Y		; 96 E9
	cli		; 58
	lda [$EC.b]		; A7 EC
	ora ($E7.b,S),Y		; 13 E7
	clc		; 18
	sbc [$DF.b],Y		; F7 DF
	cpx #$E21F.w		; E0 1F E2
	ora $BA9E.w,X		; 1D 9E BA
	ora [$17.b],Y		; 17 17
	tad		; 5B
	tad		; 5B
	cpx $EFEC.w		; EC EC EF
	sbc $A1F29A.l		; EF 9A F2 A1
	sbc $FAF1F1.l,X		; FF F1 F1 FA
	ora $38.b,S		; 03 38
	sbc #$33CC.w		; E9 CC 33
	ora ($ED.b)		; 12 ED
	pha		; 48
	lda [$21.b],Y		; B7 21
	pea $DE7F.w		; F4 7F DE
	lda $BB.b		; A5 BB
	tyx		; BB
	and [$37.b],Y		; 37 37
	cpy $F3CC.w		; CC CC F3
	sbc ($CF.b,S),Y		; F3 CF
	cmp $5FF03F.l		; CF 3F F0 5F
	trb $BF.b		; 14 BF
	sbc ($98.b,X)		; E1 98
	adc $24.b		; 65 24
	phx		; DA
	txa		; 8A
	adc $51.b,X		; 75 51
	ldx $AA04.w		; AE 04 AA
	plx		; FA
	cmp [$FE.b],Y		; D7 FE
	txs		; 9A
	txs		; 9A
	and $35.b,X		; 35 35
	inc $DFEE.w		; EE EE DF
	cmp $54B27E.l,X		; DF 7E B2 54
	sbc ($31.b)		; F2 31
	jsr ($7D82.w,X)		; FC 82 7D
	sta ($01.b),Y		; 91 01
	ldx $1F.b		; A6 1F
	ldy #$5689.w		; A0 89 56
	lsr $03.b		; 46 03
.ACCU 16
	rep #$A9		; C2 A9
	cop $E5.b		; 02 E5
	tax		; AA
	sbc ($FC.b,S),Y		; F3 FC
	brk $FF.b		; 00 FF
	sbc $A9405F.l,X		; FF 5F 40 A9
	ldy #$D0D6.w		; A0 D6 D0
	phx		; DA
	cld		; D8
	ora [$E8.b]		; 07 E8
	tsb $1C13.w		; 0C 13 1C
	sbc $B2.b,S		; E3 B2
	eor $807F.w		; 4D 7F 80
	jmp ($7F83.w,X)		; 7C 83 7F
	bra -56.b		; 80 C8
	and [$F4.b],Y		; 37 F4
	phd		; 0B
	bra -126.b		; 80 82
	ora $1F1FE0.l,X		; 1F E0 1F 1F
	lda ($33.b,S),Y		; B3 33
	jmp ($C07C.w,X)		; 7C 7C C0
	stz $F7F7.w		; 9C F7 F7
	sbc $8A75FF.l,X		; FF FF 75 8A
	adc $7E86.w,Y		; 79 86 7E
	sta ($1E.b,X)		; 81 1E
	sbc ($0F.b,X)		; E1 0F
	sbc ($0D.b),Y		; F1 0D
	sbc ($05.b,S),Y		; F3 05
	xce		; FB
	ora [$FB.b]		; 07 FB
	eor ($C1.b,X)		; 41 C1
	rti		; 40

	adc $EC3630.l,X		; 7F 30 36 EC
	stx $FECA.w		; 8E CA FE
	bvs -49.b		; 70 CF
	plb		; AB
	inc $FCF7.w,X		; FE F7 FC
	xce		; FB
	ror $F2.b,X		; 76 F2
	rts		; 60

	cpx #$AF0F.w		; E0 0F AF
	ldy #$EF10.w		; A0 10 EF
	sed		; F8
	asl $4FF7.w		; 0E F7 4F
	tda		; 7B
	and [$3D.b],Y		; 37 3D
	eor [$7D.b],Y		; 57 7D
	tas		; 1B
	asl $0705.w,X		; 1E 05 07
	sbc [$FE.b]		; E7 FE
	cmp $F2.b,S		; C3 F2
	jsl $FDEFF2.l		; 22 F2 EF FD
	adc $BDDEBD.l,X		; 7F BD DE BD
	jsr ($FD7F.w,X)		; FC 7F FD
	dec $5EBF.w,X		; DE BF 5E
	sbc $6EFF9E.l		; EF 9E FF 6E
	tda		; 7B
	asl $18.b,X		; 16 18
	sbc $463C1C.l,X		; FF 1C 3C 46
	inc $FF0C.w,X		; FE 0C FF
	tsb $FE.b		; 04 FE
	cop $D4.b		; 02 D4
	cmp $D8.b,X		; D5 D8
	.db $42, $89		; 42 89
	lda [$9F.b],Y		; B7 9F
	jsr ($04EA.w,X)		; FC EA 04
	sta ($5F.b)		; 92 5F
	inc $845E.w,X		; FE 5E 84
	cmp ($DE.b),Y		; D1 DE
	inc $B530.w,X		; FE 30 B5
	sbc ($B1.b,X)		; E1 B1
	cmp $A1F0C0.l,X		; DF C0 F0 A1
	dec $C1E6.w,X		; DE E6 C1
	bmi  -8.b		; 30 F8
	rti		; 40

	cmp [$31.b]		; C7 31
	sbc $013FFF.l,X		; FF FF 3F 01
	sed		; F8
	stx $F0.b		; 86 F0
	cmp $C09FE0.l		; CF E0 9F C0
	and $077F80.l,X		; 3F 80 7F 07
	inc $FC38.w,X		; FE 38 FC
	sbc $82C11F.l,X		; FF 1F C1 82
	cmp $FD07.w,X		; DD 07 FD
	ora $FD1FFD.l		; 0F FD 1F FD
	and $F67F7D.l,X		; 3F 7D 7F F6
	sbc $FEBFDF.l,X		; FF DF BF FE
	beq  39.b		; F0 27
	brk $0F.b		; 00 0F
	dec $80CA.w,X		; DE CA 80
	lda $647F20.l,X		; BF 20 7F 64
	sbc $8542F4.l,X		; FF F4 42 85
	beq -35.b		; F0 DD
	ldx #$14AA.w		; A2 AA 14
	plx		; FA
	jmp ($6199.w,X)		; 7C 99 61
	sep #$80		; E2 80
	lda $FE3C51.l,X		; BF 51 3C FE
	sbc $F1FD.w,Y		; F9 FD F1
	sbc $7CF3.w,X		; FD F3 7C
	sta $B560.w,Y		; 99 60 B5
	pha		; 48
	sbc ($BB.b)		; F2 BB
	beq  -2.b		; F0 FE
	jsr ($6E03.w,X)		; FC 03 6E
	sbc ($F8.b),Y		; F1 F8
	sed		; F8
	eor $0BC0.w		; 4D C0 0B
	cpx $38C7.w		; EC C7 38
	ora ($FF.b,S),Y		; 13 FF
	ldx $67EC.w,Y		; BE EC 67
	tya		; 98
	and $1FC6.w,Y		; 39 C6 1F
	cpx #$807F.w		; E0 7F 80
	sbc [$8C.b],Y		; F7 8C
	ora $E7E71F.l,X		; 1F 1F E7 E7
	asl $C4FF.w		; 0E FF C4
	sep #$02		; E2 02
	txa		; 8A
	sta ($7E.b,X)		; 81 7E
	cpx $FD02.w		; EC 02 FD
	eor $BA.b		; 45 BA
	sta $BD72.w		; 8D 72 BD
	ora $BB4271.l		; 0F 71 42 BB
	mvp $E4,$1B		; 44 1B E4
	cpx $FF7E.w		; EC 7E FF
	adc $807D.w,X		; 7D 7D 80
	sbc $BBFF0B.l,X		; FF 0B FF BB
	tyx		; BB
	tas		; 1B
	tas		; 1B
	ora ($F2.b,X)		; 01 F2
	ora ($EA.b),Y		; 11 EA
	ora #$01FE.w		; 09 FE 01
	plx		; FA
	inc $83F8.w,X		; FE F8 83
	stz $A3.b,X		; 74 A3
	mvn $ED,$ED		; 54 ED ED
	dec $E1.b		; C6 E1
	sbc $FF.b,X		; F5 FF
	sbc $F6FFEB.l,X		; FF EB FF F6
	ora #$A080.w		; 09 80 A0
	eor $D06B57.l,X		; 5F 57 6B D0
	and $7C4FB0.l		; 2F B0 4F 7C
	sbc #$9B00.w		; E9 00 9B
	lda $D7BFC9.l		; AF C9 BF D7
	cmp ($FF.b),Y		; D1 FF
	sbc $E107.w,X		; FD 07 E1
	adc $FEF14C.l,X		; 7F 4C F1 FE
	ora $14F3.w		; 0D F3 14
	xba		; EB
	tsb $2AF3.w		; 0C F3 2A
	cmp $1A.b,X		; D5 1A
	sbc $FD.b		; E5 FD
	sta ($4A.b,S),Y		; 93 4A
	pea $E92C.w		; F4 2C E9
	sbc [$E8.b],Y		; F7 E8
	sbc $D8EBE8.l		; EF E8 EB D8
	stp		; DB
	jsl $FF5D82.l		; 22 82 5D FF
	pei ($5A.b)		; D4 5A
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	rti		; 40

	beq  15.b		; F0 0F
	ora $0389C3.l,X		; 1F C3 89 03
	ora ($4B.b,X)		; 01 4B
	beq  10.b		; F0 0A
	xce		; FB
	sbc $03F266.l,X		; FF 66 F2 03
	dec A		; 3A
	beq   9.b		; F0 09
	jsr ($FCFE.w,X)		; FC FE FC
	adc $FD9FFD.l,X		; 7F FD 9F FD
	adc $1A0F7D.l		; 6F 7D 0F 1A
	sta $F9.b,S		; 83 F9
	ora $03.b		; 05 03
	tsb $FE.b		; 04 FE
	and [$E9.b]		; 27 E9
	jsr ($7CFE.w,X)		; FC FE 7C
	cop $B1.b		; 02 B1
	ora $1A.b,X		; 15 1A
	ora $FF.b,S		; 03 FF
	sbc ($62.b,X)		; E1 62
	lda $70C3.w,Y		; B9 C3 70
	sta $8ACA.w,Y		; 99 CA 8A
	asl $A27E.w,X		; 1E 7E A2
	and ($CF.b,S),Y		; 33 CF
	sbc $FE03.w,Y		; F9 03 FE
	sbc ($07.b,S),Y		; F3 07
	sbc ($07.b)		; F2 07
	sbc [$0F.b]		; E7 0F
	sei		; 78
	xce		; FB
	inc $0F47.w,X		; FE 47 0F
	and ($33.b,S),Y		; 33 33
	sty $FAF1.w		; 8C F1 FA
	sta [$D1.b]		; 87 D1
	tsa		; 3B
	sbc $F0BFDD.l,X		; FF DD BF F0
	cmp $F5EEED.l,X		; DF ED EE F5
	jsr ($F2B7.w,X)		; FC B7 F2
	dey		; 88
	cmp ($EF.b),Y		; D1 EF
	clc		; 18
	sbc $0FBF88.l,X		; FF 88 BF 0F
	sbc $E4FFC4.l,X		; FF C4 FF E4
	sbc $0CFEA0.l,X		; FF A0 FE 0C
	sta ($C8.b)		; 92 C8
	adc [$D0.b],Y		; 77 D0
	adc $20DFF0.l		; 6F F0 DF 20
	inc A		; 1A
	rts		; 60

	sta $C71FE0.l,X		; 9F E0 1F C7
	sbc [$4F.b],Y		; F7 4F
	sbc $99680F.l		; EF 0F 68 99
	and $E8.b,X		; 35 E8
	and $8109BF.l,X		; 3F BF 09 81
	tya		; 98
	sbc ($03.b),Y		; F1 03
	stx $A4.b,Y		; 96 A4
	sbc ($DA.b,X)		; E1 DA
	sep #$0E		; E2 0E
	bcs  -8.b		; B0 F8
	sbc ($FE.b),Y		; F1 FE
	ora $E0E2.w,X		; 1D E2 E0
	bcc  10.b		; 90 0A
	sbc $DFFDFC.l,X		; FF FC FD DF
	cmp $9F20FE.l,X		; DF FE 20 9F
	rts		; 60

	lda $197F40.l,X		; BF 40 7F 19
	cmp $1EFD.w,Y		; D9 FD 1E
	cmp #$38.b		; C9 38
	cmp [$C0.b]		; C7 C0
	phx		; DA
	bra  -1.b		; 80 FF
	pea $809A.w		; F4 9A 80
	tsx		; BA
	brk $7A.b		; 00 7A
	brk $76.b		; 00 76
	brk $F7.b		; 00 F7
	inc $1CE3.w,X		; FE E3 1C
	xce		; FB
	sbc $FA04C3.l,X		; FF C3 04 FA
	ora $BC.b		; 05 BC
	.db $42, $B6		; 42 B6
	eor #$93.b		; 49 93
	jmp ($6F90.w)		; 6C 90 6F
	inc $BF03.w,X		; FE 03 BF
	sbc #$C3.b		; E9 C3
	ora $EB.b,S		; 03 EB
	cop $EA.b		; 02 EA
	ora ($ED.b,X)		; 01 ED
	sta $FE6FD1.l,X		; 9F D1 6F FE
	dec $29.b		; C6 29
	sbc $528DFF.l,X		; FF FF 8D 52
	ora $33B2.w		; 0D B2 33
	jmp $847B.w		; 4C 7B 84
	cmp [$28.b],Y		; D7 28
	asl $E9.b,X		; 16 E9
	asl A		; 0A
	sbc $D6.b,X		; F5 D6
	dec $FF.b,X		; D6 FF
	ora $4DADAD.l,X		; 1F AD AD 4D
	eor $B383.w		; 4D 83 B3
	ora $7B.b,S		; 03 7B
	ora [$F7.b]		; 07 F7
	asl $F6.b		; 06 F6
	cop $FA.b		; 02 FA
	eor ($94.b),Y		; 51 94
	lda [$FE.b]		; A7 FE
	rol $F6DD.w		; 2E DD F6
	bit $C5.b		; 24 C5
	sbc #$FF.b		; E9 FF
	sbc $E51AF6.l,X		; FF F6 1A E5
	phk		; 4B
	ldy $23.b,X		; B4 23
	jmp.w [$7C83]		; DC 83 7C
	eor $3C.b,S		; 43 3C
	sbc ($1F.b,X)		; E1 1F
	ora $7C.b,S		; 03 7C
	plx		; FA
	ora $FA.b		; 05 FA
	cld		; D8
	stp		; DB
	phx		; DA
	stp		; DB
	tsx		; BA
	tyx		; BB
	ldy $FFF0.w,X		; BC F0 FF
	rti		; 40

	ldy $FDFD.w		; AC FD FD
	ora [$A2.b]		; 07 A2
	sta $81FE.w,Y		; 99 FE 81
	ror $BFC3.w,X		; 7E C3 BF
	lda $4BB63D.l,X		; BF 3D B6 4B
	ldy $B847.w,X		; BC 47 B8
	lsr $E2.b		; 46 E2
	bne   9.b		; D0 09
	bra -65.b		; 80 BF
	bra -66.b		; 80 BE
	sta ($B8.b,X)		; 81 B8
	tsx		; BA
	cmp [$94.b]		; C7 94
	sbc ($64.b),Y		; F1 64
	dey		; 88
	ora #$60.b		; 09 60
	dey		; 88
	ora ($1B.b)		; 12 1B
	lda [$20.b]		; A7 20
	sbc ($ED.b),Y		; F1 ED
	ora [$FE.b]		; 07 FE
	tsx		; BA
	sbc $05FD17.l,X		; FF 17 FD 05
	sed		; F8
	cpy #$F8.b		; C0 F8
	tad		; 5B
	tad		; 5B
	adc $07.b,S		; 63 07
	adc ($17.b),Y		; 71 17
	bvs -103.b		; 70 99
	dex		; CA
	inc $FEFF.w,X		; FE FF FE
	ora $F0.b		; 05 F0
	brk $F4.b		; 00 F4
	tyx		; BB
	sbc $F3DE.w,Y		; F9 DE F3
	cpx $FCC3.w		; EC C3 FC
	cmp ($6A.b),Y		; D1 6A
	lda ($FF.b),Y		; B1 FF
	sbc $4AB1CA.l,X		; FF CA B1 4A
	and ($CA.b),Y		; 31 CA
	bcs  -2.b		; B0 FE
	cmp ($F9.b),Y		; D1 F9
	cmp $FB.b,S		; C3 FB
	sta $E3.b,S		; 83 E3
	ora $D5.b,X		; 15 D5
	and $78.b,X		; 35 78
	bvc -75.b		; 50 B5
	inc $A035.w,X		; FE 35 A0
	eor $FC3CFE.l,X		; 5F FE 3C FC
	brk $AA.b		; 00 AA
	bvc  24.b		; 50 18
	sta [$84.b]		; 87 84
	ldx #$C2.b		; A2 C2
	inx		; E8
	ora #$FF.b		; 09 FF
	trb $FEE3.w		; 1C E3 FE
	eor $C7383E.l,X		; 5F 3E 38 C7
	stz $8B.b,X		; 74 8B
	bvs -113.b		; 70 8F
	stz $9B.b		; 64 9B
.ACCU 16
.INDEX 16
	rep #$3D		; C2 3D
	ldx $5D.b		; A6 5D
	iny		; C8
	txs		; 9A
	cld		; D8
	and $F7F0FE.l,X		; 3F FE F0 F7
	cpy #$E3E9.w		; C0 E9 E3
	jmp.w [$9CC1]		; DC C1 9C
	sta ($10.b,X)		; 81 10
	sbc $FED30D.l		; EF 0D D3 FE
	ora ($EE.b),Y		; 11 EE
	inc $DE21.w,X		; FE 21 DE
	inc $2C00.w,X		; FE 00 2C
	sbc $3BFEEF.l,X		; FF EF FE 3B
	dex		; CA
	inc $40BF.w,X		; FE BF 40
	cmp ($2E.b,S),Y		; D3 2E
	stx $FF.b		; 86 FF
	beq 109.b		; F0 6D
	sty $B063.w		; 8C 63 B0
	cmp $A6DFA3.l		; CF A3 DF A6
	cmp $4000FC.l,X		; DF FC 00 40
	rol $FEDF.w		; 2E DF FE
	brk $7C.b		; 00 7C
	ora ($70.b),Y		; 11 70
	ora ($C0.b,S),Y		; 13 C0
	stz $C2E1.w		; 9C E1 C2
	sei		; 78
	lda #$F50A.w		; A9 0A F5
	cmp $3A.b		; C5 3A
	ora $F4.b		; 05 F4
	lda $81FEFA.l,X		; BF FA FE 81
	inc $FEF1.w,X		; FE F1 FE
	cmp ($FE.b,X)		; C1 FE
	cop $FA.b		; 02 FA
	ora ($3D.b,X)		; 01 3D
	sei		; 78
	ora $85.b		; 05 85
	tyx		; BB
	inc $FDE1.w,X		; FE E1 FD
	sta ($60.b,X)		; 81 60
	dex		; CA
	inc $60FD.w,X		; FE FD 60
	lsr $95.b,X		; 56 95
	lsr $F8FF.w,X		; 5E FF F8
	asl $BC6A.w		; 0E 6A BC
	inc $FEEA.w,X		; FE EA FE
	jsr ($9A08.w,X)		; FC 08 9A
	jsr ($FFDF.w,X)		; FC DF FF
	cpx #$73FE.w		; E0 FE 73
	dey		; 88
	stz $94.b		; 64 94
	stz $9C.b		; 64 9C
	rts		; 60

	sty $68.b,X		; 94 68
	tya		; 98
	tsb $7FD2.w		; 0C D2 7F
	clv		; B8
	bvs  -1.b		; 70 FF
	ora [$70.b]		; 07 70
	phd		; 0B
	rts		; 60

	ora $60.b,S		; 03 60
	jsr ($0007.w,X)		; FC 07 00
	bvs -96.b		; 70 A0
	ldx $D997.w		; AE 97 D9
	inc $A496.w,X		; FE 96 A4
	cpy $CA63.w		; CC 63 CA
	adc ($07.b,X)		; 61 07
	ora $FEF49B.l,X		; 1F 9B F4 FE
	sbc $818C6D.l,X		; FF 6D 8C 81
	lda ($00.b,X)		; A1 00
	cpx #$E1F9.w		; E0 F9 E1
	xce		; FB
	cpx #$E2F2.w		; E0 F2 E2
	inc $C1.b,X		; F6 C1
	sbc $C0.b,X		; F5 C0
	sbc $1B.b		; E5 1B
	sbc $80E380.l		; EF 80 E3 80
	bit #$E163.w		; 89 63 E1
	inc $00E2.w,X		; FE E2 00
.ACCU 16
	rep #$A3		; C2 A3
	adc ($80.b),Y		; 71 80
	ora $3100FF.l		; 0F FF 00 31
	lsr A		; 4A
	clv		; B8
	eor $FE.b		; 45 FE
	jmp.w [$DE62]		; DC 62 DE
	sbc ($2E.b,X)		; E1 2E
	adc ($10.b),Y		; 71 10
	and $005EFC.l,X		; 3F FC 5E 00
	bne -75.b		; D0 B5
	and $BA.b,X		; 35 BA
	dec A		; 3A
	inc $1D9D.w,X		; FE 9D 1D
	asl $8E1E.w,X		; 1E 1E 8E
	sbc [$3F.b],Y		; F7 3F
	asl $00A0.w		; 0E A0 00
	jsr $B977.w		; 20 77 B9
	sbc $F706.w,Y		; F9 06 F7
	php		; 08
	lsr $B9.b		; 46 B9
	rol $79.b,X		; 36 79
	tas		; 1B
	jsr ($62FF.w,X)		; FC FF 62
	trb $0403.w		; 1C 03 04
	inc $F8FE.w,X		; FE FE F8
	sbc $F7F0.w,Y		; F9 F0 F7
	rti		; 40

	eor [$80.b]		; 47 80
	lda [$E9.b],Y		; B7 E9
	sta [$00.b]		; 87 00
	tas		; 1B
	txy		; 9B
	ror $9E8D.w,X		; 7E 8D 9E
	adc $0E.b		; 65 0E
	sbc $FE.b,X		; F5 FE
	sta [$9F.b]		; 87 9F
	tsb $FB.b		; 04 FB
	sty $7B.b		; 84 7B
	jsl $0C07F8.l		; 22 F8 07 0C
	adc ($04.b,X)		; 61 04
	sbc ($14.b),Y		; F1 14
	rol $FE.b		; 26 FE
	and $9108C1.l,X		; 3F C1 08 91
	inc $DE21.w,X		; FE 21 DE
	jsl $6EFFFD.l		; 22 FD FF 6E
	cpx #$E10A.w		; E0 0A E1
	clv		; B8
	ora $E6FF.w		; 0D FF E6
	cmp $F1DFE3.l,X		; DF E3 DF F1
	eor $F86FF1.l		; 4F F1 6F F8
	adc [$78.b]		; 67 78
	sbc $3CB70F.l,X		; FF 0F B7 3C
	cmp ($1E.b,S),Y		; D3 1E
	sbc ($C2.b,X)		; E1 C2
	ora $401FC1.l,X		; 1F C1 1F 40
	ora $0F0F60.l,X		; 1F 60 0F 0F
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	bmi -121.b		; 30 87
	bpl -57.b		; 10 C7
	eor [$AC.b],Y		; 57 AC
	sbc ($FE.b)		; F2 FE
.INDEX 8
	sep #$50		; E2 50
	beq  -3.b		; F0 FD
	inc $8022.w,X		; FE 22 80
	cmp #$ACFE.w		; C9 FE AC
	sbc ($41.b)		; F2 41
	sbc $AAAB.w,X		; FD AB AA
	cpy #$FE.b		; C0 FE
	jsr $F560.w		; 20 60 F5
	tsb $FE99.w		; 0C 99 FE
	sbc $92A0.w,X		; FD A0 92
	jmp $F8FFB1.l		; 5C B1 FF F8
	asl $BE8A.w		; 0E 8A BE
	ldx $E2.b		; A6 E2
	inc $7FFC.w,X		; FE FC 7F
	sta ($FE.b),Y		; 91 FE
	jmp $7F1178.l		; 5C 78 11 7F
	sta [$1F.b]		; 87 1F
	sbc ($F6.b,X)		; E1 F6
	phx		; DA
	ply		; 7A
	sep #$00		; E2 00
	cpx $477F.w		; EC 7F 47
	cmp ($78.b)		; D2 78
	brk $7E.b		; 00 7E
	lda $F2.b,S		; A3 F2
	rol $BFE9.w,X		; 3E E9 BF
	sei		; 78
	ror $1D07.w		; 6E 07 1D
	cpy #$3C.b		; C0 3C
	mvp $DE,$BA		; 44 BA DE
	plp		; 28
	cmp ($EF.b,X)		; C1 EF
	sbc $F47C7C.l,X		; FF 7C 7C F4
.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	adc ($51.b,X)		; 61 51
	sbc $800BF8.l,X		; FF F8 0B 80
	bra  64.b		; 80 40
	jsl $EF0DE8.l		; 22 E8 0D EF
	sta $FF.b,S		; 83 FF
	lda $F7087C.l,X		; BF 7C 08 F7
	bpl -17.b		; 10 EF
	ora ($EF.b,S),Y		; 13 EF
	jsr $45DF.w		; 20 DF 45
	ldx $B815.w,Y		; BE 15 B8
	sta [$78.b],Y		; 97 78
	sbc $D2A0FF.l,X		; FF FF A0 D2
	beq -15.b		; F0 F1
	beq  -9.b		; F0 F7
	cpx #$C1EA.w		; E0 EA C1
	bne -57.b		; D0 C7
	bne -121.b		; D0 87
	bcs   0.b		; B0 00
	cpx #$FF40.w		; E0 40 FF
	ora $D020B0.l		; 0F B0 20 D0
	cli		; 58
	ldy #$7894.w		; A0 94 78
	inc A		; 1A
	jmp ($9EAD.w,X)		; 7C AD 9E
	cmp $BFFF3F.l		; CF 3F FF BF
	ldy $6060.w		; AC 60 60
	jsr $4020.w		; 20 20 40
	cli		; 58
	bra  60.b		; 80 3C
	bra  30.b		; 80 1E
	rts		; 60

	ora $0A0FC4.l		; 0F C4 0F 0A
	sbc $0CF8B2.l,X		; FF B2 F8 0C
	ldx $61.b,Y		; B6 61
	lda ($F8.b,X)		; A1 F8
	ora $2DC2.w		; 0D C2 2D
	beq 126.b		; F0 7E
	cpx $E25F.w		; EC 5F E2
	lda $1A.b,S		; A3 1A
	lsr $DD.b,X		; 56 DD
	eor ($81.b,S),Y		; 53 81
	eor $103FE1.l		; 4F E1 3F 10
	jmp ($6E01.w,X)		; 7C 01 6E
	cmp ($FE.b),Y		; D1 FE
	sed		; F8
	ora #$387F.w		; 09 7F 38
	sta ($D9.b),Y		; 91 D9
	ora $C70FB7.l,X		; 1F B7 0F C7
	lda $3FFEDF.l,X		; BF DF FE 3F
	adc $17FCBF.l,X		; 7F BF FC 17
	inc $07B7.w,X		; FE B7 07
	sbc $0F.b,S		; E3 0F
	adc ($87.b,S),Y		; 73 87
	ora $CF.b,S		; 03 CF
	ora [$28.b]		; 07 28
	tyx		; BB
	ldx $FE7A.w		; AE 7A FE
	cld		; D8
	cpx #$C6F4.w		; E0 F4 C6
	eor #$D997.w		; 49 97 D9
	sbc $51D27A.l		; EF 7A D2 51
	bra  -8.b		; 80 F8
	cpx #$876B.w		; E0 6B 87
	ror $61.b		; 66 61
	sed		; F8
	cmp ($C9.b)		; D2 C9
	jsl LC080AA.l		; 22 AA 80 C0
	tya		; 98
	asl A		; 0A
	cpx #$D400.w		; E0 00 D4
	cmp $62.b		; C5 62
	inc $8278.w,X		; FE 78 82
	sed		; F8
	asl A		; 0A
	pei ($10.b)		; D4 10
	sta $D3.b		; 85 D3
	xce		; FB
	inc $8AF8.w,X		; FE F8 8A
	cpy #$FDF3.w		; C0 F3 FD
	sta $FD.b,S		; 83 FD
	ora [$0C.b]		; 07 0C
	sbc ($C4.b,S),Y		; F3 C4
	cmp [$7F.b]		; C7 7F
	tad		; 5B
	inc $7EBF.w,X		; FE BF 7E
	inc $FF79.w,X		; FE 79 FF
	adc [$6F.b],Y		; 77 6F
	bcc  -9.b		; 90 F7
	bit $B94A.w,X		; 3C 4A B9
	adc $D0.b,S		; 63 D0
	lda #$4BC1.w		; A9 C1 4B
	eor $62E6.w,X		; 5D E6 62
	adc ($F0.b)		; 72 F0
	phd		; 0B
	jsr ($06E3.w,X)		; FC E3 06
	ldy #$D79F.w		; A0 9F D7
	cmp [$80.b]		; C7 80
	cpy #$5FFF.w		; C0 FF 5F
	sta $C36199.l,X		; 9F 99 61 C3
	sed		; F8
	and $FBC3.w,X		; 3D C3 FB
	sbc $D842.w		; ED 42 D8
	trb $585A.w		; 1C 5A 58
	asl A		; 0A
	jsr ($5E7E.w,X)		; FC 7E 5E
	brk $C0.b		; 00 C0
	ldx #$BF4B.w		; A2 4B BF
	jmp $FC00F8.l		; 5C F8 00 FC
	sed		; F8
	dec $BF3C.w,X		; DE 3C BF
	and $EFEA.w		; 2D EA EF
	brk $FE.b		; 00 FE
	eor ($D5.b,X)		; 41 D5
	sbc $A04900.l,X		; FF 00 49 A0
	cli		; 58
	asl $5061.w		; 0E 61 50
	phd		; 0B
	sbc $F70FFC.l		; EF FC 0F F7
	sta [$6F.b],Y		; 97 6F
	adc $DFAF9F.l		; 6F 9F AF DF
	cmp $2B.b,S		; C3 2B
	adc [$8C.b],Y		; 77 8C
	sbc $9BFF09.l		; EF 09 FF 9B
	jmp ($3003.w,X)		; 7C 03 30
	stp		; DB
	pei ($8B.b)		; D4 8B
	cmp ($FA.b,S),Y		; D3 FA
	inc $FD77.w,X		; FE 77 FD
	sbc ($3E.b,S),Y		; F3 3E
	lda ($26.b,X)		; A1 26
	cmp ($80.b,X)		; C1 80
	adc $414240.l,X		; 7F 40 42 41
	lda $88B264.l,X		; BF 64 B2 88
	sta $E0.b,S		; 83 E0
	sbc $D3D940.l,X		; FF 40 D9 D3
	adc $E9F520.l,X		; 7F 20 F5 E9
	ora $FC.b,S		; 03 FC
	ora $E61FF1.l		; 0F F1 1F E6
	dec $40.b		; C6 40
	bvs -15.b		; 70 F1
	pha		; 48
	bit $F8A3.w,X		; 3C A3 F8
	asl $90.b		; 06 90
	inc $F8C2.w		; EE C2 F8
	ora [$AB.b]		; 07 AB
	inc $BFC0.w,X		; FE C0 BF
	stz $D5A0.w		; 9C A0 D5
	sbc $A5.b		; E5 A5
	bit $41.b,X		; 34 41
	txy		; 9B
	lsr $0F.b,X		; 56 0F
	sbc ($07.b,S),Y		; F3 07
	xce		; FB
	ora $60.b,S		; 03 60
	cmp ($FD.b,X)		; C1 FD
	inc $CC34.w,X		; FE 34 CC
	ora $FEB16C.l		; 0F 6C B1 FE
	cpy #$4AF2.w		; C0 F2 4A
	lsr A		; 4A
	tya		; 98
	rts		; 60

	sbc ($E9.b,S),Y		; F3 E9
	sbc $60C6.w,X		; FD C6 60
	sbc ($62.b),Y		; F1 62
	sbc ($FA.b)		; F2 FA
	xce		; FB
	sbc $E65372.l		; EF 72 53 E6
	sbc $76E0D8.l		; EF D8 E0 76
	sed		; F8
	sbc $E6BE.w,X		; FD BE E6
	inx		; E8
	ora #$F880.w		; 09 80 F8
	rts		; 60

	sbc $38FE57.l,X		; FF 57 FE 38
	sbc $7BF3EC.l,X		; FF EC F3 7B
	sty $B0.b		; 84 B0
	and $BE0F1E.l		; 2F 1E 0F BE
	cmp $8FB9.w,X		; DD B9 8F
	dex		; CA
	tax		; AA
	cop $86.b		; 02 86
	rti		; 40

	sei		; 78
	cmp #$BABF.w		; C9 BF BA
	tsb $F6D4.w		; 0C D4 F6
	ldy $F9D7.w		; AC D7 F9
	sbc $1F.b,S		; E3 1F
	txa		; 8A
	inc $C0.b,X		; F6 C0
	cpy #$EC10.w		; C0 10 EC
	rol $FCCD.w,X		; 3E CD FC
	cmp $FF80.w,Y		; D9 80 FF
	cmp ($C2.b,X)		; C1 C2
	tsb $FEE1.w		; 0C E1 FE
	cpx #$0BF8.w		; E0 F8 0B
	and [$88.b],Y		; 37 88
	sta ($FC.b,X)		; 81 FC
	stz $42FB.w,X		; 9E FB 42
	adc $1E9F6E.l,X		; 7F 6E 9F 1E
	sta $F5F7.w,Y		; 99 F7 F5
	xce		; FB
	ora [$5E.b],Y		; 17 5E
	sbc ($FC.b),Y		; F1 FC
	tsb $4423.w		; 0C 23 44
	bit $B9.b		; 24 B9
	asl $42.b		; 06 42
	cpx #$2C83.w		; E0 83 2C
	sty $80.b,X		; 94 80
	jsr ($69C0.w,X)		; FC C0 69
	jsl $6AB4FE.l		; 22 FE B4 6A
	bit $F8C0.w		; 2C C0 F8
	phd		; 0B
	adc [$E0.b],Y		; 77 E0
	ora #$5C7F.w		; 09 7F 5C
	sbc #$995C.w		; E9 5C 99
	ply		; 7A
	eor $0F8AA2.l,X		; 5F A2 8A 0F
	ora $206D.w		; 0D 6D 20
	eor ($D5.b,X)		; 41 D5
	sbc #$A8E7.w		; E9 E7 A8
	sbc $9E8D18.l,X		; FF 18 8D 9E
	sei		; 78
	cmp ($C3.b,X)		; C1 C3
	lda $0D.b		; A5 0D
	bmi -87.b		; 30 A9
	plp		; 28
	tsx		; BA
	sbc $028040.l,X		; FF 40 80 02
	dec A		; 3A
	inc $03.b,X		; F6 03
	nop		; EA
	asl $FE.b		; 06 FE
	ldx $7CCD.w,Y		; BE CD 7C
	cop $F1.b		; 02 F1
	cop $3A.b		; 02 3A
	inc $5F42.w,X		; FE 42 5F
	sei		; 78
	tsb $A9.b		; 04 A9
	cpy #$0087.w		; C0 87 00
	beq  10.b		; F0 0A
	cpy #$A000.w		; C0 00 A0
	cpy #$4060.w		; C0 60 40
	tsb $1F87.w		; 0C 87 1F
	sei		; 78
	and $F0C0.w,Y		; 39 C0 F0
	txs		; 9A
	cmp $DF2F3F.l,X		; DF 3F 2F DF
	xce		; FB
	sbc [$AE.b]		; E7 AE
	eor $3FCCB2.l,X		; 5F B2 CC 3F
	tda		; 7B
	xba		; EB
	lda #$F802.w		; A9 02 F8
	ora $FF03.w		; 0D 03 FF
	lda $B3FF.w,X		; BD FF B3
	lsr $FE.b,X		; 56 FE
	jmp $E0FB12.l		; 5C 12 FB E0
	ora $13F844.l,X		; 1F 44 F8 13
	lsr $CE.b,X		; 56 CE
	nop		; EA
	bit $40.b,X		; 34 40
	sbc $AC1C.w,X		; FD 1C AC
	inc $F0FD.w,X		; FE FD F0
	.db $42, $45		; 42 45
	plx		; FA
	adc $EF.b,X		; 75 EF
	adc $71.b,X		; 75 71
	sta ($AC.b)		; 92 AC
.ACCU 16
	rep #$A2		; C2 A2
	cmp [$39.b]		; C7 39
	ldy #$0CF8.w		; A0 F8 0C
	and $E2CFC0.l,X		; 3F C0 CF E2
	cmp ($81.b)		; D2 81
	inc $7E7D.w,X		; FE 7D 7E
	bra 121.b		; 80 79
	ora $F75DE1.l,X		; 1F E1 5D F7
	bne -17.b		; D0 EF
	ldy #$FFE4.w		; A0 E4 FF
	jsr ($E002.w,X)		; FC 02 E0
	ora $11FE1F.l		; 0F 1F FE 11
	.db $62, $EF, $DF		; 62 EF DF
	sbc [$D7.b],Y		; F7 D7
	cop $EB.b		; 02 EB
	adc $0FEB.w,X		; 7D EB 0F
	adc $5E.b,X		; 75 5E
	eor $FF.b,S		; 43 FF
	adc $97.b,X		; 75 97
	dec A		; 3A
	tya		; 98
	sta $00.b,S		; 83 00
	sbc $FFC1.w,Y		; F9 C1 FF
	adc ($7F.b,X)		; 61 7F
	sta ($1F.b,X)		; 81 1F
	lda $1F800A.l,X		; BF 0A 80 1F
	bne  31.b		; D0 1F
	sbc $48FDF7.l		; EF F7 FD 48
	plb		; AB
	cmp [$F1.b]		; C7 F1
	jsr $4291.w		; 20 91 42
	bit $B4F2.w		; 2C F2 B4
	adc ($04.b)		; 72 04
	ldx $CFF3.w,Y		; BE F3 CF
	iny		; C8
	lda #$B868.w		; A9 68 B8
	inc $4488.w,X		; FE 88 44
	ldx #$AFF2.w		; A2 F2 AF
	lda [$EF.b],Y		; B7 EF
	sbc $4160F7.l,X		; FF F7 60 41
	jsl $E472E2.l		; 22 E2 72 E4
	sbc ($8F.b)		; F2 8F
	bit $D2B9.w		; 2C B9 D2
.ACCU 16
	rep #$EE		; C2 EE
	sbc $5EFF.w		; ED FF 5E
	lsr $C2.b		; 46 C2
	sbc $DBF8F0.l		; EF F0 F8 DB
	sbc $ECF2FD.l,X		; FF FD F2 EC
	sbc ($D8.b,S),Y		; F3 D8
	sbc [$98.b]		; E7 98
	sbc [$7F.b]		; E7 7F
	lda [$1A.b]		; A7 1A
	sbc $14.b		; E5 14
	xba		; EB
	ora $EA.b,X		; 15 EA
	lda ($4E.b),Y		; B1 4E
	cpx $E2.b		; E4 E2
	phd		; 0B
	xce		; FB
	inc $FFA1.w,X		; FE A1 FF
	ora $FEFD.w		; 0D FD FE
	ora $C920.w,X		; 1D 20 C9
	sei		; 78
	sta [$7C.b]		; 87 7C
	lda ($7E.b,S),Y		; B3 7E
	lda $DF7F.w,Y		; B9 7F DF
	sbc $B87FBC.l,X		; FF BC 7F B8
	sed		; F8
	jsr $FBE8.w		; 20 E8 FB
	sbc ($CF.b),Y		; F1 CF
	cmp $838787.l		; CF 87 87 83
	sta $81.b,S		; 83 81
	sta ($70.b,X)		; 81 70
	sta [$80.b]		; 87 80
	sbc $978087.l,X		; FF 87 80 97
	ldx #$34C2.w		; A2 C2 34
	wai		; CB
	inc $FEAF.w,X		; FE AF FE
	pla		; 68
	sta [$F0.b],Y		; 97 F0
	ora $C9703F.l		; 0F 3F 70 C9
	sta $2B8C.w,Y		; 99 8C 2B
	sbc ($3F.b)		; F2 3F
	and $00CF0F.l,X		; 3F 0F CF 00
	sbc $77F020.l,X		; FF 20 F0 77
	sta $06F709.l		; 8F 09 F7 06
	sbc $DE21.w,Y		; F9 21 DE
	phx		; DA
	stz $5A.b		; 64 5A
	jsr ($DC1A.w,X)		; FC 1A DC
	bvs 119.b		; 70 77
	clv		; B8
	lda $DEDE.w,Y		; B9 DE DE
	cpy #$969A.w		; C0 9A 96
	ldy $FEFE.w		; AC FE FE
	tda		; 7B
	stz $83.b,X		; 74 83
	phd		; 0B
	ora $FD23.w		; 0D 23 FD
	eor $BD.b,S		; 43 BD
	and $DD.b,S		; 23 DD
	cpy #$3FEA.w		; C0 EA 3F
	cpy #$F07C.w		; C0 7C F0
	adc $C925CB.l,X		; 7F CB 25 C9
	cpy #$E0DF.w		; C0 DF E0
	sbc $F8F7F0.l		; EF F0 F7 F8
	xce		; FB
	stz $2BFB.w,X		; 9E FB 2B
	inc $59AD.w,X		; FE AD 59
	sbc $8907.w,X		; FD 07 89
	clv		; B8
	sta ($18.b),Y		; 91 18
	inc $1F10.w,X		; FE 10 1F
	bpl 127.b		; 10 7F
	asl $54.b,X		; 16 54
	ora $4914.w,Y		; 19 14 49
	sec		; 38
	cpy #$18A1.w		; C0 A1 18
	ror $73.b		; 66 73
	eor [$79.b]		; 47 79
	lsr $5542.w		; 4E 42 55
	ora $A8ECA5.l		; 0F A5 EC A8
	nop		; EA
	bvc -14.b		; 50 F2
	tax		; AA
	ror A		; 6A
	tya		; 98
	ldx #$F7FF.w		; A2 FF F7
	sbc [$92.b],Y		; F7 92
	lda ($C1.b),Y		; B1 C1
	cmp [$81.b]		; C7 81
	cpy $AE.b		; C4 AE
	nop		; EA
	sbc ($FE.b,S),Y		; F3 FE
	sbc $4932.w,Y		; F9 32 49
	dec $A69D.w,X		; DE 9D A6
	plb		; AB
	ldx #$699F.w		; A2 9F 69
	cpx $5140.w		; EC 40 51
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	beq 125.b		; F0 7D
	inc $8281.w,X		; FE 81 82
	eor $6455.w,X		; 5D 55 64
	plp		; 28
	ora $2CC0.w,Y		; 19 C0 2C
	ldy #$C0.b		; A0 C0
	stz $44D2.w		; 9C D2 44
	phx		; DA
	ldy #$E3.b		; A0 E3
	txa		; 8A
	nop		; EA
	stz $85D2.w		; 9C D2 85
	plx		; FA
	dec $FD.b,X		; D6 FD
	bit $D0.b		; 24 D0
	phd		; 0B
	cld		; D8
	inc $E0.b,X		; F6 E0
	jsl $0AE03E.l		; 22 3E E0 0A
	cpx #$FE.b		; E0 FE
	adc $C3.b,S		; 63 C3
	ora $9C.b,S		; 03 9C
	rtl		; 6B

	sty $0C.b,X		; 94 0C
	lda $E09FC0.l,X		; BF C0 9F E0
	plx		; FA
	sty $3C.b,X		; 94 3C
	jsr ($50CE.w,X)		; FC CE 50
	sbc #$42.b		; E9 42
	trb $AD.b		; 14 AD
	beq   0.b		; F0 00
	sbc $7FFC.w,X		; FD FC 7F
	lda ($CC.b),Y		; B1 CC
	php		; 08
	ldx $BE32.w,Y		; BE 32 BE
	asl $8E.b		; 06 8E
	ora $83.b,S		; 03 83
	brk $82.b		; 00 82
	brk $41.b		; 00 41
	sed		; F8
	sbc $80BFC9.l,X		; FF C9 BF 80
	tyx		; BB
	bpl 115.b		; 10 73
	asl $47.b		; 06 47
	brk $73.b		; 00 73
	brk $7C.b		; 00 7C
	brk $BF.b		; 00 BF
	sbc $BE027D.l,X		; FF 7D 02 BE
	sta [$83.b]		; 87 83
	cmp [$C3.b]		; C7 C3
	cmp $20F3BA.l,X		; DF BA F3 20
	sbc $18FBC8.l,X		; FF C8 FB 18
	and $08FC2F.l,X		; 3F 2F FC 08
	bra 120.b		; 80 78
	cpy #$38.b		; C0 38
	lda $71.b,S		; A3 71
	inc $402C.w,X		; FE 2C 40
	iny		; C8
	ora ($1D.b),Y		; 11 1D
	sbc $012F.w		; ED 2F 01
	cmp #$B3.b		; C9 B3
	sta $B1DF.w,Y		; 99 DF B1
	txs		; 9A
	cpx #$1F.b		; E0 1F
	tsb $FB.b		; 04 FB
	sbc $6B06.w,Y		; F9 06 6B
	cmp $AABA.w,Y		; D9 BA AA
	sbc $074C26.l,X		; FF 26 4C 07
	ora [$1C.b]		; 07 1C
	ldx #$52.b		; A2 52
	cpx #$0D.b		; E0 0D
	asl $31.b		; 06 31
	cmp [$CC.b],Y		; D7 CC
	ora $0FFC.w,X		; 1D FC 0F
	sed		; F8
	asl A		; 0A
	ror $69E8.w,X		; 7E E8 69
	eor $FE72BF.l,X		; 5F BF 72 FE
	sep #$01		; E2 01
	plx		; FA
	bit $EFFF.w,X		; 3C FF EF
	eor ($1E.b),Y		; 51 1E
	adc $C6BF8E.l,X		; 7F 8E BF C6
	.db $62, $F4, $F8		; 62 F4 F8
	sbc $E5.b		; E5 E5
	lda [$35.b],Y		; B7 35
	pld		; 2B
	and $5A.b,X		; 35 5A
	bmi  44.b		; 30 2C
	plp		; 28
	rol $FDFE.w		; 2E FE FD
	adc $990096.l,X		; 7F 96 00 99
	cmp $DFF161.l,X		; DF 61 F1 DF
	phy		; 5A
	bra 122.b		; 80 7A
	sbc $F7FFF7.l		; EF F7 FF F7
	stz $F4.b		; 64 F4
	sta $8CE942.l		; 8F 42 E9 8C
	ldx #$C3.b		; A2 C3
	jsr $2B6F.w		; 20 6F 2B
	bit $CDD2.w,X		; 3C D2 CD
	beq   6.b		; F0 06
	cpx #$09.b		; E0 09
	jsr ($FECA.w,X)		; FC CA FE
	bra   0.b		; 80 00
	rti		; 40

	bra -20.b		; 80 EC
	plb		; AB
	inc $80C0.w,X		; FE C0 80
	bit $E2.b		; 24 E2
	beq -32.b		; F0 E0
	bcs  96.b		; B0 60
	brk $D2.b		; 00 D2
	jsr ($C2D9.w,X)		; FC D9 C2
	beq -21.b		; F0 EB
	cpy $B913.w		; CC 13 B9
	dec $F8E7.w		; CE E7 F8
	stp		; DB
	tyx		; BB
	jmp ($BFC1.w,X)		; 7C C1 BF
	phd		; 0B
	inc $E229.w,X		; FE 29 E2
	ldy $E281.w,X		; BC 81 E2
	ora ($82.b,X)		; 01 82
	lda $D71CC3.l,X		; BF C3 1C D7
	cmp ($7F.b,X)		; C1 7F
	sbc #$F3.b		; E9 F3
	rti		; 40

	brk $A0.b		; 00 A0
	brk $98.b		; 00 98
	brk $C7.b		; 00 C7
	.db $82, $F1, $FE		; 82 F1 FE
	and [$C0.b],Y		; 37 C0
	sbc $BF04F9.l,X		; FF F9 04 BF
	brk $5F.b		; 00 5F
	brk $67.b		; 00 67
	brk $B8.b		; 00 B8
	brk $DF.b		; 00 DF
	inc $05E8.w,X		; FE E8 05
	adc $0E02FF.l,X		; 7F FF 02 0E
	ora ($37.b,X)		; 01 37
	brk $C5.b		; 00 C5
	brk $09.b		; 00 09
	bcc -79.b		; 90 B1
	sta ($00.b,X)		; 81 00
	iny		; C8
	php		; 08
	ora ($F9.b,X)		; 01 F9
	ora $F600BF.l,X		; 1F BF 00 F6
	brk $C9.b		; 00 C9
	brk $3A.b		; 00 3A
	plx		; FA
	sta $087E00.l		; 8F 00 7E 08
	and [$5F.b],Y		; 37 5F
	lda $83D2.w,X		; BD D2 83
	bra -97.b		; 80 9F
	rts		; 60

	sbc $1C.b,S		; E3 1C
	cpx #$6A.b		; E0 6A
	xba		; EB
	jmp.w [$39C4]		; DC C4 39
	sta $BA6303.l,X		; 9F 03 63 BA
	cmp $F6F180.l,X		; DF 80 F1 F6
	txa		; 8A
	tax		; AA
	tyx		; BB
	dec $2F21.w,X		; DE 21 2F
	adc ($02.b),Y		; 71 02
	sec		; 38
	cmp $D8.b		; C5 D8
	and $24.b		; 25 24
	ldy #$09.b		; A0 09
	sbc $FDFD85.l,X		; FF 85 FD FD
	dec A		; 3A
	dec A		; 3A
	inc A		; 1A
	phx		; DA
	brk $EF.b		; 00 EF
	php		; 08
	cmp [$48.b],Y		; D7 48
	.db $42, $73		; 42 73
	adc $FC03C5.l,X		; 7F C5 03 FC
	stx $79.b		; 86 79
	cmp $D332.w		; CD 32 D3
	cmp ($46.b,S),Y		; D3 46
	.db $42, $7E		; 42 7E
	bit $F0DC.w,X		; 3C DC F0
	xce		; FB
	jsr ($2FF5.w,X)		; FC F5 2F
	cmp $47EF17.l,X		; DF 17 EF 47
	lda $80B966.l,X		; BF 66 B9 80
	sed		; F8
	brk $FD.b		; 00 FD
	sbc $18F8.w		; ED F8 18
	cmp [$F1.b],Y		; D7 F1
	sbc $D0F7F7.l		; EF F7 F7 D0
	cmp [$80.b],Y		; D7 80
	eor ($D3.b,X)		; 41 D3
	sbc [$7B.b]		; E7 7B
	cmp $FF07.w,X		; DD 07 FF
	inc $F3FF.w,X		; FE FF F3
	ora [$01.b]		; 07 01
	adc $03.b,S		; 63 03
	and $0A2F07.l,X		; 3F 07 2F 0A
	lda $F807.w,X		; BD 07 F8
	ora $9C.b,S		; 03 9C
	ora ($9F.b,X)		; 01 9F
	lda $C1.b,S		; A3 C1
	ora $D3.b,S		; 03 D3
	ora [$DF.b]		; 07 DF
	xce		; FB
	inc $FEF7.w,X		; FE F7 FE
	pld		; 2B
	pla		; 68
	adc $D3FF6A.l,X		; 7F 6A FF D3
	inc $30FD.w,X		; FE FD 30
	txs		; 9A
	sbc ($F3.b)		; F2 F3
	adc ($41.b,X)		; 61 41
	inx		; E8
	inc A		; 1A
	ror $685D.w,X		; 7E 5D 68
	cpy #$E2.b		; C0 E2
	stz $33.b		; 64 33
	phx		; DA
	sbc $D9AD.w,X		; FD AD D9
	sbc ($7E.b),Y		; F1 7E
	bit $DA.b,X		; 34 DA
	sbc [$1B.b],Y		; F7 1B
	and $C8D9CA.l		; 2F CA D9 C8
	bit $61.b		; 24 61
	bit $F8E2.w,X		; 3C E2 F8
	sbc $F18660.l,X		; FF 60 86 F1
	ldy $92.b,X		; B4 92
	inc $7CC0.w,X		; FE C0 7C
	sbc ($80.b),Y		; F1 80
	sta $F1.b		; 85 F1
	sta $FEC3.w,X		; 9D C3 FE
	dey		; 88
	sbc $F1F17C.l,X		; FF 7C F1 F1
	sbc $092120.l		; EF 20 21 09
	asl $1807.w,X		; 1E 07 18
	asl $E1FF.w,X		; 1E FF E1
	and ($3B.b,X)		; 21 3B
	mvp $8C,$73		; 44 73 8C
	cmp $3C.b,S		; C3 3C
	cmp [$B8.b]		; C7 B8
	dec $01E3.w,X		; DE E3 01
	cpx #$1E.b		; E0 1E
	inc $6007.w,X		; FE 07 60
	bit #$3C.b		; 89 3C
	ora ($7D.b,X)		; 01 7D
	inc $3B83.w,X		; FE 83 3B
	sec		; 38
	cpy #$30.b		; C0 30
	cpy #$87.b		; C0 87
	ora $16E01A.l,X		; 1F 1A E0 16
	cpx #$FC.b		; E0 FC
	cmp $D820.w,Y		; D9 20 D8
	jsr $10EC.w		; 20 EC 10
	sbc $EF2DFF.l,X		; FF FF 2D EF
	brk $E5.b		; 00 E5
	brk $E9.b		; 00 E9
	brk $F5.b		; 00 F5
	brk $36.b		; 00 36
	bra -73.b		; 80 B7
	cpy #$DB.b		; C0 DB
	ora $8FC7.w,Y		; 19 C7 8F
	clc		; 18
	cop $00.b		; 02 00
	tda		; 7B
	lda #$8A.b		; A9 8A
	brk $30.b		; 00 30
	brk $83.b		; 00 83
	tas		; 1B
	sbc $E6180E.l		; EF 0E 18 E6
	cmp $F78469.l,X		; DF 69 84 F7
	adc $00.b,X		; 75 00
	cmp $03F19E.l		; CF 9E F1 03
	ror $7FDF.w,X		; 7E DF 7F
	eor ($F1.b),Y		; 51 F1
	eor $006300.l		; 4F 00 63 00
	sbc ($B7.b)		; F2 B7
	cmp ($EE.b),Y		; D1 EE
	ora ($C0.b),Y		; 11 C0
	and $FF7947.l,X		; 3F 47 79 FF
	inc $00AF.w,X		; FE AF 00
	lda ($00.b,S),Y		; B3 00
	sta $6D00.w,X		; 9D 00 6D
	brk $61.b		; 00 61
	bne -85.b		; D0 AB
	inc A		; 1A
	sbc ($0A.b),Y		; F1 0A
	sbc ($0C.b,S),Y		; F3 0C
	cmp [$7F.b],Y		; D7 7F
	xce		; FB
	tsb $0C.b		; 04 0C
	sbc ($ED.b,S),Y		; F3 ED
	sbc ($A0.b),Y		; F1 A0
	lda ($05.b,X)		; A1 05
	sbc $05.b		; E5 05
	sbc $03.b,X		; F5 03
	sbc ($03.b,S),Y		; F3 03
	xce		; FB
	and ($FC.b,X)		; 21 FC
	sta $FDFE5B.l,X		; 9F 5B FE FD
	inc $F3.b		; E6 F3
	php		; 08
	sbc ($09.b,S),Y		; F3 09
	sbc ($7F.b,X)		; E1 7F
	beq  17.b		; F0 11
	cpx #$10.b		; E0 10
	rts		; 60

	tya		; 98
	bra 127.b		; 80 7F
	asl $F0.b,X		; 16 F0
	cpx $71.b		; E4 71
	inc $F0.b,X		; F6 F0
	adc $E0EE01.l,X		; 7F 01 EE E0
	sbc $6067E0.l		; EF E0 67 60
	brk $88.b		; 00 88
	stz $1FB9.w		; 9C B9 1F
	phy		; 5A
	bpl  58.b		; 10 3A
	ora ($EC.b,X)		; 01 EC
	eor ($1F.b)		; 52 1F
	dec $7B.b,X		; D6 7B
	lda ($AA.b,X)		; A1 AA
	lsr A		; 4A
	ldx $3CD7.w,Y		; BE D7 3C
	cpy #$0F.b		; C0 0F
	brk $3F.b		; 00 3F
	ora ($08.b,X)		; 01 08
	cmp ($4F.b)		; D2 4F
	ora [$9F.b]		; 07 9F
	tas		; 1B
	eor #$C7.b		; 49 C7
	sbc [$AB.b],Y		; F7 AB
	rol A		; 2A
	lda ($07.b),Y		; B1 07
	adc ($64.b,X)		; 61 64
	adc ($72.b,X)		; 61 72
	lsr A		; 4A
	and $21A4.w,X		; 3D A4 21
	.db $82, $AC, $20		; 82 AC 20
	ora #$8E.b		; 09 8E
	sbc ($A8.b)		; F2 A8
	txa		; 8A
	beq -116.b		; F0 8C
	ror $DA6A.w,X		; 7E 6A DA
	stz $41DA.w		; 9C DA 41
	stp		; DB
	eor ($62.b,X)		; 41 62
	tax		; AA
	jmp $54FE.w		; 4C FE 54
	.db $82, $52, $81		; 82 52 81
	txs		; 9A
	stp		; DB
	stz $DA.b,X		; 74 DA
	sbc $0A.b		; E5 0A
	jsl $E1E4E6.l		; 22 E6 E4 E1
	and $6A.b		; 25 6A
	cpx $E6.b		; E4 E6
	inc $FEEF.w,X		; FE EF FE
	ora $FCFAFE.l		; 0F FE FA FC
	pea $F8F8.w		; F4 F8 F8
	cpx #$D0.b		; E0 D0
	cpx #$E0.b		; E0 E0
	cpy #$FE.b		; C0 FE
	eor $FE.b,S		; 43 FE
	sei		; 78
	sbc ($F0.b)		; F2 F0
	inc $FCE0.w,X		; FE E0 FC
	cpy #$F8.b		; C0 F8
	cpy #$F0.b		; C0 F0
	sbc ($80.b),Y		; F1 80
	plx		; FA
	tas		; 1B
	inc $EFC0.w,X		; FE C0 EF
	bcc -25.b		; 90 E7
	cld		; D8
	sbc ($DE.b,X)		; E1 DE
	trb $5FE1.w		; 1C E1 5F
	sbc $1FFE17.l,X		; FF 17 FE 1F
	rti		; 40

	lda $C13787.l,X		; BF 87 37 C1
	ora $1EC0.w,Y		; 19 C0 1E
	cpy #$9C.b		; C0 9C
	lda ($FC.b,X)		; A1 FC
	sta $FE.b,S		; 83 FE
	jmp $EDBF69.l		; 5C 69 BF ED
	bpl -116.b		; 10 8C
	bvs   6.b		; 70 06
	sed		; F8
	inc $C156.w,X		; FE 56 C1
.ACCU 8
.INDEX 8
	sep #$F2		; E2 F2
	inc $1AF3.w		; EE F3 1A
	sta ($F1.b),Y		; 91 F1
	tda		; 7B
	.db $62, $B6, $4D		; 62 B6 4D
	sbc $B90A.w,X		; FD 0A B9
	ldy #$A8.b		; A0 A8
	and $8EDCFE.l,X		; 3F FE DC 8E
	phb		; 8B
	txy		; 9B
	iny		; C8
	sed		; F8
	rol $78FE.w,X		; 3E FE 78
	inx		; E8
	sbc $16F8FE.l,X		; FF FE F8 16
	adc $9C.b,S		; 63 9C
	tas		; 1B
	cpx $07.b		; E4 07
	plx		; FA
	inc $07FB.w,X		; FE FB 07
	sbc $D869.w,Y		; F9 69 D8
	rti		; 40

	cmp ($A4.b)		; D2 A4
	cop $F8.b		; 02 F8
	inc $F803.w,X		; FE 03 F8
	tya		; 98
	sty $FF.b		; 84 FF
	sbc $1EFD16.l,X		; FF 16 FD 1E
	sbc $FE3F.w,X		; FD 3F FE
	plb		; AB
	ror $3EDF.w,X		; 7E DF 3E
	sbc $9E.b,X		; F5 9E
	sbc $FFC6.w,Y		; F9 C6 FF
	beq -31.b		; F0 E1
	ldx $FF14.w		; AE 14 FF
	inc $FF1E.w,X		; FE 1E FF
	asl A		; 0A
	plb		; AB
.ACCU 8
.INDEX 8
	sep #$3F		; E2 3F
	cpy #$5E.b		; C0 5E
	eor ($6A.b,X)		; 41 6A
	lda ($5F.b),Y		; B1 5F
	inx		; E8
	ora $C2122C.l		; 0F 2C 12 C2
	jmp.w [$D2FE]		; DC FE D2
	ora $0B.b,S		; 03 0B
	dex		; CA
	inc $1EFF.w,X		; FE FF 1E
	sbc $DAEA20.l,X		; FF 20 EA DA
	cmp ($FF.b,X)		; C1 FF
	sbc $F2CF.w		; ED CF F2
	sbc [$FF.b]		; E7 FF
	lda [$FF.b],Y		; B7 FF
	sta ($FF.b,S),Y		; 93 FF
	plb		; AB
	ldy $9B.b,X		; B4 9B
	sbc $5934C9.l,X		; FF C9 34 59
	cmp $46F4.w,Y		; D9 F4 46
	inc A		; 1A
	cmp [$DF.b],Y		; D7 DF
	sbc $C676AA.l		; EF AA 76 C6
	sbc ($E8.b)		; F2 E8
.INDEX 16
	rep #$9C		; C2 9C
	inc A		; 1A
	jsr ($0BE2.w,X)		; FC E2 0B
	cpx $D92B.w		; EC 2B D9
	jsr ($F2B6.w,X)		; FC B6 F2
	cpx $70F0.w		; EC F0 70
	plb		; AB
	cmp ($D0.b,S),Y		; D3 D0
	stz $F8.b,X		; 74 F8
	inc $0960.w,X		; FE 60 09
	jsr ($F1B4.w,X)		; FC B4 F1
	rol $EB.b		; 26 EB
	tax		; AA
	ora $CA.b		; 05 CA
	clv		; B8
	tsb $EA26.w		; 0C 26 EA
	sbc $9009F8.l,X		; FF F8 09 90
	rti		; 40

	inc A		; 1A
	sbc ($F8.b,X)		; E1 F8
	jsl $F00000.l		; 22 00 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $0057.w		; ED 57 00
	sbc $04BFF8.l,X		; FF F8 BF 04
	inc $0DF8.w,X		; FE F8 0D
	ora ($04.b,X)		; 01 04
	cop $04.b		; 02 04
	ora $EC.b,S		; 03 EC
	sed		; F8
	asl $F8FE.w		; 0E FE F8
	and #$F8.b		; 29 F8
	xce		; FB
	sbc $060405.l,X		; FF 05 04 06
	tsb $07.b		; 04 07
	tsb $08.b		; 04 08
	cpy #$36F8.w		; C0 F8 36
	ora #$04.b		; 09 04
	asl A		; 0A
	sbc $0B04FD.l,X		; FF FD 04 0B
	tsb $0C.b		; 04 0C
	tsb $0D.b		; 04 0D
	tsb $0E.b		; 04 0E
	tsb $0F.b		; 04 0F
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	bmi  16.b		; 30 10
	tsb $11.b		; 04 11
	tsb $FF.b		; 04 FF
	lda $130412.l,X		; BF 12 04 13
	tsb $14.b		; 04 14
	tsb $15.b		; 04 15
	tsb $16.b		; 04 16
	tsb $17.b		; 04 17
	tsb $18.b		; 04 18
	tsb $19.b		; 04 19
	sbc $F8C2E7.l,X		; FF E7 C2 F8
	rol A		; 2A
	inc A		; 1A
	tsb $1B.b		; 04 1B
	tsb $1C.b		; 04 1C
	tsb $1D.b		; 04 1D
	tsb $1E.b		; 04 1E
	tsb $1F.b		; 04 1F
	inc $FEFF.w,X		; FE FF FE
	jsr $2104.w		; 20 04 21
	tsb $22.b		; 04 22
	tsb $AE.b		; 04 AE
	tsb $AF.b		; 04 AF
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	bit $23.b		; 24 23
	tsb $24.b		; 04 24
	tsb $25.b		; 04 25
	sbc $2604FF.l,X		; FF FF 04 26
	tsb $27.b		; 04 27
	tsb $28.b		; 04 28
	tsb $29.b		; 04 29
	tsb $2A.b		; 04 2A
	tsb $2B.b		; 04 2B
	tsb $2C.b		; 04 2C
	tsb $2D.b		; 04 2D
	adc $2E04FF.l,X		; 7F FF 04 2E
	tsb $B0.b		; 04 B0
	tsb $B1.b		; 04 B1
	tsb $B2.b		; 04 B2
	cpy #$22F8.w		; C0 F8 22
	and $043004.l		; 2F 04 30 04
	and ($04.b),Y		; 31 04
	sbc $0432FF.l,X		; FF FF 32 04
	and ($04.b,S),Y		; 33 04
	bit $04.b,X		; 34 04
	and $04.b,X		; 35 04
	rol $04.b,X		; 36 04
	and [$04.b],Y		; 37 04
	sec		; 38
	tsb $39.b		; 04 39
	tsb $FF.b		; 04 FF
	inc $043A.w,X		; FE 3A 04
	lda ($04.b,S),Y		; B3 04
	ldy $04.b,X		; B4 04
	lda $04.b,X		; B5 04
	ldx $C0.b,Y		; B6 C0
	sed		; F8
	jsr $043B.w		; 20 3B 04
	bit $3D04.w,X		; 3C 04 3D
	sbc $3E04FF.l,X		; FF FF 04 3E
	tsb $3F.b		; 04 3F
	tsb $40.b		; 04 40
	tsb $41.b		; 04 41
	tsb $42.b		; 04 42
	tsb $43.b		; 04 43
	tsb $44.b		; 04 44
	tsb $45.b		; 04 45
	sbc $4604DF.l,X		; FF DF 04 46
	tsb $B7.b		; 04 B7
	tsb $B8.b		; 04 B8
	tsb $B9.b		; 04 B9
	tsb $BA.b		; 04 BA
	tsb $BB.b		; 04 BB
	tsb $BC.b		; 04 BC
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	inc A		; 1A
	sbc $0447FF.l,X		; FF FF 47 04
	pha		; 48
	tsb $49.b		; 04 49
	tsb $4A.b		; 04 4A
	tsb $4B.b		; 04 4B
	tsb $4C.b		; 04 4C
	tsb $4D.b		; 04 4D
	tsb $4E.b		; 04 4E
	tsb $FF.b		; 04 FF
	sbc $50044F.l,X		; FF 4F 04 50
	tsb $51.b		; 04 51
	tsb $52.b		; 04 52
	tsb $53.b		; 04 53
	tsb $BD.b		; 04 BD
	tsb $BE.b		; 04 BE
	tsb $BF.b		; 04 BF
	tsb $FF.b		; 04 FF
	sbc $04C0.w,X		; FD C0 04
	cmp ($04.b,X)		; C1 04
	rep #$04		; C2 04
	cmp $04.b,S		; C3 04
	ror $C2C4.w,X		; 7E C4 C2
	sed		; F8
	ora ($54.b,S),Y		; 13 54
	tsb $55.b		; 04 55
	tsb $FF.b		; 04 FF
	sbc $570456.l,X		; FF 56 04 57
	tsb $58.b		; 04 58
	tsb $59.b		; 04 59
	tsb $5A.b		; 04 5A
	tsb $5B.b		; 04 5B
	tsb $5C.b		; 04 5C
	tsb $5D.b		; 04 5D
	tsb $FF.b		; 04 FF
	sbc $5F045E.l,X		; FF 5E 04 5F
	tsb $60.b		; 04 60
	tsb $61.b		; 04 61
	tsb $C4.b		; 04 C4
	tsb $C5.b		; 04 C5
	tsb $C6.b		; 04 C6
	tsb $C7.b		; 04 C7
	tsb $FF.b		; 04 FF
	inc $04C8.w,X		; FE C8 04
	cmp #$CA04.w		; C9 04 CA
	tsb $CB.b		; 04 CB
	tsb $CC.b		; 04 CC
	cpy #$12F8.w		; C0 F8 12
	.db $62, $04, $63		; 62 04 63
	tsb $64.b		; 04 64
	sbc $6504FF.l,X		; FF FF 04 65
	tsb $66.b		; 04 66
	tsb $67.b		; 04 67
	tsb $68.b		; 04 68
	tsb $69.b		; 04 69
	tsb $6A.b		; 04 6A
	tsb $6B.b		; 04 6B
	tsb $6C.b		; 04 6C
	sbc $6D04FF.l,X		; FF FF 04 6D
	tsb $6E.b		; 04 6E
	tsb $6F.b		; 04 6F
	tsb $CD.b		; 04 CD
	tsb $CE.b		; 04 CE
	tsb $CF.b		; 04 CF
	tsb $D0.b		; 04 D0
	tsb $D1.b		; 04 D1
	sbc $04FE.w,X		; FD FE 04
	cmp ($6C.b)		; D2 6C
	sbc ($D3.b),Y		; F1 D3
	tsb $D4.b		; 04 D4
	tsb $D5.b		; 04 D5
	cpy #$10F8.w		; C0 F8 10
	bvs   4.b		; 70 04
	adc ($04.b),Y		; 71 04
	adc ($FF.b)		; 72 FF
	sbc $047304.l,X		; FF 04 73 04
	stz $04.b,X		; 74 04
	adc $04.b,X		; 75 04
	ror $04.b,X		; 76 04
	adc [$04.b],Y		; 77 04
	sei		; 78
	tsb $79.b		; 04 79
	tsb $7A.b		; 04 7A
	sbc $7B04FF.l,X		; FF FF 04 7B
	tsb $7C.b		; 04 7C
	tsb $7D.b		; 04 7D
	tsb $D6.b		; 04 D6
	tsb $D7.b		; 04 D7
	tsb $D8.b		; 04 D8
	tsb $D9.b		; 04 D9
	tsb $DA.b		; 04 DA
	sbc $DB04DF.l,X		; FF DF 04 DB
	tsb $DC.b		; 04 DC
	tsb $DD.b		; 04 DD
	tsb $DE.b		; 04 DE
	tsb $DF.b		; 04 DF
	tsb $E0.b		; 04 E0
	tsb $E1.b		; 04 E1
	cpy #$0CF8.w		; C0 F8 0C
	sbc $047EFF.l,X		; FF FF 7E 04
	adc $048004.l,X		; 7F 04 80 04
	sta ($04.b,X)		; 81 04
	.db $82, $04, $83		; 82 04 83
	tsb $84.b		; 04 84
	tsb $85.b		; 04 85
	tsb $FF.b		; 04 FF
	sbc $870486.l,X		; FF 86 04 87
	tsb $88.b		; 04 88
	tsb $89.b		; 04 89
	tsb $8A.b		; 04 8A
	tsb $8B.b		; 04 8B
	tsb $E2.b		; 04 E2
	tsb $E3.b		; 04 E3
	tsb $FF.b		; 04 FF
	cld		; D8
	cpx $04.b		; E4 04
	sbc $04.b		; E5 04
	inc $04.b		; E6 04
	sbc [$04.b]		; E7 04
	inx		; E8
	ror $E4E9.w,X		; 7E E9 E4
	xba		; EB
	xce		; FB
	sbc $EB04EA.l,X		; FF EA 04 EB
	jmp ($0EF8.w,X)		; 7C F8 0E
	sty $8D04.w		; 8C 04 8D
	tsb $8E.b		; 04 8E
	tsb $8F.b		; 04 8F
	tsb $90.b		; 04 90
	tsb $91.b		; 04 91
	sbc $9204FF.l,X		; FF FF 04 92
	tsb $93.b		; 04 93
	tsb $94.b		; 04 94
	tsb $95.b		; 04 95
	tsb $96.b		; 04 96
	tsb $97.b		; 04 97
	tsb $EC.b		; 04 EC
	tsb $ED.b		; 04 ED
	sbc $EE041F.l,X		; FF 1F 04 EE
	tsb $EF.b		; 04 EF
	tsb $F0.b		; 04 F0
	tsb $F1.b		; 04 F1
	tsb $F2.b		; 04 F2
	tsb $F3.b		; 04 F3
	tsb $F4.b		; 04 F4
	lda $F5C2FF.l,X		; BF FF C2 F5
	tsb $F6.b		; 04 F6
	tsb $F7.b		; 04 F7
	dec A		; 3A
	sed		; F8
	bpl -104.b		; 10 98
	tsb $99.b		; 04 99
	tsb $9A.b		; 04 9A
	tsb $9B.b		; 04 9B
	sbc $9C04FF.l,X		; FF FF 04 9C
	tsb $9D.b		; 04 9D
	tsb $9E.b		; 04 9E
	tsb $9F.b		; 04 9F
	tsb $A0.b		; 04 A0
	tsb $A1.b		; 04 A1
	tsb $A2.b		; 04 A2
	tsb $F8.b		; 04 F8
	sbc $F9041F.l,X		; FF 1F 04 F9
	tsb $FA.b		; 04 FA
	tsb $FB.b		; 04 FB
	tsb $FC.b		; 04 FC
	tsb $FD.b		; 04 FD
	tsb $FE.b		; 04 FE
	tsb $FF.b		; 04 FF
	inc $D8FE.w,X		; FE FE D8
	ora $01.b		; 05 01
	ora $02.b		; 05 02
	ora $03.b		; 05 03
	ora $BA.b		; 05 BA
	beq  17.b		; F0 11
	lda $04.b,S		; A3 04
	ldy $04.b		; A4 04
	lda $FF.b		; A5 FF
	adc $04A604.l,X		; 7F 04 A6 04
	lda [$04.b]		; A7 04
	tay		; A8
	tsb $A9.b		; 04 A9
	tsb $AA.b		; 04 AA
	tsb $AB.b		; 04 AB
	tsb $AC.b		; 04 AC
	tsb $AD.b		; 04 AD
	sbc ($7F.b,X)		; E1 7F
	adc $06FFE1.l		; 6F E1 FF 06
	ora $07.b		; 05 07
	ora $08.b		; 05 08
	ora $09.b		; 05 09
	ora $0A.b		; 05 0A
	ora $F8.b		; 05 F8
	plb		; AB
	sty $0B.b		; 84 0B
	ora $0C.b		; 05 0C
	ora $0D.b		; 05 0D
	ora $0E.b		; 05 0E
	cpy #$09F8.w		; C0 F8 09
	sbc $2AFCF8.l,X		; FF F8 FC 2A
	brk $FF.b		; 00 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	eor [$00.b]		; 47 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5B.b		; 00 5B
	eor $10.b,X		; 55 10
	ora #$F8FE.w		; 09 FE F8
	lda $FE0F.w,X		; BD 0F FE
	sed		; F8
	jsr ($F8FE.w,X)		; FC FE F8
	jsr ($F8FE.w,X)		; FC FE F8
	jsr ($F8FE.w,X)		; FC FE F8
	jsr ($F8FE.w,X)		; FC FE F8
	asl A		; 0A
	eor $01.b,X		; 55 01
	rti		; 40

	cld		; D8
	lda $FCF8FE.l,X		; BF FE F8 FC
	inc $FCF8.w,X		; FE F8 FC
	inc $85F8.w,X		; FE F8 85
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A1.b		; 00 A1
	tax		; AA
	brk $FF.b		; 00 FF
	jsr $F8FE.w		; 20 FE F8
	bit $F8FF.w,X		; 3C FF F8
	eor ($82.b,X)		; 41 82
	sed		; F8
	and $FCF8C0.l,X		; 3F C0 F8 FC
	tax		; AA
	tax		; AA
	cpy #$FCF8.w		; C0 F8 FC
	cpy #$FCF8.w		; C0 F8 FC
	cpy #$FCF8.w		; C0 F8 FC
	cpy #$49F8.w		; C0 F8 49
	cop $D8.b		; 02 D8
	and $FCF8C0.l,X		; 3F C0 F8 FC
	cpy #$FCF8.w		; C0 F8 FC
	cpy #$FCF8.w		; C0 F8 FC
	cmp $7F.b,S		; C3 7F
	cpy #$DFF8.w		; C0 F8 DF
	cop $24.b		; 02 24
	inc $240D.w,X		; FE 0D 24
	tsb $24.b		; 04 24
	ora $0324.w,X		; 1D 24 03
	bit $05.b		; 24 05
	pea $F48F.w		; F4 8F F4
	cpy #$2FF8.w		; C0 F8 2F
	and $24.b		; 25 24
	and [$24.b]		; 27 24
	inc A		; 1A
	bit $0F.b		; 24 0F
	eor [$FF.b]		; 47 FF
	jsr ($2410.w,X)		; FC 10 24
	ora ($F4.b),Y		; 11 F4
	rti		; 40

	sed		; F8
	rtl		; 6B

	jsl $202320.l		; 22 20 23 20
	bit $20.b		; 24 20
	sbc $FF.b,S		; E3 FF
	bit $20.b,X		; 34 20
	and $F8.b,X		; 35 F8
	rol $20.b,X		; 36 20
	and [$20.b],Y		; 37 20
	sec		; 38
	jsr $2039.w		; 20 39 20
	dec A		; 3A
	sbc $208F.w,X		; FD 8F 20
	tya		; 98
	cpy #$28F8.w		; C0 F8 28
	and ($20.b),Y		; 31 20
	and ($20.b)		; 32 20
	and ($20.b,S),Y		; 33 20
	eor $20.b,S		; 43 20
	mvp $57,$FF		; 44 FF 57
	sed		; F8
	eor $20.b		; 45 20
	lsr $20.b		; 46 20
	eor [$20.b]		; 47 20
	pha		; 48
	jsr $2049.w		; 20 49 20
	stz $F840.w,X		; 9E 40 F8
	eor ($FE.b,S),Y		; 53 FE
	sed		; F8
	jsr ($02FD.w,X)		; FC FD 02
	inc $FCF8.w,X		; FE F8 FC
	inc $98F8.w,X		; FE F8 98
	ora $24.b,S		; 03 24
	ora [$24.b]		; 07 24
	php		; 08
	tsb $FEE1.w		; 0C E1 FE
	cpy $08.b		; C4 08
	pea $F604.w		; F4 04 F6
	cop $F6.b		; 02 F6
	cmp $6F.b,X		; D5 6F
	cpx $F21C.w		; EC 1C F2
	cmp $D8FA.w,Y		; D9 FA D8
	trb $FE.b		; 14 FE
	cpx #$1010.w		; E0 10 10
	bit $0E.b		; 24 0E
	bit $14.b		; 24 14
	tsb $12E1.w		; 0C E1 12
	sty $D211.w		; 8C 11 D2
	ora $F427F6.l		; 0F F6 27 F4
	tax		; AA
	sbc $F629EC.l,X		; FF EC 29 F6
	cmp $D8FA.w,Y		; D9 FA D8
	trb $3E.b		; 14 3E
	cld		; D8
	lsr $1B.b,X		; 56 1B
	jsr $201D.w		; 20 1D 20
	phd		; 0B
	jsr $0F08.w		; 20 08 0F
	cpx #$0920.w		; E0 20 09
	jsr $2001.w		; 20 01 20
	sbc $F8C0F4.l,X		; FF F4 C0 F8
	and $47FF28.l		; 2F 28 FF 47
	jsr $201A.w		; 20 1A 20
	clc		; 18
	jsr $2014.w		; 20 14 20
	asl $20.b,X		; 16 20
	asl $2E20.w		; 0E 20 2E
	pea $FFFD.w		; F4 FD FF
	ldx $FCC8.w,Y		; BE C8 FC
	cpy #$AAF8.w		; C0 F8 AA
	cmp $C324.w,X		; DD 24 C3
	bit $C5.b		; 24 C5
	bit $A3.b		; 24 A3
	bit $BD.b		; 24 BD
	bit $E4.b		; 24 E4
	bit $FF.b		; 24 FF
	sbc ($00.b,X)		; E1 00
	bit $80.b		; 24 80
	bit $E5.b		; 24 E5
	bit $A5.b		; 24 A5
	bit $41.b		; 24 41
	bit $FF.b		; 24 FF
	inc $24.b		; E6 24
	lda $24D4FF.l		; AF FF D4 24
	bit $24.b,X		; 34 24
	eor [$7E.b],Y		; 57 7E
	inx		; E8
	ora ($C0.b),Y		; 11 C0
	sed		; F8
	asl $24E7.w		; 0E E7 24
	inx		; E8
	bit $C8.b		; 24 C8
	bit $AB.b		; 24 AB
	sbc $4824FF.l,X		; FF FF 24 48
	bit $E9.b		; 24 E9
	bit $EA.b		; 24 EA
	bit $8B.b		; 24 8B
	bit $C7.b		; 24 C7
	bit $AC.b		; 24 AC
	bit $EB.b		; 24 EB
	bit $33.b		; 24 33
	adc $EC24FD.l,X		; 7F FD 24 EC
	bit $D5.b		; 24 D5
	bit $43.b		; 24 43
	bit $64.b		; 24 64
	cpy #$20F8.w		; C0 F8 20
	brk $F8.b		; 00 F8
	eor ($37.b,X)		; 41 37
	jsr $2088.w		; 20 88 20
	sbc $20A8FE.l,X		; FF FE A8 20
	lda $20.b,S		; A3 20
	ldy $20.b		; A4 20
	jmp ($A520.w)		; 6C 20 A5
	bit $98C9.w,X		; 3C C9 98
	jsr $205D.w		; 20 5D 20
	cmp $20EFF7.l		; CF F7 EF 20
	txy		; 9B
	jsr $3ED4.w		; 20 D4 3E
	iny		; C8
	rol $46.b		; 26 46
	jsr $2094.w		; 20 94 20
	ldx $AB20.w		; AE 20 AB
	jmp $4CC9.w		; 4C C9 4C
	sbc $20AF.w,X		; FD AF 20
	ldy $C93C.w		; AC 3C C9
	stz $6A20.w,X		; 9E 20 6A
	jsr $206B.w		; 20 6B 20
	lda ($20.b,X)		; A1 20
	cmp $3E.b,X		; D5 3E
	iny		; C8
	eor $FE.b,X		; 55 FE
	cmp $FCF8C0.l,X		; DF C0 F8 FC
	cpy #$51F8.w		; C0 F8 51
	tsa		; 3B
	bit $3C.b		; 24 3C
	bit $3D.b		; 24 3D
	bit $3E.b		; 24 3E
	bit $3F.b		; 24 3F
	bit $40.b		; 24 40
	pha		; 48
	sbc #$BFFF.w		; E9 FF BF
	and $24.b,X		; 35 24
	.db $42, $24		; 42 24
	and $24.b,S		; 23 24
	eor ($24.b)		; 52 24
	eor ($24.b,S),Y		; 53 24
	mvn $55,$24		; 54 24 55
	bit $56.b		; 24 56
	sbc $E840FF.l,X		; FF FF 40 E8
	jsl $4B244A.l		; 22 4A 24 4B
	bit $4C.b		; 24 4C
	bit $4D.b		; 24 4D
	bit $4E.b		; 24 4E
	bit $4F.b		; 24 4F
	bit $50.b		; 24 50
	bit $44.b		; 24 44
	adc $5124BC.l,X		; 7F BC 24 51
	bit $5F.b		; 24 5F
	bit $60.b		; 24 60
	bit $61.b		; 24 61
	nop		; EA
	.db $62, $24, $63		; 62 24 63
	bvs -95.b		; 70 A1
	rti		; 40

	inx		; E8
	stz $FE.b		; 64 FE
	ora ($20.b,X)		; 01 20
	trb $D380.w		; 1C 80 D3
	jsr ($5207.w,X)		; FC 07 52
	and $74D17E.l		; 2F 7E D1 74
	cmp ($EE.b)		; D2 EE
	ora $F8C0.w		; 0D C0 F8
	plp		; 28
	asl $2920.w		; 0E 20 29
	bra -45.b		; 80 D3
	rti		; 40

	eor #$F6FC.w		; 49 FC F6
	trb $74.b		; 14 74
	cmp ($EE.b,S),Y		; D3 EE
	jmp ($16D0.w,X)		; 7C D0 16
	lda $C0C6.w		; AD C6 C0
	inx		; E8
	jsr ($F8C0.w,X)		; FC C0 F8
	sta ($1B.b,S),Y		; 93 1B
	cpy $D699.w		; CC 99 D6
	tsx		; BA
	ldx $069C.w,Y		; BE 9C 06
	plx		; FA
	lda $D6.b,S		; A3 D6
	ora ($24.b,X)		; 01 24
	phd		; 0B
	inc $98BA.w,X		; FE BA 98
	asl $C0.b,X		; 16 C0
	sed		; F8
	bpl  40.b		; 10 28
	iny		; C8
	txy		; 9B
	ldx $1B9E.w,Y		; BE 9E 1B
	sbc $13.b,X		; F5 13
	bit $16.b		; 24 16
	bcs -71.b		; B0 B9
	clc		; 18
	inc $98BA.w,X		; FE BA 98
	asl $40.b,X		; 16 40
	sed		; F8
	lsr $2058.w		; 4E 58 20
	sbc $20596F.l,X		; FF 6F 59 20
	phy		; 5A
	jsr $205B.w		; 20 5B 20
	jmp $204020.l		; 5C 20 40 20
	lsr $20.b,X		; 56 20
	eor [$84.b],Y		; 57 84
	cmp ($5E.b),Y		; D1 5E
	and $D178F6.l,X		; 3F F6 78 D1
	adc $4220.w		; 6D 20 42
	jsr $F86E.w		; 20 6E F8
	adc $20F8C0.l		; 6F C0 F8 20
	lsr A		; 4A
	jsr $EFFF.w		; 20 FF EF
	adc $20.b		; 65 20
	ror $20.b		; 66 20
	adc [$20.b]		; 67 20
	pla		; 68
	jsr $2069.w		; 20 69 20
	adc $20.b,S		; 63 20
	stz $84.b		; 64 84
	cmp ($4C.b,S),Y		; D3 4C
	ora $7720FB.l,X		; 1F FB 20 77
	jsr $2051.w		; 20 51 20
	sei		; 78
	sed		; F8
	adc $F040.w,Y		; 79 40 F0
	jmp ($203B.w)		; 6C 3B 20
	bvs -95.b		; 70 A1
	beq  32.b		; F0 20
	adc ($FE.b),Y		; 71 FE
	rts		; 60

	cpy #$37F8.w		; C0 F8 37
	bit $7A.b,X		; 34 7A
	jsr $FD7B.w		; 20 7B FD
	sbc $807C20.l,X		; FF 20 7C 80
	inx		; E8
	stz $72.b,X		; 74 72
	jsr $2073.w		; 20 73 20
	stz $20.b,X		; 74 20
	adc $20.b,X		; 75 20
	ror $20.b,X		; 76 20
	eor $20.b,X		; 55 20
	ply		; 7A
	sbc ($7F.b,X)		; E1 7F
	dey		; 88
	beq  19.b		; F0 13
	cpy #$1EF8.w		; C0 F8 1E
	adc $7E20.w,X		; 7D 20 7E
	rol $FC91.w,X		; 3E 91 FC
	pha		; 48
	jsr $EDAB.w		; 20 AB ED
	.db $62, $20, $8A		; 62 20 8A
	dey		; 88
	beq  19.b		; F0 13
	rti		; 40

	cpx #$C0FC.w		; E0 FC C0
	sed		; F8
	lda ($04.b,X)		; A1 04
	bne -39.b		; D0 D9
	tas		; 1B
	.db $82, $99, $06		; 82 99 06
	lda $BD.b,X		; B5 BD
	bit $0C.b		; 24 0C
	bra 120.b		; 80 78
	tas		; 1B
	cpy #$18F8.w		; C0 F8 18
	ora $28D9D0.l		; 0F D0 D9 28
	.db $82, $99, $13		; 82 99 13
	bit $19.b		; 24 19
	ldx $B1.b,Y		; B6 B1
	bra 120.b		; 80 78
	tas		; 1B
	rti		; 40

	sed		; F8
	eor ($0C.b)		; 52 0C
	asl $C9.b,X		; 16 C9
	cop $02.b		; 02 02
	cmp #$FC1F.w		; C9 1F FC
	ora #$0050.w		; 09 50 00
	brk $CB.b		; 00 CB
	beq   7.b		; F0 07
	inc $ECC1.w,X		; FE C1 EC
	jsr ($631B.w,X)		; FC 1B 63
	cpy #$23F8.w		; C0 F8 23
	ora $C916.w,Y		; 19 16 C9
	ora $FC2DFC.l		; 0F FC 2D FC
	asl $21.b,X		; 16 21
	lsr $00.b		; 46 00
	wai		; CB
	sed		; F8
	asl $27FE.w		; 0E FE 27
	jsr ($3401.w,X)		; FC 01 34
	rti		; 40

	sed		; F8
	adc $4C.b,S		; 63 4C
	bvc  70.b		; 50 46
	inc $C246.w,X		; FE 46 C2
	tsb $66.b		; 04 66
	ora ($FC.b)		; 12 FC
	phd		; 0B
	bit $C0EE.w		; 2C EE C0
	sed		; F8
	and ($40.b,X)		; 21 40
	ora ($4C.b,X)		; 01 4C
	bvc  70.b		; 50 46
	inc $C246.w,X		; FE 46 C2
	bit $22.b,X		; 34 22
	bcc  -4.b		; 90 FC
	clc		; 18
	inc $EE40.w		; EE 40 EE
	asl A		; 0A
	bpl -64.b		; 10 C0
	inx		; E8
	adc $96.b		; 65 96
	sbc ($8E.b)		; F2 8E
	tsx		; BA
	dec A		; 3A
	rol $0C.b,X		; 36 0C
	pld		; 2B
	sty $F2.b,X		; 94 F2
	asl $84.b		; 06 84
	beq  21.b		; F0 15
	cpy #$18F8.w		; C0 F8 18
	lsr $8E2F.w		; 4E 2F 8E
	tyx		; BB
	.db $62, $FD, $34		; 62 FD 34
	ora $13F2.w,Y		; 19 F2 13
	sty $F0.b		; 84 F0
	ora $40.b,X		; 15 40
	sed		; F8
	mvn $20,$72		; 54 72 20
	sty $20.b		; 84 20
	adc $2085BF.l		; 6F BF 85 20
	stx $20.b		; 86 20
	sta [$F8.b]		; 87 F8
	sta $4289.w,Y		; 99 89 42
	rtl		; 6B

	stx $20.b,Y		; 96 20
	sta [$20.b],Y		; 97 20
	rol $EDFF.w,X		; 3E FF ED
	rol $2868.w,X		; 3E 68 28
	adc $9020.w,X		; 7D 20 90
	jsr $2091.w		; 20 91 20
	sta ($20.b)		; 92 20
	sta ($F8.b,S),Y		; 93 F8
	sta $4295.w,Y		; 99 95 42
	rtl		; 6B

	eor $D7.b,S		; 43 D7
	lsr $9D20.w,X		; 5E 20 9D
	jsr $3E4D.w		; 20 4D 3E
	pla		; 68
	eor [$C0.b],Y		; 57 C0
	sed		; F8
	asl $081B.w		; 0E 1B 08
	xba		; EB
	php		; 08
	jsr $0403.w		; 20 03 04
	lda $41.b,X		; B5 41
	brk $7C.b		; 00 7C
	.db $82, $EE, $7C		; 82 EE 7C
	.db $82, $FC, $E8		; 82 FC E8
	sbc $7A15.w		; ED 15 7A
	beq  18.b		; F0 12
	cpy #$0EF8.w		; C0 F8 0E
	plp		; 28
	php		; 08
	xba		; EB
	trb $20.b		; 14 20
	bpl   4.b		; 10 04
	lda $7C.b,X		; B5 7C
	.db $82, $84, $AA		; 82 84 AA
	inc $827C.w		; EE 7C 82
	jsr ($7A2B.w,X)		; FC 2B 7A
	beq  19.b		; F0 13
	cpy #$FCD0.w		; C0 D0 FC
	cpy #$FCF8.w		; C0 F8 FC
	sbc $2080D7.l,X		; FF D7 80 20
	stz $243B.w,X		; 9E 3B 24
	sta $5A24.w,Y		; 99 24 5A
	bit $82.b		; 24 82
	bit $6D.b		; 24 6D
	bit $9A.b		; 24 9A
	.db $82, $C8, $19		; 82 C8 19
	brk $F8.b		; 00 F8
	inc A		; 1A
	sbc $244AAB.l,X		; FF AB 4A 24
	sta $246624.l,X		; 9F 24 66 24
	stx $7724.w		; 8E 24 77
	bit $A0.b		; 24 A0
	cpy #$34F8.w		; C0 F8 34
	txa		; 8A
	beq  38.b		; F0 26
	eor $05.b,X		; 55 05
	cpy #$0EF8.w		; C0 F8 0E
	trb $E15C.w		; 1C 5C E1
	cpy $3A62.w		; CC 62 3A
	cpy $E23E.w		; CC 3E E2
	lsr $CA.b		; 46 CA
	sed		; F8
	lda $AA.b,X		; B5 AA
	inc $CA.b,X		; F6 CA
	rti		; 40

	cpx #$C00A.w		; E0 0A C0
	sed		; F8
	clc		; 18
	and #$E15C.w		; 29 5C E1
	cpy $3A62.w		; CC 62 3A
	dex		; CA
	asl $A0D4.w		; 0E D4 A0
	tax		; AA
	lsr $CA.b		; 46 CA
	sed		; F8
	inc $CA.b,X		; F6 CA
	rti		; 40

	cpx #$C00A.w		; E0 0A C0
	sed		; F8
	clc		; 18
	brk $E8.b		; 00 E8
	jsr ($F8C0.w,X)		; FC C0 F8
	jsr ($156D.w,X)		; FC 6D 15
	cpy #$85F8.w		; C0 F8 85
	tas		; 1B
	jmp $1D89.w		; 4C 89 1D
	sty $04A9.w		; 8C A9 04
	rol $2788.w,X		; 3E 88 27
	rti		; 40

	iny		; C8
	ora $0A894C.l		; 0F 4C 89 0A
	nop		; EA
	inc $3E19.w,X		; FE 19 3E
	dey		; 88
	tsb $3EFA.w		; 0C FA 3E
	dey		; 88
	inc A		; 1A
	rti		; 40

	sed		; F8
	jmp $BAC4.w		; 4C C4 BA
	txy		; 9B
	sbc $20AA.w,X		; FD AA 20
	stz $58C2.w		; 9C C2 58
	tsb $2058.w		; 0C 58 20
	ldx $20.b		; A6 20
	lda [$AC.b]		; A7 AC
	tad		; 5B
	rol $8A.b,X		; 36 8A
	ldx $90.b,Y		; B6 90
	bpl -34.b		; 10 DE
	lda $0CD83E.l		; AF 3E D8 0C
	cpy $BA.b		; C4 BA
	lda ($20.b,X)		; A1 20
	ldx #$58C2.w		; A2 C2 58
	tsb $204A.w		; 0C 4A 20
	adc ($20.b,X)		; 61 20
	lda $5BAC.w		; AD AC 5B
	nop		; EA
	sbc $B68A36.l,X		; FF 36 8A B6
	bcc  16.b		; 90 10
	ror $9AD0.w,X		; 7E D0 9A
	cpy #$F2F8.w		; C0 F8 F2
	and $01.b		; 25 01
	and $02.b		; 25 02
	and $03.b		; 25 03
	and $04.b		; 25 04
	and $FF.b		; 25 FF
	sbc $062505.l,X		; FF 05 25 06
	and $07.b		; 25 07
	and $08.b		; 25 08
	and $09.b		; 25 09
	and $20.b		; 25 20
	and $21.b		; 25 21
	and $22.b		; 25 22
	and $87.b		; 25 87
	sbc [$23.b],Y		; F7 23
	and $24.b		; 25 24
	and $FF.b		; 25 FF
	rol $25.b		; 26 25
	and [$25.b]		; 27 25
	cpy #$1BF8.w		; C0 F8 1B
	bpl  37.b		; 10 25
	sbc $2511FF.l,X		; FF FF 11 25
	ora ($25.b)		; 12 25
	ora ($25.b,S),Y		; 13 25
	trb $25.b		; 14 25
	ora $25.b,X		; 15 25
	asl $25.b,X		; 16 25
	ora [$25.b],Y		; 17 25
	clc		; 18
	and $FF.b		; 25 FF
	sbc $302519.l,X		; FF 19 25 30
	and $31.b		; 25 31
	and $32.b		; 25 32
	and $33.b		; 25 33
	and $34.b		; 25 34
	and $35.b		; 25 35
	and $36.b		; 25 36
	and $AA.b		; 25 AA
	sta $37.b,X		; 95 37
	cpy #$1CF8.w		; C0 F8 1C
	brk $F8.b		; 00 F8
	eor ($80.b,X)		; 41 80
	dec $AAC2.w		; CE C2 AA
	cop $CC.b		; 02 CC
	tad		; 5B
	stx $CA.b		; 86 CA
	mvn $FC,$AD		; 54 AD FC
	ror $7ECA.w		; 6E CA 7E
	tya		; 98
	ora ($C0.b)		; 12 C0
	sed		; F8
	asl $CE80.w		; 0E 80 CE
.ACCU 16
	rep #$AA		; C2 AA
	and [$CC.b]		; 27 CC
	tad		; 5B
	ldy $AA.b		; A4 AA
	stx $CA.b		; 86 CA
	jsr ($CA6E.w,X)		; FC 6E CA
	ror $1298.w,X		; 7E 98 12
	rti		; 40

	sed		; F8
	eor ($C4.b,X)		; 41 C4
	sed		; F8
	and $F8C0.w,X		; 3D C0 F8
	sta ($DE.b,X)		; 81 DE
	xce		; FB
	brk $F8.b		; 00 F8
	jsr ($F080.w,X)		; FC 80 F0
	sta $245D.w		; 8D 5D 24
	dec $52.b		; C6 52
	pld		; 2B
	cmp $DA24.w,Y		; D9 24 DA
	rti		; 40

	pld		; 2B
	adc ($24.b),Y		; 71 24
	sbc $FF.b,S		; E3 FF
	sbc ($24.b),Y		; F1 24
	ldx $24.b		; A6 24
	bne  36.b		; D0 24
	inc $EF24.w		; EE 24 EF
	bit $F0.b		; 24 F0
	sbc ($D4.b)		; F2 D4
	bit $FA.b		; 24 FA
	lda $BE98.w		; AD 98 BE
	iny		; C8
	ora $0CF8C0.l		; 0F C0 F8 0C
	ror A		; 6A
	bit $F5.b		; 24 F5
	bit $F6.b		; 24 F6
	eor ($29.b)		; 52 29
	cmp $1739FE.l,X		; DF FE 39 17
	rol $2A40.w,X		; 3E 40 2A
	jmp ($AF64.w,X)		; 7C 64 AF
	tsb $41.b		; 04 41
	inc $24F8.w,X		; FE F8 24
	sbc $FA24.w,Y		; F9 24 FA
	lsr $F2D5.w,X		; 5E D5 F2
	cmp $24.b,X		; D5 24
	stz $F8C0.w,X		; 9E C0 F8
	trb $F8EE.w		; 1C EE F8
	asl $FCF6.w		; 0E F6 FC
	dec $1DE8.w,X		; DE E8 1D
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	bpl -86.b		; 10 AA
	ldy #$1F.b		; A0 1F
	cli		; 58
	sbc ($06.b,X)		; E1 06
	mvp $7C,$BC		; 44 BC 7C
	sei		; 78
	sty $F6.b		; 84 F6
	rol $E2.b		; 26 E2
	tax		; AA
	ldy #$C0.b		; A0 C0
	sed		; F8
	and $00.b,S		; 23 00
	sta ($06.b)		; 92 06
	mvp $7C,$BC		; 44 BC 7C
	sei		; 78
	sty $F6.b		; 84 F6
	rol $E2.b		; 26 E2
	inc $C0FF.w,X		; FE FF C0
	bne  36.b		; D0 24
	rti		; 40

	sed		; F8
	dec A		; 3A
	rts		; 60

	and ($61.b,X)		; 21 61
	and ($62.b,X)		; 21 62
	and ($63.b,X)		; 21 63
	and ($64.b,X)		; 21 64
	and ($65.b,X)		; 21 65
	and ($66.b,X)		; 21 66
	sbc $6721FF.l,X		; FF FF 21 67
	and ($40.b,X)		; 21 40
	and ($41.b,X)		; 21 41
	and ($42.b,X)		; 21 42
	and ($43.b,X)		; 21 43
	and ($44.b,X)		; 21 44
	and ($45.b,X)		; 21 45
	and ($46.b,X)		; 21 46
	lda $4721FF.l,X		; BF FF 21 47
	and ($48.b,X)		; 21 48
	and ($49.b,X)		; 21 49
	and ($C0.b,X)		; 21 C0
	sed		; F8
	tas		; 1B
	bvs  33.b		; 70 21
	adc ($21.b),Y		; 71 21
	adc ($21.b)		; 72 21
	adc ($FF.b,S),Y		; 73 FF
	sbc $217421.l,X		; FF 21 74 21
	adc $21.b,X		; 75 21
	ror $21.b,X		; 76 21
	adc [$21.b],Y		; 77 21
	bvc  33.b		; 50 21
	eor ($21.b),Y		; 51 21
	eor ($21.b)		; 52 21
	eor ($FF.b,S),Y		; 53 FF
	eor [$21.b],Y		; 57 21
	mvn $55,$21		; 54 21 55
	and ($56.b,X)		; 21 56
	and ($57.b,X)		; 21 57
	and ($58.b,X)		; 21 58
	and ($59.b,X)		; 21 59
	cpy #$F8.b		; C0 F8
	trb $F8EE.w		; 1C EE F8
	bpl  -3.b		; 10 FD
	ldx $34.b,Y		; B6 34
	sed		; F8
	and ($EE.b,X)		; 21 EE
	sed		; F8
	tsb $2037.w		; 0C 37 20
	sbc ($20.b),Y		; F1 20
	dec $C318.w		; CE 18 C3
	sbc ($00.b,S),Y		; F3 00
	cmp [$22.b]		; C7 22
	adc $51B8B5.l,X		; 7F B5 B8 51
	sty $20.b		; 84 20
	eor ($20.b,S),Y		; 53 20
	pea $ED20.w		; F4 20 ED
	ldy $1318.w,X		; BC 18 13
	cpy #$F8.b		; C0 F8
	tsb $7AD2.w		; 0C D2 7A
	ror $6D.b		; 66 6D
	lda $4DC318.l		; AF 18 C3 4D
	brk $C7.b		; 00 C7
	and ($C0.b),Y		; 31 C0
	adc $FC90.w,Y		; 79 90 FC
	lda $209F.w,Y		; B9 9F 20
	sbc [$BC.b],Y		; F7 BC
	clc		; 18
	ora ($7A.b,S),Y		; 13 7A
	and $D8C0.w,X		; 3D C0 D8
	and ($D0.b),Y		; 31 D0
	sed		; F8
	ora $F8C0.w		; 0D C0 F8
	bpl 111.b		; 10 6F
	rts		; 60

	adc $4394.w		; 6D 94 43
	.db $42, $B8		; 42 B8
	ora #$85.b		; 09 85
	jsr $D6F2.w		; 20 F2 D6
	xba		; EB
	rti		; 40

	bit $71F2.w,X		; 3C F2 71
	brk $F0.b		; 00 F0
	and $79.b,S		; 23 79
	rts		; 60

	adc [$94.b],Y		; 77 94
	eor $42.b,S		; 43 42
	clv		; B8
	ora #$91.b		; 09 91
	lda ($6A.b),Y		; B1 6A
	jsr $FAFB.w		; 20 FB FA
	phk		; 4B
	sbc ($71.b)		; F2 71
	cpy #$E8.b		; C0 E8
	rol $F080.w		; 2E 80 F0
	bmi  -2.b		; 30 FE
	jsr ($550B.w,X)		; FC 0B 55
	tay		; A8
	dec $91.b,X		; D6 91
	inc $0224.w,X		; FE 24 02
	ply		; 7A
	ldx $FA62.w		; AE 62 FA
	tsb $00.b		; 04 00
	plp		; 28
	ora $A0AA.w,Y		; 19 AA A0
	cpy #$F8.b		; C0 F8
	bpl -46.b		; 10 D2
	.db $62, $FE, $24		; 62 FE 24
	cop $7A.b		; 02 7A
	ldx $FA62.w		; AE 62 FA
	inc $7E5A.w		; EE 5A 7E
	sbc $C0.b,X		; F5 C0
	sed		; F8
	rol $40.b		; 26 40
	sed		; F8
	bit $2071.w,X		; 3C 71 20
	lda #$20.b		; A9 20
	tax		; AA
	dey		; 88
	eor ($82.b,X)		; 41 82
	jmp ($F274.w)		; 6C 74 F2
	lda ($20.b),Y		; B1 20
	xba		; EB
	eor [$D6.b],Y		; 57 D6
	jsr $C252.w		; 20 52 C2
	tay		; A8
	ora [$C0.b],Y		; 17 C0
	sed		; F8
	bpl 124.b		; 10 7C
	rts		; 60

	lda $88B020.l		; AF 20 B0 88
	eor ($82.b,X)		; 41 82
	jmp ($5563.w)		; 6C 63 55
	stz $F2.b,X		; 74 F2
	ldx $F0.b,Y		; B6 F0
	rts		; 60

.ACCU 16
	rep #$A8		; C2 A8
	ora [$52.b],Y		; 17 52
	sed		; F8
	ora [$46.b],Y		; 17 46
	sed		; F8
	ora $19F8E8.l		; 0F E8 F8 19
	lda $8002.w,X		; BD 02 80
	sed		; F8
	asl $F284.w		; 0E 84 F2
	tsb $0520.w		; 0C 20 05
	bra -37.b		; 80 DB
	dex		; CA
	tsx		; BA
	inc $F545.w		; EE 45 F5
	inc $06.b,X		; F6 06
	nop		; EA
	ror $406E.w		; 6E 6E 40
	sed		; F8
	ora $F284.w,X		; 1D 84 F2
	ora $2A20.w,Y		; 19 20 2A
	mvp $80,$11		; 44 11 80
	stp		; DB
	ply		; 7A
	phx		; DA
	rti		; 40

	txa		; 8A
	inc $13.b,X		; F6 13
	nop		; EA
	cmp $AF.b,X		; D5 AF
	ror $406E.w		; 6E 6E 40
	sed		; F8
	bit $F074.w		; 2C 74 F0
	ora $10F840.l,X		; 1F 40 F8 10
	adc ($20.b)		; 72 20
	lda ($20.b)		; B2 20
	lda ($8E.b,S),Y		; B3 8E
	pld		; 2B
	lda $90FA.w,X		; BD FA 90
	bit $72B4.w		; 2C B4 72
	sbc ($97.b),Y		; F1 97
	jsr $72B5.w		; 20 B5 72
	sbc ($FE.b),Y		; F1 FE
	cpx #$16.b		; E0 16
	cpy #$F8.b		; C0 F8
	asl $207D.w		; 0E 7D 20
	lda [$D7.b],Y		; B7 D7
	lsr $B820.w,X		; 5E 20 B8
	jsr $8EB9.w		; 20 B9 8E
	and #$2C90.w		; 29 90 2C
	lsr A		; 4A
	.db $82, $F1, $9D		; 82 F1 9D
	jsr $72BA.w		; 20 BA 72
	sbc ($F5.b),Y		; F1 F5
	ply		; 7A
	inc $16E0.w,X		; FE E0 16
	rti		; 40

	bcs  78.b		; B0 4E
	bne  36.b		; D0 24
	rol $BB20.w,X		; 3E 20 BB
	cpy #$EB.b		; C0 EB
	bvs -102.b		; 70 9A
	ldy $BD20.w,X		; BC 20 BD
	ldy $447A.w,X		; BC 7A 44
	sta $BE20.w,Y		; 99 20 BE
	tsx		; BA
	sbc #$F840.w		; E9 40 F8
	and ($D0.b,X)		; 21 D0
	bit $4D.b		; 24 4D
	jsr $BDBF.w		; 20 BF BD
	eor $C0.b,X		; 55 C0
	xba		; EB
	bvs -102.b		; 70 9A
	cpy #$20.b		; C0 20
	cmp ($82.b,X)		; C1 82
	stp		; DB
	eor $BA.b,S		; 43 BA
	sbc #$F840.w		; E9 40 F8
	bit $F8E8.w		; 2C E8 F8
	and $BF.b		; 25 BF
	lda ($80.b),Y		; B1 80
	beq  16.b		; F0 10
	adc ($20.b,S),Y		; 73 20
.ACCU 16
	rep #$20		; C2 20
	cmp $80.b,S		; C3 80
	sbc [$C4.b],Y		; F7 C4
	plx		; FA
	cmp $DA.b		; C5 DA
	lsr $FD2C.w,X		; 5E 2C FD
	ror $1450.w,X		; 7E 50 14
	bra -16.b		; 80 F0
	bpl 126.b		; 10 7E
	trb $21.b		; 14 21
	cmp [$80.b]		; C7 80
	beq  10.b		; F0 0A
	lda $C820.w,Y		; B9 20 C8
	bit $55FD.w		; 2C FD 55
	sta [$7E.b]		; 87 7E
	bvc  20.b		; 50 14
	brk $E8.b		; 00 E8
	and ($D6.b,X)		; 21 D6
	inx		; E8
	ora #$98C0.w		; 09 C0 98
	rol A		; 2A
	tsb $22.b		; 04 22
	adc $564660.l		; 6F 60 46 56
	adc $C6.b,S		; 63 C6
	dec A		; 3A
	ora $C0CB.w,Y		; 19 CB C0
	jsr $C01D.w		; 20 1D C0
	sed		; F8
	trb $04.b		; 14 04
	jsl $CA46C9.l		; 22 C9 46 CA
	plb		; AB
	sta ($3A.b)		; 92 3A
	ora $C0D1.w,Y		; 19 D1 C0
	jsr $401D.w		; 20 1D 40
	sed		; F8
	mvn $81,$82		; 54 82 81
	eor ($E1.b)		; 52 E1
	inc $46B6.w,X		; FE B6 46
	tsx		; BA
	ldy $90C0.w,X		; BC C0 90
	and ($25.b),Y		; 31 25
	eor ($E1.b)		; 52 E1
	ora $BA.b,X		; 15 BA
	lda $6DF840.l,X		; BF 40 F8 6D
	phd		; 0B
	jsr ($5A15.w,X)		; FC 15 5A
	cmp ($62.b)		; D2 62
	tsb $80BA.w		; 0C BA 80
	dec A		; 3A
	bit $05.b,X		; 34 05
	rti		; 40

	sed		; F8
	bit $8018.w		; 2C 18 80
	and $AAB5.w,Y		; 39 B5 AA
	cmp ($62.b)		; D2 62
	tsb $80BA.w		; 0C BA 80
	dec A		; 3A
	ora $40D96E.l		; 0F 6E D9 40
	sed		; F8
	.db $62, $C0, $F8		; 62 C0 F8
	jsr ($F8F0.w,X)		; FC F0 F8
	rol $AA.b		; 26 AA
	phy		; 5A
	cpy #$F8.b		; C0 F8
	and $1FB8C0.l,X		; 3F C0 B8 1F
	bra  -8.b		; 80 F8
	eor $1FF0C0.l,X		; 5F C0 F0 1F
	beq  -8.b		; F0 F8
	and #$C840.w		; 29 40 C8
	trb $BA.b		; 14 BA
	ror $1D.b		; 66 1D
	pei ($61.b)		; D4 61
	lda ($D5.b,X)		; A1 D5
	bne  98.b		; D0 62
	sed		; F8
	php		; 08
	sec		; 38
	ora ($0D.b),Y		; 11 0D
	rol $1910.w,X		; 3E 10 19
	cpy #$F8.b		; C0 F8
	trb $BA.b		; 14 BA
	.db $62, $96, $54		; 62 96 54
	and $D0.b		; 25 D0
	adc $2A.b,S		; 63 2A
	bit $F211.w,X		; 3C 11 F2
	rol $1A10.w,X		; 3E 10 1A
	asl $F8.b		; 06 F8
	and $74.b,X		; 35 74
	cpy #$0D.b		; C0 0D
	sbc $F8FEFA.l,X		; FF FA FE F8
	tsb $2040.w		; 0C 40 20
	cpy $7620.w		; CC 20 76
	jsr $FCCD.w		; 20 CD FC
	cmp #$A2C2.w		; C9 C2 A2
	dec $CF20.w		; CE 20 CF
	sbc $56.b,X		; F5 56
	jsr $82D0.w		; 20 D0 82
	jsr $C017.w		; 20 17 C0
	sed		; F8
	trb $4F.b		; 14 4F
	jsr $C0D2.w		; 20 D2 C0
	adc ($D3.b,X)		; 61 D3
	jsr ($C2C9.w,X)		; FC C9 C2
	ldx #$EB.b		; A2 EB
	lda $B0.b,X		; B5 B0
	ldx #$61.b		; A2 61
	.db $82, $20, $17		; 82 20 17
	rti		; 40

	sed		; F8
	mvn $60,$6F		; 54 6F 60
	lda $0C.b		; A5 0C
	cmp ($CC.b),Y		; D1 CC
	tsx		; BA
	bit #$5E82.w		; 89 82 5E
	cpy #$B9.b		; C0 B9
	ldy $1A.b,X		; B4 1A
	and ($C2.b)		; 32 C2
	ldy #$16.b		; A0 16
	cpy #$F8.b		; C0 F8
	trb $79.b		; 14 79
	rts		; 60

	ldy $D10C.w		; AC 0C D1
	pld		; 2B
	tay		; A8
	cpy $95BA.w		; CC BA 95
	sed		; F8
	cmp #$1AB4.w		; C9 B4 1A
	and ($C2.b)		; 32 C2
	ldy #$16.b		; A0 16
	rti		; 40

	sed		; F8
	bvc -107.b		; 50 95
	brk $4E.b		; 00 4E
	trb $08.b		; 14 08
	cpy #$8D.b		; C0 8D
	cpy $F8A2.w		; CC A2 F8
	cpx $AB54.w		; EC 54 AB
	beq -70.b		; F0 BA
	cmp ($C0.b)		; D2 C0
	clc		; 18
	trb $C0.b		; 14 C0
	sed		; F8
	tsb $144E.w		; 0C 4E 14
	trb $C0.b		; 14 C0
	sta $A2CC.w		; 8D CC A2
	lsr $F5.b,X		; 56 F5
	sed		; F8
	jsr ($6AEE.w,X)		; FC EE 6A
	and [$C0.b]		; 27 C0
	clc		; 18
	ora $80.b,X		; 15 80
	cpx #$89.b		; E0 89
	cpy #$F8.b		; C0 F8
	jsr ($F8C0.w,X)		; FC C0 F8
	jsr ($FDFE.w,X)		; FC FE FD
	ora $24.b		; 05 24
	ldx $00.b,Y		; B6 00
	asl $D1CA.w,X		; 1E CA D1
	ora $CA.b,S		; 03 CA
	cmp ($1C.b),Y		; D1 1C
	iny		; C8
	cmp ($FA.b),Y		; D1 FA
	lsr $D0.b		; 46 D0
	pea $3E7A.w		; F4 7A 3E
	tsb $F2.b		; 04 F2
	inx		; E8
	ror $1238.w,X		; 7E 38 12
	cpy #$F8.b		; C0 F8
	tsb $46DB.w		; 0C DB 46
	ora ($24.b),Y		; 11 24
	bit $D1CA.w		; 2C CA D1
	bpl -48.b		; 10 D0
	cmp ($29.b),Y		; D1 29
	iny		; C8
	cmp ($2A.b),Y		; D1 2A
	pea $A823.w		; F4 23 A8
	ply		; 7A
	rol $FC0F.w,X		; 3E 0F FC
	inx		; E8
	ror $1238.w,X		; 7E 38 12
	brk $F8.b		; 00 F8
	eor $862DED.l		; 4F ED 2D 86
	lda #$D23C.w		; A9 3C D2
	bit #$8CCF.w		; 89 CF 8C
	and $2038.w,Y		; 39 38 20
	stx $44.b,Y		; 96 44
	sta $EC6F.w,Y		; 99 6F EC
	sta $DAD4.w,Y		; 99 D4 DA
	sbc ($9B.b)		; F2 9B
	sty $78.b		; 84 78
	ora ($C0.b,S),Y		; 13 C0
	sed		; F8
	trb $4A.b		; 14 4A
	sty $D9.b,X		; 94 D9
	cmp ($8A.b)		; D2 8A
	lda $7974.w		; AD 74 79
	ldx $AA.b,Y		; B6 AA
	eor $44.b,S		; 43 44
	sta $EC79.w,Y		; 99 79 EC
	txy		; 9B
	lda ($84.b,X)		; A1 84
	sei		; 78
	ora ($C0.b,S),Y		; 13 C0
	inx		; E8
	jsr ($F8C0.w,X)		; FC C0 F8
	jsr ($F8C0.w,X)		; FC C0 F8
	eor [$16.b]		; 47 16
	asl A		; 0A
	sbc $544EF8.l,X		; FF F8 4E 54
	sep #$05		; E2 05
	bpl -71.b		; 10 B9
	jsr ($400C.w,X)		; FC 0C 40
	sbc ($46.b,X)		; E1 46
	tad		; 5B
	plx		; FA
	tsx		; BA
	trb $FA1F.w		; 1C 1F FA
	sed		; F8
	txs		; 9A
	asl $FA.b		; 06 FA
	sta $8C0A.w,Y		; 99 0A 8C
	sed		; F8
	ora ($BF.b,S),Y		; 13 BF
	bvc 112.b		; 50 70
	sbc $162412.l,X		; FF 12 24 16
	bit $17.b		; 24 17
	bpl -71.b		; 10 B9
	jsr ($3E19.w,X)		; FC 19 3E
	sbc ($10.b,X)		; E1 10
	ldx #$FA.b		; A2 FA
	tsx		; BA
	inc A		; 1A
	jsr ($FA2D.w,X)		; FC 2D FA
	lda $F8FF.w		; AD FF F8
	txs		; 9A
	ora ($FA.b,S),Y		; 13 FA
	sta $4017.w,Y		; 99 17 40
	sed		; F8
	eor ($C8.b),Y		; 51 C8
	clv		; B8
	ora #$3E64.w		; 09 64 3E
	bit $3F.b		; 24 3F
	bit $B4.b		; 24 B4
	bit $BF.b		; 24 BF
	adc $D724A8.l,X		; 7F A8 24 D7
	bit $D8.b		; 24 D8
	bit $42.b		; 24 42
	ply		; 7A
	phk		; 4B
	txy		; 9B
	bit $DB.b		; 24 DB
	bit $6D.b		; 24 6D
	bit $DC.b		; 24 DC
	bit $E846.w,X		; 3C 46 E8
	cmp $C324.w,X		; DD 24 C3
	pea $F6E3.w		; F4 E3 F6
	sbc $EEFF.w,X		; FD FF EE
	tay		; A8
	bpl -56.b		; 10 C8
	ldx $4D64.w,Y		; BE 64 4D
	bit $4E.b		; 24 4E
	bit $4A.b		; 24 4A
	bit $AE.b		; 24 AE
	bit $DE.b		; 24 DE
	bit $AB.b		; 24 AB
	sbc $24E3.w,X		; FD E3 24
	eor ($7A.b),Y		; 51 7A
	phk		; 4B
	lda ($24.b,X)		; A1 24
	cpx #$24.b		; E0 24
	adc [$24.b],Y		; 77 24
	pha		; 48
	inx		; E8
	sbc ($C1.b,X)		; E1 C1
	ror A		; 6A
	bit $E2.b		; 24 E2
	pea $4970.w		; F4 70 49
	sta $C0.b,X		; 95 C0
	sed		; F8
	ora ($FF.b),Y		; 11 FF
	sed		; F8
	bit $BADA.w,X		; 3C DA BA
	tsb $85.b		; 04 85
	and $F3A0.w		; 2D A0 F3
	txa		; 8A
	lsr A		; 4A
	sed		; F8
	and ($24.b,X)		; 21 24
	stx $054A.w		; 8E 4A 05
	dex		; CA
	phb		; 8B
	eor ($01.b,X)		; 41 01
	nop		; EA
	sed		; F8
	phd		; 0B
	ror $93.b,X		; 76 93
	sed		; F8
	brk $04.b		; 00 04
	nop		; EA
	sbc ($E2.b)		; F2 E2
	tsx		; BA
	tsx		; BA
	sed		; F8
	.db $42, $B4		; 42 B4
	dec $FFDE.w		; CE DE FF
.ACCU 8
.INDEX 8
	sep #$BA		; E2 BA
	ora $A096C2.l		; 0F C2 96 A0
	sbc ($10.b,S),Y		; F3 10
	adc ($FE.b)		; 72 FE
	bmi  36.b		; 30 24
	stx $114A.w		; 8E 4A 11
	dex		; CA
	phb		; 8B
	ldy #$20.b		; A0 20
	nop		; EA
	sed		; F8
	clc		; 18
	ror $93.b,X		; 76 93
	sed		; F8
	ldx $BA.b		; A6 BA
	pha		; 48
	tay		; A8
.INDEX 8
	sep #$D4		; E2 D4
	jsr ($DEFA.w,X)		; FC FA DE
	sbc $AAC1F8.l,X		; FF F8 C1 AA
	tax		; AA
	.db $82, $08, $3D		; 82 08 3D
	inc $C3F0.w,X		; FE F0 C3
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($C8B8.w,X)		; FC B8 C8
	sty $416A.w		; 8C 6A 41
	cpy #$F8.b		; C0 F8
	eor $F852.w		; 4D 52 F8
	and ($C0.b),Y		; 31 C0
	sed		; F8
	ora ($56.b,S),Y		; 13 56
	lda ($0D.b),Y		; B1 0D
	tax		; AA
	tyx		; BB
	inc $C0.b,X		; F6 C0
	tsx		; BA
	tay		; A8
	rol A		; 2A
	sbc ($07.b)		; F2 07
	cpy #$B9.b		; C0 B9
	adc ($28.b)		; 72 28
	trb $C0.b		; 14 C0
	sed		; F8
	asl $D0.b,X		; 16 D0
	rol A		; 2A
	tax		; AA
	tsx		; BA
	php		; 08
	lsr $F6.b		; 46 F6
	cpy #$BA.b		; C0 BA
	sbc ($C0.b)		; F2 C0
	tsx		; BA
	and $5555FE.l		; 2F FE 55 55
	cpy #$F8.b		; C0 F8
	rol $40.b		; 26 40
	sed		; F8
	and $39F8C0.l,X		; 3F C0 F8 39
	rti		; 40

	beq 121.b		; F0 79
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($5555.w,X)		; FC 55 55
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($5555.w,X)		; FC 55 55
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($0005.w,X)		; FC 05 00
	sbc $00B2F8.l,X		; FF F8 B2 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $8D.b		; 00 8D
	sta $00.b,S		; 83 00
	sbc $0166F8.l,X		; FF F8 66 01
	inc $0103.w,X		; FE 03 01
	inc $FF10.w,X		; FE 10 FF
	sbc ($FE.b)		; F2 FE
	sbc $04FC02.l,X		; FF 02 FC 04
	brk $30.b		; 00 30
	brk $68.b		; 00 68
	jsr $E3FF.w		; 20 FF E3
	jmp.w [$FC08]		; DC 08 FC
	brk $BA.b		; 00 BA
	rti		; 40

	sbc $00BF42.l,X		; FF 42 BF 00
	stz $20EC.w,X		; 9E EC 20
	sbc $08106F.l,X		; FF 6F 10 08
	bmi   2.b		; 30 02
	sec		; 38
	rti		; 40

	bit $3C42.w,X		; 3C 42 3C
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	tsx		; BA
	sed		; F8
	ora $8580.w		; 0D 80 85
	adc $1AF8F2.l,X		; 7F F2 F8 1A
	sbc $2E75F8.l,X		; FF F8 75 2E
	asl $1902.w		; 0E 02 19
	php		; 08
	adc [$10.b],Y		; 77 10
	cmp $008840.l,X		; DF 40 88 00
	eor $FF.b,X		; 55 FF
	inc $9F2E.w,X		; FE 2E 9F
	ora ($24.b,X)		; 01 24
	and [$00.b]		; 27 00
	sta $F23F00.l		; 8F 00 3F F2
	inc $7FF4.w,X		; FE F4 7F
	sed		; F8
	inx		; E8
	jsr ($F8FE.w,X)		; FC FE F8
	and [$CF.b],Y		; 37 CF
	brk $EE.b		; 00 EE
	asl A		; 0A
	sbc [$04.b],Y		; F7 04
	sbc ($01.b),Y		; F1 01
	sed		; F8
	brk $88.b		; 00 88
	bpl  -2.b		; 10 FE
	jsr ($EEFE.w,X)		; FC FE EE
	sbc ($1B.b),Y		; F1 1B
	sbc $E0FEF6.l,X		; FF F6 FE E0
	sbc $D9FCBF.l,X		; FF BF FC D9
	eor ($7F.b,X)		; 41 7F
	bra -112.b		; 80 90
	beq -121.b		; F0 87
	cli		; 58
	cpx #$C0.b		; E0 C0
	rts		; 60

	rti		; 40

	inc $F0D7.w,X		; FE D7 F0
	rol $F7E0.w,X		; 3E E0 F7
	sed		; F8
	ror $9CFE.w,X		; 7E FE 9C
	clc		; 18
	sec		; 38
	jsr $50E0.w		; 20 E0 50
	sed		; F8
	asl A		; 0A
	sep #$00		; E2 00
	cpy #$00.b		; C0 00
	bpl  -1.b		; 10 FF
	beq -58.b		; F0 C6
	beq 106.b		; F0 6A
	ora [$03.b]		; 07 03
	ora $00.b		; 05 00
	ora $0904.w		; 0D 04 09
	jsr ($1D00.w,X)		; FC 00 1D
	php		; 08
	stp		; DB
	adc $17.b,S		; 63 17
	cop $16.b		; 02 16
	ora [$F1.b]		; 07 F1
	asl A		; 0A
	asl $F1.b		; 06 F1
	asl $00.b		; 06 00
	asl $FC.b,X		; 16 FC
	tsb $1BFC.w		; 0C FC 1B
	nop		; EA
	sta $801F00.l,X		; 9F 00 1F 80
	sta $FE8F80.l,X		; 9F 80 8F FE
	sbc $0F1C00.l,X		; FF 00 1C 0F
	and $FE.b,X		; 35 FE
	sed		; F8
	ora $4000.w		; 0D 00 40
	lsr $40E0.w		; 4E E0 40
	ldy #$8F.b		; A0 8F
	bvs  -4.b		; 70 FC
	brk $F0.b		; 00 F0
	jsr $F2D0.w		; 20 D0 F2
	eor $20.b,S		; 43 20
	bra  64.b		; 80 40
	sed		; F8
	sbc $E9.b,X		; F5 E9
	cpy #$10.b		; C0 10
	cpy #$20.b		; C0 20
	cpy #$08.b		; C0 08
	and $F8.b		; 25 F8
	phd		; 0B
	sbc $58B6F8.l,X		; FF F8 B6 58
	brk $F5.b		; 00 F5
	ora $FE58FC.l,X		; 1F FC 58 FE
	sed		; F8
	ora #$E0.b		; 09 E0
	sed		; F8
	ora ($0C.b),Y		; 11 0C
	brk $1E.b		; 00 1E
	tsb $0C7F.w		; 0C 7F 0C
	sbc $D4007F.l,X		; FF 7F 00 D4
	jsr ($FEF8.w,X)		; FC F8 FE
	tsx		; BA
	sed		; F8
	ora [$F4.b],Y		; 17 F4
	cpx #$83.b		; E0 83
	sbc $FF13F8.l,X		; FF F8 13 FF
	sbc $3B011F.l,X		; FF 1F 01 3B
	ora ($2B.b),Y		; 11 2B
	ora ($26.b,X)		; 01 26
	ora $53.b		; 05 53
	bit $4A.b,X		; 34 4A
	rol $3053.w,X		; 3E 53 30
	lda $E1BE60.l		; AF 60 BE E1
	and $EAF6.w		; 2D F6 EA
	brk $59.b		; 00 59
	brk $08.b		; 00 08
	cld		; D8
	sbc ($8F.b,X)		; E1 8F
	sep #$00		; E2 00
	cmp [$FF.b]		; C7 FF
	inc $C6C0.w,X		; FE C0 C6
	cmp [$EF.b]		; C7 EF
	beq -12.b		; F0 F4
	tsb $809F.w		; 0C 9F 80
	bmi -20.b		; 30 EC
	cpy #$3F.b		; C0 3F
	cmp [$38.b]		; C7 38
	beq  -3.b		; F0 FD
	tda		; 7B
	brk $03.b		; 00 03
	dex		; CA
	sbc [$F8.b]		; E7 F8
	bpl -17.b		; 10 EF
	bpl  -5.b		; 10 FB
	ora [$F8.b]		; 07 F8
	bpl -17.b		; 10 EF
	trb $E0.b		; 14 E0
	bpl -108.b		; 10 94
.ACCU 16
	rep #$AA		; C2 AA
	cpx #$E0.b		; E0 E0
	ora #$E0FF.w		; 09 FF E0
	bcs  96.b		; B0 60
	lda $111F8D.l,X		; BF 8D 1F 11
	cmp $EF14.w		; CD 14 EF
	ora #$ABFB.w		; 09 FB AB
	cmp $2080.w,Y		; D9 80 20
	sbc #$4382.w		; E9 82 43
	sbc $00E3EC.l,X		; FF EC E3 00
	clv		; B8
	jsr ($FC7C.w,X)		; FC 7C FC
	brk $F7.b		; 00 F7
	bpl 123.b		; 10 7B
	brk $DF.b		; 00 DF
	sbc $3E1311.l		; EF 11 13 3E
	asl $BCFC.w		; 0E FC BC
	sty $DA.b		; 84 DA
	jsr $0F00.w		; 20 00 0F
	inc $0E.b		; E6 0E
	pea $CEE0.w		; F4 E0 CE
	ora ($3C.b,X)		; 01 3C
	sta [$BA.b],Y		; 97 BA
	sbc $71.b,S		; E3 71
	ora ($7F.b),Y		; 11 7F
	sbc $0F40C5.l,X		; FF C5 40 0F
	cop $1A.b		; 02 1A
	brk $3E.b		; 00 3E
	tsb $2C.b		; 04 2C
	sbc $00.b,S		; E3 00
	sta ($0E.b),Y		; 91 0E
	rti		; 40

	rol $0702.w,X		; 3E 02 07
	eor $FC.b,X		; 55 FC
	ora ($FC.b,X)		; 01 FC
	tsb $87.b		; 04 87
	tsx		; BA
	sbc $A2.b,S		; E3 A2
	beq  17.b		; F0 11
	bcc -16.b		; 90 F0
	and ($05.b),Y		; 31 05
	cmp $5F9F.w,X		; DD 9F 5F
	sbc $FE0EF8.l,X		; FF F8 0E FE
	cli		; 58
	sbc $5EFE5A.l,X		; FF 5A FE 5E
	inc $DCDC.w,X		; FE DC DC
	cpx #$F8.b		; E0 F8
	ora ($E9.b)		; 12 E9
	pld		; 2B
	tsb $FEF2.w		; 0C F2 FE
	rol $7C0C.w,X		; 3E 0C 7C
	sec		; 38
	sec		; 38
	asl $94F0.w,X		; 1E F0 94
	rol $D2.b		; 26 D2
	jmp $03FD50.l		; 5C 50 FD 03
	ora ($02.b,X)		; 01 02
	plp		; 28
	sbc ($FB.b,X)		; E1 FB
	inc A		; 1A
	jsr ($D224.w,X)		; FC 24 D2
	plx		; FA
	cmp $E8.b,X		; D5 E8
	ora $00.b		; 05 00
	eor $80BFC0.l,X		; 5F C0 BF 80
	jsr ($30D2.w,X)		; FC D2 30
	inc $F0.b,X		; F6 F0
	bne  28.b		; D0 1C
	tda		; 7B
	cmp $08FB04.l,X		; DF 04 FB 08
	beq  -8.b		; F0 F8
	phd		; 0B
	sed		; F8
	brk $F7.b		; 00 F7
	cpx #$F8.b		; E0 F8
	tsb $01BE.w		; 0C BE 01
	eor $F002.w,X		; 5D 02 F0
	sed		; F8
	phd		; 0B
	pld		; 2B
	jmp ($007E.w)		; 6C 7E 00
	ldy $F138.w,X		; BC 38 F1
	pea $A8D6.w		; F4 D6 A8
	sbc $F8D020.l		; EF 20 D0 F8
	ora $F8DF.w		; 0D DF F8
	sbc $F000EE.l,X		; FF EE 00 F0
	bvs  96.b		; 70 60
	jsr $5073.w		; 20 73 50
	and [$20.b],Y		; 37 20
	sta $FF9F08.l,X		; 9F 08 9F FF
	sbc $00CB10.l,X		; FF 10 CB 00
	dec $7004.w		; CE 04 70
	ora $901FA0.l		; 0F A0 1F 90
	ora $E80FC0.l		; 0F C0 0F E8
	ora [$E0.b]		; 07 E0
	ora $F007F6.l,X		; 1F F6 07 F0
	ora [$F4.b]		; 07 F4
	ora $74.b,S		; 03 74
	ldx $E808.w,Y		; BE 08 E8
	dec $E9.b,X		; D6 E9
	beq  32.b		; F0 20
	stx $F1.b		; 86 F1
	ldy #$A4.b		; A0 A4
	cmp $4680.w,Y		; D9 80 46
	sed		; F8
	php		; 08
	sbc ($08.b,S),Y		; F3 08
	cpx #$D7.b		; E0 D7
	lda $00C020.l		; AF 20 C0 00
	cpy #$98.b		; C0 98
	cmp $F0FA.w,Y		; D9 FA F0
	rol A		; 2A
	ora [$01.b]		; 07 01
	ora $7704.w,X		; 1D 04 77
	adc $EA.b,S		; 63 EA
	eor [$28.b],Y		; 57 28
	inc $08F5.w,X		; FE F5 08
	brk $23.b		; 00 23
	asl $FFE9.w,X		; 1E E9 FF
	sed		; F8
	lda #$0E09.w		; A9 09 0E
	jmp $D40CE8.l		; 5C E8 0C D4
	stx $40.b		; 86 40
	ora ($38.b),Y		; 11 38
	sbc ($FF.b,S),Y		; F3 FF
	sed		; F8
	phd		; 0B
	cpy #$F0.b		; C0 F0
	sed		; F8
	asl $0A20.w		; 0E 20 0A
	bvc -43.b		; 50 D5
	cop $FE.b		; 02 FE
	ora $18.b		; 05 18
	sbc ($FE.b),Y		; F1 FE
	inc $C318.w,X		; FE 18 C3
	inc $0AF8.w,X		; FE F8 0A
	stz $F6.b,X		; 74 F6
	eor [$F5.b]		; 47 F5
	sbc $FE00.w,X		; FD 00 FE
	cop $FC.b		; 02 FC
	.db $62, $F0, $0A		; 62 F0 0A
	sbc ($FE.b)		; F2 FE
	rol $40C9.w,X		; 3E C9 40
	lda [$FF.b],Y		; B7 FF
	inc $DE40.w,X		; FE 40 DE
	brk $A1.b		; 00 A1
	asl $07D9.w		; 0E D9 07
	cpx #$1F.b		; E0 1F
	inc $B8FC.w		; EE FC B8
	brk $A7.b		; 00 A7
	ora [$DF.b]		; 07 DF
	sbc $BF11DF.l,X		; FF DF 11 BF
	sec		; 38
	and $26FB38.l,X		; 3F 38 FB 26
	dec $FD03.w,X		; DE 03 FD
	ora $7A.b,S		; 03 7A
	ora ($BD.b,X)		; 01 BD
	jsr $7FF1.w		; 20 F1 7F
	sec		; 38
	cmp $803F00.l,X		; DF 00 3F 80
	cld		; D8
	cop $F8.b		; 02 F8
	ora $FE.b,S		; 03 FE
	jsr ($7E01.w,X)		; FC 01 7E
	sty $FF.b		; 84 FF
	phx		; DA
	bra  -2.b		; 80 FE
	cmp $306FC0.l,X		; DF C0 6F 30
	cmp $F1EE30.l		; CF 30 EE F1
	xce		; FB
	ora [$D6.b]		; 07 D6
.ACCU 8
	sep #$EF		; E2 EF
	tax		; AA
	sbc $10C7.w,X		; FD C7 10
	ora [$30.b]		; 07 30
	asl $F0.b		; 06 F0
	ora $FFB7.w		; 0D B7 FF
	adc $CDFDF0.l,X		; 7F F0 FD CD
	php		; 08
	inc $00.b		; E6 00
	cpx $20.b		; E4 20
	ldy $00.b		; A4 00
	cpy $00.b		; C4 00
	sty $00.b		; 84 00
	tsb $F808.w		; 0C 08 F8
	phd		; 0B
	bit $02F0.w		; 2C F0 02
	sbc $1A00.w,Y		; F9 00 1A
	brk $D8.b		; 00 D8
	ldy $E9.b		; A4 E9
	bvc 107.b		; 50 6B
	inc $F40E.w,X		; FE 0E F4
	clv		; B8
	bne -88.b		; D0 A8
	sbc $7C5DF8.l,X		; FF F8 5D 7C
	lsr $F1.b,X		; 56 F1
	sbc $020BF8.l,X		; FF F8 0B 02
	lda $382D.w,X		; BD 2D 38
	lda $FCFF.w,Y		; B9 FF FC
	sec		; 38
	brk $07.b		; 00 07
	stz $1ED5.w		; 9C D5 1E
.ACCU 8
	sep #$EB		; E2 EB
	mvp $D3,$46		; 44 46 D3
	jmp.w [$FFF8]		; DC F8 FF
	bpl   0.b		; 10 00
	and ($E2.b,X)		; 21 E2
	xba		; EB
	ora $D6.b		; 05 D6
	inc $02.b		; E6 02
	asl $43C3.w,X		; 1E C3 43
	cop $01.b		; 02 01
	cop $F2.b		; 02 F2
	sbc $01.b,S		; E3 01
	asl $B801.w,X		; 1E 01 B8
	sta $41.b,S		; 83 41
	tay		; A8
	iny		; C8
	sbc #$E4.b		; E9 E4
	sed		; F8
	lda ($DC.b)		; B2 DC
	jsr $E22C.w		; 20 2C E2
	asl $1652.w		; 0E 52 16
	sbc ($50.b),Y		; F1 50
	inc $7F.b		; E6 7F
	brk $F2.b		; 00 F2
	lsr $FEE2.w		; 4E E2 FE
	rol $FFFF.w,X		; 3E FF FF
	bit $B9.b		; 24 B9
	sbc ($00.b,S),Y		; F3 00
	stz $BE3B.w		; 9C 3B BE
	adc $B57E.w,Y		; 79 7E B5
	rtl		; 6B

	sta $0D.b,S		; 83 0D
	sbc $6FFF.w		; ED FF 6F
	sbc $7FBFFF.l,X		; FF FF BF 7F
	ror $7B1F.w		; 6E 1F 7B
	sei		; 78
	adc $B578.w,Y		; 79 78 B5
	sec		; 38
	sta $1D.b,S		; 83 1D
	sbc $EF9F.w		; ED 9F EF
	cmp $7FD8FF.l,X		; DF FF D8 7F
	adc $7F3FBF.l,X		; 7F BF 3F 7F
	bra  63.b		; 80 3F
	cpy #$BF.b		; C0 BF
	inc $12FF.w,X		; FE FF 12
	sbc ($2D.b),Y		; F1 2D
	jsr ($805E.w,X)		; FC 5E 80
	jsr ($C0E9.w,X)		; FC E9 C0
	inc $09F8.w,X		; FE F8 09
	inc $80BE.w		; EE BE 80
	inc $D500.w		; EE 00 D5
	sbc $A708FF.l,X		; FF FF 08 A7
	tsb $0EF5.w		; 0C F5 0E
	eor $2DF724.l		; 4F 24 F7 2D
	sbc $B97F7C.l,X		; FF 7C 7F B9
	sbc ($00.b),Y		; F1 00
	inc $FFFF.w		; EE FF FF
	asl $DE.b		; 06 DE
	ora ($BE.b)		; 12 BE
	and ($A6.b)		; 32 A6
	and ($6C.b)		; 32 6C
	bvs 124.b		; 70 7C
	mvn $1C,$BC		; 54 BC 1C
	pla		; 68
	rti		; 40

	cld		; D8
	ora [$1E.b],Y		; 17 1E
	bcc -112.b		; 90 90
	brk $70.b		; 00 70
	ldx $74B9.w,Y		; BE B9 74
	ldy #$40.b		; A0 40
	eor $00.b,S		; 43 00
	ldy #$76.b		; A0 76
	pea $68F8.w		; F4 F8 68
	jmp.w [$34CB]		; DC CB 34
	nop		; EA
	ldy $36.b		; A4 36
	bcs  11.b		; B0 0B
	brk $3C.b		; 00 3C
	and ($AA.b,X)		; 21 AA
	jsr $0CE8.w		; 20 E8 0C
	rol $D442.w,X		; 3E 42 D4
	sec		; 38
	cmp $5AF1FE.l		; CF FE F1 5A
	ora $06.b,X		; 15 06
	inx		; E8
	ora $E715.w		; 0D 15 E7
	sbc $3FBCF8.l,X		; FF F8 BC 3F
	cli		; 58
	iny		; C8
	jsr $C49C.w		; 20 9C C4
	cpx $FE.b		; E4 FE
	cpx #$E0.b		; E0 E0
	ora $EE3FFE.l		; 0F FE 3F EE
	sta ($00.b,X)		; 81 00
	ror $0C01.w,X		; 7E 01 0C
	ora $14.b,S		; 03 14
	tsb $1060.w		; 0C 60 10
	lda ($60.b,X)		; A1 60
	ora $E1ED0A.l		; 0F 0A ED E1
	tsx		; BA
	cmp ($FF.b)		; D2 FF
	and $9C.b,S		; 23 9C
	cmp ($1F.b,X)		; C1 1F
	trb $D3.b		; 14 D3
	and $8078FE.l,X		; 3F FE 78 80
	cpx $A1.b		; E4 A1
	bra -113.b		; 80 8F
	cpx #$37.b		; E0 37
	bmi -29.b		; 30 E3
	sbc ($3C.b)		; F2 3C
	brk $47.b		; 00 47
	lda ($3E.b,X)		; A1 3E
	ldy $E4E9.w		; AC E9 E4
	bpl   2.b		; 10 02
	sbc ($EC.b),Y		; F1 EC
	nop		; EA
	ldx $00.b,Y		; B6 00
	cmp $A37610.l,X		; DF 10 76 A3
	sed		; F8
	ora $10.b		; 05 10
	lda $18200F.l		; AF 0F 20 18
	sbc ($2A.b,X)		; E1 2A
	jsr ($FFD1.w,X)		; FC D1 FF
	rol $BFE4.w,X		; 3E E4 BF
	ldy $DAD8.w,X		; BC D8 DA
	sbc [$08.b],Y		; F7 08
	sbc $08.b,X		; F5 08
	inc $5F80.w		; EE 80 5F
	tsb $FA.b		; 04 FA
	sbc $DDCA7E.l,X		; FF 7E CA DD
	tad		; 5B
	cmp ($06.b),Y		; D1 06
	adc $AB00.w,Y		; 79 00 AB
	brk $B2.b		; 00 B2
	sed		; F8
	inc $62.b,X		; F6 62
	sbc $EFFF04.l,X		; FF 04 FF EF
	jsr ($E100.w,X)		; FC 00 E1
	ora ($87.b),Y		; 11 87
	bra   7.b		; 80 07
	tsb $9E.b		; 04 9E
	brk $FD.b		; 00 FD
	stz $4CF9.w		; 9C F9 4C
	cmp ($F3.b,X)		; C1 F3
	sbc [$AF.b],Y		; F7 AF
	brk $AE.b		; 00 AE
	brk $78.b		; 00 78
	asl $E1E1.w,X		; 1E E1 E1
	brk $DC.b		; 00 DC
	bra -32.b		; 80 E0
	brk $C1.b		; 00 C1
	tay		; A8
	sta $2B14.w,Y		; 99 14 2B
	.db $42, $F2		; 42 F2
	rol $22.b,X		; 36 22
	stx $02.b		; 86 02
	rts		; 60

	sbc #$42.b		; E9 42
	beq   9.b		; F0 09
	bra  80.b		; 80 50
	stz $B4.b,X		; 74 B4
	asl $F8.b,X		; 16 F8
	phd		; 0B
	inc $08.b		; E6 08
	rti		; 40

	clv		; B8
	phd		; 0B
	eor ($01.b,X)		; 41 01
	php		; 08
	beq  10.b		; F0 0A
	stx $08.b		; 86 08
	beq  81.b		; F0 51
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	sbc $007F.w,X		; FD 7F 00
	sbc $2658F8.l,X		; FF F8 58 26
	php		; 08
	and [$08.b]		; 27 08
	plp		; 28
	php		; 08
	and #$08.b		; 29 08
	rol A		; 2A
	php		; 08
	pld		; 2B
	php		; 08
	sbc $F8D6FF.l,X		; FF FF D6 F8
	ora $083A.w,X		; 1D 3A 08
	tsa		; 3B
	php		; 08
	bit $3D08.w,X		; 3C 08 3D
	php		; 08
	rol $3F08.w,X		; 3E 08 3F
	php		; 08
	rti		; 40

	php		; 08
	sbc $0841FF.l,X		; FF FF 41 08
	eor ($08.b),Y		; 51 08
	eor ($08.b)		; 52 08
	and ($08.b,S),Y		; 33 08
	bit $08.b,X		; 34 08
	and $08.b,X		; 35 08
	rol $08.b,X		; 36 08
	and [$08.b],Y		; 37 08
	cmp $FF.b,S		; C3 FF
	sec		; 38
	php		; 08
	and $48F2.w,Y		; 39 F2 48
	eor ($48.b)		; 52 48
	eor ($48.b),Y		; 51 48
	eor ($48.b,X)		; 41 48
	rti		; 40

	pha		; 48
	sbc $483FF7.l,X		; FF F7 3F 48
	rol $3D48.w,X		; 3E 48 3D
	pha		; 48
	bit $3B48.w,X		; 3C 48 3B
	pha		; 48
	dec A		; 3A
	pha		; 48
	cpy #$FE.b		; C0 FE
	eor #$08.b		; 49 08
	sbc $084A8F.l,X		; FF 8F 4A 08
	phk		; 4B
	php		; 08
	jmp $4D08.w		; 4C 08 4D
	php		; 08
	lsr $4F08.w		; 4E 08 4F
	php		; 08
	bvc  -1.b		; 50 FF
	adc $085392.l,X		; 7F 92 53 08
	.db $42, $08		; 42 08
	eor $08.b,S		; 43 08
	mvp $45,$08		; 44 08 45
	php		; 08
	lsr $08.b		; 46 08
	eor [$08.b]		; 47 08
	pha		; 48
	clc		; 18
	sbc $5348F2.l,X		; FF F2 48 53
	cmp ($50.b)		; D2 50
	pha		; 48
	eor $484E48.l		; 4F 48 4E 48
	sbc $484D7A.l,X		; FF 7A 4D 48
	jmp $4B48.w		; 4C 48 4B
	pha		; 48
	lsr A		; 4A
	pha		; 48
	eor #$C0.b		; 49 C0
	sbc $0BF8FF.l,X		; FF FF F8 0B
	asl $14.b		; 06 14
	ora $FEE3FC.l,X		; 1F FC E3 FE
	ora $140814.l		; 0F 14 08 14
	asl $0B14.w		; 0E 14 0B
	sed		; F8
	jsl $140110.l		; 22 10 01 14
	cpx $F202.w		; EC 02 F2
	sed		; F8
	ldx #$FF.b		; A2 FF
	inc $EE0D.w,X		; FE 0D EE
	asl A		; 0A
	sed		; F8
	ora $2C1415.l,X		; 1F 15 14 2C
	trb $2E.b		; 14 2E
	trb $1E.b		; 14 1E
	ora $171463.l,X		; 1F 63 14 17
	trb $1D.b		; 14 1D
	trb $1A.b		; 14 1A
	sed		; F8
	tas		; 1B
	dec $0411.w		; CE 11 04
	dey		; 88
	sbc ($F8.b)		; F2 F8
	inc $FE1C.w,X		; FE 1C FE
	sbc $F8CCEE.l,X		; FF EE CC F8
	ora ($90.b,S),Y		; 13 90
	bpl -111.b		; 10 91
	bpl -110.b		; 10 92
	bpl -109.b		; 10 93
	bpl -108.b		; 10 94
	bpl -107.b		; 10 95
	bpl -106.b		; 10 96
	lda $9710FF.l,X		; BF FF 10 97
	bpl -104.b		; 10 98
	bpl -103.b		; 10 99
	bpl -106.b		; 10 96
	beq  43.b		; F0 2B
	ldy #$10.b		; A0 10
	lda ($10.b,X)		; A1 10
	ldx #$10.b		; A2 10
	lda $FF.b,S		; A3 FF
	sbc [$10.b],Y		; F7 10
	ldy $10.b		; A4 10
	lda $10.b		; A5 10
	ldx $10.b		; A6 10
	lda [$10.b]		; A7 10
	tay		; A8
	bpl -87.b		; 10 A9
	cpy #$F8.b		; C0 F8
	bit $10B0.w		; 2C B0 10
	sbc $10B1FF.l,X		; FF FF B1 10
	lda ($10.b)		; B2 10
	lda ($10.b,S),Y		; B3 10
	ldy $10.b,X		; B4 10
	lda $10.b,X		; B5 10
	ldx $10.b,Y		; B6 10
	lda [$10.b],Y		; B7 10
	clv		; B8
	bpl  -2.b		; 10 FE
	sbc $F8C0B9.l,X		; FF B9 C0 F8
	bit $10C0.w		; 2C C0 10
	cmp ($10.b,X)		; C1 10
.INDEX 16
	rep #$10		; C2 10
	cmp $10.b,S		; C3 10
	cpy $10.b		; C4 10
	cmp $10.b		; C5 10
	dec $1F.b		; C6 1F
	.db $82, $10, $C7		; 82 10 C7
	bpl -56.b		; 10 C8
	bpl -55.b		; 10 C9
	inc $FE00.w,X		; FE 00 FE
	sbc $F8FFFF.l,X		; FF FF FF F8
	and $DA.b,S		; 23 DA
	bpl -37.b		; 10 DB
	bpl -48.b		; 10 D0
	bpl -47.b		; 10 D1
	bpl -46.b		; 10 D2
	bpl -45.b		; 10 D3
	bpl -44.b		; 10 D4
	bpl -43.b		; 10 D5
	adc $D610FF.l,X		; 7F FF 10 D6
	bpl -41.b		; 10 D7
	bpl -40.b		; 10 D8
	bpl -39.b		; 10 D9
	bra  -8.b		; 80 F8
	plp		; 28
	nop		; EA
	bpl -21.b		; 10 EB
	bpl -32.b		; 10 E0
	bpl  -1.b		; 10 FF
	sbc $E210E1.l,X		; FF E1 10 E2
	bpl -29.b		; 10 E3
	bpl -28.b		; 10 E4
	bpl -27.b		; 10 E5
	bpl -26.b		; 10 E6
	bpl -25.b		; 10 E7
	bpl -24.b		; 10 E8
	bpl  -2.b		; 10 FE
	sbc $F8C0E9.l,X		; FF E9 C0 F8
	plp		; 28
	plx		; FA
	bpl  -5.b		; 10 FB
	bpl -16.b		; 10 F0
	bpl -15.b		; 10 F1
	bpl -14.b		; 10 F2
	bpl -13.b		; 10 F3
	bpl -12.b		; 10 F4
	sbc $F510F7.l,X		; FF F7 10 F5
	bpl -10.b		; 10 F6
	bpl  -9.b		; 10 F7
	bpl  -8.b		; 10 F8
	bpl  -7.b		; 10 F9
	bpl  -6.b		; 10 FA
	brk $F8.b		; 00 F8
	rol A		; 2A
	dex		; CA
	bpl  -1.b		; 10 FF
	xba		; EB
	txs		; 9A
	bpl -101.b		; 10 9B
	bpl -100.b		; 10 9C
	bpl -99.b		; 10 9D
	bpl -98.b		; 10 9E
	bpl -97.b		; 10 9F
	dec $F0.b		; C6 F0
	bit $FEFF.w		; 2C FF FE
	tax		; AA
	sbc $AB14F5.l,X		; FF F5 14 AB
	trb $AC.b		; 14 AC
	trb $AD.b		; 14 AD
	trb $AE.b		; 14 AE
	trb $AF.b		; 14 AF
	stz $20E8.w,X		; 9E E8 20
	sbc $BA13F8.l,X		; FF F8 13 BA
	trb $FF.b		; 14 FF
	cld		; D8
	tyx		; BB
	trb $BC.b		; 14 BC
	trb $BD.b		; 14 BD
	trb $BE.b		; 14 BE
	trb $BF.b		; 14 BF
	cpy #$DBCF.w		; C0 CF DB
	sed		; F8
	ora $FF.b,X		; 15 FF
	beq   5.b		; F0 05
	ora ($05.b,X)		; 01 05
	cop $05.b		; 02 05
	ora $05.b,S		; 03 05
	tsb $05.b		; 04 05
	sbc $070506.l,X		; FF 06 05 07
	xce		; FB
	sbc $054805.l,X		; FF 05 48 05
	stz $2DF8.w		; 9C F8 2D
	bpl   5.b		; 10 05
	ora ($05.b),Y		; 11 05
	ora ($05.b)		; 12 05
	ora ($05.b,S),Y		; 13 05
	trb $05.b		; 14 05
	ora $DF.b,X		; 15 DF
	sbc $051605.l,X		; FF 05 16 05
	ora [$05.b],Y		; 17 05
	cli		; 58
	cpy #$2EF8.w		; C0 F8 2E
	jsr $2105.w		; 20 05 21
	ora $22.b		; 05 22
	ora $23.b		; 05 23
	ora $FF.b		; 05 FF
	inc $0524.w,X		; FE 24 05
	and $05.b		; 25 05
	rol $05.b		; 26 05
	and [$05.b]		; 27 05
	eor #$C0.b		; 49 C0
	sed		; F8
	rol $0530.w		; 2E 30 05
	and ($05.b),Y		; 31 05
	and ($FF.b)		; 32 FF
	sbc [$05.b],Y		; F7 05
	and ($05.b,S),Y		; 33 05
	bit $05.b,X		; 34 05
	and $05.b,X		; 35 05
	rol $05.b,X		; 36 05
	and [$05.b],Y		; 37 05
	eor $F8C0.w,Y		; 59 C0 F8
	rol $0540.w		; 2E 40 05
	sbc $0541BF.l,X		; FF BF 41 05
	.db $42, $05		; 42 05
	eor $05.b,S		; 43 05
	mvp $45,$05		; 44 05 45
	ora $46.b		; 05 46
	ora $47.b		; 05 47
	ora $4A.b		; 05 4A
	sbc $F8C0FF.l,X		; FF FF C0 F8
	rol $0508.w		; 2E 08 05
	ora #$05.b		; 09 05
	asl A		; 0A
	ora $0B.b		; 05 0B
	ora $0C.b		; 05 0C
	ora $0D.b		; 05 0D
	ora $0E.b		; 05 0E
	ora $0F.b		; 05 0F
	sbc $05FF.w,X		; FD FF 05
	phy		; 5A
	cpy #$2EF8.w		; C0 F8 2E
	clc		; 18
	ora $19.b		; 05 19
	ora $1A.b		; 05 1A
	ora $1B.b		; 05 1B
	ora $1C.b		; 05 1C
	ora $1D.b		; 05 1D
	ora $EF.b		; 05 EF
	sbc $1F051E.l,X		; FF 1E 05 1F
	ora $4B.b		; 05 4B
	cpy #$2EF8.w		; C0 F8 2E
	plp		; 28
	ora $29.b		; 05 29
	ora $2A.b		; 05 2A
	ora $2B.b		; 05 2B
	ora $2C.b		; 05 2C
	adc $2D05FF.l,X		; 7F FF 05 2D
	ora $2E.b		; 05 2E
	ora $2F.b		; 05 2F
	ora $5B.b		; 05 5B
	cpy #$2EF8.w		; C0 F8 2E
	sec		; 38
	ora $39.b		; 05 39
	ora $3A.b		; 05 3A
	ora $FF.b		; 05 FF
	xce		; FB
	tsa		; 3B
	ora $3C.b		; 05 3C
	ora $3D.b		; 05 3D
	ora $3E.b		; 05 3E
	ora $3F.b		; 05 3F
	ora $4C.b		; 05 4C
	cpy #$2EF8.w		; C0 F8 2E
	eor $4E15.w		; 4D 15 4E
	sbc $4F15FF.l,X		; FF FF 15 4F
	ora $50.b,X		; 15 50
	ora $51.b,X		; 15 51
	ora $52.b,X		; 15 52
	ora $53.b,X		; 15 53
	ora $54.b,X		; 15 54
	ora $55.b,X		; 15 55
	ora $56.b,X		; 15 56
	xce		; FB
	sbc $155715.l,X		; FF 15 57 15
	cpy #$29F8.w		; C0 F8 29
	eor $5E15.w,X		; 5D 15 5E
	ora $5F.b,X		; 15 5F
	ora $60.b,X		; 15 60
	ora $61.b,X		; 15 61
	ora $62.b,X		; 15 62
	sbc $631555.l,X		; FF 55 15 63
	ora $64.b,X		; 15 64
	ora $65.b,X		; 15 65
	ora $66.b,X		; 15 66
	ora $67.b,X		; 15 67
	cpy #$2AF8.w		; C0 F8 2A
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	cli		; 58
	ora ($00.b,X)		; 01 00
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FB.b		; 00 FB
	sta [$54.b]		; 87 54
	clc		; 18
	inc $55FC.w,X		; FE FC 55
	clc		; 18
	lsr $18.b,X		; 56 18
	eor [$18.b],Y		; 57 18
	cli		; 58
	inc $D07F.w,X		; FE 7F D0
	cli		; 58
	eor [$58.b],Y		; 57 58
	lsr $58.b,X		; 56 58
	eor $58.b,X		; 55 58
	mvn $E6,$FE		; 54 FE E6
	sbc $F8E0.w,X		; FD E0 F8
	and $3F.b		; 25 3F
	jsr ($1861.w,X)		; FC 61 18
	.db $62, $18, $63		; 62 18 63
	clc		; 18
	stz $FE.b		; 64 FE
	cli		; 58
	adc $58.b,S		; 63 58
	.db $62, $58, $FE		; 62 58 FE
	sbc ($61.b,X)		; E1 61
	cpx #$30F8.w		; E0 F8 30
	adc $6E18.w		; 6D 18 6E
	clc		; 18
	adc $FE7018.l		; 6F 18 70 FE
	cli		; 58
	adc $580FF7.l		; 6F F7 0F 58
	ror $6D58.w		; 6E 58 6D
	cpx #$30F8.w		; E0 F8 30
	adc $7A18.w,Y		; 79 18 7A
	clc		; 18
	tda		; 7B
	clc		; 18
	jmp ($FFBF.w,X)		; 7C BF FF
	inc $7B58.w,X		; FE 58 7B
	cli		; 58
	ply		; 7A
	cli		; 58
	adc $F8E0.w,Y		; 79 E0 F8
	plp		; 28
	eor $5A18.w,Y		; 59 18 5A
	clc		; 18
	tad		; 5B
	clc		; 18
	jmp $18F87F.l		; 5C 7F F8 18
	eor $5E18.w,X		; 5D 18 5E
	clc		; 18
	eor $FE6018.l,X		; 5F 18 60 FE
	cli		; 58
	eor $FF5E58.l,X		; 5F 58 5E FF
	cmp ($58.b,X)		; C1 58
	eor $5C58.w,X		; 5D 58 5C
	cli		; 58
	tad		; 5B
	cli		; 58
	phy		; 5A
	cli		; 58
	eor $E0FE.w,Y		; 59 FE E0
	sed		; F8
	asl $3FFF.w,X		; 1E FF 3F
	adc $18.b		; 65 18
	ror $18.b		; 66 18
	adc [$18.b]		; 67 18
	pla		; 68
	clc		; 18
	adc #$18.b		; 69 18
	ror A		; 6A
	clc		; 18
	rtl		; 6B

	clc		; 18
	jmp ($3FFC.w)		; 6C FC 3F
	inc $6B58.w,X		; FE 58 6B
	cli		; 58
	ror A		; 6A
	cli		; 58
	adc #$58.b		; 69 58
	pla		; 68
	cli		; 58
	adc [$58.b]		; 67 58
	ror $F8.b		; 66 F8
	sbc $F8E0E2.l,X		; FF E2 E0 F8
	jsr $1871.w		; 20 71 18
	adc ($18.b)		; 72 18
	adc ($18.b,S),Y		; 73 18
	stz $18.b,X		; 74 18
	adc $18.b,X		; 75 18
	ror $87.b,X		; 76 87
	sbc $187718.l,X		; FF 18 77 18
	sei		; 78
	inc $7758.w,X		; FE 58 77
	cli		; 58
	ror $58.b,X		; 76 58
	adc $58.b,X		; 75 58
	stz $07.b,X		; 74 07
	sbc $587358.l,X		; FF 58 73 58
	adc ($E2.b)		; 72 E2
	cpx #$20F8.w		; E0 F8 20
	adc $7E18.w,X		; 7D 18 7E
	clc		; 18
	adc $F0FF18.l,X		; 7F 18 FF F0
	bra  24.b		; 80 18
	sta ($18.b,X)		; 81 18
	.db $82, $18, $83		; 82 18 83
	clc		; 18
	sty $FE.b		; 84 FE
	cli		; 58
	sta $58.b,S		; 83 58
	sbc $5882E0.l,X		; FF E0 82 58
	sta ($58.b,X)		; 81 58
	bra  88.b		; 80 58
	adc $E27E58.l,X		; 7F 58 7E E2
	cpx #$21F8.w		; E0 F8 21
	tya		; 98
	sbc $987E0F.l,X		; FF 0F 7E 98
	adc $988098.l,X		; 7F 98 80 98
	sta ($98.b,X)		; 81 98
	.db $82, $98, $83		; 82 98 83
	tya		; 98
	sty $FF.b		; 84 FF
	and $83D8FE.l,X		; 3F FE D8 83
	cld		; D8
	.db $82, $D8, $81		; 82 D8 81
	cld		; D8
	bra -40.b		; 80 D8
	adc $D87ED8.l,X		; 7F D8 7E D8
	adc $FFF8.w,X		; 7D F8 FF
	inc $F8E0.w,X		; FE E0 F8
	asl $9871.w,X		; 1E 71 98
	adc ($98.b)		; 72 98
	adc ($98.b,S),Y		; 73 98
	stz $98.b,X		; 74 98
	adc $98.b,X		; 75 98
	ror $87.b,X		; 76 87
	sbc $987798.l,X		; FF 98 77 98
	sei		; 78
	inc $77D8.w,X		; FE D8 77
	cld		; D8
	ror $D8.b,X		; 76 D8
	adc $D8.b,X		; 75 D8
	stz $07.b,X		; 74 07
	sbc $D873D8.l,X		; FF D8 73 D8
	adc ($E2.b)		; 72 E2
	cpx #$20F8.w		; E0 F8 20
	adc $98.b		; 65 98
	ror $98.b		; 66 98
	adc [$98.b]		; 67 98
	sbc $9868F0.l,X		; FF F0 68 98
	adc #$98.b		; 69 98
	ror A		; 6A
	tya		; 98
	rtl		; 6B

	tya		; 98
	jmp ($D8FE.w)		; 6C FE D8
	rtl		; 6B

	cld		; D8
	sbc $D86AE0.l,X		; FF E0 6A D8
	adc #$D8.b		; 69 D8
	pla		; 68
	cld		; D8
	adc [$D8.b]		; 67 D8
	ror $E2.b		; 66 E2
	cpx #$20F8.w		; E0 F8 20
	eor $1FFF.w,Y		; 59 FF 1F
	tya		; 98
	phy		; 5A
	tya		; 98
	tad		; 5B
	tya		; 98
	jmp $985D98.l		; 5C 98 5D 98
	lsr $5F98.w,X		; 5E 98 5F
	tya		; 98
	rts		; 60

	inc $FE1F.w,X		; FE 1F FE
	cld		; D8
	eor $D85ED8.l,X		; 5F D8 5E D8
	eor $5CD8.w,X		; 5D D8 5C
	cld		; D8
	tad		; 5B
	cld		; D8
	phy		; 5A
	pea $E287.w		; F4 87 E2
	cpx #$20F8.w		; E0 F8 20
	cpx #$98EF.w		; E0 EF 98
	ply		; 7A
	tya		; 98
	tda		; 7B
	tya		; 98
	jmp ($5FFE.w,X)		; 7C FE 5F
	sbc $D87BD8.l,X		; FF D8 7B D8
	ply		; 7A
	cld		; D8
	adc $FFE8.w,Y		; 79 E8 FF
	cpx #$27F8.w		; E0 F8 27
	adc $6E98.w		; 6D 98 6E
	tya		; 98
	adc $FBF098.l		; 6F 98 F0 FB
	bvs  -2.b		; 70 FE
	cld		; D8
	adc $D86ED8.l		; 6F D8 6E D8
	adc $F8E0.w		; 6D E0 F8
	bmi  97.b		; 30 61
	tya		; 98
	.db $62, $87, $DF		; 62 87 DF
	tya		; 98
	adc $98.b,S		; 63 98
	stz $FE.b		; 64 FE
	cld		; D8
	adc $D8.b,S		; 63 D8
	.db $62, $D8, $61		; 62 D8 61
	cpx #$30F8.w		; E0 F8 30
	and $9855FC.l,X		; 3F FC 55 98
	lsr $98.b,X		; 56 98
	eor [$98.b],Y		; 57 98
	cli		; 58
	inc $57D8.w,X		; FE D8 57
	cld		; D8
	lsr $D8.b,X		; 56 D8
	tax		; AA
	tax		; AA
	eor $E0.b,X		; 55 E0
	sed		; F8
	plp		; 28
	bpl -32.b		; 10 E0
	and [$E0.b],Y		; 37 E0
	inc $E010.w,X		; FE 10 E0
	and [$E0.b],Y		; 37 E0
	inc $E010.w,X		; FE 10 E0
	and [$E0.b],Y		; 37 E0
	inc $AAAA.w,X		; FE AA AA
	bpl -32.b		; 10 E0
	and $0FF8E0.l		; 2F E0 F8 0F
	bpl -32.b		; 10 E0
	and $0FF8E0.l		; 2F E0 F8 0F
	bpl -32.b		; 10 E0
	and $0FF8E0.l		; 2F E0 F8 0F
	bpl -32.b		; 10 E0
	and $0FF8E0.l		; 2F E0 F8 0F
	tax		; AA
	tax		; AA
	bpl -32.b		; 10 E0
	bmi -32.b		; 30 E0
	sed		; F8
	ora $2EE010.l		; 0F 10 E0 2E
	cpx #$0FF8.w		; E0 F8 0F
	bpl -32.b		; 10 E0
	and $0FF8E0.l		; 2F E0 F8 0F
	bpl -32.b		; 10 E0
	and $0FF8E0.l		; 2F E0 F8 0F
	tax		; AA
	tax		; AA
	bpl -32.b		; 10 E0
	and $0FF8E0.l		; 2F E0 F8 0F
	bpl -32.b		; 10 E0
	and [$E0.b],Y		; 37 E0
	inc $E010.w,X		; FE 10 E0
	and [$E0.b],Y		; 37 E0
	inc $E010.w,X		; FE 10 E0
	and [$E0.b],Y		; 37 E0
	inc $000A.w,X		; FE 0A 00
	bpl -32.b		; 10 E0
	and $0FF8E0.l		; 2F E0 F8 0F
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	dec $FF00.w,X		; DE 00 FF
	sed		; F8
	plp		; 28
	ora ($00.b,X)		; 01 00
	ror $00.b		; 66 00
	stp		; DB
	inc $0DF8.w		; EE F8 0D
	ora ($67.b,X)		; 01 67
	adc [$E6.b]		; 67 E6
	jsr ($FA3F.w,X)		; FC 3F FA
	asl $6D00.w,X		; 1E 00 6D
	brk $BE.b		; 00 BE
	brk $FF.b		; 00 FF
	inc $FEE6.w,X		; FE E6 FE
	asl $7F1E.w,X		; 1E 1E 7F
	and ($C2.b),Y		; 31 C2
	adc $3CFFFF.l,X		; 7F FF FF 3C
	cpy $DAE4.w		; CC E4 DA
	sbc ($F8.b),Y		; F1 F8
	brk $77.b		; 00 77
	cpx $E6.b		; E4 E6
	brk $FA.b		; 00 FA
	cpx $3C.b		; E4 3C
	bit $FFF2.w,X		; 3C F2 FF
	cmp ($F2.b,S),Y		; D3 F2
	sbc $DBED.w		; ED ED DB
	stp		; DB
	ora [$07.b]		; 07 07
	xce		; FB
	xce		; FB
	sbc $D2FD.w,X		; FD FD D2
	cpy #$3DFF.w		; C0 FF 3D
	brk $A0.b		; 00 A0
	brk $D0.b		; 00 D0
	brk $F0.b		; 00 F0
	brk $28.b		; 00 28
	brk $E8.b		; 00 E8
	cpy #$C0FD.w		; C0 FD C0
	cpy #$BEE0.w		; C0 E0 BE
	inc $F0FF.w,X		; FE FF F0
	beq  16.b		; F0 10
	bpl 124.b		; 10 7C
	sed		; F8
	ora $19F8FF.l		; 0F FF F8 19
	ora $087A00.l		; 0F 00 7A 08
	cmp $40FFFE.l,X		; DF FE FF 40
	inc $0BF8.w		; EE F8 0B
	ora [$0F.b]		; 07 0F
	and $00037F.l,X		; 3F 7F 03 00
	tsb $1300.w		; 0C 00 13
	brk $0D.b		; 00 0D
	brk $17.b		; 00 17
	ora $2C001F.l,X		; 1F 1F 00 2C
	brk $5B.b		; 00 5B
	brk $37.b		; 00 37
	nop		; EA
	ora $03.b,S		; 03 03
	tsb $FE0C.w		; 0C 0C FE
	sbc $0F0FFC.l,X		; FF FC 0F 0F
	ora $0D0D1F.l,X		; 1F 1F 0D 0D
	tas		; 1B
	tas		; 1B
	jsr ($F103.w,X)		; FC 03 F1
	asl $132C.w		; 0E 2C 13
	sta [$9F.b]		; 87 9F
	sbc $FA06.w,Y		; F9 06 FA
	tsb $75.b		; 04 75
	sbc $00DD00.l		; EF 00 DD 00
	and $80683F.l,X		; 3F 3F 68 80
	lsr A		; 4A
	sbc $62FEFE.l,X		; FF FE FE 62
	lsr $F008.w,X		; 5E 08 F0
	sbc ($4C.b,S),Y		; F3 4C
	inc $44.b		; E6 44
	eor $2FBF80.l		; 4F 80 BF 2F
	bit $5F00.w,X		; 3C 00 5F
	sec		; 38
	lda $60.b		; A5 60
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	sbc $81C5C5.l,X		; FF C5 C5 81
	sta ($40.b,X)		; 81 40
	inc $E608.w,X		; FE 08 E6
	adc $01FE08.l,X		; 7F 08 FE 01
	lsr $0721.w,X		; 5E 21 07
	sbc #$A8.b		; E9 A8
	ora [$81.b],Y		; 17 81
	rol $DECA.w,X		; 3E CA DE
	sed		; F8
	ora #$FF.b		; 09 FF
	cld		; D8
	brk $07.b		; 00 07
	sei		; 78
	tay		; A8
	brk $68.b		; 00 68
	brk $FA.b		; 00 FA
	rol $68.b		; 26 68
	bra  88.b		; 80 58
	bra -128.b		; 80 80
	and $702AFC.l,X		; 3F FC 2A 70
	bvs -112.b		; 70 90
	bcc -96.b		; 90 A0
	ldy #$D0.b		; A0 D0
	cop $FC.b		; 02 FC
	sbc $03FF20.l,X		; FF 20 FF 03
	ora ($03.b,X)		; 01 03
	cop $05.b		; 02 05
	ora [$04.b]		; 07 04
	brk $06.b		; 00 06
	ora $08.b		; 05 08
	ror A		; 6A
	inc $013C.w,X		; FE 3C 01
	asl A		; 0A
	cmp $F1.b		; C5 F1
	adc $FF.b,S		; 63 FF
	ora [$FF.b]		; 07 FF
	inc $FC3F.w,X		; FE 3F FC
	ldx $8E.b		; A6 8E
	bvs  56.b		; 70 38
	cpy #$7F.b		; C0 7F
	bra  -2.b		; 80 FE
	ora $C03CF0.l		; 0F F0 3C C0
	ror $FE.b,X		; 76 FE
	sta $F8A280.l,X		; 9F 80 A2 F8
	ora $F9F9.w		; 0D F9 F9
	dec A		; 3A
	brk $2A.b		; 00 2A
	brk $31.b		; 00 31
	brk $11.b		; 00 11
	brk $12.b		; 00 12
	ora $46.b,S		; 03 46
	inc $1809.w,X		; FE 09 18
	sbc $A0FF0E.l,X		; FF 0E FF A0
	phd		; 0B
	bit $FF.b		; 24 FF
	asl $06.b		; 06 06
	ldx $80.b,Y		; B6 80
	sbc ($C3.b),Y		; F1 C3
	adc $016F28.l,X		; 7F 28 6F 01
	inc $005F.w,X		; FE 5F 00
	pld		; 2B
	brk $2D.b		; 00 2D
	tsb $DB.b		; 04 DB
	stp		; DB
	ldx $1C.b,Y		; B6 1C
	cpx #$FF.b		; E0 FF
	lda $B4.b,X		; B5 B4
	inc $D4FF.w,X		; FE FF D4
	pei ($FF.b)		; D4 FF
	sbc $EFD2D2.l,X		; FF D2 D2 EF
	rts		; 60

	adc $6FE0.w		; 6D E0 6F
	inx		; E8
	sbc $DC7E26.l,X		; FF 26 7E DC
	bit $34D3.w,X		; 3C D3 34
	tsb $C201.w		; 0C 01 C2
	sbc $20.b,S		; E3 20
	rol $10FE.w		; 2E FE 10
	bvs   0.b		; 70 00
	sbc ($FF.b,X)		; E1 FF
	eor $FA41.w,X		; 5D 41 FA
	ora $C0.b,S		; 03 C0
	trb $9100.w		; 1C 00 91
	rol $2A85.w		; 2E 85 2A
	adc $08.b,S		; 63 08
	ror $6BC0.w,X		; 7E C0 6B
	rol $96F1.w,X		; 3E F1 96
	brk $A5.b		; 00 A5
	brk $CB.b		; 00 CB
	asl $FF.b,X		; 16 FF
	sed		; F8
	and $2FFFBF.l,X		; 3F BF FF 2F
	and $5A6B6B.l		; 2F 6B 6B 5A
	phy		; 5A
	and $35.b,X		; 35 35
	pea $C400.w		; F4 00 C4
	and $FEFCFE.l,X		; 3F FE FC FE
	jmp.w [$9C00]		; DC 00 9C
	brk $AC.b		; 00 AC
	brk $AF.b		; 00 AF
	clc		; 18
	sbc $FF18.w,X		; FD 18 FF
	sed		; F8
	asl A		; 0A
	cld		; D8
	sbc $38F278.l,X		; FF 78 F2 38
	brk $5A.b		; 00 5A
	bit $FB7F.w,X		; 3C 7F FB
	lda $42EF66.l,X		; BF 66 EF 42
	sbc $247F46.l		; EF 46 7F 24
	adc $F5.b		; 65 F5
	bit $E9B3.w,X		; 3C B3 E9
	.db $42, $00		; 42 00
	lsr $0C.b		; 46 0C
	sbc $E0F000.l,X		; FF 00 F0 E0
	pea $FA38.w		; F4 38 FA
	cpy $84EE.w		; CC EE 84
	inc $FFFB.w		; EE FB FF
	cpy $7D.b		; C4 7D
	iny		; C8
	cpx #$FD.b		; E0 FD
	sec		; 38
	php		; 08
	cpy $8404.w		; CC 04 84
	brk $C4.b		; 00 C4
	brk $C8.b		; 00 C8
	ora $DFFF00.l		; 0F 00 FF DF
	ora $001708.l,X		; 1F 08 17 00
	tas		; 1B
	tsb $38.b		; 04 38
	ora [$70.b],Y		; 17 70
	and $915FC0.l		; 2F C0 5F 91
	ldx $F1ED.w		; AE ED F1
	jsr ($0FFE.w,X)		; FC FE 0F
	sbc $3F1F1F.l,X		; FF 1F 1F 3F
	and $69E99D.l,X		; 3F 9D E9 69
	sta ($74.b,X)		; 81 74
	sty $FE.b		; 84 FE
	sbc $7F00FF.l		; EF FF 00 7F
	stx $807E.w		; 8E 7E 80
	phy		; 5A
	sbc ($0C.b),Y		; F1 0C
	cmp $F7F60F.l,X		; DF 0F F6 F7
	xba		; EB
	sbc $3FE1E1.l		; EF E1 E1 3F
	asl $E0E0.w,X		; 1E E0 E0
	sbc $E0E3E0.l		; EF E0 E3 E0
	cpx $09FA.w		; EC FA 09
	brk $04.b		; 00 04
	pea $38E0.w		; F4 E0 38
	iny		; C8
	sbc #$FE.b		; E9 FE
	inc $0606.w,X		; FE 06 06
	ora $F1.b,S		; 03 F1
	sbc $1F0AF8.l,X		; FF F8 0A 1F
	sbc $BF0A3F.l,X		; FF 3F 0A BF
	ora ($53.b,X)		; 01 53
	rol $3FFA.w,X		; 3E FA 3F
	adc [$21.b]		; 67 21
	rti		; 40

	jsr $00A6.w		; 20 A6 00
	lda $FFFC11.l,X		; BF 11 FC FF
	dec $40.b		; C6 40
	rti		; 40

	sta ($92.b)		; 92 92
	bpl  26.b		; 10 1A
	tya		; 98
	bra -97.b		; 80 9F
	bra -33.b		; 80 DF
	cpy #$CE.b		; C0 CE
	sbc $B3C017.l,X		; FF 17 C0 B3
	stz $086F.w,X		; 9E 6F 08
	adc $06.b,X		; 75 06
	adc $037A03.l,X		; 7F 03 7A 03
	adc $FAF116.l,X		; 7F 16 F1 FA
	jsr $60FE.w		; 20 FE 60
	cli		; 58
	sbc #$FC.b		; E9 FC
	tsb $FE.b		; 04 FE
	ora $0E.b,S		; 03 0E
	asl A		; 0A
	sbc ($84.b)		; F2 84
	sbc $CCF7FE.l,X		; FF FE F7 CC
	lsr $97.b		; 46 97
	beq  39.b		; F0 27
	adc [$83.b]		; 67 83
	ora [$F3.b]		; 07 F3
	ora $F30E7E.l,X		; 1F 7E 0E F3
	asl A		; 0A
	sep #$00		; E2 00
	ora #$8F.b		; 09 8F
	brk $88.b		; 00 88
	bcc  24.b		; 90 18
	ldy #$78.b		; A0 78
	jsr ($D8FF.w,X)		; FC FF D8
	pea $FD00.w		; F4 00 FD
	ora ($4D.b,X)		; 01 4D
	ora $76.b,S		; 03 76
	ora $F63CDB.l		; 0F DB 3C F6
	sec		; 38
	lda [$C7.b]		; A7 C7
	ldx $EA70.w		; AE 70 EA
	stz $FE.b,X		; 74 FE
	bcs -77.b		; B0 B3
	bra -113.b		; 80 8F
	cop $FB.b		; 02 FB
	and $740438.l,X		; 3F 38 04 74
	inc $DFFC.w,X		; FE FC DF
	bmi -56.b		; 30 C8
	tsx		; BA
	dey		; 88
	adc ($78.b)		; 72 78
	cop $08.b		; 02 08
	ora ($E1.b,X)		; 01 E1
	sta [$58.b]		; 87 58
	sbc $BC0130.l,X		; FF 30 01 BC
	ora ($74.b,X)		; 01 74
	sbc ($FB.b,S),Y		; F3 FB
	cmp $04.b,S		; C3 04
	cop $02.b		; 02 02
	ora ($EB.b,S),Y		; 13 EB
	sbc [$19.b],Y		; F7 19
	inc $BB.b		; E6 BB
	sbc $DC.b,S		; E3 DC
	cmp $1FA720.l		; CF 20 A7 1F
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	sbc $BB8019.l		; EF 19 80 BB
	cpy #$DC.b		; C0 DC
	cpy #$FC.b		; C0 FC
	and $FDF1F8.l,X		; 3F F8 F1 FD
	rts		; 60

	bra -40.b		; 80 D8
	cpx #$B4.b		; E0 B4
	sei		; 78
	jmp $1C2A38.l		; 5C 38 2A 1C
	rol $BFC3.w		; 2E C3 BF
	inc $40EA.w,X		; FE EA 40
	cpx #$20.b		; E0 20
	sei		; 78
	bpl  56.b		; 10 38
	php		; 08
	trb $0387.w		; 1C 87 03
	inc $03FC.w,X		; FE FC 03
	ora ($02.b,X)		; 01 02
	tsb $0403.w		; 0C 03 04
	ora ($FC.b,X)		; 01 FC
	brk $82.b		; 00 82
	bcs -12.b		; B0 F4
	lda $8CFC.w		; AD FC 8C
	adc [$9E.b],Y		; 77 9E
	xba		; EB
	sbc ($F1.b,S),Y		; F3 F1
	tsa		; 3B
	mvp $A4,$7E		; 44 7E A4
	sbc #$7E.b		; E9 7E
	sta ($F8.b,X)		; 81 F8
	sbc $7FFE.w		; ED FE 7F
	sta ($36.b,X)		; 81 36
	sta ($95.b,X)		; 81 95
	cpy #$06.b		; C0 06
	cpx $FFFC.w		; EC FC FF
	sbc $FF7E.w,X		; FD 7E FF
	sbc $13BFFE.l,X		; FF FE BF 13
	sbc [$24.b]		; E7 24
	lsr $5DC3.w,X		; 5E C3 5D
	sbc $9E.b		; E5 9E
	dec $C478.w,X		; DE 78 C4
	lsr A		; 4A
	inc A		; 1A
	jmp $E28847.l		; 5C 47 88 E2
	cmp $C0.b,S		; C3 C0
	clc		; 18
	eor ($AC.b,X)		; 41 AC
	and ($0F.b,X)		; 21 0F
	brk $52.b		; 00 52
	lda $753C.w,X		; BD 3C 75
	inc $F6.b,X		; F6 F6
	sed		; F8
	brk $38.b		; 00 38
	inc $9EA4.w,X		; FE A4 9E
	stz $0A01.w		; 9C 01 0A
	lda ($FE.b),Y		; B1 FE
	ldx #$FF.b		; A2 FF
	tsa		; 3B
	nop		; EA
	and $AFEA.w,Y		; 39 EA AF
	bpl -73.b		; 10 B7
	brk $BF.b		; 00 BF
	sbc $AB080F.l,X		; FF 0F 08 AB
	bpl -19.b		; 10 ED
	tsb $E7.b		; 04 E7
	asl A		; 0A
	tda		; 7B
	sta ($21.b,X)		; 81 21
	bra -49.b		; 80 CF
	cpy #$F1.b		; C0 F1
	sbc $FEC7FE.l,X		; FF FE C7 FE
	cmp $D0.b,S		; C3 D0
	cmp ($D0.b,X)		; C1 D0
	cpy $C4.b		; C4 C4
	dec $FFDE.w,X		; DE DE FF
	bra -65.b		; 80 BF
	adc $AF00FF.l		; 6F FF 00 AF
	ldy #$9F.b		; A0 9F
	brk $FE.b		; 00 FE
	txs		; 9A
	sbc ($F7.b,X)		; E1 F7
	ora $1E.b		; 05 1E
	sta ($B2.b)		; 92 B2
.INDEX 8
	sep #$5F		; E2 5F
	inx		; E8
	cmp $CE.b,S		; C3 CE
	rti		; 40

	ldx $00E1.w		; AE E1 00
	sed		; F8
	brk $61.b		; 00 61
	plx		; FA
	tsb $FBFF.w		; 0C FF FB
	plx		; FA
	bit $0CA3.w		; 2C A3 0C
	adc ($1C.b,S),Y		; 73 1C
	sbc $00.b		; E5 00
	stp		; DB
	bra  74.b		; 80 4A
	bra -23.b		; 80 E9
	sbc ($01.b,X)		; E1 01
	cmp ($C3.b,X)		; C1 C3
	ora $10C001.l		; 0F 01 C0 10
	ora $12.b		; 05 12
	asl A		; 0A
	rol $26.b		; 26 26
	lda [$37.b],Y		; B7 37
	sbc $EAFEFF.l,X		; FF FF FE EA
	stz $AA.b,X		; 74 AA
	stz $F6.b,X		; 74 F6
	sec		; 38
	dec $38.b,X		; D6 38
	rtl		; 6B

	trb $2E55.w		; 1C 55 2E
	cmp $D622.w,X		; DD 22 D6
	asl $29FF.w		; 0E FF 29
	ldy $80F2.w		; AC F2 80
	clv		; B8
	inc $DCC0.w,X		; FE C0 DC
	cpx #$EE.b		; E0 EE
	bvs 114.b		; 70 72
	sei		; 78
	.db $82, $3A, $79		; 82 3A 79
	cpy $D8.b		; C4 D8
	phd		; 0B
	inc $F4AC.w,X		; FE AC F4
	lda $CC0BD8.l		; AF D8 0B CC
	sbc ($5C.b)		; F2 5C
	sec		; 38
	jsr ($FE1F.w,X)		; FC 1F FE
	clv		; B8
	bvs 112.b		; 70 70
	cpx #$E0.b		; E0 E0
	bra -64.b		; 80 C0
	brk $08.b		; 00 08
	trb $E200.w		; 1C 00 E2
	and $FE.b,X		; 35 FE
	sec		; 38
	inc $0070.w,X		; FE 70 00
	cpx #$9E.b		; E0 9E
	pea $F8C0.w		; F4 C0 F8
	ora #$03.b		; 09 03
	bra  -1.b		; 80 FF
	asl $FF11.w,X		; 1E 11 FF
	bne  13.b		; D0 0D
	ora $C3.b,S		; 03 C3
	rti		; 40

	.db $62, $20, $32		; 62 20 32
	bpl  -1.b		; 10 FF
	sbc $D5183A.l,X		; FF 3A 18 D5
	bvc  35.b		; 50 23
	and ($4F.b,X)		; 21 4F
	ora $87.b,S		; 03 87
	ora ($3E.b,S),Y		; 13 3E
	ror $3F1F.w,X		; 7E 1F 3F
	ora $F87F1F.l		; 0F 1F 7F F8
	ora [$1F.b]		; 07 1F
	rol $DC7E.w		; 2E 7E DC
	sbc $FBF8.w,X		; FD F8 FB
	inc $B2DA.w,X		; FE DA B2
	sbc $38.b,S		; E3 38
	beq  -1.b		; F0 FF
	lda $FF412C.l,X		; BF 2C 41 FF
	rti		; 40

	sta $A0FEC0.l,X		; 9F C0 FE A0
	sbc $3647C0.l		; EF C0 47 36
	asl $4786.w,X		; 1E 86 47
	tsx		; BA
	sbc #$3E.b		; E9 3E
	brk $3F.b		; 00 3F
	inc $1F80.w,X		; FE 80 1F
	inc $2017.w,X		; FE 17 20
	cpy #$0A.b		; C0 0A
	ora ($0F.b,X)		; 01 0F
	stz $D9.b		; 64 D9
	inc $2CEE.w,X		; FE EE 2C
	dec $FF.b,X		; D6 FF
	inx		; E8
	cli		; 58
	tsb $1FE3.w		; 0C E3 1F
	inc $1818.w		; EE 18 18
	and [$30.b],Y		; 37 30
	bcs   0.b		; B0 00
	iny		; C8
	bpl  -1.b		; 10 FF
	eor $781864.l,X		; 5F 64 18 78
	brk $A7.b		; 00 A7
	brk $F8.b		; 00 F8
	ora [$01.b]		; 07 01
	inc $FC02.w,X		; FE 02 FC
	cmp $E282DF.l,X		; DF DF 82 E2
	clv		; B8
	sbc $7878FF.l,X		; FF FF 78 78
	ora [$CC.b]		; 07 CC
	sbc ($FB.b,S),Y		; F3 FB
	php		; 08
	inc $20.b		; E6 20
	lda [$54.b],Y		; B7 54
	stz $F0FF.w		; 9C FF F0
	adc $C1.b,S		; 63 C1
	rol $01FF.w,X		; 3E FF 01
	txy		; 9B
	.db $82, $46, $39		; 82 46 39
	nop		; EA
	ora $114800.l,X		; 1F 00 48 11
	rol $6300.w,X		; 3E 00 63
	bcs  -1.b		; B0 FF
	jmp ($C100.w,X)		; 7C 00 C1
	brk $C7.b		; 00 C7
	asl $FE71.w		; 0E 71 FE
	eor $80.b		; 45 80
	inc $D4C5.w,X		; FE C5 D4
	asl $F8.b		; 06 F8
	clc		; 18
	bra -66.b		; 80 BE
	tyx		; BB
	tsa		; 3B
	sbc $5F0EFC.l,X		; FF FC 0E 5F
	plx		; FA
	ora $03.b,S		; 03 03
	sbc $00F1.w,Y		; F9 F1 00
	plx		; FA
	ora [$B9.b]		; 07 B9
	asl $28.b		; 06 28
	nop		; EA
	ora $EA34BF.l		; 0F BF 34 EA
	eor $09DF00.l,X		; 5F 00 DF 09
	adc [$70.b],Y		; 77 70
	ror $B8.b,X		; 76 B8
	clv		; B8
	ldx $FFF7.w,Y		; BE F7 FF
	sbc $3E3EFD.l,X		; FF FD 3E 3E
	bra  -7.b		; 80 F9
	sbc ($5C.b),Y		; F1 5C
	cpx #$21.b		; E0 21
	dec $01DD.w,X		; DE DD 01
	bpl   2.b		; 10 02
	bpl   1.b		; 10 01
	.db $42, $5F		; 42 5F
	and ($08.b),Y		; 31 08
	jsr ($D8ED.w,X)		; FC ED D8
	cmp ($E9.b,X)		; C1 E9
	tsb $0A04.w		; 0C 04 0A
	asl $F1AE.w		; 0E AE F1
	sed		; F8
	lda $0E7740.l,X		; BF 40 77 0E
	cmp #$36.b		; C9 36
	ldx $C0.b,Y		; B6 C0
	bpl  64.b		; 10 40
	bpl -128.b		; 10 80
	clc		; 18
	bmi -12.b		; 30 F4
	eor $E9D4.w,X		; 5D D4 E9
	rol $80.b,X		; 36 80
	sbc $E1D320.l,X		; FF 20 D3 E1
	cpx #$E0.b		; E0 E0
	pld		; 2B
	sed		; F8
	cpy #$20.b		; C0 20
	cpy #$52.b		; C0 52
	sbc #$FF.b		; E9 FF
	sed		; F8
	ora #$F3.b		; 09 F3
	sbc ($F8.b),Y		; F1 F8
	tsb $0004.w		; 0C 04 00
	ora $5611.w		; 0D 11 56
	tsb $09.b		; 04 09
	jsr ($06F8.w,X)		; FC F8 06
	cop $58.b		; 02 58
	sep #$04		; E2 04
	jmp.w [$FE90]		; DC 90 FE
	jsr ($EA5E.w,X)		; FC 5E EA
	cpx #$AF.b		; E0 AF
	ora [$EF.b],Y		; 17 EF
	ora [$FF.b],Y		; 17 FF
	ora [$E1.b]		; 07 E1
	sta $6203F7.l,X		; 9F F7 03 62
	tda		; 7B
	ora ($BD.b,X)		; 01 BD
	brk $EF.b		; 00 EF
	sta ($F0.b,X)		; 81 F0
	sbc [$FC.b],Y		; F7 FC
	sbc $F1A6FE.l,X		; FF FE A6 F1
	sed		; F8
	jsr ($7EFD.w,X)		; FC FD 7E
	ror $9F1E.w,X		; 7E 1E 9F
	sbc [$E0.b],Y		; F7 E0
	sbc $FFFFF4.l,X		; FF F4 FF FF
	sbc $F9FFFA.l,X		; FF FA FF F9
	sbc $B9FD7B.l,X		; FF 7B FD B9
	adc $11BB5A.l,X		; 7F 5A BB 11
	ora $F003E0.l		; 0F E0 03 F0
	ora ($FE.b,X)		; 01 FE
	adc $F8.b,X		; 75 F8
	cmp $E9.b		; C5 E9
	sei		; 78
	cop $B8.b		; 02 B8
	bra -40.b		; 80 D8
	mvp $06,$54		; 44 54 06
	inc $5C.b,X		; F6 5C
	sbc #$00.b		; E9 00
	ora [$94.b]		; 07 94
	inc $43FE.w,X		; FE FE 43
	beq  11.b		; F0 0B
	sbc $A807F8.l,X		; FF F8 07 A8
	ora [$DC.b]		; 07 DC
	ora $FF.b,S		; 03 FF
	sbc $E21B64.l,X		; FF 64 1B E2
	ora $04A3.w		; 0D A3 04
	cmp ($22.b,X)		; C1 22
	rti		; 40

	pld		; 2B
	and [$30.b],Y		; 37 30
	adc [$70.b],Y		; 77 70
	adc $60.b,S		; 63 60
	sbc $C0C3FF.l,X		; FF FF C3 C0
	cmp ($D0.b,X)		; C1 D0
	cpy #$D8.b		; C0 D8
	bra -100.b		; 80 9C
	bra -108.b		; 80 94
	asl $FB.b		; 06 FB
	tsb $09F4.w		; 0C F4 09
	sbc ($FF.b),Y		; F1 FF
	sbc ($1B.b,X)		; E1 1B
	nop		; EA
	asl $E5.b,X		; 16 E5
	trb $19EB.w		; 1C EB 19
	inc $F6.b		; E6 F6
	ora #$A7.b		; 09 A7
	sbc ($00.b,S),Y		; F3 00
	lda $00F6FF.l,X		; BF FF F6 00
	cpx $00.b		; E4 00
	sbc #$00.b		; E9 00
	sbc $30.b,S		; E3 30
	cmp #$08.b		; C9 08
	brk $38.b		; 00 38
	adc [$60.b]		; 67 60
	eor $70FFC0.l,X		; 5F C0 FF 70
	and $1FFF00.l,X		; 3F 00 FF 1F
	cpx #$60.b		; E0 60
	sta $247080.l,X		; 9F 80 70 24
	sta [$00.b]		; 87 00
	sta $248CC1.l,X		; 9F C1 8C 24
	sbc ($52.b),Y		; F1 52
	cmp $EB.b,S		; C3 EB
	ora $7BFFF5.l		; 0F F5 FF 7B
	inc $FC03.w,X		; FE 03 FC
	asl $EDE2.w,X		; 1E E2 ED
	trb $B9.b		; 14 B9
	bvs -13.b		; 70 F3
	pla		; 68
	dex		; CA
	jmp.w [$00FC]		; DC FC 00
	sbc ($F8.b,X)		; E1 F8
	sbc $07106E.l,X		; FF 6E 10 07
	bvs  39.b		; 70 27
	rts		; 60

	ror $2E80.w		; 6E 80 2E
	cpy #$F6.b		; C0 F6
	jsr $179E.w		; 20 9E 17
	inc $CE90.w,X		; FE 90 CE
	php		; 08
	sbc [$B4.b]		; E7 B4
	cmp $9FFE.w,Y		; D9 FE 9F
	ora $0F1FDF.l,X		; 1F DF 1F 0F
	ora $673FCF.l		; 0F CF 3F 67
	ora [$F3.b]		; 07 F3
	ora $FB.b,S		; 03 FB
	inc $019A.w,X		; FE 9A 01
	stx $0B.b,Y		; 96 0B
	txa		; 8A
	ora [$0D.b]		; 07 0D
	sta $85FE.w,X		; 9D FE 85
	ora $FE.b,S		; 03 FE
	eor $36.b		; 45 36
	sbc ($00.b,X)		; E1 00
	phd		; 0B
	cmp ($7F.b,X)		; C1 7F
	and [$FE.b],Y		; 37 FE
	sta [$E1.b]		; 87 E1
	bra -125.b		; 80 83
	bcs   0.b		; B0 00
	beq -96.b		; F0 A0
	cpx #$C0.b		; E0 C0
	sei		; 78
	sbc ($FE.b)		; F2 FE
	ldy #$C0.b		; A0 C0
	rti		; 40

	bra  -2.b		; 80 FE
	inx		; E8
	cmp $80A0.w,Y		; D9 A0 80
	sty $24.b		; 84 24
	cpy #$FE.b		; C0 FE
	adc $EE44FE.l,X		; 7F FE 44 EE
	lsr $CFFF.w,X		; 5E FF CF
	asl $01.b		; 06 01
	asl $E800.w		; 0E 00 E8
	phd		; 0B
	eor [$E2.b]		; 47 E2
	ora $B6.b		; 05 B6
	jsr $119D.w		; 20 9D 11
	sta $14F0FF.l,X		; 9F FF F0 14
	sbc $9FFFE3.l,X		; FF E3 FF 9F
	sbc $BF7F7F.l,X		; FF 7F 7F BF
	plx		; FA
	eor $23666F.l		; 4F 6F 66 23
	jsr ($6077.w,X)		; FC 77 60
	stz $23.b,X		; 74 23
	and $007F.w,Y		; 39 7F 00
	lda $FF9F80.l,X		; BF 80 9F FF
	sbc $FF22BF.l,X		; FF BF 22 FF
	inc A		; 1A
	sbc $ACB5F1.l,X		; FF F1 B5 AC
	tsa		; 3B
	plp		; 28
	txy		; 9B
	dey		; 88
	cmp $D8D6.w,Y		; D9 D6 D8
	cmp ($87.b),Y		; D1 87
	sbc $026042.l,X		; FF 42 60 02
	clc		; 18
	sta $E042.w		; 8D 42 E0
	cmp [$E0.b]		; C7 E0
	adc [$E0.b]		; 67 E0
	and ($F0.b,X)		; 21 F0
	phd		; 0B
	beq  38.b		; F0 26
	beq  13.b		; F0 0D
	ldy #$C1.b		; A0 C1
	inc $19ED.w,X		; FE ED 19
	brk $1B.b		; 00 1B
	cmp [$FF.b],Y		; D7 FF
	brk $32.b		; 00 32
	ora ($34.b,X)		; 01 34
	ora #$E4.b		; 09 E4
	and $06F1.w,X		; 3D F1 06
	asl $04.b		; 06 04
	tsb $0C.b		; 04 0C
	tsb $0808.w		; 0C 08 08
	sbc $0E41FF.l,X		; FF FF 41 0E
	txa		; 8A
	eor $8E.b,X		; 55 8E
	bvc -126.b		; 50 82
	jmp $4D82.w		; 4C 82 4D
	cmp ($22.b,X)		; C1 22
	eor ($B6.b,X)		; 41 B6
	eor $BC.b,S		; 43 BC
	bne  27.b		; D0 1B
	bra  79.b		; 80 4F
	jsr $D9C3.w		; 20 C3 D9
	and ($00.b),Y		; 31 00
	bmi -104.b		; 30 98
	sbc ($08.b,X)		; E1 08
	inc $7B87.w,X		; FE 87 7B
	php		; 08
	sta [$14.b],Y		; 97 14
	ply		; 7A
	and $42.b		; 25 42
	asl $31.b		; 06 31
	tsb $0B.b		; 04 0B
	inc $C3.b,X		; F6 C3
	and $9C0FF0.l,X		; 3F F0 0F 9C
	dey		; 88
	rts		; 60

	bpl -111.b		; 10 91
	bpl -120.b		; 10 88
	bra  72.b		; 80 48
	rti		; 40

	pea $D8BF.w		; F4 BF D8
	rts		; 60

	stx $EB.b,Y		; 96 EB
	ora ($01.b,X)		; 01 01
	rts		; 60

	ora ($C0.b,X)		; 01 C0
	ora ($C2.b,X)		; 01 C2
	cop $81.b		; 02 81
	lda [$F7.b],Y		; B7 F7
	sbc $02C5E9.l		; EF E9 C5 02
	sbc $E90B.w		; ED 0B E9
	stz $E923.w,X		; 9E 23 E9
	bit $7D00.w,X		; 3C 00 7D
	and $0039E9.l		; 2F E9 39 00
	sta $F31187.l,X		; 9F 87 11 F3
	pla		; 68
	tda		; 7B
	inx		; E8
	sbc $F5FE.w,Y		; F9 FE F5
	cpx $07FE.w		; EC FE 07
	dey		; 88
	jsr ($67F4.w,X)		; FC F4 67
	rts		; 60

	pla		; 68
	inc $69E7.w,X		; FE E7 69
	stz $FE.b,X		; 74 FE
	sbc $FE.b,S		; E3 FE
	beq -11.b		; F0 F5
	cmp $F8FE.w,Y		; D9 FE F8
	ora #$FF.b		; 09 FF
	tsb $FD.b		; 04 FD
	sbc $FEF4AA.l,X		; FF AA F4 FE
	inc $01F9.w,X		; FE F9 01
	eor $03.b		; 45 03
	eor $0F7700.l		; 4F 00 77 0F
	eor $79B63F.l,X		; 5F 3F B6 79
	sbc $66D9F0.l,X		; FF F0 D9 66
	sbc $3FCF1F.l		; EF 1F CF 3F
	bra -125.b		; 80 83
	bra  -3.b		; 80 FD
	sta $07BF87.l		; 8F 87 BF 07
	inx		; E8
	brk $79.b		; 00 79
	brk $66.b		; 00 66
	cop $F8.b		; 02 F8
	rti		; 40

	lda [$F1.b],Y		; B7 F1
	bcs  63.b		; B0 3F
	sbc $F8C0.w,Y		; F9 C0 F8
	beq -12.b		; F0 F4
	sed		; F8
	pea $FA38.w		; F4 38 FA
	ldx $C0F3.w		; AE F3 C0
	beq -16.b		; F0 F0
	sbc [$FF.b],Y		; F7 FF
	bvs  -8.b		; 70 F8
	bmi  56.b		; 30 38
	eor ($C1.b,X)		; 41 C1
	sed		; F8
	inc A		; 1A
	ora $17.b		; 05 17
	tsb $061D.w		; 0C 1D 06
	phd		; 0B
	asl $0C.b		; 06 0C
	stp		; DB
	bvc   3.b		; 50 03
	asl $01.b		; 06 01
	rtl		; 6B

	sbc ($02.b),Y		; F1 02
	and $E9.b,X		; 35 E9
	asl $02FE.w		; 0E FE 02
	rts		; 60

	pea $EDFF.w		; F4 FF ED
	sta ($F1.b)		; 92 F1
	cmp $87FFAF.l,X		; DF AF FF 87
	and $40B3C3.l,X		; 3F C3 B3 40
	bit $F2.b		; 24 F2
	adc ($5C.b,S),Y		; 73 5C
	cmp #$80.b		; C9 80
	sbc $80AFFE.l,X		; FF FE AF 80
	cmp [$00.b],Y		; D7 00
	cmp ($00.b,S),Y		; D3 00
	jmp ($6F00.w)		; 6C 00 6F
	cmp ($C1.b,S),Y		; D3 C1
	cmp $EAD700.l		; CF 00 D7 EA
	cpx #$FF.b		; E0 FF
	sbc $FDE8EF.l,X		; FF EF E8 FD
	sed		; F8
	inc $7E7C.w,X		; FE 7C 7E
	trb $0DDF.w		; 1C DF 0D
	sbc $02F706.l		; EF 06 F7 02
	ora [$F0.b],Y		; 17 F0
	sbc $F8137D.l,X		; FF 7D 13 F8
	ora $F8.b,S		; 03 F8
	ora ($7C.b,X)		; 01 7C
	ora ($9C.b,X)		; 01 9C
	brk $EC.b		; 00 EC
	sta [$E9.b],Y		; 97 E9
	plx		; FA
	and ($01.b)		; 32 01
	eor ($4B.b),Y		; 51 4B
	beq  -6.b		; F0 FA
	cmp ($60.b),Y		; D1 60
	dec $FEB1.w,X		; DE B1 FE
	stz $0C.b,X		; 74 0C
	tsb $F70E.w		; 0C 0E F7
	sbc $1E1E0E.l,X		; FF 0E 1E 1E
	ora $3FFDFF.l,X		; 1F FF FD 3F
	and $33B14F.l,X		; 3F 4F B1 33
	cmp $B307.w		; CD 07 B3
	sta [$4B.b]		; 87 4B
	and $468DF8.l,X		; 3F F8 8D 46
	cmp $57EB21.l		; CF 21 EB 57
	sbc [$33.b],Y		; F7 33
	pld		; 2B
	nop		; EA
	phk		; 4B
	cop $33.b		; 02 33
	sbc [$FF.b],Y		; F7 FF
	brk $36.b		; 00 36
	brk $11.b		; 00 11
	tsx		; BA
	sbc ($0F.b,X)		; E1 0F
	xba		; EB
	pea $F7E8.w		; F4 E8 F7
	sei		; 78
	sbc $D4.b,X		; F5 D4
	dec A		; 3A
	ldy $0F.b,X		; B4 0F
	cmp $CA.b,S		; C3 CA
	cpx $FAF3.w		; EC F3 FA
	sbc $80FE.w,X		; FD FE 80
	beq  67.b		; F0 43
	jsr $F0C6.w		; 20 C6 F0
	sbc ($C6.b)		; F2 C6
	sbc ($C9.b),Y		; F1 C9
	tsa		; 3B
	jsr ($05FE.w,X)		; FC FE 05
	nop		; EA
	sty $87.b		; 84 87
	lda $87787B.l,X		; BF 7B 78 87
	ora $F8.b,S		; 03 F8
	phk		; 4B
	phd		; 0B
	ora [$37.b],Y		; 17 37
	eor $FEB04F.l		; 4F 4F B0 FE
	sbc $FFC103.l,X		; FF 03 C1 FF
	jsr ($00B3.w,X)		; FC B3 00
	sbc [$01.b]		; E7 01
	sta $FE3000.l		; 8F 00 30 FE
	sbc ($FE.b)		; F2 FE
	adc ($FE.b)		; 72 FE
	ply		; 7A
	sbc $FF7FFF.l,X		; FF FF 7F FF
	xce		; FB
	sbc $F9F7.w,X		; FD F7 F9
	stp		; DB
	sbc ($EB.b,X)		; E1 EB
	ora ($71.b,X)		; 01 71
	beq 113.b		; F0 71
	bvs 113.b		; 70 71
	sei		; 78
	sbc ($1F.b,X)		; E1 1F
	bvs  -4.b		; 70 FC
	inc $F8C0.w,X		; FE C0 F8
	tsb $E4.b		; 04 E4
	trb $14.b		; 14 14
	xce		; FB
	brk $FC.b		; 00 FC
	bcs  -2.b		; B0 FE
	inc $C3.b		; E6 C3
	cop $FF.b		; 02 FF
	.db $82, $BD, $80		; 82 BD 80
	inc $01FD.w,X		; FE FD 01
	sta $FE0F.w		; 8D 0F FE
	jsr ($82FC.w,X)		; FC FC 82
	cmp $FE7E.w,Y		; D9 7E FE
	sbc $1FEF00.l,X		; FF 00 EF 1F
	sbc $FDFE87.l,X		; FF 87 FE FD
	ora $FB.b,S		; 03 FB
	tsb $0FF7.w		; 0C F7 0F
	inc $E901.w,X		; FE 01 E9
	asl $C0.b,X		; 16 C0
	sbc $DFEFFB.l,X		; FF FB EF DF
	cmp ($DF.b,X)		; C1 DF
	adc $C2.b,S		; 63 C2
	sbc ($EF.b,X)		; E1 EF
	cpx #$E1.b		; E0 E1
	cpy #$D6.b		; C0 D6
	pea $A478.w		; F4 78 A4
	sbc ($F8.b,S),Y		; F3 F8
	and ($0C.b,X)		; 21 0C
	sed		; F8
	bvs  -8.b		; 70 F8
	iny		; C8
	ror $7000.w		; 6E 00 70
	.db $42, $34		; 42 34
	ldy $AA.b		; A4 AA
	sbc ($F3.b),Y		; F1 F3
	bpl  -7.b		; 10 F9
	lda $00C1.w,X		; BD C1 00
	jmp ($3DF5.w,X)		; 7C F5 3D
	asl $02.b		; 06 02
	tsb $00.b		; 04 00
	ora $FE.b		; 05 FE
	sbc $FEEC34.l,X		; FF 34 EC FE
	sed		; F8
	ora #$EF.b		; 09 EF
	bpl  -1.b		; 10 FF
	ply		; 7A
	xce		; FB
	bcc -39.b		; 90 D9
	bcs  73.b		; B0 49
	bmi  88.b		; 30 58
	jsr $9C78.w		; 20 78 9C
	lda ($C1.b),Y		; B1 C1
	lda $1017.w,Y		; B9 17 10
	and [$48.b],Y		; 37 48
	ora [$FE.b]		; 07 FE
	bra  -2.b		; 80 FE
	and [$80.b]		; 27 80
	ora [$FA.b],Y		; 17 FA
	inx		; E8
	cmp [$62.b],Y		; D7 62
	dex		; CA
	stz $47D9.w		; 9C D9 47
	ora ($BC.b,X)		; 01 BC
	cop $64.b		; 02 64
	inc $C1.b,X		; F6 C1
	brk $E1.b		; 00 E1
	brk $0F.b		; 00 0F
	jsr ($7363.w,X)		; FC 63 73
	cop $BB.b		; 02 BB
	ora $C3.b,S		; 03 C3
	bcs -96.b		; B0 A0
	plx		; FA
	inc $00.b,X		; F6 00
	sed		; F8
	nop		; EA
	ldy $FEE6.w,X		; BC E6 FE
	inc $9E31.w,X		; FE 31 9E
	sbc $410FF8.l,X		; FF F8 0F 41
	inc $FE43.w,X		; FE 43 FE
	sta $00.b,S		; 83 00
	sta $63.b		; 85 63
	bit $3EFE.w,X		; 3C FE 3E
	sbc $7CFF3C.l,X		; FF 3C FF 7C
	jmp ($3F7A.w,X)		; 7C 7A 3F
	rol $AFFF.w,X		; 3E FF AF
	ora $FC1FBF.l,X		; 1F BF 1F FC
	and $970F9F.l		; 2F 9F 0F 97
	adc $43FED8.l,X		; 7F D8 FE 43
	ora $401F41.l,X		; 1F 41 1F 40
	inc $600F.w,X		; FE 0F 60
	inc $77FD.w,X		; FE FD 77
	sty $FA.b		; 84 FA
	sbc $FCFF.w,X		; FD FF FC
	sbc $0BA8.w		; ED A8 0B
	sed		; F8
	jsr ($EDFE.w,X)		; FC FE ED
	sbc $FF1E.w		; ED 1E FF
	adc $BCFDFE.l,X		; 7F FE FD BC
	cmp $FEA2.w,Y		; D9 A2 FE
	sbc $C18D.w,X		; FD 8D C1
	xce		; FB
	jsr ($E0F7.w,X)		; FC F7 E0
	lda $7F0EE7.l,X		; BF E7 0E 7F
	clc		; 18
	sbc $78FE38.l,X		; FF 38 FE 78
	inc $FDF9.w,X		; FE F9 FD
	lda $F162FD.l,X		; BF FD 62 F1
	sbc $F7E0.w,Y		; F9 E0 F7
	eor #$80.b		; 49 80
	bit #$2A.b		; 89 2A
	lda ($08.b),Y		; B1 08
	ora $18E4E9.l		; 0F E9 E4 18
	sty $78.b		; 84 78
	sbc $F804FF.l,X		; FF FF 04 F8
	rol $B6.b,X		; 36 B6
	ror $76.b,X		; 76 76
	inc $F6.b,X		; F6 F6
	sbc [$F7.b],Y		; F7 F7
	cmp $C3.b,S		; C3 C3
	tas		; 1B
	and $7B.b,S		; 23 7B
	sta $FF.b,S		; 83 FF
	sbc $FF03FB.l,X		; FF FB 03 FF
	cmp ($DF.b,X)		; C1 DF
	cmp ($DE.b,X)		; C1 DE
	cpy #$FF.b		; C0 FF
	rts		; 60

	inc $E361.w		; EE 61 E3
	adc ($F5.b,X)		; 61 F5
	adc ($FB.b,S),Y		; 73 FB
	beq 127.b		; F0 7F
	and $3E.b,S		; 23 3E
	ldy $CB.b		; A4 CB
	asl $1C00.w,X		; 1E 00 1C
	ora ($FE.b,X)		; 01 FE
	ora #$03.b		; 09 03
	sta ($FF.b,X)		; 81 FF
	ora $83.b,S		; 03 83
	cpy $3B.b		; C4 3B
	pea $BC3B.w		; F4 3B BC
	tda		; 7B
	tda		; 7B
	jsr ($FBFD.w,X)		; FC FD FB
	inc $F0C0.w,X		; FE C0 F0
	sta $00FD.w,X		; 9D FD 00
	tsa		; 3B
	inc $7B20.w,X		; FE 20 7B
	jsr $507F.w		; 20 7F 50
	jsr ($FB40.w,X)		; FC 40 FB
	cmp ($FB.b,X)		; C1 FB
	cpy #$FB.b		; C0 FB
	bra  -8.b		; 80 F8
	dex		; CA
	stp		; DB
	cmp #$D9.b		; C9 D9
	eor #$4B.b		; 49 4B
	cmp $F8D9.w		; CD D9 F8
	dex		; CA
	cmp $05FDF8.l,X		; DF F8 FD 05
	bit $31E9.w		; 2C E9 31
	lsr A		; 4A
	inc $FE06.w,X		; FE 06 FE
	tsb $FE.b		; 04 FE
	ldy $B0.b,X		; B4 B0
	phd		; 0B
	sbc $E4FEFF.l,X		; FF FF FE E4
	rti		; 40

	sty $20.b,X		; 94 20
	plx		; FA
	jsr $10CD.w		; 20 CD 10
	inc $E710.w,X		; FE 10 E7
	php		; 08
	adc $0A.b,X		; 75 0A
	jmp ($3FFF.w,X)		; 7C FF 3F
	phd		; 0B
	bra  27.b		; 80 1B
	cpy #$0B.b		; C0 0B
	cpy #$05.b		; C0 05
	cpx #$02.b		; E0 02
	cpx #$05.b		; E0 05
	beq   2.b		; F0 02
	beq   3.b		; F0 03
	pea $FEF0.w		; F4 F0 FE
	phd		; 0B
	nop		; EA
	cmp $0047.w,Y		; D9 47 00
	sta [$40.b],Y		; 97 40
	ora $69.b,S		; 03 69
	ora [$FF.b]		; 07 FF
	sbc $07BB.w,X		; FD BB 07
	cmp ($0F.b,S),Y		; D3 0F
	brk $F5.b		; 00 F5
	brk $CD.b		; 00 CD
	brk $BA.b		; 00 BA
	ldx #$E1.b		; A2 E1
	sbc [$01.b],Y		; F7 01
	sbc [$03.b],Y		; F7 03
	eor [$50.b],Y		; 57 50
	adc $04AF03.l		; 6F 03 AF 04
	.db $62, $F1, $20		; 62 F1 20
	inc $18.b,X		; F6 18
	cmp $B1.b,S		; C3 B1
	sbc $200EF8.l,X		; FF F8 0E 20
	dex		; CA
	cop $FE.b		; 02 FE
	inc $11.b		; E6 11
	rti		; 40

	and ($FE.b),Y		; 31 FE
	cop $FF.b		; 02 FF
	inc $FF.b,X		; F6 FF
	inc $C30F.w		; EE 0F C3
	sbc $FE871F.l,X		; FF 1F 87 FE
	and $6FFEA7.l,X		; 3F A7 FE 6F
	ora $5FD743.l		; 0F 43 D7 5F
	lda [$7F.b],Y		; B7 7F
	lda [$FC.b],Y		; B7 FC
	rts		; 60

	ora [$FE.b]		; 07 FE
	rti		; 40

	bit $EC.b,X		; 34 EC
	inc $C1AD.w,X		; FE AD C1
	and [$FE.b],Y		; 37 FE
	ora ($37.b,X)		; 01 37
	dey		; 88
	inc $FD.b,X		; F6 FD
	lda $F7FEFF.l,X		; BF FF FE F7
	sbc $E7FF.w,Y		; F9 FF E7
	sbc $F48ADF.l,X		; FF DF 8A F4
	ror $F8FF.w,X		; 7E FF F8
	inc $F9E1.w,X		; FE E1 F9
	cmp [$0F.b]		; C7 0F
	ora $DF8EE7.l,X		; 1F E7 8E DF
	sbc $DFF5F0.l,X		; FF F0 F5 DF
	cpx #$7E.b		; E0 7E
	sta $FFEEFE.l,X		; 9F FE EE FF
	xba		; EB
	sed		; F8
	sbc $D148C0.l,X		; FF C0 48 D1
	sbc [$F0.b],Y		; F7 F0
	xce		; FB
	bra -32.b		; 80 E0
	tsb $7C9F.w		; 0C 9F 7C
	adc $F0787F.l,X		; 7F 7F 78 F0
	sed		; F8
	bra -61.b		; 80 C3
	brk $3D.b		; 00 3D
	cpy $38.b		; C4 38
	inc $18E4.w,X		; FE E4 18
	inc $08.b,X		; F6 08
	sed		; F8
	sta [$FE.b]		; 87 FE
	sbc ($0C.b)		; F2 0C
	xce		; FB
	tsb $FA.b		; 04 FA
	ora $3B.b		; 05 3B
	cmp $FE.b,S		; C3 FE
	sta [$FF.b]		; 87 FF
	tas		; 1B
	sbc $09.b,S		; E3 09
	and $FE.b,X		; 35 FE
	ora $04F1.w		; 0D F1 04
	sei		; 78
	ora $B8.b		; 05 B8
	rtl		; 6B

	ora [$E1.b],Y		; 17 E1
	sbc $FE275F.l,X		; FF 5F 27 FE
	tda		; 7B
	ora [$55.b]		; 07 55
	pld		; 2B
	eor ($2C.b,S),Y		; 53 2C
	bcs  15.b		; B0 0F
	inx		; E8
	ora [$E3.b],Y		; 17 E3
	sbc $A38793.l,X		; FF 93 87 A3
	inc $8780.w,X		; FE 80 87
	tay		; A8
	sta $AC.b,S		; 83 AC
	bra  79.b		; 80 4F
	rti		; 40

	ora [$C7.b],Y		; 17 C7
	sbc ($80.b,X)		; E1 80
	jsr ($F4FB.w,X)		; FC FB F4
	inc $F3EC.w,X		; FE EC F3
	inc $E314.w,X		; FE 14 E3
	lda ($10.b,X)		; A1 10
	pea $FC03.w		; F4 03 FC
	bra -49.b		; 80 CF
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	sbc ($7E.b,S),Y		; F3 7E
	eor $FE.b,X		; 55 FE
	php		; 08
	xba		; EB
	php		; 08
	phd		; 0B
	inx		; E8
	phd		; 0B
	eor $D3.b,X		; 55 D3
	inc $0AF8.w,X		; FE F8 0A
	dey		; 88
	sbc $FE.b,X		; F5 FE
	sbc $8CFA55.l,X		; FF 55 FA 8C
	sbc ($64.b)		; F2 64
	inc $B64B.w		; EE 4B B6
	inc $FFFE.w,X		; FE FE FF
	ror $2E09.w,X		; 7E 09 2E
	ora #$DB.b		; 09 DB
	sbc $1914.w,X		; FD 14 19
	ror $A122.w,X		; 7E 22 A1
	adc ($AB.b)		; 72 AB
	sbc ($5D.b),Y		; F1 5D
	brk $8C.b		; 00 8C
	sbc ($E0.b)		; F2 E0
	ora $80.b,S		; 03 80
	ora ($31.b,X)		; 01 31
	jmp ($3D80.w,X)		; 7C 80 3D
	inc $FE3E.w,X		; FE 3E FE
	adc [$9F.b]		; 67 9F
	ora [$FF.b]		; 07 FF
	ora ($79.b,X)		; 01 79
	sta $8B.b		; 85 8B
	cpy $07FE.w		; CC FE 07
	cmp $0DF8F0.l,X		; DF F0 F8 0D
	ldx $F2.b		; A6 F2
	inc $64A8.w,X		; FE A8 64
	asl A		; 0A
	inc $9CBE.w,X		; FE BE 9C
	cpx $C0.b		; E4 C0
	phd		; 0B
	sbc $13F48A.l,X		; FF 8A F4 13
	bit $FE38.w		; 2C 38 FE
	ora [$A6.b],Y		; 17 A6
	lda $8AFE.w,Y		; B9 FE 8A
	pea $EDEC.w		; F4 EC ED
	cpx $FEFF.w		; EC FF FE
	inx		; E8
	xba		; EB
	sta $FFD2.w,Y		; 99 D2 FF
	ora [$FB.b],Y		; 17 FB
	ora [$EF.b],Y		; 17 EF
	inc A		; 1A
	sbc $F70A.w,X		; FD 0A F7
	ora $FD0DEE.l,X		; 1F EE 0D FD
	ora [$FB.b]		; 07 FB
	ora [$FE.b]		; 07 FE
	eor $D70057.l,X		; 5F 57 00 D7
	cmp ($99.b,S),Y		; D3 99
	dex		; CA
	sbc $AD01FF.l,X		; FF FF 01 AD
	ora ($A7.b,X)		; 01 A7
	brk $67.b		; 00 67
	brk $6B.b		; 00 6B
	sbc $70FFBC.l,X		; FF BC FF 70
	sbc $C0FFE0.l,X		; FF E0 FF C0
	sbc $82FDFF.l,X		; FF FF FD 82
	adc $FD82.w,X		; 7D 82 FD
	cop $FC.b		; 02 FC
	ora $18.b,S		; 03 18
	ldy $7320.w,X		; BC 20 73
	rti		; 40

	sbc $F1CF80.l		; EF 80 CF F1
	stx $02.b		; 86 02
	lda $6DFE.w		; AD FE 6D
	ora $6C.b,S		; 03 6C
	cpx #$D9.b		; E0 D9
	bpl  -2.b		; 10 FE
	sta [$E1.b]		; 87 E1
	sbc [$18.b]		; E7 18
	sbc $1C.b,S		; E3 1C
	inc $0EF1.w,X		; FE F1 0E
	inc $7D00.w,X		; FE 00 7D
	sbc ($61.b,X)		; E1 61
	bpl 110.b		; 10 6E
	inc $6718.w,X		; FE 18 67
	trb $FEA3.w		; 1C A3 FE
	asl $F8B1.w		; 0E B1 F8
	and [$FE.b]		; 27 FE
	inc $BF01.w,X		; FE 01 BF
	rti		; 40

	cmp $30CF20.l,X		; DF 20 CF 30
	dec $FFF8.w,X		; DE F8 FF
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	ora $40DC01.l		; 0F 01 DC 40
	lda $D320.w		; AD 20 D3
	bmi  75.b		; 30 4B
	clc		; 18
	adc $E1.b		; 65 E1
	sbc $E2A21C.l,X		; FF 1C A2 E2
	ora $C738D0.l		; 0F D0 38 C7
	rol $31C1.w		; 2E C1 31
	cpy #$60.b		; C0 60
	bra  14.b		; 80 0E
	sbc $C9D5E0.l,X		; FF E0 D5 C9
	cpy #$20.b		; C0 20
	jsr ($00C7.w,X)		; FC C7 00
	cmp ($10.b),Y		; D1 10
	dec $9F2E.w		; CE 2E 9F
	cop $FC.b		; 02 FC
	eor $FEC1B9.l,X		; 5F B9 C1 FE
	sbc $E3149F.l,X		; FF 9F 14 E3
	bit $C3.b		; 24 C3
	xce		; FB
	plb		; AB
	cpy $03.b		; C4 03
	tsb $FE.b		; 04 FE
	sbc $D80BE8.l,X		; FF E8 0B D8
	tas		; 1B
	sec		; 38
	tsa		; 3B
	ror $B2.b		; 66 B2
	inc $51FC.w,X		; FE FC 51
	sbc $02F2AC.l,X		; FF AC F2 02
	inc $F0AC.w,X		; FE AC F0
	phd		; 0B
	sbc $390BF8.l,X		; FF F8 0B 39
	rti		; 40

	lda ($C0.b,S),Y		; B3 C0
	lda [$C0.b]		; A7 C0
	sbc $00EFFB.l,X		; FF FB EF 00
	and $1C02.w		; 2D 02 1C
	ora $7C.b,S		; 03 7C
	tas		; 1B
	inc $8079.w,X		; FE 79 80
	lda $E1.b		; A5 E1
	brk $1A.b		; 00 1A
	brk $F8.b		; 00 F8
	sbc $16.b,X		; F5 16
	inc A		; 1A
	sbc [$00.b]		; E7 00
	txy		; 9B
	brk $7B.b		; 00 7B
	cmp $A1.b,S		; C3 A1
	ora ($DB.b,X)		; 01 DB
	cpy #$3F.b		; C0 3F
	adc ($A9.b,X)		; 61 A9
	bra  63.b		; 80 3F
	jsr ($9FE0.w,X)		; FC E0 9F
	ldx $F7.b		; A6 F7
	nop		; EA
	lda $CBBEFE.l,X		; BF FE BE CB
	bit #$FF.b		; 89 FF
	sbc $BE00C3.l,X		; FF C3 00 BE
	ora ($60.b,X)		; 01 60
	ora $0BF8A4.l,X		; 1F A4 F8 0B
	eor $43.b,S		; 43 43
	and $58F03F.l,X		; 3F 3F F0 58
	adc $EBC2.w,Y		; 79 C2 EB
	bmi  15.b		; 30 0F
	cpx #$1F.b		; E0 1F
	clv		; B8
	sbc $15B16F.l,X		; FF 6F B1 15
.INDEX 16
	rep #$5E		; C2 5E
	phb		; 8B
	rol $D2.b		; 26 D2
	pha		; 48
	cpx $F0F2.w		; EC F2 F0
	sta $2787E0.l		; 8F E0 87 27
	asl $F8.b		; 06 F8
	ora $FC.b,S		; 03 FC
	cpx $42.b		; E4 42
	sta ($80.b,X)		; 81 80
	jmp ($EBE0.w,X)		; 7C E0 EB
	lda $FCD147.l,X		; BF 47 D1 FC
	tya		; 98
	stx $FEB4.w		; 8E B4 FE
	rts		; 60

	brk $B0.b		; 00 B0
	rti		; 40

	clc		; 18
	cpx #$7088.w		; E0 88 70
	pld		; 2B
	tsb $F8A2.w		; 0C A2 F8
	ora #$60.b		; 09 60
	rts		; 60

	ldy #$F08A.w		; A0 8A F0
	sed		; F8
	ora #$65.b		; 09 65
	beq -112.b		; F0 90
	dec $F7.b,X		; D6 F7
	jsr ($80CE.w,X)		; FC CE 80
	tsb $C09F.w		; 0C 9F C0
	sed		; F8
	ora #$0F.b		; 09 0F
.ACCU 8
	sep #$E0		; E2 E0
	bra -16.b		; 80 F0
	jsr $F8DF.w		; 20 DF F8
	tsb $C080.w		; 0C 80 C0
	tax		; AA
	asl $C4E0.w,X		; 1E E0 C4
	ldy #$BE09.w		; A0 09 BE
	lda ($C5.b)		; B2 C5
	bcc  11.b		; 90 0B
.ACCU 8
	sep #$EA		; E2 EA
	eor [$91.b],Y		; 57 91
	ora [$70.b]		; 07 70
	ora $085FFE.l		; 0F FE 5F 08
	lda ($4E.b),Y		; B1 4E
	rts		; 60

	stz $3C82.w,X		; 9E 82 3C
	cpx #$411D.w		; E0 1D 41
	bit $0F0F.w,X		; 3C 0F 0F
	adc #$92.b		; 69 92
	adc ($30.b,X)		; 61 30
	phy		; 5A
	tax		; AA
	plx		; FA
	eor $F4FA5F.l,X		; 5F 5F FA F4
	sbc ($40.b)		; F2 40
	sed		; F8
	cop $FA.b		; 02 FA
	and $427F8A.l,X		; 3F 8A 7F 42
	bit $403C.w,X		; 3C 3C 40
	dey		; 88
	asl $FAFF.w		; 0E FF FA
	sbc $F3D00E.l		; EF 0E D0 F3
	bit $C3.b		; 24 C3
	sta ($0E.b),Y		; 91 0E
	eor [$38.b]		; 47 38
	lda ($48.b,S),Y		; B3 48
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	ora $0FEE.w		; 0D EE 0F
	and $304CEE.l,X		; 3F EE 4C 30
	cpy $38.b		; C4 38
	cop $C3.b		; 02 C3
	bit $3CC2.w,X		; 3C C2 3C
	sbc ($1E.b,X)		; E1 1E
	trb $FE0D.w		; 1C 0D FE
	stz $9B.b		; 64 9B
	sed		; F8
	sbc $7E9968.l,X		; FF 68 99 7E
	sta $D6.b,S		; 83 D6
	txs		; 9A
	rol $FC3E.w,X		; 3E 3E FC
	cpy #$F2.b		; C0 F2
	lda #$AE.b		; A9 AE
	bmi -91.b		; 30 A5
	tay		; A8
	asl $AA89.w		; 0E 89 AA
	cpx #$FF.b		; E0 FF
	bra  46.b		; 80 2E
	sta ($B9.b),Y		; 91 B9
	eor $40.b,S		; 43 40
	and ($20.b,X)		; 21 20
	ldy #$20.b		; A0 20
	lda $9D5F20.l		; AF 20 5F 9D
	sbc #$00.b		; E9 00
	and $40.b,S		; 23 40
	sty $DFFF.w		; 8C FF DF
	inc $E8FF.w,X		; FE FF E8
	brk $87.b		; 00 87
	adc $AE0074.l,X		; 7F 74 00 AE
	tsb $7B.b		; 04 7B
	sbc [$0A.b],Y		; F7 0A
	cmp $7324.w,Y		; D9 24 73
	sty $6D93.w		; 8C 93 6D
	eor #$02.b		; 49 02
	sta $C9.b,S		; 83 C9
	sta $FFF29F.l,X		; 9F 9F F2 FF
	rts		; 60

	eor $F8.b,X		; 55 F8
	tsb $FD.b		; 04 FD
	inc A		; 1A
	txy		; 9B
	cpx #$EF.b		; E0 EF
.ACCU 8
	sep #$E6		; E2 E6
	inc $82.b,X		; F6 82
	jmp ($7E81.w,X)		; 7C 81 7E
	sbc $EF10D7.l,X		; FF D7 10 EF
	jsr $49DF.w		; 20 DF 49
	ldx $50.b,Y		; B6 50
	lda $AA11.w		; AD 11 AA
	sbc ($1A.b,X)		; E1 1A
	asl A		; 0A
	jmp ($FEFF.w,X)		; 7C FF FE
	sbc $BFBFFF.l,X		; FF FF BF BF
	sta $0260.w,Y		; 99 60 02
	ora ($58.b,X)		; 01 58
	and $A1.b,S		; 23 A1
	lsr A		; 4A
	adc $00D790.l		; 6F 90 D7 00
	rtl		; 6B

	tsb $FD.b		; 04 FD
	sbc $E608F7.l,X		; FF F7 08 E6
	inc $DADA.w,X		; FE DA DA
	tsx		; BA
	tsx		; BA
	bcs -80.b		; B0 B0
	jsr $6B20.w		; 20 20 6B
	bcc  -9.b		; 90 F7
	brk $FF.b		; 00 FF
	ora $FF017F.l,X		; 1F 7F 01 FF
	ora ($FF.b),Y		; 11 FF
	jsl $FF78FF.l		; 22 FF 78 FF
	txs		; 9A
	adc $DEDEE0.l,X		; 7F E0 DE DE
	inc $E87F.w,X		; FE 7F E8
	ldy $A4.b		; A4 A4
	mvp $A0,$44		; 44 44 A0
	bra 120.b		; 80 78
	brk $1A.b		; 00 1A
	asl $00.b		; 06 00
	asl $63.b		; 06 63
	stz $7FF8.w		; 9C F8 7F
	sbc $9EE1.w		; ED E1 9E
	sbc $5A.b		; E5 5A
	sbc ($CC.b),Y		; F1 CC
	cmp ($8C.b)		; D2 8C
	sta [$20.b],Y		; 97 20
	sbc $80.b		; E5 80
	bne  -3.b		; D0 FD
	asl $C208.w		; 0E 08 C2
	and ($EA.b,X)		; 21 EA
	lda $A9003F.l,X		; BF 3F 00 A9
	asl $8060.w,X		; 1E 60 80
	ldy #$AB.b		; A0 AB
	cld		; D8
	rti		; 40

	jsr $0440.w		; 20 40 04
	sbc #$15.b		; E9 15
	lda $A0.b,X		; B5 A0
	cmp ($FF.b,X)		; C1 FF
	rti		; 40

	sed		; F8
	adc [$0F.b],Y		; 77 0F
	sbc [$49.b],Y		; F7 49
	php		; 08
	lda ($12.b)		; B2 12
	rol $0FA2.w		; 2E A2 0F
	sbc $E109E0.l		; EF E0 09 E1
	ora [$FF.b]		; 07 FF
	sbc $B6FEFD.l		; EF FD FE B6
	ldx $5F4D.w,Y		; BE 4D 5F
	inc $F2.b		; E6 F2
	asl $F900.w,X		; 1E 00 F9
	and $E01EE9.l,X		; 3F E9 1E E0
	sta ($6F.b),Y		; 91 6F
	sbc $34CA1F.l,X		; FF 1F CA 34
	phb		; 8B
	bit $8F.b,X		; 34 8F
	bmi -17.b		; 30 EF
	bvc -65.b		; 50 BF
	brk $BD.b		; 00 BD
	brk $FD.b		; 00 FD
	rti		; 40

	bra 100.b		; 80 64
	asl $FF3E.w		; 0E 3E FF
	tsa		; 3B
	sbc ($FA.b),Y		; F1 FA
	cmp $8A.b		; C5 8A
	adc [$DE.b],Y		; 77 DE
	sep #$C9		; E2 C9
	stz $A0E0.w		; 9C E0 A0
	bvs   9.b		; 70 09
	ora $FFFFA1.l,X		; 1F A1 FF FF
	sbc $14EAC0.l,X		; FF C0 EA 14
	cmp ($34.b,X)		; C1 34
	lsr $29.b,X		; 56 29
	adc $09.b,S		; 63 09
	lsr $3F03.w,X		; 5E 03 3F
	ora $16.b,S		; 03 16
	cop $C1.b		; 02 C1
	sbc $0E020E.l,X		; FF 0E 02 0E
	cpx #$C4.b		; E0 C4
	plp		; 28
	plp		; 28
	php		; 08
	php		; 08
	ora #$08.b		; 09 08
	ora ($00.b,X)		; 01 00
	sbc $708FC3.l,X		; FF C3 8F 70
	adc $CDC7F4.l		; 6F F4 C7 CD
	ply		; 7A
	cmp $87B5.w		; CD B5 87
	lda $F88044.l,X		; BF 44 80 F8
	sta $7F.b,S		; 83 7F
	cpy #$04.b		; C0 04
	ora $0F31.w		; 0D 31 0F
	bmi   7.b		; 30 07
	jsl $DF7F0F.l		; 22 0F 7F DF
	sbc $00.b,S		; E3 00
	cmp ($3E.b),Y		; D1 3E
	adc $FEE1E2.l		; 6F E2 E1 FE
	cmp $75.b		; C5 75
	asl $F5.b		; 06 F5
	ora [$F1.b]		; 07 F1
	and [$A8.b],Y		; 37 A8
	sta ($0E.b,X)		; 81 0E
	bpl -63.b		; 10 C1
	jmp ($78E1.w,X)		; 7C E1 78
	cmp ($3D.b,X)		; C1 3D
	ldx #$FB.b		; A2 FB
	inc $5CBF.w,X		; FE BF 5C
	inc $EC00.w,X		; FE 00 EC
	bvc -56.b		; 50 C8
	bvs -16.b		; 70 F0
	cpx #$70.b		; E0 70
	cpx #$90.b		; E0 90
	ldy #$47.b		; A0 47
	sta ($AF.b)		; 92 AF
	sta $0440.w,Y		; 99 40 04
	mvp $11,$7B		; 44 7B 11
	ora [$A9.b],Y		; 17 A9
	inc $0CFF.w,X		; FE FF 0C
	adc $049C79.l,X		; 7F 79 9C 04
	sbc $FC1F18.l		; EF 18 1F FC
	cmp [$1F.b],Y		; D7 1F
	xce		; FB
	trb $12FE.w		; 1C FE 12
	tad		; 5B
	sbc $D810EF.l,X		; FF EF 10 D8
	lda $B9.b		; A5 B9
	sbc [$4A.b]		; E7 4A
	sbc #$F0.b		; E9 F0
	phx		; DA
	sbc [$07.b]		; E7 07
	sbc $5C1D.w		; ED 1D 5C
	bra  -1.b		; 80 FF
	cmp $5CC4EA.l,X		; DF EA C4 5C
	.db $62, $5C, $E3		; 62 5C E3
	bit $5861.w,X		; 3C 61 58
	sbc ($D2.b,X)		; E1 D2
	ora ($26.b,X)		; 01 26
	sta $C0.b		; 85 C0
	sbc ($02.b)		; F2 02
	jsr ($A28F.w,X)		; FC 8F A2
	sta ($FC.b),Y		; 91 FC
	sed		; F8
	lda $59BD.w,X		; BD BD 59
	sta $FFB0.w,X		; 9D B0 FF
	ora $105820.l,X		; 1F 20 58 10
	plp		; 28
	brk $3C.b		; 00 3C
	php		; 08
	asl $04.b,X		; 16 04
	asl A		; 0A
	bra -117.b		; 80 8B
	cop $89.b		; 02 89
	pei ($56.b)		; D4 56
	ldy $6A89.w		; AC 89 6A
	xce		; FB
	nop		; EA
	jsr ($0BED.w,X)		; FC ED 0B
	rol A		; 2A
	lda ($05.b),Y		; B1 05
	tsb $F0.b		; 04 F0
	asl A		; 0A
	adc [$82.b]		; 67 82
	sbc $FF.b,X		; F5 FF
	stz $99.b		; 64 99
	tsb $F3.b		; 04 F3
	cpy #$7B.b		; C0 7B
	rti		; 40

	sbc $50BF20.l,X		; FF 20 BF 50
	lda [$60.b],Y		; B7 60
	tad		; 5B
	bpl 126.b		; 10 7E
	ora $D70A85.l		; 0F 85 0A D7
	tsb $6A.b		; 04 6A
	ora $2E.b,S		; 03 2E
	ora $FEA109.l,X		; 1F 09 A1 FE
	sbc $80A743.l		; EF 43 A7 80
	lda ($80.b),Y		; B1 80
	sec		; 38
	cmp $D9.b,X		; D5 D9
	pea $AC04.w		; F4 04 AC
	bit $F036.w		; 2C 36 F0
	adc $B997A8.l,X		; 7F A8 97 B9
	sbc $B202.w,Y		; F9 02 B2
	sty $B4.b		; 84 B4
	sei		; 78
	bit $D0D3.w		; 2C D3 D0
	jmp ($7555.w)		; 6C 55 75
	jsr ($7899.w,X)		; FC 99 78
	phy		; 5A
	sep #$42		; E2 42
	sbc ($86.b),Y		; F1 86
	cmp $7A.b		; C5 7A
	sbc $8B.b		; E5 8B
	dey		; 88
	tsb $8900.w		; 0C 00 89
	adc ($07.b),Y		; 71 07
	sbc [$07.b],Y		; F7 07
	jmp.w [$8081]		; DC 81 80
	inc $81D8.w,X		; FE D8 81
	lda $003FA0.l,X		; BF A0 3F 00
	sbc $B20D.w,Y		; F9 0D B2
	and ($FD.b,X)		; 21 FD
	ror $7C.b,X		; 76 7C
	ldx $BA5E.w,Y		; BE 5E BA
	bit #$FB.b		; 89 FB
	jsr $48FB.w		; 20 FB 48
	adc $A0EEF8.l,X		; 7F F8 EE A0
	sty $28.b,X		; 94 28
	bit $CF50.w		; 2C 50 CF
	bcs  -2.b		; B0 FE
	cmp $8B.b,S		; C3 8B
	cmp [$07.b]		; C7 07
	jsr $875F.w		; 20 5F 87
	bit $E5.b		; 24 E5
	adc ($FF.b)		; 72 FF
	sta ($00.b,X)		; 81 00
	sta $C0.b,S		; 83 C0
	cmp #$FF.b		; C9 FF
	nop		; EA
	adc ($A1.b,S),Y		; 73 A1
	brk $4C.b		; 00 4C
	pha		; 48
	pla		; 68
	jsr $4078.w		; 20 78 40
	sta [$B9.b],Y		; 97 B9
	jsl $B97C81.l		; 22 81 7C B9
	sed		; F8
	eor [$50.b],Y		; 57 50
	bcs  -8.b		; B0 F8
	bcc -80.b		; 90 B0
	and $A9.b,S		; 23 A9
	jsr $0A88.w		; 20 88 0A
	cld		; D8
	ldy #$B2.b		; A0 B2
	ora $0D88.w		; 0D 88 0D
	lda $B8B6.w		; AD B6 B8
	adc $24.b,S		; 63 24
	lda ($6D.b,X)		; A1 6D
	mvn $20,$F1		; 54 F1 20
	rts		; 60

	ora #$DF.b		; 09 DF
	adc #$1E.b		; 69 1E
	wai		; CB
	sty $FE7F.w		; 8C 7F FE
	eor $E8.b,S		; 43 E8
	adc ($13.b),Y		; 71 13
	cmp $B7C0.w,Y		; D9 C0 B7
	sty $DF.b		; 84 DF
	brk $B3.b		; 00 B3
	bpl  -1.b		; 10 FF
	cmp $20.b,X		; D5 20
	ora $40.b,S		; 03 40
	eor $B9.b,X		; 55 B9
	ora $5424C8.l,X		; 1F C8 24 54
	ora $CFBF7B.l		; 0F 7B BF CF
	sbc #$78.b		; E9 78
	ror $D1.b		; 66 D1
	ldy #$00.b		; A0 00
	bcs 100.b		; B0 64
	lda ($56.b),Y		; B1 56
	rts		; 60

	lda #$30.b		; A9 30
	cld		; D8
	inc $A2A2.w,X		; FE A2 A2
	ldy $E257.w		; AC 57 E2
	bpl -128.b		; 10 80
	php		; 08
	cpy #$06.b		; C0 06
	cpx #$6F.b		; E0 6F
	bcc  11.b		; 90 0B
	asl $FE.b		; 06 FE
	sbc $0AD841.l,X		; FF 41 D8 0A
	sbc $FBFD.w		; ED FD FB
	brk $F7.b		; 00 F7
	tsb $EF.b		; 04 EF
	php		; 08
	and $18FA25.l,X		; 3F 25 FA 18
	inc $34.b,X		; F6 34
	sbc [$37.b]		; E7 37
	jsr ($DFC5.w,X)		; FC C5 DF
	ora #$FC.b		; 09 FC
	inx		; E8
	sbc #$F0.b		; E9 F0
	cmp ($01.b,X)		; C1 01
	ora $01.b		; 05 01
	ora #$01.b		; 09 01
	sbc $01D8FB.l,X		; FF FB D8 01
	jsr $4F01.w		; 20 01 4F
	bcs  47.b		; B0 2F
	bvc -73.b		; 50 B7
	dey		; 88
	cmp $76C9AD.l,X		; DF AD C9 76
	jsr $017E.w		; 20 7E 01
	ora ($50.b,X)		; 01 50
	bit $FF7E.w,X		; 3C 7E FF
	ora $FE.b		; 05 FE
	ora $9F1F01.l,X		; 1F 01 1F 9F
	sta $D787AF.l		; 8F AF 87 D7
	cmp [$D7.b]		; C7 D7
	bmi  32.b		; 30 20
	bcc   0.b		; 90 00
	stx $A2.b		; 86 A2
	inc $20B0.w,X		; FE B0 20
	sed		; F8
	rts		; 60

	tya		; 98
	sbc ($FE.b),Y		; F1 FE
	tax		; AA
	adc $CF5AA7.l,X		; 7F A7 5A CF
	sta ($13.b)		; 92 13
	.db $82, $93, $F1		; 82 93 F1
	nop		; EA
	sta ($0B.b)		; 92 0B
	ora [$0F.b]		; 07 0F
	ora [$0B.b]		; 07 0B
	tsb $0F.b		; 04 0F
	pld		; 2B
	asl A		; 0A
	jsl $810481.l		; 22 81 04 81
	cmp ($37.b,S),Y		; D3 37
	ldx #$1E.b		; A2 1E
	sta $91.b,X		; 95 91
	beq  -1.b		; F0 FF
	ora ($2A.b,X)		; 01 2A
	tda		; 7B
	bra -34.b		; 80 DE
	cpx #$ED.b		; E0 ED
	sbc ($B5.b)		; F2 B5
	ply		; 7A
	sbc $E33798.l,X		; FF 98 37 E3
	sbc $15DA28.l,X		; FF 28 DA 15
	and #$C7.b		; 29 C7
	bra -23.b		; 80 E9
	cpx #$F6.b		; E0 F6
	bpl 122.b		; 10 7A
	brk $1A.b		; 00 1A
	sbc $0CC0FF.l		; EF FF C0 0C
	cpx #$05.b		; E0 05
	pea $F334.w		; F4 34 F3
	adc [$00.b],Y		; 77 00
	inc $FD30.w		; EE 30 FD
	rol $BFFF.w,X		; 3E FF BF
	cmp $BF17C1.l,X		; DF C1 17 BF
	ora $61.b,S		; 03 61
	sbc $6A.b		; E5 6A
	sta $3E0130.l		; 8F 30 01 3E
	bpl -23.b		; 10 E9
	inc $FEFF.w,X		; FE FF FE
	ldy $88.b		; A4 88
	cpx $B408.w		; EC 08 B4
	brk $52.b		; 00 52
	tsb $BE.b		; 04 BE
	trb $9E.b		; 14 9E
	tsb $844A.w		; 0C 4A 84
	xce		; FB
	sbc $70C0B6.l,X		; FF B6 C0 70
	rts		; 60

	cmp ($78.b,X)		; C1 78
	ora $38.b,S		; 03 38
	sta ($08.b,X)		; 81 08
	cmp ($00.b,X)		; C1 00
	adc ($80.b,X)		; 61 80
	and ($C0.b),Y		; 31 C0
	cmp ($FF.b),Y		; D1 FF
	ora #$0C.b		; 09 0C
	sta [$A2.b],Y		; 97 A2
	lda ($03.b),Y		; B1 03
	ora $030C04.l		; 0F 04 0C 03
	ora [$0F.b],Y		; 17 0F
	and $1F410A.l		; 2F 0A 41 1F
	cmp $EA.b,X		; D5 EA
	sta $0959.w		; 8D 59 09
	pea $EBD7.w		; F4 D7 EB
	cmp #$55.b		; C9 55
	ora $80F560.l		; 0F 60 F5 80
	sep #$CB		; E2 CB
	sbc ($51.b)		; F2 51
	beq  10.b		; F0 0A
	cmp $79ED.w,Y		; D9 ED 79
	bvc -69.b		; 50 BB
	sbc [$FF.b],Y		; F7 FF
	tsb $E329.w		; 0C 29 E3
	cpy $18.b		; C4 18
	txs		; 9A
	sbc $18.b		; E5 18
	cmp [$20.b]		; C7 20
	dec $C6.b,X		; D6 C6
	pei ($C4.b)		; D4 C4
	brk $01.b		; 00 01
	sbc $00D8FF.l,X		; FF FF D8 00
	tsa		; 3B
	ora $F3.b,S		; 03 F3
	ora $E3.b,S		; 03 E3
	ora $D9.b,S		; 03 D9
	ora ($7E.b,X)		; 01 7E
	bvc 119.b		; 50 77
	jsr $80EF.w		; 20 EF 80
	sta [$FF.b]		; 87 FF
	asl $7C60.w,X		; 1E 60 7C
	bra  54.b		; 80 36
	adc $7FFF1F.l,X		; 7F 1F FF 7F
	sta [$D7.b]		; 87 D7
	sta $9682AF.l		; 8F AF 82 96
	ora $FFD108.l,X		; 1F 08 D1 FF
	ora ($79.b),Y		; 11 79
	trb $4091.w		; 1C 91 40
	ror $00E9.w,X		; 7E E9 00
	lsr $A0FE.w,X		; 5E FE A0
	sta [$D8.b]		; 87 D8
	ldy #$E8.b		; A0 E8
	bmi  44.b		; 30 2C
.ACCU 8
	sep #$E1		; E2 E1
	.db $82, $C2, $8D		; 82 C2 8D
	sbc $7020B0.l,X		; FF B0 20 70
	pla		; 68
	lda ($60.b)		; B2 60
	tsx		; BA
	sbc $F6BC82.l,X		; FF 82 BC F6
	dec $D6.b,X		; D6 D6
	cpy #$0B.b		; C0 0B
	sbc $AC0A.w,X		; FD 0A AC
	sta ($02.b),Y		; 91 02
	sbc $4F01.w,X		; FD 01 4F
	brk $3F.b		; 00 3F
	and $3EF1BF.l		; 2F BF F1 3E
	and ($97.b),Y		; 31 97
	sty $F0.b		; 84 F0
	cop $F8.b		; 02 F8
	tsb $A1.b		; 04 A1
	inc $C239.w,X		; FE 39 C2
	ora $C0FFFA.l		; 0F FA FF C0
	plx		; FA
	sbc #$FD.b		; E9 FD
	cmp #$5F.b		; C9 5F
	ldx $EE5F.w,Y		; BE 5F EE
	sta $775FEF.l,X		; 9F EF 5F 77
	sta $D5F7EB.l		; 8F EB F7 D5
	stp		; DB
	sbc [$1B.b],Y		; F7 1B
	asl A		; 0A
	adc $A1E1.w,Y		; 79 E1 A1
	ldx $BA.b,Y		; B6 BA
	ora $F5C780.l		; 0F 80 C7 F5
	sbc ($EA.b),Y		; F1 EA
	and ($81.b,S),Y		; 33 81
	sbc $FA355F.l,X		; FF 5F 35 FA
	asl A		; 0A
	pea $B4CA.w		; F4 CA B4
	sbc $FEC6.w,X		; FD C6 FE
	sbc [$C7.b],Y		; F7 C7
	xce		; FB
	beq   5.b		; F0 05
	asl $E1.b		; 06 E1
	sed		; F8
	brk $05.b		; 00 05
	ora [$B0.b]		; 07 B0
	ora [$C0.b]		; 07 C0
	ora [$FA.b]		; 07 FA
	cmp $FF.b,S		; C3 FF
	inc $5F.b,X		; F6 5F
	and $3FC74C.l,X		; 3F 4C C7 3F
	sbc [$9F.b]		; E7 9F
	adc $4FBF17.l		; 6F 17 BF 4F
	adc $DF43EB.l,X		; 7F EB 43 DF
	sbc $D9BC9F.l		; EF 9F BC D9
	dec $71.b		; C6 71
	sta $C017C0.l,X		; 9F C0 17 C0
	lda ($1F.b,X)		; A1 1F
	clv		; B8
	inc $80FE.w,X		; FE FE 80
	cpx #$40.b		; E0 40
	ldx #$E9.b		; A2 E9
	trb $78F1.w		; 1C F1 78
	bcc 104.b		; 90 68
	bra -36.b		; 80 DC
	ora ($50.b),Y		; 11 50
	dey		; 88
	pei ($4A.b)		; D4 4A
	rol $8C2C.w		; 2E 2C 8C
	xba		; EB
	sed		; F8
	sbc $00B8FE.l,X		; FF FE B8 00
	cmp $06EF04.l,X		; DF 04 EF 06
	cmp $2FBF0F.l,X		; DF 0F BF 2F
	lda $03FF1F.l,X		; BF 1F FF 03
	adc $B0FD5C.l,X		; 7F 5C FD B0
	sbc ($20.b,S),Y		; F3 20
	beq   4.b		; F0 04
	beq   6.b		; F0 06
	cpx #$C5.b		; E0 C5
	inc $C3FB.w,X		; FE FB C3
	bra  28.b		; 80 1C
	brk $33.b		; 00 33
	brk $2F.b		; 00 2F
	sbc $A160FE.l,X		; FF FE 60 A1
	adc $E0FF.w,Y		; 79 FF E0
	ldx $E3D7.w		; AE D7 E3
	sbc [$A1.b]		; E7 A1
	plx		; FA
	ora ($11.b,X)		; 01 11
	cmp ($AB.b),Y		; D1 AB
	adc ($7B.b)		; 72 7B
	brk $E2.b		; 00 E2
	eor $E1.b		; 45 E1
	cmp $FFFF89.l		; CF 89 FF FF
	ora ($FB.b,X)		; 01 FB
	ldy $D660.w,X		; BC 60 D6
	pla		; 68
	xce		; FB
	jmp $5CAB.w		; 4C AB 5C
	plx		; FA
	trb $18E6.w		; 1C E6 18
	dec $FF30.w		; CE 30 FF
	adc [$DE.b],Y		; 77 DE
	bit $20.b		; 24 20
	bvs  64.b		; 70 40
	jmp ($6E48.w)		; 6C 48 6E
	php		; 08
	dec $DC18.w,X		; DE 18 DC
	dec A		; 3A
	.db $62, $00, $70		; 62 00 70
	sbc $72FF.w,X		; FD FF 72
	bcs  13.b		; B0 0D
	sbc $8D11F8.l,X		; FF F8 11 8D
	ora ($C5.b,X)		; 01 C5
	rti		; 40

	eor $81.b,S		; 43 81
	ror $A3.b		; 66 A3
	adc [$D4.b],Y		; 77 D4
	cmp ($61.b)		; D2 61
	sbc $69BAFF.l		; EF FF BA 69
	adc #$30.b		; 69 30
	ror $8A43.w,X		; 7E 43 8A
	sta ($18.b,X)		; 81 18
	sta $08.b,S		; 83 08
	cpy #$0C.b		; C0 0C
	adc ($04.b,X)		; 61 04
	adc ($FF.b,X)		; 61 FF
	sta [$06.b]		; 87 06
	bmi  -3.b		; 30 FD
	tda		; 7B
	inc $7FDD.w		; EE DD 7F
	ldx $76EF.w,Y		; BE EF 76
	sbc $95CF.w,X		; FD CF 95
	sbc $31EEFF.l,X		; FF FF EE 31
	xce		; FB
	ror A		; 6A
	adc ($78.b,S),Y		; 73 78
	bit #$FC.b		; 89 FC
	bit $46FE.w,X		; 3C FE 46
	ror $FF8C.w,X		; 7E 8C FF
	bpl  -1.b		; 10 FF
	sbc $B120FF.l,X		; FF FF 20 B1
	tsb $60.b		; 04 60
	plb		; AB
	pea $EBD5.w		; F4 D5 EB
	lda [$DB.b]		; A7 DB
	cmp $77FA3B.l		; CF 3B FA 77
	sbc $FF82.w,X		; FD 82 FF
	adc $7EF0AF.l,X		; 7F AF F0 7E
	dec $F4.b		; C6 F4
	brk $E8.b		; 00 E8
	ora $D8.b,S		; 03 D8
	ora $38.b,S		; 03 38
	ora $70.b,S		; 03 70
	ora [$00.b]		; 07 00
	.db $82, $FF, $DF		; 82 FF DF
	plb		; AB
	cmp $D7C0.w,Y		; D9 C0 D7
	adc $B3B36D.l		; 6F 6D B3 B3
	jmp.w [$E3DF]		; DC DF E3
	lda $DE7FC1.l,X		; BF C1 7F DE
	cmp $0C03.w,Y		; D9 03 0C
	sbc $2B6F80.l,X		; FF 80 6F 2B
	and [$C0.b]		; 27 C0
	ora ($FF.b,X)		; 01 FF
	sbc $00CD31.l,X		; FF 31 CD 00
	ldx $00.b,Y		; B6 00
	phy		; 5A
	brk $2D.b		; 00 2D
	inc $FAA4.w		; EE A4 FA
	brk $F7.b		; 00 F7
	ply		; 7A
	xce		; FB
	jsr ($EEFF.w,X)		; FC FF EE
	sbc $FEF5FD.l,X		; FF FD F5 FE
	sbc $49FEF6.l		; EF F6 FE 49
	tya		; 98
	sta ($A1.b)		; 92 A1
	jsr $0678.w		; 20 78 06
	sta ($60.b)		; 92 60
	plb		; AB
	plx		; FA
	inc $F640.w,X		; FE 40 F6
	cmp $F1.b,X		; D5 F1
	dey		; 88
	cld		; D8
	asl A		; 0A
	trb $81D2.w		; 1C D2 81
	cpx #$0E.b		; E0 0E
	sbc [$79.b],Y		; F7 79
	and ($00.b,X)		; 21 00
	cmp ($7F.b)		; D2 7F
	sbc $40D2C0.l,X		; FF C0 D2 40
	lda $1680.w,X		; BD 80 16
	cpy #$A0.b		; C0 A0
	sec		; 38
	eor #$00.b		; 49 00
	ora $60DFC0.l,X		; 1F C0 DF 60
	sbc $FE1F.w		; ED 1F FE
	jsr $606D.w		; 20 6D 60
	sbc $E0.b,S		; E3 E0
	sbc $2700F6.l		; EF F6 00 27
	sbc $03.b,X		; F5 03
	sbc [$03.b],Y		; F7 03
	sbc $039F76.l,X		; FF 76 9F 03
	txs		; 9A
	ora [$1C.b]		; 07 1C
	ora $15.b,S		; 03 15
	cop $05.b		; 02 05
	ora #$89.b		; 09 89
	ora ($A9.b,X)		; 01 A9
	.db $82, $F7, $02		; 82 F7 02
	xce		; FB
	sbc $FB8A11.l,X		; FF 11 8A FB
	sec		; 38
	sbc #$FA.b		; E9 FA
	inc $F60C.w,X		; FE 0C F6
	trb $A6.b		; 14 A6
	stz $D4.b		; 64 D4
	rti		; 40

	ldy $00.b,X		; B4 00
	adc $08FC1B.l		; 6F 1B FC 08
	sed		; F8
	bra 104.b		; 80 68
	ora $D208D9.l		; 0F D9 08 D2
	adc $0438.w,Y		; 79 38 04
	cmp $FF70.w,Y		; D9 70 FF
	adc $FE.b,S		; 63 FE
	beq   0.b		; F0 00
	eor $39.b,X		; 55 39
	rol $131A.w		; 2E 1A 13
	ora $C60D.w		; 0D 0D C6
	tsb $1D.b		; 04 1D
	nop		; EA
	lsr $7C59.w,X		; 5E 59 7C
	cmp $0138.w,Y		; D9 38 01
	sbc ($0C.b,X)		; E1 0C
	adc [$93.b],Y		; 77 93
	cpy #$83.b		; C0 83
	sbc $BEF7.w,X		; FD F7 BE
	eor ($EF.b),Y		; 51 EF
	lda ($0D.b,X)		; A1 0D
	adc ($E1.b),Y		; 71 E1
	sta [$00.b]		; 87 00
	cmp $5C.b,S		; C3 5C
	sbc #$60.b		; E9 60
	cpy #$0E.b		; C0 0E
	rti		; 40

	ply		; 7A
	sbc $8C.b,S		; E3 8C
	.db $42, $A1		; 42 A1
	lda ($BE.b)		; B2 BE
	adc $C0.b,S		; 63 C0
	sbc [$20.b]		; E7 20
	bra -38.b		; 80 DA
	jsr ($C1B6.w,X)		; FC B6 C1
	eor $050187.l,X		; 5F 87 01 05
	asl $1E.b		; 06 1E
	ora ($1F.b),Y		; 11 1F
	adc $5AC0B7.l,X		; 7F B7 C0 5A
	cpx #$01.b		; E0 01
	tas		; 1B
	inc $BE7F.w,X		; FE 7F BE
	dec $6B41.w,X		; DE 41 6B
	rti		; 40

	eor $00.b,X		; 55 00
	eor $00B580.l,X		; 5F 80 B5 00
	ror A		; 6A
	sta ($80.b,X)		; 81 80
	ora $C0.b,X		; 15 C0
	bit $FEFC.w,X		; 3C FC FE
	bra  20.b		; 80 14
	bra -21.b		; 80 EB
	jsl $004A00.l		; 22 00 4A 00
	sty $5D.b,X		; 94 5D
	pld		; 2B
	cmp $6101.w,X		; DD 01 61
	tsx		; BA
	sta $DA1780.l		; 8F 80 17 DA
	cmp ($B9.b)		; D2 B9
	beq -62.b		; F0 C2
	sta ($F0.b)		; 92 F0
	ror $14.b		; 66 14
	asl $FA.b		; 06 FA
	ora $0AE1E2.l		; 0F E2 E1 0A
	beq  32.b		; F0 20
	inc $87D5.w,X		; FE D5 87
	ldx $DADE.w,Y		; BE DE DA
	sbc ($FE.b),Y		; F1 FE
	sbc $A4E2DD.l,X		; FF DD E2 A4
	cpy #$53.b		; C0 53
	cpx #$84.b		; E0 84
	sbc $807AF0.l,X		; FF F0 7A 80
	tas		; 1B
	cpx #$CD.b		; E0 CD
	beq -27.b		; F0 E5
	sed		; F8
	inc $1D.b,X		; F6 1D
	stp		; DB
	rti		; 40

	cpx $BBFD.w		; EC FD BB
	brk $2F.b		; 00 2F
	adc $F7A9.w,Y		; 79 A9 F7
	cpy #$FB.b		; C0 FB
	cpx #$FB.b		; E0 FB
	beq  -3.b		; F0 FD
	ldx #$D9.b		; A2 D9
	ora ($F6.b,X)		; 01 F6
	sbc $61EFF8.l,X		; FF F8 EF 61
	trb $B602.w		; 1C 02 B6
	asl A		; 0A
	jmp ($C810.w)		; 6C 10 C8
	bit $6B.b,X		; 34 6B
	pea $0801.w		; F4 01 08
	beq  15.b		; F0 0F
	ora ($FC.b,X)		; 01 FC
	inx		; E8
	ora ($D8.b,X)		; 01 D8
	ora $B8.b,S		; 03 B8
	ora $70.b,S		; 03 70
	inx		; E8
	and ($2A.b,X)		; 21 2A
	sbc $D0C010.l		; EF 10 C0 D0
	inc $B9F3.w,X		; FE F3 B9
	cmp $D1.b,S		; C3 D1
	tay		; A8
	eor $CA46F4.l,X		; 5F F4 46 CA
	and ($AB.b)		; 32 AB
	bpl -27.b		; 10 E5
	bmi   0.b		; 30 00
	jmp $BB00.w		; 4C 00 BB
	ldx #$31.b		; A2 31
	bra  66.b		; 80 42
	phy		; 5A
	jsr ($697E.w,X)		; FC 7E 69
	pea $7CED.w		; F4 ED 7C
	sbc $CDFB1A.l,X		; FF 1A FB CD
	and $A960D0.l,X		; 3F D0 60 A9
	adc ($77.b),Y		; 71 77
	sec		; 38
	phx		; DA
	sbc ($78.b,X)		; E1 78
	bit #$3F.b		; 89 3F
	eor $0FFE78.l,X		; 5F 78 FE 0F
	rts		; 60

	asl $70.b		; 06 70
	lda ($F1.b,X)		; A1 F1
	tsa		; 3B
	ora $03DF00.l,X		; 1F 00 DF 03
	jmp ($FE0B.w,X)		; 7C 0B FE
	adc [$4F.b],Y		; 77 4F
	cmp $B86D3F.l,X		; DF 3F 6D B8
	phd		; 0B
	bra 108.b		; 80 6C
	adc #$EF.b		; 69 EF
	sta $0D.b		; 85 0D
	ora $FF.b,S		; 03 FF
	ora $AC9FFF.l		; 0F FF 9F AC
	lda [$C8.b],Y		; B7 C8
	dex		; CA
	sbc $38FEC9.l		; EF C9 FE 38
	sed		; F8
	plx		; FA
	inc $F8FE.w,X		; FE FE F8
	inc $81BD.w,X		; FE BD 81
	jsr ($FC80.w,X)		; FC 80 FC
	ror A		; 6A
	eor ($E0.b,X)		; 41 E0
	inc $DFFF.w,X		; FE FF DF
	tay		; A8
	asl A		; 0A
	sbc $F314F8.l,X		; FF F8 14 F3
	and ($89.b)		; 32 89
	inc $D48A.w,X		; FE 8A D4
	nop		; EA
	sbc $F0F0FE.l,X		; FF FE F0 F0
	sed		; F8
	asl $76AE.w		; 0E AE 76
	eor $CCF7E7.l,X		; 5F E7 F7 CC
	ldy $E7C0.w,X		; BC C0 E7
	sbc $DF801B.l,X		; FF 1B 80 DF
	bra  71.b		; 80 47
	bra  65.b		; 80 41
	bra  33.b		; 80 21
	beq  64.b		; F0 40
	beq -124.b		; F0 84
	cmp ($C3.b),Y		; D1 C3
	ora ($57.b,X)		; 01 57
	sbc ($2F.b),Y		; F1 2F
	inc $4060.w,X		; FE 60 40
	adc $D1.b,X		; 75 D1
	bit $C3.b,X		; 34 C3
	bvc  37.b		; 50 25
	inc $E246.w,X		; FE 46 E2
	and #$DD.b		; 29 DD
	inc $0990.w,X		; FE 90 09
	stz $CF.b		; 64 CF
	inc $B7BD.w,X		; FE BD B7
	txs		; 9A
	cpx #$0A.b		; E0 0A
	phb		; 8B
	sbc $5F.b		; E5 5F
	brk $5C.b		; 00 5C
	ror A		; 6A
	sbc #$52.b		; E9 52
	brk $BC.b		; 00 BC
	lda [$F1.b]		; A7 F1
	lda ($22.b,S),Y		; B3 22
	cpy $BC.b		; C4 BC
	eor ($E9.b),Y		; 51 E9
	nop		; EA
	inc $DFA6.w,X		; FE A6 DF
	inc $FF0F.w,X		; FE 0F FF
	jmp.w [$D300]		; DC 00 D3
	and $3FFE1F.l		; 2F 1F FE 3F
	ora [$57.b]		; 07 57
	and $7EBD.w,Y		; 39 BD 7E
	sbc $1FFFEF.l		; EF EF FF 1F
	tas		; 1B
	ora [$06.b]		; 07 06
	ora ($EC.b,X)		; 01 EC
	sbc ($03.b)		; F2 03
	cmp [$00.b]		; C7 00
	lda $7E18.w,Y		; B9 18 7E
	asl $1F.b		; 06 1F
	ora ($EB.b,X)		; 01 EB
	sbc $E7.b,X		; F5 E7
	brk $F9.b		; 00 F9
	sbc [$F7.b]		; E7 F7
	cop $6A.b		; 02 6A
	cmp $F1EFFF.l,X		; DF FF EF F1
	inc $C9BE.w,X		; FE BE C9
	lda $FFEB9E.l,X		; BF 9E EB FF
	cmp $D5EF46.l,X		; DF 46 EF D5
.ACCU 16
	rep #$60		; C2 60
	ply		; 7A
	jsr ($FEF0.w,X)		; FC F0 FE
	beq  -6.b		; F0 FA
	pea $F6ED.w		; F4 ED F6
	cpy #$11.b		; C0 11
	cmp $F8.b		; C5 F8
	bra  -2.b		; 80 FE
	sta ($38.b,S),Y		; 93 38
	sbc ($FE.b),Y		; F1 FE
	inc $F6EF.w,X		; FE EF F6
	lda ($8C.b)		; B2 8C
	adc $7FFE.w,X		; 7D FE 7F
	sbc $F37F.w,Y		; F9 7F F3
	inc $D7E7.w,X		; FE E7 D7
	inc $FCF0.w		; EE F0 FC
	jmp ($F0FF.w,X)		; 7C FF F0
	inc $FD79.w,X		; FE 79 FD
	adc ($FB.b,S),Y		; 73 FB
	inc $F7.b		; E6 F7
	dec $EE.b		; C6 EE
	sta $E1.b,X		; 95 E1
	brk $90.b		; 00 90
	sbc $4E60E3.l,X		; FF E3 60 4E
	beq -71.b		; F0 B9
	cpy #$7C.b		; C0 7C
	clv		; B8
	inc $F73C.w,X		; FE 3C F7
	dec $66.b,X		; D6 66
	sta $00DBDF.l,X		; 9F DF DB 00
	adc $80F140.l		; 6F 40 F1 80
	dec $2B.b		; C6 2B
	sbc ($3D.b),Y		; F1 3D
	php		; 08
	dec $F817.w,X		; DE 17 F8
	ora #$FC60.w		; 09 60 FC
	sbc #$AA4A.w		; E9 4A AA
	bvc -125.b		; 50 83
	cpx #$0D.b		; E0 0D
	sbc $0EE9.w,Y		; F9 E9 0E
	mvp $B1,$62		; 44 62 B1
	ror A		; 6A
	brk $F8.b		; 00 F8
	asl A		; 0A
	ldx $0D.b,Y		; B6 0D
	adc $B7D6.w,Y		; 79 D6 B7
	adc ($CF.b,X)		; 61 CF
	sbc ($E9.b,S),Y		; F3 E9
	beq -94.b		; F0 A2
	sta $7C04.w,Y		; 99 04 7C
	adc ($27.b,X)		; 61 27
	rts		; 60

	adc ($EF.b,X)		; 61 EF
	sbc ($8C.b),Y		; F1 8C
	jmp $E180FC.l		; 5C FC 80 E1
	jsr $CDDF.w		; 20 DF CD
	sbc ($3F.b,X)		; E1 3F
	and $89A671.l		; 2F 71 A6 89
	brk $32.b		; 00 32
	brk $64.b		; 00 64
	brk $C9.b		; 00 C9
	brk $93.b		; 00 93
	trb $2A.b		; 14 2A
	cpx #$F2.b		; E0 F2
	sbc ($29.b),Y		; F1 29
	ror $C57E.w,X		; 7E 7E C5
	lsr A		; 4A
	jmp $FFFCE1.l		; 5C E1 FC FF
	bpl 119.b		; 10 77
	adc $1DBF3B.l,X		; 7F 3B BF 1D
	ora $071F0E.l,X		; 1F 0E 1F 07
	lda [$03.b]		; A7 03
	and $01.b,S		; 23 01
	sbc $0043DF.l,X		; FF DF 43 00
	jsl $BB1977.l		; 22 77 19 BB
	php		; 08
	eor $EE04.w,X		; 5D 04 EE
	cop $E7.b		; 02 E7
	ora ($DB.b,X)		; 01 DB
	sbc ($21.b),Y		; F1 21
	beq  -1.b		; F0 FF
	lda $FF0E.w,X		; BD 0E FF
	cpx $FA.b		; E4 FA
	cpx $E8DC.w		; EC DC E8
	inc $58.b,X		; F6 58
	sbc $B190.w,Y		; F9 90 B1
	and ($FE.b,X)		; 21 FE
	cpx #$D8.b		; E0 D8
	ror $0AF6.w		; 6E F6 0A
	sbc $EB00.w		; ED 00 EB
	brk $59.b		; 00 59
	eor [$D6.b]		; 47 D6
	brk $96.b		; 00 96
	bra -18.b		; 80 EE
	stz $4657.w,X		; 9E 57 46
	sbc ($42.b)		; F2 42
	nop		; EA
	.db $62, $55, $90		; 62 55 90
	lda ($D8.b),Y		; B1 D8
	tsb $60FE.w		; 0C FE 60
	tax		; AA
	sty $FCFE.w		; 8C FE FC
	ldx $8A.b,Y		; B6 8A
	ldx $88.b		; A6 88
	ora #$FFAB.w		; 09 AB FF
	ldx $1FB4.w,Y		; BE B4 1F
	eor ($F3.b),Y		; 51 F3
	ldy $4BBB.w,X		; BC BB 4B
	xba		; EB
	cpx #$EE.b		; E0 EE
	cpy #$DE.b		; C0 DE
	cpy #$DD.b		; C0 DD
	bra -34.b		; 80 DE
	phd		; 0B
	lda $C189.w,X		; BD 89 C1
	tyx		; BB
	cpy #$D7.b		; C0 D7
	ldy #$89.b		; A0 89
	cop $FD.b		; 02 FD
	cop $51.b		; 02 51
	dey		; 88
	asl A		; 0A
	sbc ($42.b),Y		; F1 42
	cmp $D9FEDA.l		; CF DA FE D9
	brk $B9.b		; 00 B9
.ACCU 16
.INDEX 16
	rep #$F1		; C2 F1
	inc $187B.w,X		; FE 7B 18
	lsr $7CFE.w,X		; 5E FE 7C
	sta $FE.b,S		; 83 FE
	bit $1CC3.w,X		; 3C C3 1C
	sbc $E3.b,S		; E3 E3
	sta $7E1E.w,Y		; 99 1E 7E
	inc $6C83.w,X		; FE 83 6C
	inc $34C3.w,X		; FE C3 34
	sbc $14.b,S		; E3 14
	sbc ($16.b,X)		; E1 16
	sta [$69.b]		; 87 69
	inc $F0FC.w,X		; FE FC F0
	ora $8778FE.l		; 0F FE 78 87
	inc $C738.w,X		; FE 38 C7
	bra  97.b		; 80 61
	inc $0FD6.w,X		; FE D6 0F
	bne  -2.b		; D0 FE
	sta [$58.b]		; 87 58
	bit $FE3C.w,X		; 3C 3C FE
	pla		; 68
	cmp [$28.b]		; C7 28
	inc $2CC3.w,X		; FE C3 2C
	sed		; F8
	ora [$D0.b]		; 07 D0
	bra -26.b		; 80 E6
	ldx $C13E.w,Y		; BE 3E C1
	cpy $87.b		; C4 87
	sbc ($D5.b,X)		; E1 D5
	beq   7.b		; F0 07
	inx		; E8
	inc $83.b		; E6 83
	stz $BE.b,X		; 74 BE
	cmp ($3A.b,X)		; C1 3A
	sta [$FF.b]		; 87 FF
	sbc ($1A.b,X)		; E1 1A
	beq  13.b		; F0 0D
	inc $8070.w,X		; FE 70 80
	bmi -64.b		; 30 C0
	sec		; 38
	cpy #$E018.w		; C0 18 E0
	sbc ($FF.b,X)		; E1 FF
	php		; 08
	beq  -4.b		; F0 FC
	bpl -32.b		; 10 E0
	jsr $8FD0.w		; 20 D0 8F
	eor $C72FCF.l		; 4F CF 2F C7
	and [$87.b],Y		; 37 87
	eor [$E7.b],Y		; 57 E7
	ora [$F7.b],Y		; 17 F7
	ora [$FC.b]		; 07 FC
	sbc $0FCF0F.l		; EF 0F CF 0F
	ldx $88.b		; A6 88
	ora #$FCFE.w		; 09 FE FC
	sbc $B5.b,X		; F5 B5
	ldx $88.b		; A6 88
	ora #$8DA0.w		; 09 A0 8D
	rol $1F69.w,X		; 3E 69 1F
	ora [$3F.b]		; 07 3F
	ora $85E9AF.l,X		; 1F AF E9 85
	tax		; AA
	asl $BDC2.w		; 0E C2 BD
	and ($F5.b),Y		; 31 F5
	ora #$FAFC.w		; 09 FC FA
	asl $F9FE.w		; 0E FE F9
	rti		; 40

	eor #$FFEE.w		; 49 EE FF
	dec $B7EF.w,X		; DE EF B7
	sty $E9.b		; 84 E9
	ldx $7DFF.w,Y		; BE FF 7D
	sbc $F5AA0D.l,X		; FF 0D AA F5
	brk $EE.b		; 00 EE
	brk $DE.b		; 00 DE
	.db $42, $E9		; 42 E9
	ldx $FFFF.w,Y		; BE FF FF
	trb $FB59.w		; 1C 59 FB
	ldy #$70DF.w		; A0 DF 70
	cmp $A8EF50.l		; CF 50 EF A8
	adc [$D5.b],Y		; 77 D5
	dec A		; 3A
	xba		; EB
	stz $CFF4.w		; 9C F4 CF
	sbc $677BFF.l		; EF FF 7B 67
	bra -33.b		; 80 DF
	rti		; 40

	ora ($B9.b,S),Y		; 13 B9
	jsr $10F7.w		; 20 F7 10
	ply		; 7A
	php		; 08
	lda $DF04.w,X		; BD 04 DF
	sta $FF.b,S		; 83 FF
	sbc $DDAFEF.l,X		; FF EF AF DD
	adc $32FF99.l,X		; 7F 99 FF 32
	lda $EF5F76.l		; AF 76 5F EF
	sbc $BDD5.w,X		; FD D5 BD
	cmp $7C.b,X		; D5 7C
	sbc $8CB4F0.l,X		; FF F0 B4 8C
	cmp $BD18.w,X		; DD 18 BD
	bmi -70.b		; 30 BA
	jsr $DC76.w		; 20 76 DC
.INDEX 16
	rep #$D7		; C2 D7
	.db $82, $FF, $FF		; 82 FF FF
	cmp [$03.b],Y		; D7 03
	lda [$FB.b],Y		; B7 FB
	stp		; DB
	sbc $BCE9.w,Y		; F9 E9 BC
	ldy $9E.b,X		; B4 9E
	stx $DE.b,Y		; 96 DE
	phy		; 5A
	cmp $C3E74D.l		; CF 4D E7 C3
	sbc $A2E3A5.l,X		; FF A5 E3 A2
	cpy $EF06.w		; CC 06 EF
	eor $F7.b,S		; 43 F7
	adc ($F7.b,X)		; 61 F7
	and ($7B.b,X)		; 21 7B
	bmi -16.b		; 30 F0
	sbc $D67D.w,X		; FD 7D D6
	trb $90BE.w		; 1C BE 90
	brk $D0.b		; 00 D0
	sbc $7059.w		; ED 59 70
	rts		; 60

	clc		; 18
	bpl -33.b		; 10 DF
	phy		; 5A
	tsb $8608.w		; 0C 08 86
	sty $C3.b		; 84 C3
	rep #$C5		; C2 C5
	cmp $C0.b,S		; C3 C0
	eor $FC19.w,Y		; 59 19 FC
	lda ($78.b,X)		; A1 78
	ror $C9.b,X		; 76 C9
	lda #$245F.w		; A9 5F 24
	iny		; C8
	tas		; 1B
	sbc $AB76CF.l,X		; FF CF 76 AB
	sbc $7A00.w,X		; FD 00 7A
	brk $35.b		; 00 35
	phx		; DA
	lda #$DA3D.w		; A9 3D DA
	rti		; 40

	ora $EC82.w,Y		; 19 82 EC
	ror $3D00.w,X		; 7E 00 3D
	sbc ($49.b),Y		; F1 49
	sbc #$4226.w		; E9 26 42
	cmp $8416.w,Y		; D9 16 84
	sta $7966.w,X		; 9D 66 79
	plx		; FA
	sta [$E9.b]		; 87 E9
	and [$D1.b]		; 27 D1
	sbc #$4828.w		; E9 28 48
	rol $E2BF.w		; 2E BF E2
	cmp $EA7E.w		; CD 7E EA
	xce		; FB
	eor $A8.b,X		; 55 A8
	ora $D144.w,Y		; 19 44 D1
	jmp.w [$0D6A]		; DC 6A 0D
	sbc ($51.b,S),Y		; F3 51
	sbc $E4.b,S		; E3 E4
	adc #$F852.w		; 69 52 F8
	tda		; 7B
	ror $EB.b		; 66 EB
	inc $FEEF.w,X		; FE EF FE
	inx		; E8
	rti		; 40

	clv		; B8
	rti		; 40

	lda ($11.b,X)		; A1 11
	mvn $FE,$00		; 54 00 FE
	jmp $5EC933.l		; 5C 33 C9 5E
	inc $A90B.w,X		; FE 0B A9
	stp		; DB
	eor [$04.b],Y		; 57 04
	sbc ($FE.b,S),Y		; F3 FE
	lda $88FE.w,X		; BD FE 88
	sta $12D5.w		; 8D D5 12
	and $B944.w,Y		; 39 44 B9
	ora $FE22.w,Y		; 19 22 FE
	trb $A6.b		; 14 A6
	cmp #$C9AB.w		; C9 AB C9
	ora #$C2C2.w		; 09 C2 C2
	eor $D8.b,X		; 55 D8
	tsb $E1.b		; 04 E1
	inc $00E8.w,X		; FE E8 00
	cpx #$E8C4.w		; E0 C4 E8
	phd		; 0B
	rti		; 40

	tay		; A8
	asl A		; 0A
	sbc $0001FF.l,X		; FF FF 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $61.b		; 00 61
	lsr A		; 4A
	clv		; B8
	eor $1F.b,S		; 43 1F
	cpx $68.b		; E4 68
	jmp $7418A9.l		; 5C A9 18 74
	lda ($E8.b,S),Y		; B3 E8
	rol $46.b,X		; 36 46
	bvs  78.b		; 70 4E
	sbc $7DFF8D.l,X		; FF 8D FF 7D
	sbc $99BFE9.l,X		; FF E9 BF 99
	sbc $25DFFB.l,X		; FF FB DF 25
	cmp $28BF50.l,X		; DF 50 BF 28
	pei ($BC.b)		; D4 BC
	stx $FF.b		; 86 FF
	lsr $30.b		; 46 30
	bit $9B.b		; 24 9B
	lsr $DD12.w,X		; 5E 12 DD
	sbc [$F8.b]		; E7 F8
	inc A		; 1A
	ora ($D8.b,S),Y		; 13 D8
	sbc $76FFBE.l,X		; FF BE FF 76
	sbc $FFF9.w,Y		; F9 F9 FF
	cmp $EF9FE5.l,X		; DF E5 9F EF
	sbc $525F.w,Y		; F9 5F 52
	sbc $D8F7.w,X		; FD F7 D8
	ora $033AB6.l		; 0F B6 3A 03
	trb $45.b		; 14 45
	bit #$3170.w		; 89 70 31
	stz $548F.w,X		; 9E 8F 54
	wai		; CB
	ora $EFF8.w		; 0D F8 EF
	inc $F9.b		; E6 F9
.ACCU 16
.INDEX 16
	rep #$FD		; C2 FD
	cpy $FB.b		; C4 FB
	cpy #$90FF.w		; C0 FF 90
	sbc $09FB04.l		; EF 04 FB 09
	inc $FA.b,X		; F6 FA
	tsb $04EA.w		; 0C EA 04
	sbc $B94B0D.l,X		; FF 0D 4B B9
	bvc  18.b		; 50 12
	sbc $20.b,S		; E3 20
	and [$44.b],Y		; 37 44
	adc $F70880.l		; 6F 80 08 F7
	brk $FF.b		; 00 FF
	ora $09F2.w		; 0D F2 09
	inc $10.b,X		; F6 10
	sbc $04DF20.l		; EF 20 DF 04
	xce		; FB
	brk $FF.b		; 00 FF
	cmp $017220.l,X		; DF 20 72 01
	sta $25E2.w,Y		; 99 E2 25
	cmp $938C10.l,X		; DF 10 8C 93
	trb $3BE5.w		; 1C E5 3B
	phk		; 4B
	cop $00.b		; 02 00
	sbc $80FF00.l,X		; FF 00 FF 80
	adc $00FA05.l,X		; 7F 05 FA 00
	sbc $21EF10.l,X		; FF 10 EF 21
	dec $FD02.w,X		; DE 02 FD
	cmp #$6D0E.w		; C9 0E 6D
	sta [$4C.b],Y		; 97 4C
	brk $B5.b		; 00 B5
	cmp $527B.w,Y		; D9 7B 52
	sbc ($A2.b,X)		; E1 A2
	ora $9DDA5C.l,X		; 1F 5C DA 9D
	php		; 08
	sbc [$05.b],Y		; F7 05
	plx		; FA
	brk $FF.b		; 00 FF
	sta ($6E.b),Y		; 91 6E
	eor ($AD.b)		; 52 AD
	ldy #$1C5F.w		; A0 5F 1C
	sbc $98.b,S		; E3 98
	adc [$5F.b]		; 67 5F
	rts		; 60

	eor $CFEE64.l,X		; 5F 64 EE CF
	sep #$84		; E2 84
	eor $8601.w,X		; 5D 01 86
	phd		; 0B
	sta $5E8F14.l		; 8F 14 8F 5E
	rti		; 40

	lda $CEBB44.l,X		; BF 44 BB CE
	and ($80.b),Y		; 31 80
	adc $02FE01.l,X		; 7F 01 FE 02
	sbc $FB04.w,X		; FD 04 FB
	asl $75F1.w		; 0E F1 75
	stx $9A.b		; 86 9A
	trb $AEB0.w		; 1C B0 AE
	ora $E3F3.w		; 0D F3 E3
	asl $35.b		; 06 35
	ldx $5D.b,Y		; B6 5D
	tay		; A8
	ora $0481.w,Y		; 19 81 04
	xce		; FB
	clc		; 18
	sbc [$A0.b]		; E7 A0
	eor $02FC01.l,X		; 5F 01 FC 02
	sbc $CA35.w,Y		; F9 35 CA
	inc A		; 1A
	sbc $06.b		; E5 06
	sed		; F8
	plx		; FA
	bmi -108.b		; 30 94
	pld		; 2B
	rol $C1.b,X		; 36 C1
	phk		; 4B
	sta $FE.b,S		; 83 FE
	pea $6D71.w		; F4 71 6D
	bpl  47.b		; 10 2F
	and ($31.b),Y		; 31 31
	and $00C2.w		; 2D C2 00
	sbc $33D32C.l,X		; FF 2C D3 33
	cpy $011E.w		; CC 1E 01
	lda ($04.b)		; B2 04
	bne  14.b		; D0 0E
	pha		; 48
	stx $19.b		; 86 19
	jsr $ED0D.w		; 20 0D ED
	ora ($D5.b,S),Y		; 13 D5
	pld		; 2B
	adc ($85.b),Y		; 71 85
	lda [$56.b]		; A7 56
	sta [$5C.b]		; 87 5C
	tyx		; BB
	cmp ($C2.b),Y		; D1 C2
	sty $6B.b,X		; 94 6B
	cop $B0.b		; 02 B0
	and $48.b,S		; 23 48
	ora $5882.w		; 0D 82 58
	brk $7C.b		; 00 7C
	brk $5C.b		; 00 5C
	cop $FD.b		; 02 FD
	brk $64.b		; 00 64
	lda $12.b		; A5 12
	cmp [$4B.b]		; C7 4B
	stx $F8.b		; 86 F8
	ldy $FF.b,X		; B4 FF
	lda ($64.b)		; B2 64
	tad		; 5B
	.db $62, $2C, $75		; 62 2C 75
	jsr $0278.w		; 20 78 02
	rol A		; 2A
	bpl  99.b		; 10 63
	tya		; 98
	lda ($4E.b),Y		; B1 4E
	eor ($0C.b),Y		; 51 0C
	cpx $1A.b		; E4 1A
	sta ($4A.b),Y		; 91 4A
	dec $4911.w		; CE 11 49
	sbc $E1.b		; E5 E1
	brk $D3.b		; 00 D3
	asl A		; 0A
	lda $53600E.l,X		; BF 0E 60 53
	asl $CB8C.w		; 0E 8C CB
	dec A		; 3A
	asl A		; 0A
	ora ($1A.b,X)		; 01 1A
	bit $9F.b		; 24 9F
	rts		; 60

	and ($D4.b,X)		; 21 D4
	adc ($80.b,S),Y		; 73 80
	pha		; 48
	ldx $42.b		; A6 42
	and ($46.b),Y		; 31 46
	sta ($F6.b),Y		; 91 F6
	ora #$7070.w		; 09 70 70
	ora $A04964.l,X		; 1F 64 49 A0
	tyx		; BB
	cmp $83.b,S		; C3 83
	lda ($20.b,S),Y		; B3 20
	ldx $8371.w,Y		; BE 71 83
	sta $8F1F.w,X		; 9D 1F 8F
	brk $89.b		; 00 89
	ora ($1F.b)		; 12 1F
	cpx #$209D.w		; E0 9D 20
	cop $6C.b		; 02 6C
	ora ($48.b,X)		; 01 48
	jmp ($6092.w)		; 6C 92 60
	bra  30.b		; 80 1E
	cpy #$40BA.w		; C0 BA 40
	adc $E469.w		; 6D 69 E4
	ora #$0D19.w		; 09 19 0D
	sbc $83.b,S		; E3 83
	lsr $BD.b,X		; 56 BD
	sta ($FC.b,X)		; 81 FC
	and $7E8100.l,X		; 3F 00 81 7E
	mvp $84,$92		; 44 92 84
	adc ($72.b)		; 72 72
	sty $D4.b		; 84 D4
	plp		; 28
	rti		; 40

	.db $82, $03, $00		; 82 03 00
	lsr $02.b,X		; 56 02
	ror $72.b		; 66 72
	eor $72FE.w		; 4D FE 72
	stz $0613.w,X		; 9E 13 06
	cli		; 58
	adc #$6C36.w		; 69 36 6C
	rol $ED6E.w		; 2E 6E ED
	bpl -53.b		; 10 CB
	trb $41.b		; 14 41
	bpl  33.b		; 10 21
	rti		; 40

	eor #$96B4.w		; 49 B4 96
	brk $91.b		; 00 91
	cop $9F.b		; 02 9F
	rti		; 40

	bvs  22.b		; 70 16
	cpx $18.b		; E4 18
	lda ($9C.b,S),Y		; B3 9C
	and $DAC7.w,X		; 3D C7 DA
	cmp ($54.b)		; D2 54
	cld		; D8
	bit $C1.b,X		; 34 C1
	txy		; 9B
	cmp ($FA.b,X)		; C1 FA
	sbc $DCFFD8.l,X		; FF D8 FF DC
	sbc $FBFFD7.l,X		; FF D7 FF FB
	sbc $EFF1.w		; ED F1 EF
	beq  -1.b		; F0 FF
	sbc [$FF.b]		; E7 FF
	tsx		; BA
	sbc $07.b		; E5 07
	adc $4E04.w,Y		; 79 04 4E
	and $E4.b,S		; 23 E4
	mvp $92,$A8		; 44 A8 92
	dec $9719.w,X		; DE 19 97
	cmp $5FF516.l,X		; DF 16 F5 5F
	sta $D6FF.w,Y		; 99 FF D6
	xce		; FB
	tay		; A8
	sbc $F7FF19.l,X		; FF 19 FF F7
	sbc $EEB3.w		; ED B3 EE
	ror $EB.b,X		; 76 EB
	tas		; 1B
	cop $30.b		; 02 30
	eor $7E5D.w,Y		; 59 5D 7E
	dec $1327.w,X		; DE 27 13
.INDEX 8
	sep #$92		; E2 92
	cpy $B9BC.w		; CC BC B9
	lda [$69.b],Y		; B7 69
	ldx #$FD.b		; A2 FD
	adc ($FF.b)		; 72 FF
	jsr ($E6E3.w,X)		; FC E3 E6
	sbc $FDA2.w,X		; FD A2 FD
	sed		; F8
	adc $61D7B8.l,X		; 7F B8 D7 61
	inc $8971.w,X		; FE 71 89
	lda $A18A84.l,X		; BF 84 8A A1
	sbc $C7.b,X		; F5 C7
	lda $1E.b		; A5 1E
	lda ($9C.b,S),Y		; B3 9C
	dec $5B00.w		; CE 00 5B
	sta $01.b,X		; 95 01
	inc $7B84.w,X		; FE 84 7B
	bra 127.b		; 80 7F
	cmp $3A.b		; C5 3A
	tsb $FB.b		; 04 FB
	bcc 111.b		; 90 6F
	brk $FF.b		; 00 FF
	ora ($EE.b),Y		; 11 EE
	sbc ($9D.b),Y		; F1 9D
	inc A		; 1A
	ora ($07.b,S),Y		; 13 07
	bit $CC.b,X		; 34 CC
	and $31BD.w,Y		; 39 BD 31
	rtl		; 6B

	adc ($3A.b,S),Y		; 73 3A
	jmp $028A.w		; 4C 8A 02
	sta ($6E.b),Y		; 91 6E
	ora ($ED.b)		; 12 ED
	tsb $FB.b		; 04 FB
	php		; 08
	sbc [$31.b],Y		; F7 31
	dec $9C63.w		; CE 63 9C
	php		; 08
	sbc [$02.b],Y		; F7 02
	sbc $0C7A.w,X		; FD 7A 0C
	lsr $B287.w,X		; 5E 87 B2
	cmp $BC45.w,Y		; D9 45 BC
	eor ($98.b),Y		; 51 98
	pei ($99.b)		; D4 99
	and $36.b		; 25 36
	sta $08AE.w,Y		; 99 AE 08
	sbc [$06.b],Y		; F7 06
	sbc $6F90.w,Y		; F9 90 6F
	tsb $FB.b		; 04 FB
	bpl -17.b		; 10 EF
	bcc 111.b		; 90 6F
	bit $DB.b		; 24 DB
	dey		; 88
	adc [$B1.b],Y		; 77 B1
	ldx $8988.w		; AE 88 89
	dex		; CA
	sbc ($0E.b,S),Y		; F3 0E
	and $5B.b,S		; 23 5B
	rol A		; 2A
	and ($C0.b,S),Y		; 33 C0
	rol $5E48.w,X		; 3E 48 5E
	and $5FA0.w,Y		; 39 A0 5F
	dey		; 88
	adc [$C2.b],Y		; 77 C2
	and $FD02.w,X		; 3D 02 FD
	asl A		; 0A
	sbc $00.b,X		; F5 00
	sbc $18F708.l,X		; FF 08 F7 18
	sbc [$75.b]		; E7 75
	sty $7B.b		; 84 7B
	cpx #$7F.b		; E0 7F
	lda ($25.b),Y		; B1 25
	lda ($01.b),Y		; B1 01
	mvn $09,$B0		; 54 B0 09
	cmp $00.b,S		; C3 00
	cmp $FB0438.l,X		; DF 38 04 FB
	rts		; 60

	sta $21CE30.l,X		; 9F 30 CE 21
	dec $FE01.w,X		; DE 01 FE
	asl $F9.b		; 06 F9
	tsb $FB.b		; 04 FB
	trb $C0E3.w		; 1C E3 C0
	sbc $38E2D0.l,X		; FF D0 E2 38
	lsr $9624.w		; 4E 24 96
	dey		; 88
	dec $2F48.w,X		; DE 48 2F
	bvs 100.b		; 70 64
	stx $3F.b		; 86 3F
	cpy #$34.b		; C0 34
	eor $1132.w		; 4D 32 11
	cpx $69.b		; E4 69
	ora ($21.b)		; 12 21
	.db $42, $C0		; 42 C0
	asl $93.b,X		; 16 93
	php		; 08
	sty $59.b		; 84 59
	and ($B0.b,S),Y		; 33 B0
	sbc #$418E.w		; E9 8E 41
	sta $7F0C5D.l,X		; 9F 5D 0C 7F
	mvp $89,$DC		; 44 DC 89
	dec $B1.b,X		; D6 B1
	and ($63.b)		; 32 63
	pla		; 68
	ora [$F9.b]		; 07 F9
	brk $40.b		; 00 40
	rol A		; 2A
	asl $70E1.w,X		; 1E E1 70
	phb		; 8B
.INDEX 8
	sep #$15		; E2 15
	tsb $4A.b		; 04 4A
	stz $0600.w		; 9C 00 06
	eor ($17.b,S),Y		; 53 17
	sec		; 38
	cmp [$53.b],Y		; D7 53
	sta $A2.b		; 85 A2
	eor $2CE288.l		; 4F 88 E2 2C
	bpl -29.b		; 10 E3
	sbc $EE.b		; E5 EE
	asl $A9.b		; 06 A9
	cmp ($0C.b,S),Y		; D3 0C
	clc		; 18
	ldy $0D.b		; A4 0D
	bvc 119.b		; 50 77
	brk $93.b		; 00 93
	mvp $02,$1C		; 44 1C 02
	bpl   1.b		; 10 01
	ora ($85.b,X)		; 01 85
	inc $5F.b,X		; F6 5F
	adc $A2E8.w,X		; 7D E8 A2
	cmp #$1E4A.w		; C9 4A 1E
	cpy $14D4.w		; CC D4 14
	adc $0532.w,X		; 7D 32 05
	phy		; 5A
	ldy #$30.b		; A0 30
	bra  55.b		; 80 37
	brk $B6.b		; 00 B6
	php		; 08
	sbc ($14.b,X)		; E1 14
	phk		; 4B
	jsr $2182.w		; 20 82 21
	sed		; F8
	cop $CE.b		; 02 CE
	sed		; F8
	ldy $98.b		; A4 98
	ora #$A450.w		; 09 50 A4
	eor $88.b,X		; 55 88
	sbc $1FDADC.l,X		; FF DC DA 1F
	adc ($01.b,X)		; 61 01
	eor $05.b,S		; 43 05
	cop $87.b		; 02 87
	rts		; 60

	rol $AA81.w		; 2E 81 AA
	ora ($00.b),Y		; 11 00
	brk $21.b		; 00 21
	asl $1F.b		; 06 1F
	bra -68.b		; 80 BC
	rti		; 40

	sbc ($F4.b)		; F2 F4
	sta ($3F.b),Y		; 91 3F
	adc $F481.w,X		; 7D 81 F4
	sbc #$33FF.w		; E9 FF 33
	cld		; D8
	sbc $A5.b,X		; F5 A5
	cld		; D8
	ldx #$4D.b		; A2 4D
	phd		; 0B
	brk $C1.b		; 00 C1
	brk $7E.b		; 00 7E
	brk $06.b		; 00 06
	bpl -116.b		; 10 8C
	rti		; 40

	asl A		; 0A
	brk $27.b		; 00 27
	clc		; 18
	sta ($60.b)		; 92 60
	pha		; 48
	bmi -47.b		; 30 D1
	brk $00.b		; 00 00
	sbc $F6D1.w		; ED D1 F6
	ora ($2C.b,S),Y		; 13 2C
	adc [$87.b]		; 67 87
	sbc $E17C.w,X		; FD 7C E1
	dey		; 88
	sta $20DF50.l		; 8F 50 DF 20
	bpl   2.b		; 10 02
	ora ($08.b,X)		; 01 08
	eor ($84.b,S),Y		; 53 84
	sei		; 78
	bra  33.b		; 80 21
	.db $82, $77, $00		; 82 77 00
	dec $FD06.w,X		; DE 06 FD
	sbc $B005.w,X		; FD 05 B0
	sec		; 38
	sta $43.b,S		; 83 43
	rti		; 40

	adc $FC195C.l,X		; 7F 5C 19 FC
	cpy $B90C.w		; CC 0C B9
	rti		; 40

	cop $00.b		; 02 00
	eor $007C00.l		; 4F 00 7C 00
	lda $832000.l,X		; BF 00 20 83
	ora $00.b,S		; 03 00
	sbc $3FA110.l		; EF 10 A1 3F
	ora ($AF.b,X)		; 01 AF
	php		; 08
	sbc [$7C.b]		; E7 7C
	sbc $01.b,S		; E3 01
	sta $33.b,S		; 83 33
	pha		; 48
	ora [$A0.b],Y		; 17 A0
	tyx		; BB
	asl $AB.b		; 06 AB
	inc $FFA1.w,X		; FE A1 FF
	sbc #$E9FF.w		; E9 FF E9
	lda $DDFEF5.l,X		; BF F5 FE DD
	sbc $F7FFB3.l,X		; FF B3 FF F7
	sbc $5CF33F.l,X		; FF 3F F3 5C
	ldx $88.b		; A6 88
	adc $9F4493.l,X		; 7F 93 44 9F
	sbc $BD.b,X		; F5 BD
	ora $93103B.l		; 0F 3B 10 93
	lda ($F7.b),Y		; B1 F7
	cmp $DBFBD5.l		; CF D5 FB DB
	sbc [$EE.b],Y		; F7 EE
	sbc $8F7E97.l,X		; FF 97 7E 8F
	sbc ($1C.b)		; F2 1C
	sbc $056FD3.l		; EF D3 6F 05
	cmp ($88.b,X)		; C1 88
	ora $6666ED.l		; 0F ED 66 66
	eor [$57.b]		; 47 57
	ror $B7.b		; 66 B7
	rol $403A.w		; 2E 3A 40
	sbc $E146.w,Y		; F9 46 E1
	inc $F748.w,X		; FE 48 F7
	stz $9B.b		; 64 9B
	lsr $F9.b		; 46 F9
	lsr $B9.b		; 46 B9
	ldx $D9.b		; A6 D9
	brk $FF.b		; 00 FF
	rti		; 40

	lda $658358.l,X		; BF 58 83 65
	dey		; 88
	ldy $51DD.w,X		; BC DD 51
	lda $21A5.w		; AD A5 21
	eor ($34.b)		; 52 34
	lda $EBC0.w		; AD C0 EB
	jmp $00FF00.l		; 5C 00 FF 00
	sbc $01639C.l,X		; FF 9C 63 01
	inc $DE21.w,X		; FE 21 DE
	bpl -17.b		; 10 EF
	bra 127.b		; 80 7F
	pha		; 48
	lda [$BA.b],Y		; B7 BA
	lsr $B1.b		; 46 B1
	sty $167D.w		; 8C 7D 16
	jmp $C9FA.w		; 4C FA C9
	adc ($A8.b),Y		; 71 A8
	and ($44.b)		; 32 44
	adc ($8E.b,X)		; 61 8E
	cpx #$02.b		; E0 02
	sbc $7F80.w,X		; FD 80 7F
	trb $EB.b		; 14 EB
	pha		; 48
	lda [$41.b],Y		; B7 41
	ldx $DF20.w,Y		; BE 20 DF
	rti		; 40

	lda $D27F80.l,X		; BF 80 7F D2
	cpx #$D4.b		; E0 D4
	.db $62, $AF, $0B		; 62 AF 0B
	adc $F168.w		; 6D 68 F1
	eor $73BF.w		; 4D BF 73
	and [$A5.b],Y		; 37 A5
.INDEX 16
	rep #$12		; C2 12
	cpy #$403F.w		; C0 3F 40
	lda $68F40B.l,X		; BF 0B F4 68
	sta [$41.b],Y		; 97 41
	ldx $CC33.w,Y		; BE 33 CC
	and $DA.b		; 25 DA
	cop $FD.b		; 02 FD
	cmp $70.b,S		; C3 70
	inx		; E8
	adc [$10.b],Y		; 77 10
	cmp $77.b,S		; C3 77
	ora [$BC.b]		; 07 BC
	inc $34.b		; E6 34
	dex		; CA
	sta $C155.w,X		; 9D 55 C1
	ora $BF40.w,Y		; 19 40 BF
	rts		; 60

	sta $07FF00.l,X		; 9F 00 FF 07
	sed		; F8
	lda $5A.b		; A5 5A
	tsb $FB.b		; 04 FB
	bpl -22.b		; 10 EA
	asl $E0.b		; 06 E0
	sbc $1C.b,S		; E3 1C
	adc [$D5.b],Y		; 77 D5
	tay		; A8
	eor $AB.b,X		; 55 AB
	cmp ($D3.b)		; D2 D3
	adc [$CF.b]		; 67 CF
	sta $FA.b,X		; 95 FA
	ora ($61.b)		; 12 61
	rts		; 60

	ora $EC.b,S		; 03 EC
	lsr $82A0.w,X		; 5E A0 82
	pla		; 68
	and $C910.w		; 2D 10 C9
	bpl -20.b		; 10 EC
	cop $45.b		; 02 45
	tay		; A8
	dex		; CA
	ora $7A.b,X		; 15 7A
	eor $39.b		; 45 39
	lda ($6C.b)		; B2 6C
	sty $A106.w		; 8C 06 A1
	txa		; 8A
	ora #$DD99.w		; 09 99 DD
	brk $A2.b		; 00 A2
	ldx $A28C.w,Y		; BE 8C A2
	clc		; 18
	plp		; 28
	eor [$07.b]		; 47 07
	beq  82.b		; F0 52
	ldy $6294.w		; AC 94 62
	ldy #$4C42.w		; A0 42 4C
	sta ($2B.b),Y		; 91 2B
	bvc  16.b		; 50 10
	ora ($3E.b),Y		; 11 3E
	eor $A0.b		; 45 A0
	bne  38.b		; D0 26
	jmp ($C274.w)		; 6C 74 C2
	iny		; C8
	cmp #$1429.w		; C9 29 14
	mvp $FA,$14		; 44 14 FA
	ora $B2.b		; 05 B2
	php		; 08
	and #$3756.w		; 29 56 37
	bra  77.b		; 80 4D
	bmi  46.b		; 30 2E
	bpl  10.b		; 10 0A
	sbc ($A9.b,X)		; E1 A9
	eor ($9A.b)		; 52 9A
	stz $EB.b,X		; 74 EB
	jmp ($3970.w)		; 6C 70 39
	cli		; 58
	ora ($1F.b)		; 12 1F
	stz $E4.b		; 64 E4
	ldy $CC.b,X		; B4 CC
	stx $79.b,Y		; 96 79
	cmp ($81.b)		; D2 81
	lsr A		; 4A
	cmp $10.b,S		; C3 10
	lsr $80.b		; 46 80
	ora $9FE0.w,X		; 1D E0 9F
	brk $48.b		; 00 48
	ora ($60.b,S),Y		; 13 60
	ora #$A04D.w		; 09 4D A0
	xba		; EB
	jmp $0058.w		; 4C 58 00
	ror $C7.b,X		; 76 C7
	phy		; 5A
	tda		; 7B
	brk $F1.b		; 00 F1
	sbc ($87.b,X)		; E1 87
	tda		; 7B
	jmp.w [$1256]		; DC 56 12
	lda ($04.b,S),Y		; B3 04
	lda $201C50.l		; AF 50 1C 20
	sty $00.b		; 84 00
	php		; 08
	asl $78.b		; 06 78
	brk $62.b		; 00 62
	ora ($ED.b,X)		; 01 ED
	brk $C0.b		; 00 C0
	lsr $58.b		; 46 58
	adc $9B.b,X		; 75 9B
	sta $07.b		; 85 07
	lda ($EE.b,X)		; A1 EE
	cli		; 58
	lda $2E.b		; A5 2E
	sbc $990138.l		; EF 38 01 99
	lda $9A04.w,Y		; B9 04 9A
	tsb $FA.b		; 04 FA
	brk $5A.b		; 00 5A
	bit $A7.b		; 24 A7
	brk $C1.b		; 00 C1
	bpl -58.b		; 10 C6
	ora ($67.b,X)		; 01 67
	bra -117.b		; 80 8B
	ora #$EBC0.w		; 09 C0 EB
	jsr $B3D3.w		; 20 D3 B3
	inx		; E8
	clv		; B8
	sei		; 78
	adc $3D.b,X		; 75 3D
	eor #$3F6D.w		; 49 6D 3F
	eor $04F2.w		; 4D F2 04
	trb $22.b		; 14 22
	bit $3700.w		; 2C 00 37
	php		; 08
	sta $00C200.l		; 8F 00 C2 00
	eor ($80.b,S),Y		; 53 80
	bcs   2.b		; B0 02
	phd		; 0B
	ldy $E5.b,X		; B4 E5
	tay		; A8
	lda ($B3.b),Y		; B1 B3
	ora ($68.b,X)		; 01 68
	lda $E64BFD.l,X		; BF FD 4B E6
	adc $9895.w,X		; 7D 95 98
	lda $57104B.l		; AF 4B 10 57
	brk $C8.b		; 00 C8
	asl $97.b		; 06 97
	pha		; 48
	asl $00.b		; 06 00
	cli		; 58
	ora ($6A.b,X)		; 01 6A
	brk $10.b		; 00 10
	rti		; 40

	ldy $32.b,X		; B4 32
	tay		; A8
	phy		; 5A
	sbc $CF.b,X		; F5 CF
	tsx		; BA
	eor $86.b,S		; 43 86
	and [$AB.b]		; 27 AB
	and $74EEC7.l,X		; 3F C7 EE 74
	ldy $02CD.w		; AC CD 02
	ora $A2.b		; 05 A2
	bpl  32.b		; 10 20
	bit $D880.w,X		; 3C 80 D8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	ora ($53.b),Y		; 11 53
	php		; 08
	and [$BF.b]		; 27 BF
	sta ($63.b,S),Y		; 93 63
	eor [$3E.b]		; 47 3E
	ldy #$9312.w		; A0 12 93
	adc ($45.b)		; 72 45
	adc $18.b,X		; 75 18
	rts		; 60

	adc $EF42.w,Y		; 79 42 EF
	dec $FEE7.w,X		; DE E7 FE
	ror $18FB.w,X		; 7E FB 18
	sbc $D5FD5B.l,X		; FF 5B FD D5
	plx		; FA
	ldy $C4FF.w,X		; BC FF C4
	lda $5693DA.l,X		; BF DA 93 56
	ldx #$7E5D.w		; A2 5D 7E
	lsr $0E73.w,X		; 5E 73 0E
	and [$3D.b],Y		; 37 3D
	ldx $7FB2.w,Y		; BE B2 7F
	ora $9248.w,X		; 1D 48 92
	adc $FDA2.w,X		; 7D A2 FD
	jmp $AD5AA3.l		; 5C A3 5A AD
	asl $BCF9.w,X		; 1E F9 BC
	sbc ($72.b,S),Y		; F3 72
	sbc $F718.w		; ED 18 F7
	ldy $96B3.w		; AC B3 96
	ora [$6F.b]		; 07 6F
	lda [$B2.b],Y		; B7 B2
	ora $954ABA.l,X		; 1F BA 4A 95
	stz $2E.b		; 64 2E
	and ($DE.b,S),Y		; 33 DE
	tas		; 1B
	ldy #$065F.w		; A0 5F 06
	sbc $D827.w,Y		; F9 27 D8
	ora ($ED.b)		; 12 ED
	asl A		; 0A
	sbc $04.b,X		; F5 04
	xce		; FB
	jsl $E51ADD.l		; 22 DD 1A E5
	dec $7359.w		; CE 59 73
	xba		; EB
	rol $938F.w		; 2E 8F 93
	ora $3129.w,Y		; 19 29 31
	eor $75.b		; 45 75
	lda ($23.b)		; B2 23
	ldy $4831.w		; AC 31 48
	lda [$63.b],Y		; B7 63
	stz $F10E.w		; 9C 0E F1
	ora ($EE.b),Y		; 11 EE
	and ($DE.b,X)		; 21 DE
	eor $BA.b		; 45 BA
	jsl $DF20DD.l		; 22 DD 20 DF
	tax		; AA
	cmp $18.b		; C5 18
	eor $28.b,X		; 55 28
	and ($E9.b,X)		; 21 E9
	ora ($DB.b),Y		; 11 DB
	sec		; 38
	lda ($47.b,S),Y		; B3 47
	ldy #$F464.w		; A0 64 F4
	adc $107F80.l,X		; 7F 80 7F 10
	sbc $01DF20.l		; EF 20 DF 01
	inc $E718.w,X		; FE 18 E7
	ora $FC.b,S		; 03 FC
	jsr $74DF.w		; 20 DF 74
	phb		; 8B
	wai		; CB
	bcc -66.b		; 90 BE
	.db $82, $9D, $1D		; 82 9D 1D
	sbc $37F4.w,Y		; F9 F4 37
	sty $3C99.w		; 8C 99 3C
	sbc $9D.b,X		; F5 9D
	cmp $8004.w		; CD 04 80
	adc $1D7D82.l,X		; 7F 82 7D 1D
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	ora $18FB04.l		; 0F 04 FB 18
	sbc [$95.b]		; E7 95
	ror A		; 6A
	ora $FA.b		; 05 FA
	bit $31.b		; 24 31
	lda ($A2.b),Y		; B1 A2
	jmp ($72AF.w,X)		; 7C AF 72
	.db $82, $86, $D6		; 82 86 D6
	ora $6E.b		; 05 6E
	mvp $49,$C9		; 44 C9 49
	sta $D728.w,X		; 9D 28 D7
	bit #$54.b		; 89 54
	brk $D1.b		; 00 D1
	ora [$F8.b]		; 07 F8
	txa		; 8A
	and ($95.b),Y		; 31 95
	.db $62, $76, $80		; 62 76 80
	asl A		; 0A
	cpx $48.b		; E4 48
	ora ($42.b,S),Y		; 13 42
	sta ($7F.b,S),Y		; 93 7F
	eor $B28DCC.l,X		; 5F CC 8D B2
	ldx #$0A.b		; A2 0A
	cmp $8A4C.w		; CD 4C 8A
	bcc -12.b		; 90 F4
	cpx $1A.b		; E4 1A
	lsr A		; 4A
	ldy $E6.b,X		; B4 E6
	brk $BA.b		; 00 BA
	rti		; 40

	pla		; 68
	ora $02.b,X		; 15 02
	adc ($65.b),Y		; 71 65
	ora ($8B.b)		; 12 8B
	rti		; 40

	rti		; 40

	sty $40.b,X		; 94 40
	sta [$D0.b],Y		; 97 D0
	eor ($B4.b,S),Y		; 53 B4
	cmp $0FBF.w,X		; DD BF 0F
	ply		; 7A
	eor $E9C6A2.l,X		; 5F A2 C6 E9
	php		; 08
	pld		; 2B
	cpy $68.b		; C4 68
	stx $34.b		; 86 34
	dey		; 88
	sta ($20.b)		; 92 20
	pla		; 68
	bcc -128.b		; 90 80
	jsr $1920.w		; 20 20 19
	cmp [$20.b],Y		; D7 20
	lda $1021BD.l,X		; BF BD 21 10
	adc ($9E.b,S),Y		; 73 9E
	lsr $77.b		; 46 77
	.db $82, $80, $54		; 82 80 54
	jmp ($31ED.w)		; 6C ED 31
	rts		; 60

	adc $41.b,X		; 75 41
	cop $44.b		; 02 44
	plb		; AB
	adc ($04.b,X)		; 61 04
	iny		; C8
	jsr $027D.w		; 20 7D 02
	sta [$20.b],Y		; 97 20
	sta $108A40.l		; 8F 40 8A 10
	cmp $76.b		; C5 76
	cmp $EAE1.w		; CD E1 EA
	lda ($21.b,S),Y		; B3 21
	ora #$5D.b		; 09 5D
	phb		; 8B
	plb		; AB
	eor $A10D32.l		; 4F 32 0D A1
	xce		; FB
	bit #$00.b		; 89 00
	trb $0E22.w		; 1C 22 0E
	rti		; 40

	sbc [$00.b],Y		; F7 00
	stz $10.b		; 64 10
	ldy #$10.b		; A0 10
.INDEX 8
	sep #$10		; E2 10
	sty $02.b		; 84 02
	adc $07.b,X		; 75 07
	pea $AA67.w		; F4 67 AA
	lsr $1CB6.w		; 4E B6 1C
	lda $A568.w		; AD 68 A5
	adc ($35.b),Y		; 71 35
	lsr $E38B.w		; 4E 8B E3
	sta $9860.w,Y		; 99 60 98
	brk $93.b		; 00 93
	jsr $00E3.w		; 20 E3 00
	stx $41.b,Y		; 96 41
	stx $08.b		; 86 08
	and ($80.b),Y		; 31 80
	trb $48.b		; 14 48
	adc $83.b		; 65 83
	cmp ($C6.b)		; D2 C6
	and $78.b,X		; 35 78
	tax		; AA
	sta ($31.b)		; 92 31
	ora #$2F.b		; 09 2F
	xba		; EB
	plx		; FA
	phk		; 4B
	jmp ($7CB8.w)		; 6C B8 7C
	brk $23.b		; 00 23
	trb $0087.w		; 1C 87 00
	stz $09.b		; 64 09
	ldx $40.b,Y		; B6 40
	bit $00.b,X		; 34 00
	ldy $10.b		; A4 10
	lsr $81.b		; 46 81
	jsr $0AA4.w		; 20 A4 0A
	rts		; 60

	stz $60.b,X		; 74 60
	phd		; 0B
	inc $B64A.w,X		; FE 4A B6
	cmp $00.b		; C5 00
	tsa		; 3B
	eor $5B0F80.l		; 4F 80 0F 5B
	sty $97.b		; 84 97
	php		; 08
	ora $000180.l,X		; 1F 80 01 00
	eor #$30.b		; 49 30
	sbc $04B000.l,X		; FF 00 B0 04
	bvs -128.b		; 70 80
	rol $59.b,X		; 36 59
	cpy #$C8.b		; C0 C8
	and $D8.b,X		; 35 D8
	sbc #$6F.b		; E9 6F
	cmp [$68.b],Y		; D7 68
	plp		; 28
	php		; 08
	eor [$07.b]		; 47 07
	sbc #$7F.b		; E9 7F
	ldx $09.b		; A6 09
	and [$00.b],Y		; 37 00
	and $02.b		; 25 02
	bra  16.b		; 80 10
	ora [$80.b],Y		; 17 80
	adc [$80.b],Y		; 77 80
	sed		; F8
	brk $81.b		; 00 81
	brk $86.b		; 00 86
	sty $3A.b		; 84 3A
	sbc $D9.b,X		; F5 D9
	stx $FC.b		; 86 FC
	bit $E6.b,X		; 34 E6
	tsb $217D.w		; 0C 7D 21
	dey		; 88
	tay		; A8
	adc ($C0.b,X)		; 61 C0
	adc $000A00.l,X		; 7F 00 0A 00
	adc #$10.b		; 69 10
	phb		; 8B
	rti		; 40

	cmp ($20.b,S),Y		; D3 20
	phx		; DA
	tsb $57.b		; 04 57
	brk $2E.b		; 00 2E
	ora ($7D.b),Y		; 11 7D
.ACCU 16
.INDEX 16
	rep #$7E		; C2 7E
	sta $91.b		; 85 91
	ora $3D83.w		; 0D 83 3D
	plx		; FA
	tas		; 1B
	stz $C1.b		; 64 C1
	adc $41.b,X		; 75 41
	stz $E0F3.w		; 9C F3 E0
	lda $03FBB4.l,X		; BF B4 FB 03
	sbc $1AFE85.l,X		; FF 85 FE 1A
	sbc $C2.b		; E5 C2
	lda $90BEC1.l,X		; BF C1 BE 90
	sbc $4C26B5.l		; EF B5 26 4C
	sta $A5D1BE.l		; 8F BE D1 A5
	sta $2911.w,Y		; 99 11 29
	rol $58.b,X		; 36 58
	lda $F559.w,X		; BD 59 F5
	eor $FBF4.w,Y		; 59 F4 FB
	tsb $D0F3.w		; 0C F3 D0
	sbc $017EC1.l,X		; FF C1 7E 01
	inc $EF50.w,X		; FE 50 EF
	adc $71E6.w,Y		; 79 E6 71
	inc $77E3.w		; EE E3 77
	and [$86.b]		; 27 86
	asl A		; 0A
	cmp $D9.b,S		; C3 D9
	ora $9A56.w,Y		; 19 56 9A
	ora $72C9.w		; 0D C9 72
	sty $EB.b		; 84 EB
	cmp $9C63.w,X		; DD 63 9C
	asl $F9.b		; 06 F9
	cop $FD.b		; 02 FD
	ora $12E6.w,Y		; 19 E6 12
	sbc $F609.w		; ED 09 F6
	brk $FF.b		; 00 FF
	cmp #$B536.w		; C9 36 B5
	ror $55.b		; 66 55
	nop		; EA
	cmp $81D1C7.l,X		; DF C7 D1 81
	adc $7279.w,X		; 7D 79 72
	ldy #$CCAF.w		; A0 AF CC
	wai		; CB
	mvp $DB,$24		; 44 24 DB
	rti		; 40

	lda $8138C7.l,X		; BF C7 38 81
	ror $8679.w,X		; 7E 79 86
	jsr $8CDF.w		; 20 DF 8C
	adc ($40.b,S),Y		; 73 40
	lda $FA05BE.l,X		; BF BE 05 FA
	eor ($74.b,X)		; 41 74
	phk		; 4B
	txa		; 8A
	clv		; B8
	pla		; 68
	txa		; 8A
	sbc $03.b,S		; E3 03
	cpx #$4E27.w		; E0 27 4E
	bra   4.b		; 80 04
	xce		; FB
	rti		; 40

	lda $88BF40.l,X		; BF 40 BF 88
	adc [$08.b],Y		; 77 08
	sbc [$03.b],Y		; F7 03
	jsr ($DF20.w,X)		; FC 20 DF
	brk $FF.b		; 00 FF
	phd		; 0B
	.db $82, $B0, $E8		; 82 B0 E8
	eor $E4.b,X		; 55 E4
.ACCU 16
.INDEX 16
	rep #$F5		; C2 F5
	ora ($0F.b,X)		; 01 0F
	txs		; 9A
	sbc $E822.w,X		; FD 22 E8
	pei ($1C.b)		; D4 1C
	cop $FD.b		; 02 FD
	ldy #$455F.w		; A0 5F 45
	tsx		; BA
	cpy #$013E.w		; C0 3E 01
	jsr ($6698.w,X)		; FC 98 66
	jsr $06D7.w		; 20 D7 06
	sbc ($70.b,X)		; E1 70
	ldy $E0E0.w,X		; BC E0 E0
	adc $40A5.w		; 6D A5 40
	eor [$21.b]		; 47 21
	asl $B4.b,X		; 16 B4
	stz $69.b,X		; 74 69
	tsb $74.b		; 04 74
	cpy $32.b		; C4 32
	eor $1A25.w		; 4D 25 1A
	mvp $E0,$9A		; 44 9A E0
	inc A		; 1A
	iny		; C8
	and ($91.b,S),Y		; 33 91
	lsr A		; 4A
	stp		; DB
	jsr $205F.w		; 20 5F 20
	adc $549A.w		; 6D 9A 54
	ror $EECD.w		; 6E CD EE
	xba		; EB
	sbc ($C7.b)		; F2 C7
	cmp $A42701.l		; CF 01 27 A4
	jmp ($E350.w,X)		; 7C 50 E3
	jmp ($D501.w)		; 6C 01 D5
	cop $51.b		; 02 51
	jsr $0449.w		; 20 49 04
	adc ($08.b),Y		; 71 08
	bcc  74.b		; 90 4A
	ora [$D0.b]		; 07 D0
	clc		; 18
	asl $2F.b		; 06 2F
	adc $0919.w		; 6D 19 09
	pha		; 48
	txy		; 9B
	eor ($E4.b),Y		; 51 E4
	pei ($00.b)		; D4 00
	.db $42, $80		; 42 80
	lda $26FA.w,X		; BD FA 26
.INDEX 8
	sep #$17		; E2 17
	bra 102.b		; 80 66
	bcc  32.b		; 90 20
	eor $1A.b		; 45 1A
	ora ($BB.b,X)		; 01 BB
	mvp $16,$69		; 44 69 16
	ora ($04.b),Y		; 11 04
	tas		; 1B
	mvp $64,$8C		; 44 8C 64
	sta ($AC.b),Y		; 91 AC
	ldx #$A4.b		; A2 A4
	asl $02A5.w,X		; 1E A5 02
	sta ($30.b)		; 92 30
	sbc ($07.b,X)		; E1 07
	ldy $91.b		; A4 91
	cmp ($93.b,S),Y		; D3 93
	php		; 08
	sta ($52.b,X)		; 81 52
	ply		; 7A
	ora $58.b		; 05 58
	.db $82, $6D, $90		; 82 6D 90
	asl A		; 0A
	sty $51.b,X		; 94 51
	txa		; 8A
	tsb $0020.w		; 0C 20 00
	jmp ($D1FE.w,X)		; 7C FE D1
	adc $1272.w,Y		; 79 72 12
	lsr $86.b,X		; 56 86
	bra -17.b		; 80 EF
	ror $3D.b		; 66 3D
	lda ($46.b,S),Y		; B3 46
	adc [$83.b],Y		; 77 83
	tsb $0A24.w		; 0C 24 0A
	sta $0A.b		; 85 0A
	lda ($08.b),Y		; B1 08
	adc $009910.l		; 6F 10 99 00
	cli		; 58
	tsb $88.b		; 04 88
	brk $F6.b		; 00 F6
	lda $B4.b,S		; A3 B4
	phd		; 0B
	adc $AB767A.l		; 6F 7A 76 AB
	adc $26.b		; 65 26
	ldy $7B.b,X		; B4 7B
	ldy #$73.b		; A0 73
	xce		; FB
	and $00FC.w,X		; 3D FC 00
	pei ($21.b)		; D4 21
	sbc $00.b		; E5 00
	bpl  76.b		; 10 4C
	ora ($C8.b),Y		; 11 C8
	sty $48.b,X		; 94 48
	tsb $88.b		; 04 88
	pla		; 68
	.db $82, $AF, $22		; 82 AF 22
	eor ($A2.b),Y		; 51 A2
	bvs -80.b		; 70 B0
	sty $06.b		; 84 06
	bit #$4F29.w		; 89 29 4F
	.db $82, $CB, $D3		; 82 CB D3
	tsb $81.b		; 04 81
	eor $5D80.w,X		; 5D 80 5D
	bra  90.b		; 80 5A
	ora $FD.b		; 05 FD
	cop $4E.b		; 02 4E
	bcc  25.b		; 90 19
	stz $2C.b		; 64 2C
	brk $6A.b		; 00 6A
	trb $74.b		; 14 74
	inc $8B.b,X		; F6 8B
	clc		; 18
	ldy $DE.b		; A4 DE
	bne 118.b		; D0 76
	lda $98.b		; A5 98
	jmp ($8088.w,X)		; 7C 88 80
	brk $80.b		; 00 80
	ora ($11.b)		; 12 11
	php		; 08
	lda [$40.b]		; A7 40
	and ($02.b,X)		; 21 02
	ora ($88.b,X)		; 01 88
	adc $02.b		; 65 02
	adc [$00.b],Y		; 77 00
	sbc $CD02.w,X		; FD 02 CD
	jsl $00301F.l		; 22 1F 30 00
	cpx #$76.b		; E0 76
	phy		; 5A
	sta $7688.w,X		; 9D 88 76
	ror $A8.b,X		; 76 A8
	beq -61.b		; F0 C3
	cld		; D8
	plx		; FA
	and $1F00DF.l,X		; 3F DF 00 1F
	brk $A4.b		; 00 A4
	ora ($72.b,X)		; 01 72
	ora $88.b		; 05 88
	ora ($0F.b,X)		; 01 0F
	brk $27.b		; 00 27
	bpl -126.b		; 10 82
	rti		; 40

	bra  66.b		; 80 42
	ldx $26.b,Y		; B6 26
	lda ($06.b,X)		; A1 06
	inc $F6.b,X		; F6 F6
	jsl $F5549A.l		; 22 9A 54 F5
	bmi 124.b		; 30 7C
	tax		; AA
	jsl $9D00BD.l		; 22 BD 00 9D
	rti		; 40

	cmp $2920.w,Y		; D9 20 29
	brk $65.b		; 00 65
	brk $02.b		; 00 02
	dey		; 88
	sta $00.b,S		; 83 00
	cmp $D100.w,X		; DD 00 D1
	ldx $21CC.w,Y		; BE CC 21
	cmp ($22.b,X)		; C1 22
	ldx #$74.b		; A2 74
	lsr $0C.b		; 46 0C
	ora $C3.b,X		; 15 C3
	ora $62.b		; 05 62
	phx		; DA
	.db $62, $D0, $6F		; 62 D0 6F
	sbc [$FF.b],Y		; F7 FF
	ldy $FF.b,X		; B4 FF
	cpx #$FF.b		; E0 FF
	ldy $FF.b,X		; B4 FF
	cmp ($FE.b,S),Y		; D3 FE
	rti		; 40

	sbc $29FD42.l,X		; FF 42 FD 29
	cpx $1C.b		; E4 1C
	sbc $85.b,S		; E3 85
	inc $6D0D.w,X		; FE 0D 6D
	phd		; 0B
	eor $8A.b		; 45 8A
	cpy $3C6B.w		; CC 6B 3C
	sta $600D.w,X		; 9D 0D 60
	cmp $84FF40.l,X		; DF 40 FF 84
	tda		; 7B
	ora $81F2.w		; 0D F2 81
	inc $7788.w,X		; FE 88 77
	plp		; 28
	cmp [$0D.b],Y		; D7 0D
	sbc ($B5.b)		; F2 B5
	and ($C0.b)		; 32 C0
	ora $FD9E.w,Y		; 19 9E FD
	and $8EEE06.l		; 2F 06 EE 8E
	lda $C9.b,S		; A3 C9
	lda ($C4.b)		; B2 C4
	eor $30BA.w		; 4D BA 30
	cmp $9CFF00.l		; CF 00 FF 9C
	adc $06.b,S		; 63 06
	sbc $718E.w,Y		; F9 8E 71
	sta ($7E.b,X)		; 81 7E
	bra 127.b		; 80 7F
	php		; 08
	sbc [$F5.b],Y		; F7 F5
	brk $1D.b		; 00 1D
	cmp ($D6.b),Y		; D1 D6
	cmp $C3F3.w,X		; DD F3 C3
	asl $131A.w		; 0E 1A 13
	cld		; D8
	plb		; AB
	jmp.w [$4DEA]		; DC EA 4D
	brk $FF.b		; 00 FF
	ora ($EE.b),Y		; 11 EE
	pei ($2B.b)		; D4 2B
	cmp $3C.b,S		; C3 3C
	asl A		; 0A
	sbc $10.b,X		; F5 10
	sbc $487788.l		; EF 88 77 48
	lda [$9A.b],Y		; B7 9A
	clv		; B8
	and ($90.b),Y		; 31 90
	eor ($82.b,S),Y		; 53 82
	asl A		; 0A
	ora ($28.b,S),Y		; 13 28
	ldx $6F.b,Y		; B6 6F
	sta ($85.b,X)		; 81 85
	eor ($1F.b)		; 52 1F
	xce		; FB
	tya		; 98
	adc [$10.b]		; 67 10
	sbc $02FD02.l		; EF 02 FD 02
	sbc $DF20.w,X		; FD 20 DF
	ora ($FE.b,X)		; 01 FE
	brk $FF.b		; 00 FF
	tas		; 1B
	cpx $EC.b		; E4 EC
	ldx $B9.b		; A6 B9
	sty $B3.b,X		; 94 B3
	sta $40.b,S		; 83 40
	ora ($E2.b)		; 12 E2
	tda		; 7B
	tas		; 1B
	lda ($17.b),Y		; B1 17
	bpl  51.b		; 10 33
	ora $5AA5.w		; 0D A5 5A
	sta $6C.b,S		; 83 6C
	sta ($7C.b,X)		; 81 7C
	and #$20D4.w		; 29 D4 20
	stz $CA15.w		; 9C 15 CA
	bit $CB.b		; 24 CB
	ora ($E2.b),Y		; 11 E2
	jsr ($A679.w,X)		; FC 79 A6
	bit $7D8A.w		; 2C 8A 7D
	trb $B3.b		; 14 B3
	ora #$D456.w		; 09 56 D4
	lda $94.b,S		; A3 94
	sta [$20.b]		; 87 20
	ora #$00AE.w		; 09 AE 00
	ora [$D0.b]		; 07 D0
	php		; 08
	sep #$4C		; E2 4C
	bra   9.b		; 80 09
	ldy #$D4.b		; A0 D4
	and #$01F8.w		; 29 F8 01
	ror $81.b,X		; 76 81
	sbc ($AB.b),Y		; F1 AB
	ldx $0C.b		; A6 0C
	lda ($B9.b),Y		; B1 B9
	tda		; 7B
	adc ($D0.b,S),Y		; 73 D0
	adc $94BED1.l		; 6F D1 BE 94
	jsl $04BC7E.l		; 22 7E BC 04
	bvc -61.b		; 50 C3
	bmi -58.b		; 30 C6
	php		; 08
	sbc #$1004.w		; E9 04 10
	bit #$0540.w		; 89 40 05
	jmp.w [$1721]		; DC 21 17
	rti		; 40

	and $D9D6.w,Y		; 39 D6 D9
	cmp $0C.b		; C5 0C
	cli		; 58
	ldy $768B.w,X		; BC 8B 76
	adc $3578.w,Y		; 79 78 35
	stp		; DB
	txs		; 9A
	adc $16.b		; 65 16
	ora #$2A60.w		; 09 60 2A
	bpl  38.b		; 10 26
	cmp ($74.b,X)		; C1 74
	ora ($96.b,X)		; 01 96
	brk $8A.b		; 00 8A
	rti		; 40

	and [$40.b]		; 27 40
	sbc #$DB00.w		; E9 00 DB
	bcc  52.b		; 90 34
	adc $EE92.w,X		; 7D 92 EE
	sbc $65.b,S		; E3 65
	eor $C17021.l		; 4F 21 70 C1
	beq -12.b		; F0 F4
.ACCU 16
.INDEX 16
	rep #$71		; C2 71
	ror $1201.w,X		; 7E 01 12
	bra  17.b		; 80 11
	jsr $049A.w		; 20 9A 04
	stz $3E40.w,X		; 9E 40 3E
	brk $13.b		; 00 13
	tsb $810E.w		; 0C 0E 81
	cmp $737A.w,Y		; D9 7A 73
	jmp $D7F8.w		; 4C F8 D7
	rti		; 40

	sei		; 78
	ora ($A0.b,X)		; 01 A0
	jmp.w [$AB04]		; DC 04 AB
.ACCU 8
	sep #$E3		; E2 E3
	cmp ($85.b,S),Y		; D3 85
	brk $B3.b		; 00 B3
	brk $78.b		; 00 78
	cop $87.b		; 02 87
	bpl  75.b		; 10 4B
	trb $7B.b		; 14 7B
	bra -113.b		; 80 8F
	bvc  40.b		; 50 28
	trb $06.b		; 14 06
	sta [$8F.b]		; 87 8F
	eor $77.b,X		; 55 77
	and #$C9.b		; 29 C9
	adc [$6A.b],Y		; 77 6A
	eor #$B2.b		; 49 B2
	tda		; 7B
	bit #$4E.b		; 89 4E
	ora $786D.w		; 0D 6D 78
	bra   7.b		; 80 07
	tay		; A8
	sta ($44.b)		; 92 44
	bra  28.b		; 80 1C
	ldx $9400.w,Y		; BE 00 94
	php		; 08
	lda ($10.b,X)		; A1 10
	sta ($20.b)		; 92 20
	sta [$64.b],Y		; 97 64
	nop		; EA
	bit $E5BA.w		; 2C BA E5
	ora $7EE8.w,X		; 1D E8 7E
	ldy $E69D.w		; AC 9D E6
	phd		; 0B
	sbc $E794.w		; ED 94 E7
	txy		; 9B
	brk $D3.b		; 00 D3
	brk $1A.b		; 00 1A
	brk $07.b		; 00 07
	bmi  87.b		; 30 57
	brk $15.b		; 00 15
	pha		; 48
	ora ($00.b)		; 12 00
	clc		; 18
	ora ($7E.b,X)		; 01 7E
	phx		; DA
	pld		; 2B
	stz $EC.b,X		; 74 EC
	cmp $1B32DE.l,X		; DF DE 32 1B
	jsr ($4AD9.w,X)		; FC D9 4A
	bcs  19.b		; B0 13
	ora [$2F.b]		; 07 2F
	rol $01.b,X		; 36 01
	phb		; 8B
	brk $24.b		; 00 24
	bpl -59.b		; 10 C5
	php		; 08
	ora ($02.b),Y		; 11 02
	lda $10.b		; A5 10
	tsb $94E0.w		; 0C E0 94
	rti		; 40

	ora ($56.b,S),Y		; 13 56
	jmp ($8360.w,X)		; 7C 60 83
	eor $9C.b,S		; 43 9C
	cmp $A8B0.w,X		; DD B0 A8
	stz $4863.w		; 9C 63 48
	ldx $33.b,Y		; B6 33
	tyx		; BB
	and $9F80.w,Y		; 39 80 9F
	brk $9C.b		; 00 9C
	jsr $00A2.w		; 20 A2 00
	asl $41.b,X		; 16 41
	stz $4900.w		; 9C 00 49
	brk $54.b		; 00 54
	brk $C0.b		; 00 C0
	bpl  32.b		; 10 20
	php		; 08
	and ($68.b,X)		; 21 68
	tsx		; BA
	sbc $DA.b,S		; E3 DA
	dec $41.b		; C6 41
	bvc  48.b		; 50 30
	clv		; B8
	trb $AF70.w		; 1C 70 AF
	rti		; 40

	sbc [$00.b],Y		; F7 00
	sta [$00.b],Y		; 97 00
	trb $3100.w		; 1C 00 31
	php		; 08
	lda [$08.b]		; A7 08
	adc [$00.b]		; 67 00
	sta $AE7320.l		; 8F 20 73 AE
	lda ($1F.b,X)		; A1 1F
	asl $EF.b,X		; 16 EF
	stx $33.b,Y		; 96 33
	bcs  48.b		; B0 30
	inc $328A.w		; EE 8A 32
	.db $42, $EA		; 42 EA
	ora ($EA.b,X)		; 01 EA
	cmp $EEFE21.l,X		; DF 21 FE EE
	xce		; FB
	stx $FF.b,Y		; 96 FF
	ldy $8AEF.w,X		; BC EF 8A
	sbc $F2.b,X		; F5 F2
	sbc $FF15.w,X		; FD 15 FF
	beq 114.b		; F0 72
	jmp $E2D563.l		; 5C 63 D5 E2
	eor ($62.b,S),Y		; 53 62
	sbc $9EDF.w		; ED DF 9E
	php		; 08
	bit $B4.b,X		; 34 B4
	cmp ($11.b,X)		; C1 11
	bvs -113.b		; 70 8F
	rti		; 40

	lda $423FC0.l,X		; BF C0 3F 42
	lda $32CD.w,X		; BD CD 32
	php		; 08
	sbc [$34.b],Y		; F7 34
	wai		; CB
	ora ($FE.b,X)		; 01 FE
	lda $694C.w		; AD 4C 69
	ror $070D.w,X		; 7E 0D 07
	adc $CEBA43.l,X		; 7F 43 BA CE
	tsx		; BA
	cpy $C8AA.w		; CC AA C8
	adc [$C1.b]		; 67 C1
	tsb $68F3.w		; 0C F3 68
	sta [$05.b],Y		; 97 05
	plx		; FA
	eor $BC.b,S		; 43 BC
	txa		; 8A
	adc $88.b,X		; 75 88
	adc [$88.b],Y		; 77 88
	adc [$41.b],Y		; 77 41
	ldx $4DEA.w,Y		; BE EA 4D
	eor [$6C.b],Y		; 57 6C
	inc $1157.w,X		; FE 57 11
	adc ($AD.b),Y		; 71 AD
	cmp $CCAA.w		; CD AA CC
	plb		; AB
	cpx $A4AF.w		; EC AF A4
	pha		; 48
	lda [$44.b],Y		; B7 44
	tyx		; BB
	lsr $A9.b,X		; 56 A9
	ora ($EE.b),Y		; 11 EE
	sta $8872.w		; 8D 72 88
	adc [$A8.b],Y		; 77 A8
	eor [$A4.b],Y		; 57 A4
	tad		; 5B
	txs		; 9A
	trb $7645.w		; 1C 45 76
	eor $A6.b,X		; 55 A6
	stz $1723.w		; 9C 23 17
	ora $E626.w,Y		; 19 26 E6
	cop $84.b		; 02 84
	tyx		; BB
	cmp $E718.w,X		; DD 18 E7
	mvp $04,$BB		; 44 BB 04
	xce		; FB
	brk $FF.b		; 00 FF
	ora ($EE.b),Y		; 11 EE
	rol $D9.b		; 26 D9
	brk $FF.b		; 00 FF
	tya		; 98
	ror $C2.b		; 66 C2
	ora $0565.w		; 0D 65 05
	pea $0C12.w		; F4 12 0C
	bcc  88.b		; 90 58
	adc $CA.b		; 65 CA
	jmp ($9137.w,X)		; 7C 37 91
	lda $39.b,S		; A3 39
	bmi -49.b		; 30 CF
	bit $DA.b		; 24 DA
	sta ($6E.b,X)		; 81 6E
	and ($DE.b,X)		; 21 DE
	bvc -114.b		; 50 8E
	ora #$82.b		; 09 82
	trb $EA.b		; 14 EA
	rti		; 40

	stx $6C38.w		; 8E 38 6C
	and [$F0.b],Y		; 37 F0
	ldy $D6.b,X		; B4 D6
	bit $0F.b		; 24 0F
	ror $4FA8.w		; 6E A8 4F
	.db $62, $C0, $90		; 62 C0 90
	cpx $B10C.w		; EC 0C B1
	asl $0F.b		; 06 0F
	brk $2D.b		; 00 2D
	cop $B4.b		; 02 B4
	phk		; 4B
	ora ($44.b,S),Y		; 13 44
	ora $C3A4.w,Y		; 19 A4 C3
	bit $8172.w		; 2C 72 81
	dec $C251.w,X		; DE 51 C2
	eor $4E3C.w		; 4D 3C 4E
	plb		; AB
	cmp $EBA5DA.l		; CF DA A5 EB
	sta $7DD2.w,X		; 9D D2 7D
	inc A		; 1A
	phx		; DA
	ror $F281.w		; 6E 81 F2
	brk $25.b		; 00 25
	bcc  57.b		; 90 39
	brk $1A.b		; 00 1A
	rti		; 40

	eor $20.b,S		; 43 20
	rti		; 40

	ldx $27.b		; A6 27
	rti		; 40

	cpy $71.b		; C4 71
	bpl  32.b		; 10 20
	sta $072E9F.l		; 8F 9F 2E 07
	sty $85.b		; 84 85
	sty $BC.b,X		; 94 BC
	sta [$D3.b],Y		; 97 D3
	php		; 08
	and $0C.b,S		; 23 0C
	sta $9B.b,S		; 83 9B
	mvp $00,$62		; 44 62 00
	tsx		; BA
	eor ($54.b,X)		; 41 54
	rol A		; 2A
	.db $42, $21		; 42 21
	plp		; 28
	mvp $0A,$D4		; 44 D4 0A
	mvn $4D,$37		; 54 37 4D
	ldx $B943.w,Y		; BE 43 B9
	bvc  92.b		; 50 5C
	cmp [$21.b],Y		; D7 21
	ror $45.b,X		; 76 45
	plx		; FA
	cmp $FEA8.w		; CD A8 FE
	iny		; C8
	brk $49.b		; 00 49
	jsr $3244.w		; 20 44 32
	lda ($02.b,X)		; A1 02
	cmp $12AC10.l		; CF 10 AC 12
	jsr $0112.w		; 20 12 01
	cop $9C.b		; 02 9C
	asl $712E.w,X		; 1E 2E 71
	ldy #$59F3.w		; A0 F3 59
	jmp $9F7FB3.l		; 5C B3 7F 9F
	bit $54E7.w,X		; 3C E7 54
	clv		; B8
	.db $62, $F1, $00		; 62 F1 00
	txa		; 8A
	tsb $88.b		; 04 88
	trb $B3.b		; 14 B3
	brk $90.b		; 00 90
	brk $D7.b		; 00 D7
	brk $AA.b		; 00 AA
	ora ($8D.b,X)		; 01 8D
	bpl  91.b		; 10 5B
	xba		; EB
	eor [$84.b],Y		; 57 84
	txa		; 8A
	sta $EC1416.l,X		; 9F 16 14 EC
	cpy #$22EA.w		; C0 EA 22
	bpl  94.b		; 10 5E
	tax		; AA
	adc ($04.b,X)		; 61 04
	bpl 122.b		; 10 7A
	ora ($42.b,X)		; 01 42
	jsr $00EF.w		; 20 EF 00
	inc $DD01.w,X		; FE 01 DD
	brk $A1.b		; 00 A1
	lsr $9E.b		; 46 9E
	brk $0D.b		; 00 0D
	.db $82, $8A, $E6		; 82 8A E6
	bit $ABBA.w		; 2C BA AB
	ldy $A8.b		; A4 A8
	dex		; CA
	stx $A4.b,Y		; 96 A4
	lda $B3.b,X		; B5 B3
	ldx #$5527.w		; A2 27 55
	plp		; 28
	clc		; 18
	and ($45.b,X)		; 21 45
	bra  27.b		; 80 1B
	rti		; 40

	and ($04.b),Y		; 31 04
	eor $004C10.l		; 4F 10 4C 00
	cld		; D8
	brk $8C.b		; 00 8C
	bpl -100.b		; 10 9C
	and $1243.w,Y		; 39 43 12
	ora $478E.w,Y		; 19 8E 47
	phy		; 5A
	bit #$68.b		; 89 68
	trb $B3.b		; 14 B3
	eor $A9.b,X		; 55 A9
	sbc [$08.b]		; E7 08
.ACCU 16
	rep #$24		; C2 24
	sbc $7110.w		; ED 10 71
	brk $87.b		; 00 87
	plp		; 28
	sta [$00.b],Y		; 97 00
	tsb $5642.w		; 0C 42 56
	brk $ED.b		; 00 ED
	sta $129166.l		; 8F 66 91 12
	cpx $4102.w		; EC 02 41
	ora $A7D8.w		; 0D D8 A7
	rol $2004.w,X		; 3E 04 20
	asl $38.b		; 06 38
	bvs   0.b		; 70 00
	ror $1300.w		; 6E 00 13
	ldy #$40BE.w		; A0 BE 40
	and [$10.b]		; 27 10
	cmp $00.b		; C5 00
	cmp $22C500.l,X		; DF 00 C5 22
	asl $CA11.w		; 0E 11 CA
	iny		; C8
	cpx #$F284.w		; E0 84 F2
	ora $892996.l		; 0F 96 29 89
	tas		; 1B
	asl $FA.b,X		; 16 FA
	bvs -40.b		; 70 D8
	inc $18.b		; E6 18
	and [$00.b],Y		; 37 00
	tad		; 5B
	jsr $08F0.w		; 20 F0 08
	dec $10.b		; C6 10
	cpy $20.b		; C4 20
	ora $00.b		; 05 00
	and [$08.b]		; 27 08
	plb		; AB
	stz $67.b		; 64 67
	lda $A40D.w		; AD 0D A4
	sed		; F8
	inc A		; 1A
	.db $62, $80, $AE		; 62 80 AE
	rti		; 40

	trb $7E40.w		; 1C 40 7E
	sbc ($70.b,X)		; E1 70
	cmp $9CDF6D.l,X		; DF 6D DF 9C
	xce		; FB
	dec A		; 3A
	sbc [$B8.b]		; E7 B8
	sbc $A8FF89.l,X		; FF 89 FF A8
	sbc $D99F64.l,X		; FF 64 9F D9
	ora ($7F.b),Y		; 11 7F
	sta ($8E.b),Y		; 91 8E
	sbc ($DB.b,S),Y		; F3 DB
.ACCU 8
.INDEX 8
	sep #$77		; E2 77
	php		; 08
	inc $F739.w		; EE 39 F7
	bpl  13.b		; 10 0D
	cmp ($11.b,X)		; C1 11
	inc $EE11.w		; EE 11 EE
	.db $82, $7D, $C2		; 82 7D C2
	and $FF00.w,X		; 3D 00 FF
	plp		; 28
	cmp [$10.b],Y		; D7 10
	sbc $A8FE01.l		; EF 01 FE A8
	and ($9A.b,S),Y		; 33 9A
	ora [$4F.b]		; 07 4F
	ora ($7E.b),Y		; 11 7E
	ora ($AA.b)		; 12 AA
	dex		; CA
	ora $6DD8.w,Y		; 19 D8 6D
	adc ($93.b),Y		; 71 93
	jsl $02DF20.l		; 22 20 DF 02
	sbc $FE01.w,X		; FD 01 FE
	ora ($ED.b)		; 12 ED
	txa		; 8A
	adc $18.b,X		; 75 18
	sbc [$61.b]		; E7 61
	stz $FD02.w,X		; 9E 02 FD
	eor ($9C.b)		; 52 9C
	ldy $EE.b		; A4 EE
	ror $0D.b,X		; 76 0D
	sbc ($8B.b),Y		; F1 8B
	sei		; 78
	pld		; 2B
	sbc $68.b		; E5 68
	beq  35.b		; F0 23
	cmp $DA.b		; C5 DA
	bpl -17.b		; 10 EF
	ldy $5B.b		; A4 5B
	tsb $FB.b		; 04 FB
	sta ($7E.b,X)		; 81 7E
	plp		; 28
	cmp [$60.b],Y		; D7 60
	sta $C0DF20.l,X		; 9F 20 DF C0
	and $7A88A2.l,X		; 3F A2 88 7A
	sbc ($F3.b,X)		; E1 F3
	trb $0CEB.w		; 1C EB 0C
	cmp $A30A.w,Y		; D9 0A A3
	adc $E5.b		; 65 E5
	ora ($26.b),Y		; 11 26
	eor $80.b,S		; 43 80
	adc $109F60.l,X		; 7F 60 9F 10
	sbc $08F708.l		; EF 08 F7 08
	sbc [$20.b],Y		; F7 20
	dec $FE01.w,X		; DE 01 FE
	cop $FC.b		; 02 FC
	ldy $8E72.w		; AC 72 8E
	cpx #$6D.b		; E0 6D
	ora ($7F.b,X)		; 01 7F
	tad		; 5B
	rep #$0C		; C2 0C
	stx $AD.b,Y		; 96 AD
	and ($30.b,X)		; 21 30
	stx $89.b		; 86 89
	tsb $8B.b		; 04 8B
	sta ($5E.b,X)		; 81 5E
	eor ($AE.b),Y		; 51 AE
	ror $6180.w		; 6E 80 61
	stx $94.b,Y		; 96 94
	.db $62, $80, $4F		; 62 80 4F
	brk $7E.b		; 00 7E
	adc $4454A9.l,X		; 7F A9 54 44
	ora $E32D.w,Y		; 19 2D E3
	lda ($49.b,X)		; A1 49
	pld		; 2B
	eor $168F.w		; 4D 8F 16
	adc $E0.b,X		; 75 E0
	eor $8472.w,X		; 5D 72 84
	rol $89.b,X		; 36 89
	eor ($80.b,S),Y		; 53 80
	xce		; FB
	tsb $50.b		; 04 50
	sty $71.b		; 84 71
	brk $1A.b		; 00 1A
	sta ($02.b,X)		; 81 02
	ldy #$04.b		; A0 04
	pei ($95.b)		; D4 95
	cmp $1BDD.w,Y		; D9 DD 1B
	sty $09.b		; 84 09
	txy		; 9B
	stz $7928.w,X		; 9E 28 79
	rol A		; 2A
	plb		; AB
	bvc -77.b		; 50 B3
	pld		; 2B
	rti		; 40

	asl $20.b		; 06 20
	cpx #$04.b		; E0 04
	inc $00.b,X		; F6 00
	adc ($00.b,X)		; 61 00
	ldy $02.b		; A4 02
	stz $00.b,X		; 74 00
	jmp $B420.w		; 4C 20 B4
	sta $13.b,X		; 95 13
	stx $11.b		; 86 11
	cmp $24.b		; C5 24
	dey		; 88
	adc [$25.b]		; 67 25
	inc $37.b,X		; F6 37
	txa		; 8A
	ora #$8A.b		; 09 8A
	plp		; 28
	jmp $3922.w		; 4C 22 39
	mvp $56,$28		; 44 28 56
	eor [$20.b],Y		; 57 20
	dey		; 88
	eor ($92.b)		; 52 92
	pha		; 48
	inc $10.b		; E6 10
	cmp [$20.b],Y		; D7 20
	stz $AACA.w		; 9C CA AA
	asl $0167.w,X		; 1E 67 01
	adc ($23.b,S),Y		; 73 23
	rts		; 60

	brk $04.b		; 00 04
	and [$81.b],Y		; 37 81
	ora $48B4.w,Y		; 19 B4 48
	ora $32.b		; 05 32
	sbc $10.b,S		; E3 10
	cpx $FE12.w		; EC 12 FE
	brk $DE.b		; 00 DE
	and ($C8.b,X)		; 21 C8
	brk $C6.b		; 00 C6
	jsr $40B7.w		; 20 B7 40
	ldy $02.b,X		; B4 02
	ora ($3E.b),Y		; 11 3E
	ror A		; 6A
	trb $74.b		; 14 74
	phb		; 8B
	eor $D61C.w,X		; 5D 1C D6
	and [$F2.b],Y		; 37 F2
	ora $2E13.w,X		; 1D 13 2E
	cmp ($3E.b,X)		; C1 3E
	sta ($66.b,X)		; 81 66
	sbc #$12.b		; E9 12
	mvn $EB,$21		; 54 21 EB
	brk $C0.b		; 00 C0
	and #$D2.b		; 29 D2
	jsr $20D3.w		; 20 D3 20
	and ($40.b)		; 32 40
	lda $C5.b,S		; A3 C5
	bit #$29.b		; 89 29
	ldx $64.b,Y		; B6 64
	stx $6A.b,Y		; 96 6A
	lsr A		; 4A
	jmp ($2A4E.w,X)		; 7C 4E 2A
	ora [$58.b],Y		; 17 58
	and [$98.b]		; 27 98
	sec		; 38
	cop $D6.b		; 02 D6
	jsr $00BB.w		; 20 BB 00
	sta $40.b,X		; 95 40
	cmp ($02.b,X)		; C1 02
	sta $40.b,X		; 95 40
	sta $62.b		; 85 62
	ldx $A8CC.w		; AE CC A8
	inc $9841.w		; EE 41 98
	ora [$A3.b],Y		; 17 A3
	tsb $0D.b		; 04 0D
	jmp.w [$1BA7]		; DC A7 1B
	tda		; 7B
	bra 122.b		; 80 7A
	and [$00.b],Y		; 37 00
	ora ($06.b),Y		; 11 06
	ror $01.b		; 66 01
	ora $B240.w,X		; 1D 40 B2
	rti		; 40

	cli		; 58
	brk $84.b		; 00 84
	rti		; 40

	sta $00.b		; 85 00
	sta ($9F.b,S),Y		; 93 9F
	sta $76.b		; 85 76
	eor $37BA.w,Y		; 59 BA 37
	cmp [$E8.b]		; C7 E8
	sbc [$54.b]		; E7 54
	rts		; 60

	pla		; 68
	tya		; 98
	ldx #$6A.b		; A2 6A
	jsl $108944.l		; 22 44 89 10
	eor $00.b		; 45 00
	sec		; 38
	brk $58.b		; 00 58
	brk $9F.b		; 00 9F
	jsr $4027.w		; 20 27 40
	sta ($14.b,X)		; 81 14
	adc #$58.b		; 69 58
	sbc #$F6.b		; E9 F6
	and $852F.w,X		; 3D 2F 85
	sta $2FD5.w,X		; 9D D5 2F
	cmp [$2F.b]		; C7 2F
	tya		; 98
	sbc [$01.b]		; E7 01
	ora #$81.b		; 09 81
	rol $01.b,X		; 36 01
	tsb $00D1.w		; 0C D1 00
	.db $62, $00, $D0		; 62 00 D0
	brk $D0.b		; 00 D0
	brk $18.b		; 00 18
	brk $F6.b		; 00 F6
	brk $0B.b		; 00 0B
	jmp $9D15DB.l		; 5C DB 15 9D
	ror $84.b		; 66 84
	eor $1EA6.w		; 4D A6 1E
	pha		; 48
	pla		; 68
	clc		; 18
	rol $1171.w		; 2E 71 11
	lda $00.b,S		; A3 00
	dex		; CA
	jsr $009D.w		; 20 9D 00
	and ($C8.b)		; 32 C8
	cmp ($30.b,X)		; C1 30
	sta [$00.b],Y		; 97 00
	cmp ($10.b,X)		; C1 10
	inc $BA00.w		; EE 00 BA
	lda ($7A.b,X)		; A1 7A
	stz $DB.b		; 64 DB
	adc $97.b,X		; 75 97
	bvc  80.b		; 50 50
	sta ($2B.b,X)		; 81 2B
	bcs  63.b		; B0 3F
	lda $ED66.w		; AD 66 ED
	inx		; E8
	cmp $FDDFFC.l,X		; DF FC DF FD
	inc $EF5C.w		; EE 5C EF
	bit #$FF.b		; 89 FF
	ldy $AFFF.w,X		; BC FF AF
	dec $FC.b,X		; D6 FC
	sbc $3D8909.l,X		; FF 09 89 3D
	clc		; 18
	cpx $711B.w		; EC 1B 71
	php		; 08
	stp		; DB
	sep #$0E		; E2 0E
	sbc $FF.b,S		; E3 FF
	sta ($C9.b),Y		; 91 C9
	ora ($09.b),Y		; 11 09
	inc $18.b,X		; F6 18
	sbc [$08.b]		; E7 08
	sbc [$00.b],Y		; F7 00
	sbc $023DC2.l,X		; FF C2 3D 02
	sbc $6E91.w,X		; FD 91 6E
	ora ($FE.b,X)		; 01 FE
	xce		; FB
	cop $4B.b		; 02 4B
	bit $19.b,X		; 34 19
	cld		; D8
	tax		; AA
	dex		; CA
	ror $5F1E.w,X		; 7E 1E 5F
	ora $9E.b,S		; 03 9E
	ora $A0.b,S		; 03 A0
	and ($02.b,S),Y		; 33 02
	sbc $FF00.w,X		; FD 00 FF
	clc		; 18
	sbc [$8A.b]		; E7 8A
	adc $1E.b,X		; 75 1E
	sbc ($03.b,X)		; E1 03
	jsr ($FD02.w,X)		; FC 02 FD
	jsr $C3DF.w		; 20 DF C3
	cmp $4173.w,Y		; D9 73 41
	sbc ($70.b,X)		; E1 70
	eor $B93A.w		; 4D 3A B9
	ora #$26.b		; 09 26
	sbc $A4.b		; E5 A4
	dec $9C52.w		; CE 52 9C
	cmp ($3E.b,X)		; C1 3E
	eor ($BE.b,X)		; 41 BE
	rts		; 60

	sta $09F708.l,X		; 9F 08 F7 09
	inc $24.b,X		; F6 24
	stp		; DB
	sty $7B.b		; 84 7B
	bpl -17.b		; 10 EF
	stz $C0.b,X		; 74 C0
	bvs -60.b		; 70 C4
	and $47.b,S		; 23 47
	lda #$59.b		; A9 59
	txa		; 8A
	eor $87B1.w		; 4D B1 87
	plx		; FA
	mvp $CA,$A2		; 44 A2 CA
	rti		; 40

	lda $03BF40.l,X		; BF 40 BF 03
	jsr ($F609.w,X)		; FC 09 F6
	php		; 08
	sbc [$81.b],Y		; F7 81
	ror $BF40.w,X		; 7E 40 BF
	.db $82, $7D, $7B		; 82 7D 7B
	bcc 124.b		; 90 7C
	sty $C3.b,X		; 94 C3
	clv		; B8
	.db $42, $8B		; 42 8B
	lsr A		; 4A
	sbc $D128.w,Y		; F9 28 D1
	and $C3.b,S		; 23 C3
	eor ($1F.b),Y		; 51 1F
	tsb $EB.b		; 04 EB
	ora $6A.b,X		; 15 6A
	cpy #$37.b		; C0 37
	jsl $374854.l		; 22 54 48 37
	bit $DA.b		; 24 DA
	ora $669170.l		; 0F 70 91 66
	rti		; 40

	bvc  24.b		; 50 18
	ora ($C0.b,S),Y		; 13 C0
	cmp $026F.w		; CD 6F 02
	ora ($E3.b)		; 12 E3
	adc $ECF883.l		; 6F 83 F8 EC
	jmp ($AF1A.w,X)		; 7C 1A AF
	brk $78.b		; 00 78
	sta $A2.b		; 85 A2
	trb $FF.b		; 14 FF
	brk $06.b		; 00 06
	clv		; B8
	eor $158220.l,X		; 5F 20 82 15
	stz $83.b,X		; 74 83
	stz $F4.b,X		; 74 F4
	asl A		; 0A
	rtl		; 6B

	plp		; 28
	ora $9DBA.w,Y		; 19 BA 9D
	brk $B9.b		; 00 B9
	sed		; F8
	asl $7997.w,X		; 1E 97 79
	and $CB.b		; 25 CB
	ora $209400.l		; 0F 00 94 20
	cpx $02.b		; E4 02
	.db $42, $21		; 42 21
	rti		; 40

	stx $C0.b		; 86 C0
	and ($84.b,X)		; 21 84
	cop $14.b		; 02 14
	rts		; 60

	cop $0B.b		; 02 0B
	plx		; FA
	adc $A8.b,S		; 63 A8
	ora ($14.b,S),Y		; 13 14
	rol $4854.w		; 2E 54 48
	lsr $80.b		; 46 80
	lsr $BD.b,X		; 56 BD
.INDEX 8
	sep #$95		; E2 95
	stz $89.b,X		; 74 89
	jmp.w [$EC00]		; DC 00 EC
	brk $D0.b		; 00 D0
	and ($E7.b,X)		; 21 E7
	bpl 127.b		; 10 7F
	brk $42.b		; 00 42
	ora ($4A.b,X)		; 01 4A
	bmi -16.b		; 30 F0
	sec		; 38
	lda $3F.b		; A5 3F
	ror $57.b		; 66 57
	eor $4F.b,S		; 43 4F
	ora [$A5.b],Y		; 17 A5
	stz $58.b,X		; 74 58
	clc		; 18
	rtl		; 6B

	sbc $04C3CA.l		; EF CA C3 04
	cpy $00.b		; C4 00
	dex		; CA
	jsr $00B2.w		; 20 B2 00
	trb $A642.w		; 1C 42 A6
	ora ($94.b,X)		; 01 94
	jsr $0174.w		; 20 74 01
	bmi -64.b		; 30 C0
	sta ($3E.b,X)		; 81 3E
	adc $1B.b,S		; 63 1B
	pei ($90.b)		; D4 90
	eor $0D.b,X		; 55 0D
	sei		; 78
	tsa		; 3B
	inc $04.b		; E6 04
	tya		; 98
	xba		; EB
	and $438000.l,X		; 3F 00 80 43
	rts		; 60

	stz $01EE.w		; 9C EE 01
	sbc ($00.b)		; F2 00
	cpy #$04.b		; C0 04
	ror A		; 6A
	sta ($04.b),Y		; 91 04
	ora ($F1.b)		; 12 F1
	bmi  30.b		; 30 1E
	ora $6D88.w,Y		; 19 88 6D
	ldx $5A.b,Y		; B6 5A
	dec $EB.b,X		; D6 EB
	phb		; 8B
	cld		; D8
	lda ($68.b,X)		; A1 68
	stx $4FF2.w		; 8E F2 4F
	bra -58.b		; 80 C6
	jsr $8012.w		; 20 12 80
	sta $60.b		; 85 60
	mvn $05,$00		; 54 00 05
	jsl $090097.l		; 22 97 00 09
	bit $81.b		; 24 81
	adc #$FF.b		; 69 FF
	rol $3FC8.w,X		; 3E C8 3F
	cmp $20.b,X		; D5 20
	asl $75.b,X		; 16 75
	bpl -52.b		; 10 CC
	rol $8A97.w		; 2E 97 8A
	adc $96.b,S		; 63 96
	brk $45.b		; 00 45
	bra -64.b		; 80 C0
	bpl  95.b		; 10 5F
	bra -118.b		; 80 8A
	rti		; 40

	and $50.b,S		; 23 50
	pla		; 68
	bra -100.b		; 80 9C
	jsr $23B7.w		; 20 B7 23
	rti		; 40

	stz $10.b,X		; 74 10
	ora ($AA.b),Y		; 11 AA
.ACCU 8
.INDEX 8
	sep #$34		; E2 34
	xce		; FB
	cmp ($2E.b),Y		; D1 2E
	sta $46D518.l,X		; 9F 18 D5 46
	cld		; D8
	tsb $8B.b		; 04 8B
	bit $EA.b		; 24 EA
	tsb $1F.b		; 04 1F
	rti		; 40

	tsb $02.b		; 04 02
	cmp ($08.b),Y		; D1 08
	sbc $B902.w		; ED 02 B9
	brk $43.b		; 00 43
	asl $F898.w,X		; 1E 98 F8
	cmp [$36.b]		; C7 36
	eor $23.b,X		; 55 23
	ora $A4ED.w		; 0D ED A4
	sty $69.b		; 84 69
	ply		; 7A
	eor $00E34C.l,X		; 5F 4C E3 00
	ora [$00.b]		; 07 00
	iny		; C8
	ora ($DC.b,X)		; 01 DC
	brk $12.b		; 00 12
	brk $73.b		; 00 73
	php		; 08
	sta $00.b		; 85 00
	lda ($00.b,S),Y		; B3 00
	eor $0F20.w,X		; 5D 20 0F
	rol A		; 2A
	cli		; 58
	cpy $8F16.w		; CC 16 8F
	mvn $89,$1D		; 54 1D 89
	rol $41F2.w,X		; 3E F2 41
	ora $07.b,S		; 03 07
	cmp ($2C.b,S),Y		; D3 2C
	cmp $00.b,X		; D5 00
	and $10.b,S		; 23 10
	bvs -128.b		; 70 80
	beq   2.b		; F0 02
	cmp ($00.b,X)		; C1 00
	ldx $F800.w,Y		; BE 00 F8
	brk $CB.b		; 00 CB
	ldy $42.b		; A4 42
	ldx #$A2.b		; A2 A2
	lsr $886E.w		; 4E 6E 88
	and ($BA.b),Y		; 31 BA
	and $3F17C6.l,X		; 3F C6 17 3F
	cmp $7F9216.l		; CF 16 92 7F
	ldx #$FD.b		; A2 FD
	dec $9AFD.w		; CE FD 9A
	sbc [$B4.b],Y		; F7 B4
	sbc $97FBC6.l,X		; FF C6 FB 97
	inc $FF76.w,X		; FE 76 FF
	cmp ($11.b,X)		; C1 11
	ldy $34.b,X		; B4 34
	stz $ED18.w,X		; 9E 18 ED
	cmp $D54253.l,X		; DF 53 42 D5
	.db $62, $5C, $63		; 62 5C 63
	cmp ($52.b),Y		; D1 52
	ora ($FE.b,X)		; 01 FE
	bit $CB.b,X		; 34 CB
	clc		; 18
	sbc [$CD.b]		; E7 CD
	and ($42.b)		; 32 42
	lda $BF40.w,X		; BD 40 BF
	rti		; 40

	lda $4FAF50.l,X		; BF 50 AF 4F
	cmp #$AA.b		; C9 AA
	iny		; C8
	lda ($D4.b)		; B2 D4
	tsx		; BA
	dec $467E.w		; CE 7E 46
	eor $0F.b		; 45 0F
	adc #$7E.b		; 69 7E
	lda $494C.w		; AD 4C 49
	ldx $88.b,Y		; B6 88
	adc [$90.b],Y		; 77 90
	adc $46758A.l		; 6F 8A 75 46
	lda $FA05.w,Y		; B9 05 FA
	pla		; 68
	sta [$0C.b],Y		; 97 0C
	sbc ($A7.b,S),Y		; F3 A7
	bcc -121.b		; 90 87
	pea $6496.w		; F4 96 64
	lda $65.b,X		; B5 65
	and #$75.b		; 29 75
	inc $4F56.w,X		; FE 56 4F
	stz $EA.b,X		; 74 EA
	eor $80.b		; 45 80
	adc $047B84.l,X		; 7F 84 7B 04
	xce		; FB
	and $DA.b		; 25 DA
	and ($DE.b,X)		; 21 DE
	lsr $A9.b,X		; 56 A9
	mvp $40,$BB		; 44 BB 40
	lda $E2DCBA.l,X		; BF BA DC E2
	bit $06.b		; 24 06
	rol $57.b		; 26 57
	ora $DC.b,S		; 03 DC
	and [$69.b]		; 27 69
	eor $9A6E49.l		; 4F 49 6E 9A
	sty $98.b		; 84 98
	adc [$20.b]		; 67 20
	cmp $03F906.l,X		; DF 06 F9 03
	jsr ($FB04.w,X)		; FC 04 FB
	eor #$B6.b		; 49 B6
	pha		; 48
	lda [$80.b],Y		; B7 80
	adc $A610DE.l,X		; 7F DE 10 A6
	brk $3E.b		; 00 3E
	tsb $F4E1.w		; 0C E1 F4
	sbc $A631.w		; ED 31 A6
	tsb $55.b		; 04 55
	rol $4C.b		; 26 4C
	sta $E31C.w,X		; 9D 1C E3
	trb $EB.b		; 14 EB
	sta $6872.w		; 8D 72 68
	ora [$21.b],Y		; 17 21
	dec $38C7.w,X		; DE C7 38
	ora $FA.b		; 05 FA
	jsl $A9DF51.l		; 22 51 DF A9
	pea $FD85.w		; F4 85 FD
	cmp ($88.b,X)		; C1 88
	ldy $41F2.w		; AC F2 41
	phb		; 8B
	lda ($BE.b,S),Y		; B3 BE
	bit $DC.b		; 24 DC
	clv		; B8
	bne  38.b		; D0 26
	cpy #$3B.b		; C0 3B
	rol A		; 2A
	trb $D1.b		; 14 D1
	jsl $4C9926.l		; 22 26 99 4C
	bmi  90.b		; 30 5A
	sta ($93.b,X)		; 81 93
	mvp $98,$5B		; 44 5B 98
	lda $6B33.w,Y		; B9 33 6B
	tsb $B9.b		; 04 B9
	inc $A3.b		; E6 A3
	adc $C1C67D.l		; 6F 7D C6 C1
	lda $6489A6.l		; AF A6 89 64
	ora $49.b,S		; 03 49
	sty $5A.b		; 84 5A
	lda ($38.b,X)		; A1 38
	ora $91.b,S		; 03 91
	brk $2C.b		; 00 2C
	ora ($91.b),Y		; 11 91
	.db $62, $C6, $39		; 62 C6 39
	and $54.b,S		; 23 54
	cmp $AD.b,S		; C3 AD
	sta $77.b,X		; 95 77
	txy		; 9B
	dec $28.b		; C6 28
	asl $BC.b,X		; 16 BC
	ldx $3E44.w,Y		; BE 44 3E
	eor [$42.b],Y		; 57 42
	tax		; AA
	eor ($42.b,X)		; 41 42
	bpl -120.b		; 10 88
	jsr $1128.w		; 20 28 11
	tay		; A8
	eor ($70.b,X)		; 41 70
	ora ($C1.b,X)		; 01 C1
	bpl -83.b		; 10 AD
	bpl 111.b		; 10 6F
	cpx $D868.w		; EC 68 D8
	cpy #$68.b		; C0 68
	rep #$CF		; C2 CF
	cmp ($A1.b)		; D2 A1
	plp		; 28
	sta $C63215.l,X		; 9F 15 32 C6
	eor [$56.b],Y		; 57 56
	sta ($26.b,X)		; 81 26
	ora ($16.b,X)		; 01 16
	lda ($30.b,X)		; A1 30
	tsb $DE.b		; 04 DE
	brk $60.b		; 00 60
	bpl -99.b		; 10 9D
	rts		; 60

	rol A		; 2A
	bcc  33.b		; 90 21
	inc $D176.w,X		; FE 76 D1
	rol A		; 2A
	sta $700B.w		; 8D 0B 70
	ora $E7F4C6.l		; 0F C6 F4 E7
	rol A		; 2A
	bvs -53.b		; 70 CB
	rol $8900.w,X		; 3E 00 89
	rol $7280.w		; 2E 80 72
	sta ($07.b,X)		; 81 07
	tay		; A8
	and $001880.l,X		; 3F 80 18 00
	sta $458200.l		; 8F 00 82 45
	tax		; AA
	cmp ($C6.b),Y		; D1 C6
	adc $AA.b,S		; 63 AA
	jmp ($E426.w)		; 6C 26 E4
	dec $E0.b,X		; D6 E0
	inx		; E8
	nop		; EA
	ora ($E7.b)		; 12 E7
	ror A		; 6A
	lda ($2E.b,S),Y		; B3 2E
	brk $0C.b		; 00 0C
	bcc -109.b		; 90 93
	rti		; 40

	bpl  11.b		; 10 0B
	stp		; DB
	tsb $55.b		; 04 55
	brk $18.b		; 00 18
	mvp $01,$6C		; 44 6C 01
	inc $ED.b		; E6 ED
	and $1E.b,X		; 35 1E
	sta ($C9.b)		; 92 C9
	pha		; 48
	phx		; DA
	adc ($78.b,S),Y		; 73 78
	iny		; C8
	and ($AB.b,S),Y		; 33 AB
	cpy $4F.b		; C4 4F
	dec $D6.b		; C6 D6
	brk $21.b		; 00 21
	cpy #$26.b		; C0 26
	bpl  65.b		; 10 41
	ldy $17.b		; A4 17
	dey		; 88
	dey		; 88
	stz $3B.b		; 64 3B
	brk $53.b		; 00 53
	plp		; 28
	eor [$E4.b],Y		; 57 E4
	cmp ($21.b),Y		; D1 21
	sta $20F90B.l		; 8F 0B F9 20
	adc $536F.w,Y		; 79 6F 53
	jsl $84E3B8.l		; 22 B8 E3 84
	adc $590219.l,X		; 7F 19 02 59
	stx $F2.b		; 86 F2
	tsb $4B.b		; 04 4B
	sty $F0.b,X		; 94 F0
	brk $DD.b		; 00 DD
	brk $1C.b		; 00 1C
	brk $80.b		; 00 80
	brk $24.b		; 00 24
	bvs   5.b		; 70 05
	bmi -93.b		; 30 A3
	sta $1D.b,S		; 83 1D
	sta $330B43.l		; 8F 43 0B 33
	lda $B566.w,X		; BD 66 B5
	sbc $8F9F.w		; ED 9F 8F
	brk $CF.b		; 00 CF
	brk $7C.b		; 00 7C
	brk $70.b		; 00 70
	brk $F4.b		; 00 F4
	brk $42.b		; 00 42
	bra  74.b		; 80 4A
	brk $60.b		; 00 60
	brk $38.b		; 00 38
	inc A		; 1A
	asl $06.b,X		; 16 06
	lda ($B9.b),Y		; B1 B9
	and [$B3.b]		; 27 B3
	ply		; 7A
	ora [$C0.b]		; 07 C0
	stx $8A.b		; 86 8A
	sty $B116.w		; 8C 16 B1
	sbc $00.b		; E5 00
	sbc $5600.w,Y		; F9 00 56
	php		; 08
	adc $F800.w		; 6D 00 F8
	brk $79.b		; 00 79
	brk $73.b		; 00 73
	brk $4E.b		; 00 4E
	brk $59.b		; 00 59
	cpx #$C7.b		; E0 C7
	and [$20.b]		; 27 20
	lsr $F7.b		; 46 F7
	bit $3C6A.w,X		; 3C 6A 3C
	stz $AC62.w		; 9C 62 AC
	ora $3C73.w,Y		; 19 73 3C
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	lda [$FE.b]		; A7 FE
	sbc [$FF.b]		; E7 FF
	sbc $68CF.w,X		; FD CF 68
	sbc [$E5.b],Y		; F7 E5
	sbc $F0F79F.l,X		; FF 9F F7 F0
	cmp $6AAC3C.l		; CF 3C AC 6A
	and $0C0A.w,X		; 3D 0A 0C
	phb		; 8B
	cmp $8D.b		; C5 8D
	adc $2E65.w		; 6D 65 2E
	jmp.w [$EBA3]		; DC A3 EB
	tsb $AC.b		; 04 AC
	cmp ($28.b,S),Y		; D3 28
	cmp [$88.b],Y		; D7 88
	sbc [$81.b],Y		; F7 81
	ror $F28D.w,X		; 7E 8D F2
	ldy $DB.b		; A4 DB
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	eor $AABA.w		; 4D BA AA
	pei ($A3.b)		; D4 A3
	cmp #$8BEF.w		; C9 EF 8B
	pld		; 2B
	stx $BC.b		; 86 BC
	plx		; FA
	cpy #$3519.w		; C0 19 35
	and ($08.b)		; 32 08
	sbc [$80.b],Y		; F7 80
	adc $8B7E81.l,X		; 7F 81 7E 8B
	stz $02.b,X		; 74 02
	sbc $47B8.w,X		; FD B8 47
	brk $FF.b		; 00 FF
	bmi -49.b		; 30 CF
	nop		; EA
	ora #$CCAB.w		; 09 AB CC
	ora ($C8.b,S),Y		; 13 C8
	ora $E3F338.l		; 0F 38 F3 E3
	dec $D9.b,X		; D6 D9
	ora $F435.w,Y		; 19 35 F4
	brk $08.b		; 00 08
	sbc [$88.b],Y		; F7 88
	adc [$00.b],Y		; 77 00
	sbc $E3F708.l,X		; FF 08 F7 E3
	trb $2FD0.w		; 1C D0 2F
	ora ($EE.b),Y		; 11 EE
	brk $FF.b		; 00 FF
	adc $47A1EA.l,X		; 7F EA A1 47
	rtl		; 6B

	adc ($A8.b,X)		; 61 A8
	lda [$14.b],Y		; B7 14
	and [$47.b]		; 27 47
	sta $33.b,X		; 95 33
	eor $8D.b,X		; 55 8D
	stx $956A.w		; 8E 6A 95
	ora ($FE.b,X)		; 01 FE
	adc ($9E.b,X)		; 61 9E
	ldy #$045F.w		; A0 5F 04
	xce		; FB
	ora $FA.b		; 05 FA
	ora ($EE.b),Y		; 11 EE
	sty $7F73.w		; 8C 73 7F
	tda		; 7B
	phd		; 0B
	mvp $B1,$1A		; 44 1A B1
	pld		; 2B
	lda ($1B.b)		; B2 1B
	.db $42, $EB		; 42 EB
	lda $A2.b,S		; A3 A2
	wai		; CB
	inx		; E8
	stx $2B.b		; 86 2B
	sty $00.b		; 84 00
	sbc $28CB14.l,X		; FF 14 CB 28
	cmp $32.b,X		; D5 32
	cmp $44B9.w		; CD B9 44
	.db $82, $75, $81		; 82 75 81
	ror $192A.w,X		; 7E 2A 19
	rol $8C8F.w,X		; 3E 8F 8C
	cmp $10F238.l,X		; DF 38 F2 10
	dec A		; 3A
	lda [$EC.b],Y		; B7 EC
	tyx		; BB
	bit $38B7.w		; 2C B7 38
	ror $5A81.w		; 6E 81 5A
	and ($80.b,X)		; 21 80
	adc ($1C.b),Y		; 71 1C
	ora ($41.b,X)		; 01 41
	sty $A6.b		; 84 A6
	eor ($1A.b),Y		; 51 1A
	cmp ($A4.b,X)		; C1 A4
	eor $61.b,S		; 43 61
	rol $C4.b		; 26 C4
	ldx $84.b		; A6 84
	tsx		; BA
	trb $27.b		; 14 27
	dec $57.b,X		; D6 57
	brk $C1.b		; 00 C1
	adc $E5C8.w,Y		; 79 C8 E5
	sbc [$90.b]		; E7 90
	phk		; 4B
	php		; 08
	adc ($85.b),Y		; 71 85
	bvc -100.b		; 50 9C
	eor ($60.b,X)		; 41 60
	dey		; 88
	rol $59.b		; 26 59
	cli		; 58
	lda [$5C.b]		; A7 5C
	brk $1D.b		; 00 1D
	lsr $DD.b		; 46 DD
	txs		; 9A
	clv		; B8
	lda $00.b,X		; B5 00
	ora [$B5.b],Y		; 17 B5
	txa		; 8A
	sty $49C8.w		; 8C C8 49
	eor $96D9.w		; 4D D9 96
	lda ($58.b,X)		; A1 58
	and ($44.b,X)		; 21 44
	dex		; CA
	brk $88.b		; 00 88
	ror $75.b		; 66 75
	brk $26.b		; 00 26
	eor ($32.b),Y		; 51 32
	bra -23.b		; 80 E9
	brk $59.b		; 00 59
	lsr $DD.b		; 46 DD
	bcc 120.b		; 90 78
	sbc ($6A.b,X)		; E1 6A
	stx $C7.b,Y		; 96 C7
	jsl $34F495.l		; 22 95 F4 34
	sty $C0.b,X		; 94 C0
	ldy #$18A1.w		; A0 A1 18
	and $081640.l		; 2F 40 16 08
	pha		; 48
	and $DD.b		; 25 DD
	jsr $030C.w		; 20 0C 03
	tda		; 7B
	bra  85.b		; 80 55
	asl A		; 0A
	lda [$D2.b]		; A7 D2
	stz $AE.b,X		; 74 AE
	trb $225C.w		; 1C 5C 22
	ldx $F276.w,Y		; BE 76 F2
	cmp $7E.b		; C5 7E
	adc ($1A.b,S),Y		; 73 1A
	jmp.w [$2D1A]		; DC 1A 2D
	bpl  84.b		; 10 54
	ora ($A3.b,X)		; 01 A3
	rti		; 40

	eor $14.b,S		; 43 14
	pld		; 2B
	tsb $C4.b		; 04 C4
	ora ($F7.b,X)		; 01 F7
	brk $64.b		; 00 64
	sta ($CD.b,X)		; 81 CD
	cmp $8A5D18.l		; CF 18 5D 8A
	adc $9D546A.l		; 6F 6A 54 9D
	clc		; 18
	and [$06.b],Y		; 37 06
	and #$C729.w		; 29 29 C7
	stx $10.b		; 86 10
	jsr $8122.w		; 20 22 81
	bpl -96.b		; 10 A0
	plb		; AB
	brk $AF.b		; 00 AF
	rti		; 40

	sbc $DD00.w,X		; FD 00 DD
	cop $38.b		; 02 38
	eor ($95.b,X)		; 41 95
	sbc ($56.b)		; F2 56
	cmp $DD.b		; C5 DD
.ACCU 16
.INDEX 16
	rep #$3B		; C2 3B
	ldx #$8D01.w		; A2 01 8D
	pea $CA3F.w		; F4 3F CA
	and ($D7.b,X)		; 21 D7
	ldy $0D.b		; A4 0D
	brk $66.b		; 00 66
	ora $0C31.w,Y		; 19 31 0C
	trb $5241.w		; 1C 41 52
	plp		; 28
	sty $4A.b		; 84 4A
	dec $1B20.w,X		; DE 20 1B
	rti		; 40

	eor [$3C.b]		; 47 3C
	eor ($57.b)		; 52 57
	bit #$0982.w		; 89 82 09
	sta $96.b		; 85 96
	sbc ($C8.b)		; F2 C8
	sta $DF542B.l,X		; 9F 2B 54 DF
	bit $C7.b,X		; 34 C7
	brk $AA.b		; 00 AA
	brk $3D.b		; 00 3D
	rti		; 40

	ply		; 7A
	brk $0D.b		; 00 0D
	rti		; 40

	rti		; 40

	bmi -85.b		; 30 AB
	brk $59.b		; 00 59
	ldx #$6B23.w		; A2 23 6B
	pla		; 68
	dey		; 88
	stz $F14A.w		; 9C 4A F1
	ror $2314.w		; 6E 14 23
	lda $09.b,S		; A3 09
	jmp ($A75A.w,X)		; 7C 5A A7
	jmp $570094.l		; 5C 94 00 57
	jsr $00B5.w		; 20 B5 00
	sta ($00.b),Y		; 91 00
	pei ($08.b)		; D4 08
	inc $00.b,X		; F6 00
	lda $00.b		; A5 00
	sta [$20.b]		; 87 20
	bit $3000.w		; 2C 00 30
	tya		; 98
	adc $FA38.w,Y		; 79 38 FA
	.db $62, $B2, $EF		; 62 B2 EF
	ora $15.b		; 05 15
	brk $20.b		; 00 20
	dey		; 88
	pha		; 48
	sbc $006710.l		; EF 10 67 00
	cmp [$00.b],Y		; D7 00
	sta $08.b,X		; 95 08
	bpl   8.b		; 10 08
	nop		; EA
	brk $DB.b		; 00 DB
	tsb $BF.b		; 04 BF
	brk $AE.b		; 00 AE
	sbc ($DB.b,X)		; E1 DB
	cmp ($D8.b),Y		; D1 D8
	and $6A.b		; 25 6A
	phb		; 8B
	tad		; 5B
	lda $1A1DEE.l,X		; BF EE 1D 1A
	adc $93.b,S		; 63 93
	ror A		; 6A
	sbc ($DF.b),Y		; F1 DF
	sbc $FF3C2E.l,X		; FF 2E 3C FF
	txs		; 9A
	sbc $9F.b,X		; F5 9F
	jsr ($FFDC.w,X)		; FC DC FF
	inc $6EFD.w		; EE FD 6E
	sbc $5DD995.l,X		; FF 95 D9 5D
	sta $1996.w,Y		; 99 96 19
	ora $0D.b		; 05 0D
	cmp $F8.b		; C5 F8
	asl A		; 0A
	sta $4C.b,X		; 95 4C
	phb		; 8B
	adc $D16F.w		; 6D 6F D1
	inc $E619.w		; EE 19 E6
	bmi -17.b		; 30 EF
	ora $FA.b		; 05 FA
	cpx #$403F.w		; E0 3F 40
	sbc $6DF708.l,X		; FF 08 F7 6D
	lda ($EB.b)		; B2 EB
	cmp $72.b		; C5 72
	sty $8D.b		; 84 8D
	eor #$DA56.w		; 49 56 DA
	cmp ($9D.b,S),Y		; D3 9D
	asl $CB.b		; 06 CB
	and [$EE.b]		; 27 EE
	lda ($37.b,S),Y		; B3 37
	cmp ($3E.b,X)		; C1 3E
	brk $FF.b		; 00 FF
	ora #$52F6.w		; 09 F6 52
	lda $6E91.w		; AD 91 6E
	cop $FD.b		; 02 FD
	rol $D9.b		; 26 D9
	and ($CC.b,S),Y		; 33 CC
	sta ($56.b,S),Y		; 93 56
	lda $8073CC.l		; AF CC 73 80
	adc $C12B.w,X		; 7D 2B C1
	sta ($E7.b,X)		; 81 E7
	adc [$55.b]		; 67 55
	inx		; E8
	sta $66.b,X		; 95 66
	ora ($ED.b)		; 12 ED
	sty $0073.w		; 8C 73 00
	sbc $81D629.l,X		; FF 29 D6 81
	ror $9867.w,X		; 7E 67 98
	rti		; 40

	lda $47FB04.l,X		; BF 04 FB 47
	bra  96.b		; 80 60
	sta ($F1.b),Y		; 91 F1
	ora ($64.b,S),Y		; 13 64
	sty $87.b		; 84 87
	cpx $6B.b		; E4 6B
	mvn $81,$FE		; 54 FE 81
	stz $0025.w,X		; 9E 25 00
	sbc $11FF00.l,X		; FF 00 FF 11
	inc $FB04.w		; EE 04 FB
	sty $7B.b		; 84 7B
	rti		; 40

	lda $047F80.l,X		; BF 80 7F 04
	xce		; FB
	cpy $44.b		; C4 44
	rol A		; 2A
	iny		; C8
	sta $25DD.w,Y		; 99 DD 25
	and $C5E3.w		; 2D E3 C5
	mvn $B1,$25		; 54 25 B1
	cpy $0F.b		; C4 0F
	dec $42.b		; C6 42
	lda $F708.w,Y		; B9 08 F7
	txy		; 9B
	stz $23.b		; 64 23
	cld		; D8
	cmp ($3E.b,X)		; C1 3E
	tsb $FB.b		; 04 FB
	sta ($7E.b,X)		; 81 7E
	asl $F9.b		; 06 F9
	and ($DC.b,X)		; 21 DC
	and ($8E.b)		; 32 8E
	lsr $2A9E.w		; 4E 9E 2A
	sty $93.b,X		; 94 93
	and $2D.b,X		; 35 2D
	cmp [$2A.b]		; C7 2A
	xba		; EB
	sbc $0225.w,Y		; F9 25 02
	and ($00.b),Y		; 31 00
	adc $A045.w,X		; 7D 45 A0
	eor $B8.b,S		; 43 B8
	eor $88.b,S		; 43 88
	bit $D8.b		; 24 D8
	jsl $D42AD4.l		; 22 D4 2A D4
	cpx #$B184.w		; E0 84 B1
	jsr $A583.w		; 20 83 A5
	pha		; 48
	pha		; 48
	phd		; 0B
	adc ($78.b)		; 72 78
	phk		; 4B
	.db $42, $F6		; 42 F6
	bcs  92.b		; B0 5C
	cmp ($2C.b,S),Y		; D3 2C
	asl $92C1.w,X		; 1E C1 92
	pha		; 48
	adc $82.b,X		; 75 82
	ora #$60A4.w		; 09 A4 60
	sta $49.b,X		; 95 49
	bcc  49.b		; 90 31
	rep #$C4		; C2 C4
	pea $7A1B.w		; F4 1B 7A
	eor $95.b,X		; 55 95
	phd		; 0B
	jsr $4954.w		; 20 54 49
	txa		; 8A
	ora $2C0C49.l		; 0F 49 0C 2C
	phd		; 0B
	sta $801720.l		; 8F 20 17 80
	ror A		; 6A
	brk $C5.b		; 00 C5
	inc A		; 1A
	lda ($04.b)		; B2 04
	adc ($85.b)		; 72 85
	lda ($40.b,S),Y		; B3 40
	beq   6.b		; F0 06
	adc ($BF.b),Y		; 71 BF
	dey		; 88
	rol A		; 2A
	and [$AD.b]		; 27 AD
	tyx		; BB
	tsb $9D.b		; 04 9D
	adc $85.b		; 65 85
	eor $D3.b,S		; 43 D3
	lsr $6404.w		; 4E 04 64
	brk $C0.b		; 00 C0
	bne   5.b		; D0 05
	bvc   2.b		; 50 02
	cmp ($28.b,S),Y		; D3 28
	txy		; 9B
	brk $BC.b		; 00 BC
	cop $21.b		; 02 21
	bcc  27.b		; 90 1B
	bra  94.b		; 80 5E
	cmp $8560.w,X		; DD 60 85
	nop		; EA
	sep #$80		; E2 80
	lsr $08.b,X		; 56 08
	sbc [$07.b],Y		; F7 07
	cpx $F4.b		; E4 F4
	and #$32ED.w		; 29 ED 32
	dec A		; 3A
	brk $32.b		; 00 32
	pha		; 48
	sta $A904.w,Y		; 99 04 A9
	asl $08.b,X		; 16 08
	cop $0E.b		; 02 0E
	lda ($D6.b),Y		; B1 D6
	brk $2C.b		; 00 2C
	cmp ($D1.b,X)		; C1 D1
	lda $3868.w		; AD 68 38
	ldy $ADF0.w,X		; BC F0 AD
	ldy $844A.w		; AC 4A 84
	stz $F6D2.w,X		; 9E D2 F6
	eor $D2EE55.l,X		; 5F 55 EE D2
	brk $87.b		; 00 87
	rti		; 40

	ora $005300.l,X		; 1F 00 53 00
	phd		; 0B
	bvs -68.b		; 70 BC
	ora ($C2.b,X)		; 01 C2
	and ($10.b,X)		; 21 10
	ora $00.b,S		; 03 00
	txy		; 9B
	phb		; 8B
	adc $1059AF.l,X		; 7F AF 59 10
	cpy $8A.b		; C4 8A
	cmp $C264.w,Y		; D9 64 C2
	cmp ($09.b),Y		; D1 09
	ldx $6466.w		; AE 66 64
	bpl -128.b		; 10 80
	rti		; 40

	jsl $013A84.l		; 22 84 3A 01
	rol $3C00.w		; 2E 00 3C
	ora ($F6.b,X)		; 01 F6
	brk $18.b		; 00 18
	sta ($E0.b,X)		; 81 E0
	and [$82.b],Y		; 37 82
	jmp $FA7C.w		; 4C 7C FA
	lda $F2.b		; A5 F2
	inc A		; 1A
	sbc $13A6.w,X		; FD A6 13
	cmp ($0B.b,S),Y		; D3 0B
	lsr $88C1.w		; 4E C1 88
	.db $42, $B3		; 42 B3
	brk $05.b		; 00 05
	brk $0D.b		; 00 0D
	cop $00.b		; 02 00
	.db $42, $EC		; 42 EC
	brk $E4.b		; 00 E4
	clc		; 18
	trb $B822.w		; 1C 22 B8
	adc [$D1.b],Y		; 77 D1
	bpl -84.b		; 10 AC
	rol $5257.w		; 2E 57 52
	tya		; 98
	and [$76.b],Y		; 37 76
	ldx $A805.w		; AE 05 A8
	lsr $885B.w		; 4E 5B 88
	brk $ED.b		; 00 ED
	cop $D5.b		; 02 D5
	brk $8D.b		; 00 8D
	jsr $00C8.w		; 20 C8 00
	bvc   1.b		; 50 01
	eor ($05.b)		; 52 05
	cpx $01.b		; E4 01
	tay		; A8
	adc ($34.b),Y		; 71 34
	jsr ($D1C8.w,X)		; FC C8 D1
	rol $86.b		; 26 86
	sbc ($98.b)		; F2 98
	sta $F2B8.w,Y		; 99 B8 F2
	ror $82.b		; 66 82
	eor $8E.b		; 45 8E
	brk $07.b		; 00 07
	brk $22.b		; 00 22
	tsb $007D.w		; 0C 7D 00
	adc $04.b,S		; 63 04
	eor [$00.b]		; 47 00
	sta $BA00.w,Y		; 99 00 BA
	brk $48.b		; 00 48
	sbc ($BD.b,S),Y		; F3 BD
	rts		; 60

	lsr A		; 4A
	beq  12.b		; F0 0C
	plp		; 28
	stp		; DB
	tsa		; 3B
	and ($6A.b),Y		; 31 6A
	ora [$F6.b]		; 07 F6
	tax		; AA
	and $7D.b,X		; 35 7D
	lda $FBFF39.l,X		; BF 39 FF FB
	sbc $DBF73E.l,X		; FF 3E F7 DB
	sbc [$6C.b]		; E7 6C
	sbc $61FBF6.l,X		; FF F6 FB 61
	cmp $B2099C.l,X		; DF 9C 09 B2
	eor $AE5EAD.l,X		; 5F AD 5E AE
	and [$7E.b],Y		; 37 7E
	adc $ED.b,S		; 63 ED
	ror $5E.b,X		; 76 5E
	ldx #$59F0.w		; A2 F0 59
	cld		; D8
	sbc [$52.b],Y		; F7 52
	sbc $F34C.w		; ED 4C F3
	ldx $6AF9.w,Y		; BE F9 6A
	lda $BBF4.w,X		; BD F4 BB
	tsx		; BA
	sbc $BF7A.w,X		; FD 7A BF
	dec $2E19.w,X		; DE 19 2E
	and ($15.b,S),Y		; 33 15
	cpx $5A.b		; E4 5A
	txa		; 8A
	eor ($6F.b)		; 52 6F
	cmp $073277.l		; CF 77 32 07
	plp		; 28
	and $22E718.l,X		; 3F 18 E7 22
	cmp $FB04.w,X		; DD 04 FB
	asl A		; 0A
	sbc $42.b,X		; F5 42
	lda $B847.w,X		; BD 47 B8
	cop $FD.b		; 02 FD
	plp		; 28
	cmp [$AE.b],Y		; D7 AE
	and ($B2.b,S),Y		; 33 B2
	and $45.b,S		; 23 45
	adc $2B.b,X		; 75 2B
	and ($83.b),Y		; 31 83
	ora #$CF2E.w		; 09 2E CF
	tda		; 7B
	xba		; EB
	dec $2258.w		; CE 58 22
	cmp $DD22.w,X		; DD 22 DD
	eor $BA.b		; 45 BA
	and ($DE.b,X)		; 21 DE
	ora ($FE.b,X)		; 01 FE
	asl $6BF1.w		; 0E F1 6B
	sty $48.b,X		; 94 48
	lda [$F4.b],Y		; B7 F4
	adc $B3E420.l,X		; 7F 20 E4 B3
	eor [$FA.b]		; 47 FA
	inc A		; 1A
	lda #$2811.w		; A9 11 28
	and ($1A.b,S),Y		; 33 1A
	eor $52.b,X		; 55 52
	txa		; 8A
	stz $8B.b,X		; 74 8B
	jsr $03DF.w		; 20 DF 03
	jsr ($E51A.w,X)		; FC 1A E5
	ora ($FE.b,X)		; 01 FE
	jsr $10DF.w		; 20 DF 10
	sbc $4DFD02.l		; EF 02 FD 4D
	sta $F5.b		; 85 F5
	cli		; 58
	sta $3614.w,Y		; 99 14 36
	ora $FF.b		; 05 FF
	beq -99.b		; F0 9D
	ora $D3BE.w,Y		; 19 BE D3
	cmp $0580.w,Y		; D9 80 05
	plx		; FA
	bvc -81.b		; 50 AF
	bpl -17.b		; 10 EF
	tsb $FB.b		; 04 FB
	beq  15.b		; F0 0F
	ora $92E6.w,Y		; 19 E6 92
	adc $7F80.w		; 6D 80 7F
	xce		; FB
	lda $4CF0.w,X		; BD F0 4C
	sta $2B6E.w,X		; 9D 6E 2B
	lda ($0B.b),Y		; B1 0B
	.db $82, $56, $87		; 82 56 87
	lda $203F06.l,X		; BF 06 3F 20
	clc		; 18
	lsr $C3.b		; 46 C3
	bit $0C.b,X		; 34 0C
	sbc ($40.b,S),Y		; F3 40
	asl $817E.w,X		; 1E 7E 81
	cop $F9.b		; 02 F9
	and $D8.b,S		; 23 D8
	and ($CC.b,S),Y		; 33 CC
	jmp $1AA4.w		; 4C A4 1A
	jsr ($1DFE.w,X)		; FC FE 1D
	ora $672D.w		; 0D 2D 67
	sta $66D7.w		; 8D D7 66
	cmp $16.b		; C5 16
	cpx DMASRC1H.w		; EC 13 43
	clc		; 18
	ora $44.b,S		; 03 44
	ror $81.b		; 66 81
	cli		; 58
	.db $82, $11, $62		; 82 11 62
	eor [$A8.b],Y		; 57 A8
	iny		; C8
	and ($40.b,X)		; 21 40
	ldx $A761.w,Y		; BE 61 A7
	txs		; 9A
	plx		; FA
	stp		; DB
	ora $4C2F4D.l,X		; 1F 4D 2F 4C
	jmp ($3714.w,X)		; 7C 14 37
	eor ($A4.b,S),Y		; 53 A4
	.db $82, $64, $70		; 82 64 70
	dey		; 88
	tsb $21.b		; 04 21
	adc ($80.b,X)		; 61 80
	tya		; 98
	rts		; 60

	wai		; CB
	brk $94.b		; 00 94
	pha		; 48
	pha		; 48
	lda [$99.b],Y		; B7 99
	ror $70.b		; 66 70
	adc [$98.b]		; 67 98
	ora $C0.b,X		; 15 C0
	jmp $2180C0.l		; 5C C0 80 21
	cpy $9F.b		; C4 9F
	sed		; F8
	php		; 08
	asl A		; 0A
	phx		; DA
	txy		; 9B
	tya		; 98
	brk $BA.b		; 00 BA
	mvp $90,$23		; 44 23 90
	ora $043B60.l,X		; 1F 60 3B 04
	sta $807560.l		; 8F 60 75 80
	cop $64.b		; 02 64
	and [$19.b],Y		; 37 19
	cop $28.b		; 02 28
	lda ($0F.b,S),Y		; B3 0F
	cpy #$6086.w		; C0 86 60
	phk		; 4B
	tax		; AA
	xce		; FB
	eor $A69D4F.l,X		; 5F 4F 9D A6
	sbc ($04.b)		; F2 04
	cmp [$20.b],Y		; D7 20
	cpx #$F018.w		; E0 18 F0
	ora $00B4.w		; 0D B4 00
	asl $10.b		; 06 10
	brk $B0.b		; 00 B0
	ora ($58.b,X)		; 01 58
.ACCU 16
	rep #$A5		; C2 A5
	and $4C.b,X		; 35 4C
	lda $CE79.w		; AD 79 CE
	php		; 08
	pea $C09E.w		; F4 9E C0
	stx $74.b		; 86 74
	sbc ($D6.b)		; F2 D6
	ora [$5A.b]		; 07 5A
	ora ($33.b,X)		; 01 33
	bra -122.b		; 80 86
	brk $D5.b		; 00 D5
	jsl $310061.l		; 22 61 00 31
	pha		; 48
	ora $3A80.w		; 0D 80 3A
	cpy #$28AD.w		; C0 AD 28
	inc $F70E.w,X		; FE 0E F7
	adc $6D.b,S		; 63 6D
	cli		; 58
	dec $F1.b		; C6 F1
	sec		; 38
	sei		; 78
	sta $6413.w		; 8D 13 64
	bra -105.b		; 80 97
	rti		; 40

	sbc ($10.b,X)		; E1 10
	stz $98.b		; 64 98
	plb		; AB
	trb $0A.b		; 14 0A
	and $82.b		; 25 82
	ora $A5.b		; 05 A5
	pha		; 48
	ror $0001.w,X		; 7E 01 00
	ora $DD0C3D.l,X		; 1F 3D 0C DD
	lda ($7A.b)		; B2 7A
	cpx #$FC4B.w		; E0 4B FC
	cmp $AB.b,X		; D5 AB
	sta [$46.b],Y		; 97 46
	ldy $01.b		; A4 01
	cpx #$F100.w		; E0 00 F1
	cop $55.b		; 02 55
	php		; 08
	ora $004300.l,X		; 1F 00 43 00
	eor $20.b,X		; 55 20
	and $FE90.w		; 2D 90 FE
	brk $E8.b		; 00 E8
	adc ($C7.b,S),Y		; 73 C7
	lda $59B8.w,Y		; B9 B8 59
	ora $03.b,X		; 15 03
	sta $279B.w,X		; 9D 9B 27
	dec $69.b		; C6 69
	mvp $48,$3F		; 44 3F 48
	sty $C600.w		; 8C 00 C6
	brk $B6.b		; 00 B6
	brk $BC.b		; 00 BC
	.db $42, $00		; 42 00
	stz $29.b		; 64 29
	bpl  18.b		; 10 12
	lda #$00B7.w		; A9 B7 00
	bit $18.b,X		; 34 18
	dey		; 88
	php		; 08
	bvs  96.b		; 70 60
	stx $F4.b		; 86 F4
	bcs  93.b		; B0 5D
	eor $3A36.w,X		; 5D 36 3A
	ora $83.b,X		; 15 83
	eor $A7.b		; 45 A7
	rti		; 40

	sbc [$00.b],Y		; F7 00
	sta [$08.b],Y		; 97 08
	ora #$A242.w		; 09 42 A2
	tsb $55.b		; 04 55
	dey		; 88
	nop		; EA
	brk $BA.b		; 00 BA
	brk $A7.b		; 00 A7
	asl A		; 0A
	beq -74.b		; F0 B6
	ora ($62.b)		; 12 62
	tsb $E4.b		; 04 E4
	cmp $E60F36.l		; CF 36 0F E6
	iny		; C8
	and $6A14FA.l		; 2F FA 14 6A
	sbc $765FF2.l,X		; FF F2 5F 76
	sbc $FBF7.w,X		; FD F7 FB
	asl $FEFB.w,X		; 1E FB FE
	sbc $D1FF7A.l,X		; FF 7A FF D1
	sbc $EBA169.l,X		; FF 69 A1 EB
	sta ($EB.b,X)		; 81 EB
	sec		; 38
	ldy $79.b,X		; B4 79
	pld		; 2B
	stz $A6.b,X		; 74 A6
	and $76.b,X		; 35 76
	rol $B26E.w		; 2E 6E B2
	lda $FDFF.w,Y		; B9 FF FD
	adc $3DD77C.l,X		; 7F 7C D7 3D
	sbc $3DDF76.l,X		; FF 76 DF 3D
	sbc $A7FBFF.l,X		; FF FF FB A7
	cmp $46F9.w,X		; DD F9 46
	dec A		; 3A
	rti		; 40

	adc $24.b,X		; 75 24
	eor [$66.b],Y		; 57 66
	ldx #$AD47.w		; A2 47 AD
	rol $88.b		; 26 88
	ora $400185.l		; 0F 85 01 40
	lda $24FF00.l,X		; BF 00 FF 24
	stp		; DB
	lsr $B9.b		; 46 B9
	.db $82, $FD, $64		; 82 FD 64
	stp		; DB
	pha		; 48
	sbc [$21.b],Y		; F7 21
	inc $0CEB.w,X		; FE EB 0C
	lda $52C2.w		; AD C2 52
	stz $B5.b,X		; 74 B5
	and ($41.b,X)		; 21 41
	lda $4CAC.w		; AD AC 4C
	adc $88.b		; 65 88
	cli		; 58
	txy		; 9B
	php		; 08
	sbc [$80.b],Y		; F7 80
	adc $21AF50.l,X		; 7F 50 AF 21
	dec $FE01.w,X		; DE 01 FE
	tsb $00F3.w		; 0C F3 00
	sbc $14E718.l,X		; FF 18 E7 14
	cmp $4300.w		; CD 00 43
	mvn $CB,$66		; 54 66 CB
	adc ($5C.b)		; 72 5C
	jsr ($0C77.w,X)		; FC 77 0C
	lda ($0E.b),Y		; B1 0E
	dec A		; 3A
	stx $04.b		; 86 04
	xce		; FB
	brk $FF.b		; 00 FF
	mvp $42,$BB		; 44 BB 42
	lda $A35C.w,X		; BD 5C A3
	tsb $FB.b		; 04 FB
	brk $FF.b		; 00 FF
	cop $FD.b		; 02 FD
	.db $82, $11, $B7		; 82 11 B7
	and $BF.b		; 25 BF
	and ($B1.b,S),Y		; 33 B1
	sty $AD.b		; 84 AD
	tay		; A8
	rol $D64A.w		; 2E 4A D6
	.db $62, $D2, $B0		; 62 D2 B0
	brk $FF.b		; 00 FF
	and $DA.b		; 25 DA
	and ($CC.b,S),Y		; 33 CC
	bra 127.b		; 80 7F
	tay		; A8
	eor [$0A.b],Y		; 57 0A
	sbc $42.b,X		; F5 42
	lda $6F90.w,X		; BD 90 6F
	cmp $0F.b,X		; D5 0F
	tya		; 98
	bvs  59.b		; 70 3B
	cmp $E6BD.w		; CD BD E6
	adc [$07.b],Y		; 77 07
	ora [$C0.b],Y		; 17 C0
	inc $CF70.w		; EE 70 CF
	adc ($04.b),Y		; 71 04
	beq  16.b		; F0 10
	sbc $A4F402.l		; EF 02 F4 A4
	tad		; 5B
	ora [$F8.b]		; 07 F8
	brk $FF.b		; 00 FF
	rts		; 60

	sta $6CBE41.l,X		; 9F 41 BE 6C
	mvp $62,$26		; 44 26 62
	sta $DD.b,S		; 83 DD
	sbc [$E7.b],Y		; F7 E7
	inc $5B.b		; E6 5B
	tas		; 1B
	cmp $69.b,X		; D5 69
	cmp [$81.b],Y		; D7 81
	asl $18E3.w,X		; 1E E3 18
	bit #$A054.w		; 89 54 A0
	lsr A		; 4A
	adc $2410.w		; 6D 10 24
	sta $CA31.w,Y		; 99 31 CA
	brk $2A.b		; 00 2A
	adc ($8E.b,X)		; 61 8E
	sta $D7EA.w,Y		; 99 EA D7
	sbc ($F5.b,S),Y		; F3 F5
	adc $2C5BDC.l		; 6F DC 5B 2C
	phb		; 8B
	sta $04.b,X		; 95 04
	dec $A4F0.w		; CE F0 A4
	ora [$08.b]		; 07 08
	and [$CA.b],Y		; 37 CA
	tsb $B4.b		; 04 B4
	php		; 08
	bcc  36.b		; 90 24
	stz $82.b,X		; 74 82
	inc $09.b,X		; F6 09
	sta $E21C00.l		; 8F 00 1C E2
	jsl $141A12.l		; 22 12 1A 14
	eor $0E1E.w,Y		; 59 1E 0E
	cmp ($20.b)		; D2 20
	stz $14.b		; 64 14
	bit $E51D.w		; 2C 1D E5
	bit $C915.w		; 2C 15 C9
	bit $39.b,X		; 34 39
.ACCU 16
	rep #$68		; C2 68
	sta ($27.b,X)		; 81 27
	php		; 08
	and $1182.w,Y		; 39 82 11
	nop		; EA
	ora ($2A.b),Y		; 11 2A
.ACCU 16
	rep #$28		; C2 28
	cmp $4012.w		; CD 12 40
	inc A		; 1A
	xce		; FB
	xba		; EB
	ora $EB.b,X		; 15 EB
	dex		; CA
	bcc  -9.b		; 90 F7
	tay		; A8
	sbc [$74.b],Y		; F7 74
	cpy #$A912.w		; C0 12 A9
	mvn $85,$60		; 54 60 85
	cli		; 58
	tsb $14.b		; 04 14
	php		; 08
	ora $5062.w		; 0D 62 50
	ora [$C7.b]		; 07 C7
	php		; 08
	sbc $2610.w		; ED 10 26
	cop $62.b		; 02 62
	tsb $25.b		; 04 25
	eor [$31.b]		; 47 31
	sbc $2B4B.w,Y		; F9 4B 2B
	bvc  93.b		; 50 5D
	bpl  16.b		; 10 10
	adc #$CDD6.w		; 69 D6 CD
	bmi -29.b		; 30 E3
	clc		; 18
	bit $31C0.w,X		; 3C C0 31
	asl $C5.b		; 06 C5
	bpl -96.b		; 10 A0
	cop $E7.b		; 02 E7
	php		; 08
	and #$0286.w		; 29 86 02
	beq  14.b		; F0 0E
	cli		; 58
	sta $F28B.w		; 8D 8B F2
	ora ($02.b,S),Y		; 13 02
	inx		; E8
	adc $3D089D.l		; 6F 9D 08 3D
	ldy $06.b		; A4 06
	ora $0782.w		; 0D 82 07
	cpx #$304C.w		; E0 4C 30
	sed		; F8
	tsb $16.b		; 04 16
	adc ($06.b,X)		; 61 06
	bvs -126.b		; 70 82
	mvp $60,$99		; 44 99 60
	ora $2826.w,X		; 1D 26 28
	sbc [$6C.b]		; E7 6C
	jmp $D817.w		; 4C 17 D8
	sta ($FB.b)		; 92 FB
	.db $82, $F0, $A0		; 82 F0 A0
	dey		; 88
	phd		; 0B
	sta $7089.w,Y		; 99 89 70
	sec		; 38
	bra -70.b		; 80 BA
	ora ($00.b,X)		; 01 00
	and [$04.b]		; 27 04
	ora #$228D.w		; 09 8D 22
	and [$40.b],Y		; 37 40
	.db $62, $84, $CA		; 62 84 CA
	ply		; 7A
	adc $48C7.w,X		; 7D C7 48
	lda #$7DB7.w		; A9 B7 7D
	ora ($8A.b,X)		; 01 8A
	sta $6CA145.l,X		; 9F 45 A1 6C
	lsr $8735.w		; 4E 35 87
	bpl  56.b		; 10 38
	brk $14.b		; 00 14
	.db $42, $82		; 42 82
	php		; 08
	and $40.b,X		; 35 40
	ora ($A8.b)		; 12 A8
	sta ($44.b,S),Y		; 93 44
	stx $5851.w		; 8E 51 58
	bra -16.b		; 80 F0
	plx		; FA
	phb		; 8B
	ora $2382.w,Y		; 19 82 23
	ror $0683.w,X		; 7E 83 06
	lsr $5153.w		; 4E 53 51
	and [$91.b],Y		; 37 91
	tda		; 7B
	tsb $25.b		; 04 25
	brk $C4.b		; 00 C4
	jsl $7C00DC.l		; 22 DC 00 7C
	brk $33.b		; 00 33
	cpy #$08B6.w		; C0 B6 08
	ror $8680.w		; 6E 80 86
	eor $8178.w,Y		; 59 78 81
	phb		; 8B
	adc $60E4.w		; 6D E4 60
	ror $FD0D.w		; 6E 0D FD
	dec $32.b,X		; D6 32
	brk $0E.b		; 00 0E
	bmi  90.b		; 30 5A
	sbc $3FFFBC.l,X		; FF BC FF 3F
	inc $DF77.w,X		; FE 77 DF
	tsb $D6F7.w		; 0C F7 D6
	lda $BCFF02.l,X		; BF 02 FF BC
	sbc $598BB0.l,X		; FF B0 8B 59
	sta [$01.b],Y		; 97 01
	cmp $713B.w		; CD 3B 71
	jmp $9BF47F.l		; 5C 7F F4 9B
	sbc $652AE1.l,X		; FF E1 2A 65
	ldy $D3FF.w,X		; BC FF D3
	sbc $F7FE77.l		; EF 77 FE F7
	inc $B7DF.w		; EE DF B7
	lda ($6F.b)		; B2 6F
	sbc $7F.b		; E5 7F
	sbc $FF.b		; E5 FF
	eor $B9.b		; 45 B9
	ldy $8ABB.w,X		; BC BB 8A
	mvp $E2,$53		; 44 53 E2
	xce		; FB
	ora [$9F.b]		; 07 9F
	cmp $5BC2.w,X		; DD C2 5B
	.db $62, $3B, $91		; 62 3B 91
	inc $D7B8.w,X		; FE B8 D7
	rts		; 60

	sbc $C3FDE2.l,X		; FF E2 FD C3
	jsr ($62BD.w,X)		; FC BD 62
.ACCU 16
.INDEX 16
	rep #$BD		; C2 BD
	xce		; FB
	cmp $9D5B.w,X		; DD 5B 9D
	dec $B300.w		; CE 00 B3
	sty $A5.b,X		; 94 A5
	rol $E5.b,X		; 36 E5
	sbc [$8A.b],Y		; F7 8A
	lda #$86FD.w		; A9 FD 86
	adc ($A9.b),Y		; 71 A9
	ora $00E6.w,Y		; 19 E6 00
	sbc $246F90.l,X		; FF 90 6F 24
	stp		; DB
	sbc $1A.b		; E5 1A
	dey		; 88
	adc [$84.b],Y		; 77 84
	tda		; 7B
	and ($DE.b,X)		; 21 DE
	dey		; 88
	brk $BA.b		; 00 BA
	jmp $736B.w		; 4C 6B 73
	lda $4CB1.w,X		; BD B1 4C
	and $B407.w,Y		; 39 07 B4
	inc A		; 1A
	ora ($F1.b,S),Y		; 13 F1
	sta $FF00.w,X		; 9D 00 FF
	php		; 08
	sbc [$63.b],Y		; F7 63
	stz $4EB1.w		; 9C B1 4E
	php		; 08
	sbc [$04.b],Y		; F7 04
	xce		; FB
	ora ($ED.b)		; 12 ED
	sta ($6E.b),Y		; 91 6E
	sta $258E.w,Y		; 99 8E 25
	rol $D4.b,X		; 36 D4
	sta $9951.w,Y		; 99 51 99
	eor $BC.b		; 45 BC
	inc $8C.b,X		; F6 8C
	lsr $7A83.w,X		; 5E 83 7A
	tsb $7788.w		; 0C 88 77
	bit $DB.b		; 24 DB
	bcc 111.b		; 90 6F
	ora ($EE.b),Y		; 11 EE
	tsb $FB.b		; 04 FB
	sty $7B.b		; 84 7B
	cop $FD.b		; 02 FD
	php		; 08
	sbc [$53.b],Y		; F7 53
	and [$30.b],Y		; 37 30
	lsr $C033.w		; 4E 33 C0
	stp		; DB
	rol A		; 2A
	asl $CA27.w		; 0E 27 CA
	cmp $88.b,S		; C3 88
	sta $B1.b,S		; 83 B1
	ldx $13.b		; A6 13
	cpx $FF00.w		; EC 00 FF
	brk $FF.b		; 00 FF
	asl A		; 0A
	sbc $06.b,X		; F5 06
	sbc $3DC2.w,Y		; F9 C2 3D
	bra 127.b		; 80 7F
	ldy #$D65F.w		; A0 5F D6
	clc		; 18
	jmp.w [$BC10]		; DC 10 BC
	ora ($2A.b,X)		; 01 2A
	ror $BB23.w,X		; 7E 23 BB
	jmp ($7BB0.w,X)		; 7C B0 7B
	cpx #$8F74.w		; E0 74 8F
	ora $EA.b,X		; 15 EA
	phd		; 0B
	cpx $02.b		; E4 02
	sbc $D421.w,X		; FD 21 D4
	and $D8.b		; 25 D8
	bmi -49.b		; 30 CF
	rts		; 60

	sta $7AFB04.l,X		; 9F 04 FB 7A
	ldx $75E1.w		; AE E1 75
	dec A		; 3A
	adc $1674.w,X		; 7D 74 16
	ror $C784.w,X		; 7E 84 C7
	sta ($DE.b)		; 92 DE
	inx		; E8
	sta $F5.b,S		; 83 F5
	bvs -127.b		; 70 81
	jsl $44A298.l		; 22 98 A2 44
	cmp $2A.b,X		; D5 2A
	and ($48.b,S),Y		; 33 48
	ror $19.b		; 66 19
	phk		; 4B
	bit $89.b,X		; 34 89
	rol $A0.b,X		; 36 A0
	pld		; 2B
	stz $5BD0.w		; 9C D0 5B
	bit #$B495.w		; 89 95 B4
	tax		; AA
	ldy $B9F7.w,X		; BC F7 B9
	sta ($EE.b),Y		; 91 EE
	and $A4.b		; 25 A4
	cpy $13.b		; C4 13
	and $522400.l		; 2F 00 24 52
	lsr A		; 4A
	and ($49.b,X)		; 21 49
	ora ($D6.b)		; 12 D6
	php		; 08
	sta ($70.b,X)		; 81 70
	ror A		; 6A
	ora ($4E.b),Y		; 11 4E
	stz $8A.b		; 64 8A
	sbc $3DE4.w,X		; FD E4 3D
	inc A		; 1A
	wai		; CB
	tay		; A8
	and $42.b,S		; 23 42
	cmp ($03.b)		; D2 03
	clv		; B8
	and $113A.w		; 2D 3A 11
	tax		; AA
	txa		; 8A
	bpl -128.b		; 10 80
	.db $42, $20		; 42 20
	eor $A0.b,X		; 55 A0
	jmp $47012C.l		; 5C 2C 01 47
	php		; 08
	cmp $00.b		; C5 00
	and ($0C.b),Y		; 31 0C
	bit $05.b		; 24 05
	mvn $7C,$14		; 54 14 7C
	and $8326.w		; 2D 26 83
	jmp $63FD.w		; 4C FD 63
	eor ($80.b),Y		; 51 80
	tsb $F3.b		; 04 F3
	brk $EA.b		; 00 EA
	bpl -101.b		; 10 9B
	rts		; 60

	bne   2.b		; D0 02
	bvs  12.b		; 70 0C
	cop $11.b		; 02 11
	plb		; AB
	tsb $DA.b		; 04 DA
	and ($5A.b,X)		; 21 5A
	ora ($1C.b,X)		; 01 1C
	adc $B81A.w,Y		; 79 1A B8
	cpy #$F777.w		; C0 77 F7
	cpy $C288.w		; CC 88 C2
	ror $73.b		; 66 73
	dec $E6F8.w,X		; DE F8 E6
	ora $8600.w,Y		; 19 00 86
	ora [$40.b]		; 07 40
	bra   8.b		; 80 08
	adc ($02.b),Y		; 71 02
	and $AE10.w		; 2D 10 AE
	brk $17.b		; 00 17
	jsr $D8C0.w		; 20 C0 D8
	lda #$72D4.w		; A9 D4 72
	eor $7F.b,X		; 55 7F
	and [$94.b],Y		; 37 94
	bit #$8478.w		; 89 78 84
	cmp ($3D.b)		; D2 3D
	dec $D4.b,X		; D6 D4
	and [$00.b]		; 27 00
	pld		; 2B
	trb $28.b		; 14 28
	.db $82, $88, $40		; 82 88 40
	ror $10.b		; 66 10
	ply		; 7A
	ora $80.b		; 05 80
	.db $42, $0F		; 42 0F
	jsr $EEB4.w		; 20 B4 EE
	tsb $56.b		; 04 56
	adc $05.b		; 65 05
	and [$28.b],Y		; 37 28
	cld		; D8
	sbc $D16F03.l,X		; FF 03 6F D1
	rti		; 40

	phy		; 5A
	rts		; 60

	ora $50.b		; 05 50
	lda ($48.b,X)		; A1 48
	plx		; FA
	brk $F7.b		; 00 F7
	brk $00.b		; 00 00
	ora ($91.b,X)		; 01 91
	brk $9F.b		; 00 9F
	jsr $02DD.w		; 20 DD 02
	bne  60.b		; D0 3C
	clc		; 18
	jmp ($34B4.w,X)		; 7C B4 34
	eor ($02.b),Y		; 51 02
	sec		; 38
	cmp $01.b,S		; C3 01
	ldy $99.b,X		; B4 99
	sta $00B8.w,Y		; 99 B8 00
	cmp $00.b,S		; C3 00
	sta $00.b,S		; 83 00
	phk		; 4B
	bra -19.b		; 80 ED
	ora ($3C.b)		; 12 3C
	brk $4B.b		; 00 4B
	tsb $62.b		; 04 62
	tsb $DB.b		; 04 DB
	bit $BE.b		; 24 BE
	stx $B77E.w		; 8E 7E B7
	lda [$24.b],Y		; B7 24
	bit $3B04.w		; 2C 04 3B
	and ($53.b,S),Y		; 33 53
	plb		; AB
	eor [$BD.b]		; 47 BD
	and $F2.b,S		; 23 F2
	ldx $FFF3.w,Y		; BE F3 FF
	stp		; DB
	inc $DF.b,X		; F6 DF
	ldx $F7FB.w,Y		; BE FB F7
	jsr ($FDEF.w,X)		; FC EF FD
	sbc $F6FB.w,X		; FD FB F6
	cmp $4260F6.l,X		; DF F6 60 42
	stz $8205.w,X		; 9E 05 82
	sep #$08		; E2 08
	sta [$BD.b],Y		; 97 BD
	sbc $AE86.w,Y		; F9 86 AE
	eor [$85.b],Y		; 57 85
	ror $BFE0.w		; 6E E0 BF
	lda $FFBAFF.l,X		; BF FF BA FF
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sbc $7E.b,X		; F5 7E
	txy		; 9B
	sbc $AEFBDF.l,X		; FF DF FB AE
	xce		; FB
	lda $99.b,X		; B5 99
	pla		; 68
	inc $E7.b,X		; F6 E7
	mvp $44,$00		; 44 00 44
	ldx #$A0.b		; A2 A0
	mvp $C8,$41		; 44 41 C8
	lda [$2C.b]		; A7 2C
	cmp [$DF.b],Y		; D7 DF
	sbc $FEDF72.l,X		; FF 72 DF FE
	xce		; FB
	phy		; 5A
	sbc $4D7FEB.l,X		; FF EB 7F 4D
	sbc $DFFFEF.l,X		; FF EF FF DF
	sbc $8F0DCB.l,X		; FF CB 0D 8F
	mvn $BE,$31		; 54 31 BE
	php		; 08
	bvs  84.b		; 70 54
	ora $BA.b		; 05 BA
	sta $EF.b,S		; 83 EF
	lsr $CF.b,X		; 56 CF
	cpy #$09.b		; C0 09
	inc $04.b,X		; F6 04
	xce		; FB
	bcs -49.b		; B0 CF
	brk $FF.b		; 00 FF
	sty $FB.b		; 84 FB
.ACCU 8
.INDEX 8
	sep #$7D		; E2 7D
	lsr $B9.b		; 46 B9
	bne 127.b		; D0 7F
	adc $037680.l		; 6F 80 76 03
	lda $20.b		; A5 20
	jmp.w [$C712]		; DC 12 C7
	and ($FF.b),Y		; 31 FF
	eor $AA.b		; 45 AA
	jmp $4CBB.w		; 4C BB 4C
	brk $FF.b		; 00 FF
	cop $FD.b		; 02 FD
	jsr $10DF.w		; 20 DF 10
	sbc $45FE01.l		; EF 01 FE 45
	tsx		; BA
	php		; 08
	sbc [$08.b],Y		; F7 08
	sbc [$4B.b],Y		; F7 4B
	cop $E5.b		; 02 E5
	pld		; 2B
	sta ($1C.b)		; 92 1C
	bpl -83.b		; 10 AD
	and $DE.b		; 25 DE
	lda $32D2.w,Y		; B9 D2 32
	ora ($5F.b,X)		; 01 5F
	jsr $FD02.w		; 20 02 FD
	and ($DE.b,X)		; 21 DE
	bpl -17.b		; 10 EF
	brk $FF.b		; 00 FF
	tsb $FB.b		; 04 FB
	bcc 111.b		; 90 6F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	phx		; DA
	eor $DC1F.w		; 4D 1F DC
	sbc $B2.b		; E5 B2
	adc ($12.b,S),Y		; 73 12
	lda $D9.b,X		; B5 D9
	eor $4D00.w		; 4D 00 4D
	ldx $CB.b,Y		; B6 CB
	tsb $B748.w		; 0C 48 B7
	trb $A0E3.w		; 1C E3 A0
	eor $91ED12.l,X		; 5F 12 ED 91
	ror $FF00.w		; 6E 00 FF
	tsb $FB.b		; 04 FB
	php		; 08
	sbc [$8F.b],Y		; F7 8F
	lsr $CF.b,X		; 56 CF
	bpl -110.b		; 10 92
	phd		; 0B
	eor $FA11.w,X		; 5D 11 FA
	sty $EE.b		; 84 EE
	cmp $5F645F.l		; CF 5F 64 5F
	rts		; 60

	asl $F9.b		; 06 F9
	brk $FF.b		; 00 FF
	cop $FD.b		; 02 FD
	ora ($EE.b),Y		; 11 EE
	bra 127.b		; 80 7F
	dec $4431.w		; CE 31 44
	tyx		; BB
	rti		; 40

	lda $49A020.l,X		; BF 20 A0 49
	tay		; A8
	bit $E6BE.w,X		; 3C BE E6
	asl $0F.b		; 06 0F
	sbc ($BC.b,S),Y		; F3 BC
	ldx #$9A.b		; A2 9A
	trb $8675.w		; 1C 75 86
	asl $0EC1.w,X		; 1E C1 0E
	sbc ($31.b),Y		; F1 31
	rep #$06		; C2 06
	sbc $FC03.w,Y		; F9 03 FC
	ldy #$5F.b		; A0 5F
	clc		; 18
	sbc [$04.b]		; E7 04
	xce		; FB
	sbc [$B7.b],Y		; F7 B7
	dex		; CA
	and $A2.b,X		; 35 A2
	bit $9C82.w,X		; 3C 82 9C
	tad		; 5B
	sta $96.b,S		; 83 96
	adc ($A2.b,X)		; 61 A2
	ora #$E0.b		; 09 E0
	plp		; 28
	php		; 08
	rti		; 40

	asl A		; 0A
	pei ($20.b)		; D4 20
	cmp [$02.b],Y		; D7 02
	adc #$23.b		; 69 23
	jmp.w [$738C]		; DC 8C 73
	bit $CB.b,X		; 34 CB
	and [$D8.b]		; 27 D8
	bvc -61.b		; 50 C3
	inc $A9.b		; E6 A9
	bvs   5.b		; 70 05
	asl $3BA6.w		; 0E A6 3B
	lda ($B2.b),Y		; B1 B2
	cmp $65.b,X		; D5 65
	cmp $2C.b		; C5 2C
	ora ($7C.b)		; 12 7C
	ora ($F6.b,X)		; 01 F6
	brk $58.b		; 00 58
	ldx #$52.b		; A2 52
	ora #$5D.b		; 09 5D
	.db $82, $82, $68		; 82 82 68
	.db $42, $B8		; 42 B8
	lda ($5E.b,X)		; A1 5E
	mvp $0C,$08		; 44 08 0C
	tsb $4F3C.w		; 0C 3C 4F
	cmp ($91.b,X)		; C1 91
	sty $B0.b		; 84 B0
	sta ($76.b,S),Y		; 93 76
	php		; 08
	cmp [$45.b]		; C7 45
	lda $D7.b		; A5 D7
	jsr $20D7.w		; 20 D7 20
	bcs   2.b		; B0 02
	jmp $CD22.w		; 4C 22 CD
	cop $8B.b		; 02 8B
	rti		; 40

	bmi   8.b		; 30 08
	eor $0202.w,Y		; 59 02 02
	ora ($AA.b,X)		; 01 AA
	inc A		; 1A
	tyx		; BB
	lda $1852.w,Y		; B9 52 18
	sei		; 78
	phd		; 0B
	eor ($4B.b)		; 52 4B
	cmp $00.b,S		; C3 00
	adc ($A9.b),Y		; 71 A9
	inc $C701.w,X		; FE 01 C7
	bmi -122.b		; 30 86
	rti		; 40

	and [$C0.b],Y		; 37 C0
	bcs  69.b		; B0 45
	cpx #$15.b		; E0 15
	sbc $4702.w,X		; FD 02 47
	clc		; 18
	lda ($13.b,S),Y		; B3 13
	eor $A0.b,S		; 43 A0
	eor $E5D5.w		; 4D D5 E5
	inc $C1D8.w,X		; FE D8 C1
	inc $09.b,X		; F6 09
	lda $70E4.w,X		; BD E4 70
	stz $4C.b,X		; 74 4C
	ldy #$5F.b		; A0 5F
	jsr $200E.w		; 20 0E 20
	ora ($08.b,X)		; 01 08
	inc $A000.w,X		; FE 00 A0
	eor $8B102B.l,X		; 5F 2B 10 8B
	brk $81.b		; 00 81
	jmp ($3DD4.w,X)		; 7C D4 3D
	lda $9DC9.w,Y		; B9 C9 9D
	bit #$7E.b		; 89 7E
	txy		; 9B
	dex		; CA
	dec $8476.w		; CE 76 84
	rol $83C0.w,X		; 3E C0 83
	brk $42.b		; 00 42
	bra -124.b		; 80 84
	adc ($76.b)		; 72 76
	brk $0C.b		; 00 0C
	cpx #$41.b		; E0 41
	bit $69.b,X		; 34 69
	sta ($3F.b)		; 92 3F
	brk $60.b		; 00 60
	rol $6CA4.w		; 2E A4 6C
	pha		; 48
	eor #$A7.b		; 49 A7
	ldx #$A8.b		; A2 A8
	sty $EE1D.w		; 8C 1D EE
	jmp $82C642.l		; 5C 42 C6 82
	cmp ($00.b),Y		; D1 00
	ora ($80.b,S),Y		; 13 80
	ldx $00.b,Y		; B6 00
	eor $F900.w,X		; 5D 00 F9
	cop $11.b		; 02 11
	brk $C1.b		; 00 C1
	bit $007D.w,X		; 3C 7D 00
	tyx		; BB
	lda $F7.b,X		; B5 F7
	bpl  -2.b		; 10 FE
	sed		; F8
	lda $0400.w,X		; BD 00 04
	inc $18F8.w,X		; FE F8 18
	php		; 08
	inc $24F8.w,X		; FE F8 24
	cpy #$F8.b		; C0 F8
	ora $FE0C.w,Y		; 19 0C FE
	sbc $F8FE.w,X		; FD FE F8
	asl $F8C0.w		; 0E C0 F8
	rti		; 40

	tda		; 7B
	php		; 08
	jmp ($7D08.w,X)		; 7C 08 7D
	php		; 08
	ror $F8C0.w,X		; 7E C0 F8
	clc		; 18
	ora ($04.b,X)		; 01 04
	cop $04.b		; 02 04
	cmp ($BF.b,X)		; C1 BF
	ora $04.b,S		; 03 04
	sbc $05FEC0.l,X		; FF C0 FE 05
	tsb $0C06.w		; 0C 06 0C
	adc $FF800C.l,X		; 7F 0C 80 FF
	sbc [$C0.b],Y		; F7 C0
	sbc $0881.w,X		; FD 81 08
	.db $82, $08, $83		; 82 08 83
	php		; 08
	sty $08.b		; 84 08
	sta $08.b		; 85 08
	stx $C0.b		; 86 C0
	sed		; F8
	trb $07.b		; 14 07
	tsb $BF.b		; 04 BF
	beq   8.b		; F0 08
	tsb $09.b		; 04 09
	tsb $0A.b		; 04 0A
	tsb $0B.b		; 04 0B
	cpy #$FF.b		; C0 FF
	sbc $870C0D.l,X		; FF 0D 0C 87
	and ($FD.b,X)		; 21 FD
	tsb $B888.w		; 0C 88 B8
	jmp $89C0.w		; 4C C0 89
	php		; 08
	txa		; 8A
	php		; 08
	phb		; 8B
	cmp $8C08FF.l,X		; DF FF 08 8C
	php		; 08
	sta $8E08.w		; 8D 08 8E
	cpy #$F8.b		; C0 F8
	trb $0E.b		; 14 0E
	tsb $0F.b		; 04 0F
	tsb $10.b		; 04 10
	tsb $11.b		; 04 11
	tsb $7F.b		; 04 7F
	sed		; F8
	ora ($04.b)		; 12 04
	ora ($04.b,S),Y		; 13 04
	trb $04.b		; 14 04
	ora $44.b		; 05 44
	.db $82, $15, $0C		; 82 15 0C
	asl $0C.b,X		; 16 0C
	cmp $0C8FFF.l		; CF FF 8F 0C
	bcc  12.b		; 90 0C
	sta ($80.b),Y		; 91 80
	ora $88.b		; 05 88
	sta ($08.b)		; 92 08
	sta ($08.b,S),Y		; 93 08
	sty $FD.b,X		; 94 FD
	sbc $409508.l,X		; FF 08 95 40
	sed		; F8
	asl $17.b,X		; 16 17
	tsb $18.b		; 04 18
	tsb $19.b		; 04 19
	tsb $1A.b		; 04 1A
	tsb $1B.b		; 04 1B
	tsb $1C.b		; 04 1C
	tsb $FF.b		; 04 FF
	lda $1E041D.l,X		; BF 1D 04 1E
	tsb $1F.b		; 04 1F
	tsb $0C20.w		; 0C 20 0C
	and ($0C.b,X)		; 21 0C
	stx $0C.b,Y		; 96 0C
	sta [$0C.b],Y		; 97 0C
	tya		; 98
	adc $FD00FF.l,X		; 7F FF 00 FD
	sta $9A08.w,Y		; 99 08 9A
	php		; 08
	txy		; 9B
	php		; 08
	stz $F8C0.w		; 9C C0 F8
	asl $22.b,X		; 16 22
	tsb $23.b		; 04 23
	tsb $24.b		; 04 24
	tsb $E3.b		; 04 E3
	sbc $260425.l,X		; FF 25 04 26
	sty $27.b		; 84 27
	tsb $28.b		; 04 28
	tsb $29.b		; 04 29
	tsb $0C2A.w		; 0C 2A 0C
	pld		; 2B
	sta $9D0CFF.l,X		; 9F FF 0C 9D
	tsb $0C9E.w		; 0C 9E 0C
	sta $08A0C0.l,X		; 9F C0 A0 08
	lda ($08.b,X)		; A1 08
	ldx #$08.b		; A2 08
	xce		; FB
	sbc $A408A3.l,X		; FF A3 08 A4
	cpy #$F8.b		; C0 F8
	asl $2C.b,X		; 16 2C
	tsb $2D.b		; 04 2D
	tsb $2E.b		; 04 2E
	tsb $2F.b		; 04 2F
	tsb $30.b		; 04 30
	tsb $31.b		; 04 31
	sbc $32047F.l,X		; FF 7F 04 32
	tsb $33.b		; 04 33
	tsb $34.b		; 04 34
	tsb $0C35.w		; 0C 35 0C
	rol $0C.b,X		; 36 0C
	lda $0C.b		; A5 0C
	ldx $0C.b		; A6 0C
	lda [$FE.b]		; A7 FE
	lda $08A8C0.l,X		; BF C0 A8 08
	lda #$08.b		; A9 08
	tax		; AA
	php		; 08
	plb		; AB
	php		; 08
	ldy $AD08.w		; AC 08 AD
	sbc $F8C07F.l,X		; FF 7F C0 F8
	ora ($37.b)		; 12 37
	tsb $38.b		; 04 38
	tsb $39.b		; 04 39
	tsb $3A.b		; 04 3A
	tsb $3B.b		; 04 3B
	tsb $3C.b		; 04 3C
	tsb $3D.b		; 04 3D
	tsb $3E.b		; 04 3E
	jsr ($EE3F.w,X)		; FC 3F EE
	and $0C400C.l,X		; 3F 0C 40 0C
	eor ($0C.b,X)		; 41 0C
	ldx $AF0C.w		; AE 0C AF
	tsb $FFB0.w		; 0C B0 FF
	cmp $08B1C0.l,X		; DF C0 B1 08
	lda ($08.b)		; B2 08
	lda ($08.b,S),Y		; B3 08
	ldy $08.b,X		; B4 08
	lda $08.b,X		; B5 08
	ldx $C0.b,Y		; B6 C0
	sed		; F8
	ora ($FF.b)		; 12 FF
	and $430442.l,X		; 3F 42 04 43
	tsb $44.b		; 04 44
	tsb $45.b		; 04 45
	tsb $46.b		; 04 46
	tsb $47.b		; 04 47
	tsb $48.b		; 04 48
	tsb $49.b		; 04 49
	inc $EE9F.w,X		; FE 9F EE
	lsr A		; 4A
	tsb $0C4B.w		; 0C 4B 0C
	jmp $B70C.w		; 4C 0C B7
	tsb $0CB8.w		; 0C B8 0C
	lda $BFFF.w,Y		; B9 FF BF
	cpy #$BA.b		; C0 BA
	php		; 08
	tyx		; BB
	php		; 08
	ldy $BD08.w,X		; BC 08 BD
	php		; 08
	ldx $BF08.w,Y		; BE 08 BF
	php		; 08
	cpy #$FF.b		; C0 FF
	adc $10F8C0.l,X		; 7F C0 F8 10
	eor $4E04.w		; 4D 04 4E
	tsb $4F.b		; 04 4F
	tsb $50.b		; 04 50
	tsb $51.b		; 04 51
	tsb $52.b		; 04 52
	tsb $53.b		; 04 53
	tsb $54.b		; 04 54
	jsr ($EEBF.w,X)		; FC BF EE
	eor $0C.b,X		; 55 0C
	lsr $0C.b,X		; 56 0C
	eor [$0C.b],Y		; 57 0C
	cmp ($0C.b,X)		; C1 0C
	rep #$0C		; C2 0C
	cmp $FF.b,S		; C3 FF
	sbc [$C0.b],Y		; F7 C0
	sbc $C4.b,X		; F5 C4
	php		; 08
	cmp $08.b		; C5 08
	dec $08.b		; C6 08
	cmp [$08.b]		; C7 08
	iny		; C8
	php		; 08
	cmp #$C0.b		; C9 C0
	sed		; F8
	asl $0458.w		; 0E 58 04
	sbc $04593F.l,X		; FF 3F 59 04
	phy		; 5A
	tsb $5B.b		; 04 5B
	tsb $5C.b		; 04 5C
	tsb $5D.b		; 04 5D
	tsb $5E.b		; 04 5E
	tsb $5F.b		; 04 5F
	tsb $60.b		; 04 60
	inc $ECDF.w,X		; FE DF EC
	adc ($0C.b,X)		; 61 0C
	.db $62, $0C, $63		; 62 0C 63
	tsb $0CCA.w		; 0C CA 0C
	wai		; CB
	tsb $C0CC.w		; 0C CC C0
	sbc $F7FF.w,X		; FD FF F7
	cmp $CE08.w		; CD 08 CE
	php		; 08
	cmp $08D008.l		; CF 08 D0 08
	cmp ($08.b),Y		; D1 08
	ora $C8.b		; 05 C8
	cpy #$F8.b		; C0 F8
	ora $0464.w		; 0D 64 04
	sbc $04653F.l,X		; FF 3F 65 04
	ror $04.b		; 66 04
	adc [$04.b]		; 67 04
	pla		; 68
	tsb $69.b		; 04 69
	tsb $6A.b		; 04 6A
	tsb $6B.b		; 04 6B
	tsb $6C.b		; 04 6C
	inc $EC9F.w,X		; FE 9F EC
	adc $6E0C.w		; 6D 0C 6E
	tsb $0C6F.w		; 0C 6F 0C
	cmp ($0C.b)		; D2 0C
	cmp ($0C.b,S),Y		; D3 0C
	pei ($FF.b)		; D4 FF
	xce		; FB
	cpy #$D5.b		; C0 D5
	php		; 08
	dec $08.b,X		; D6 08
	cmp [$08.b],Y		; D7 08
	cld		; D8
	php		; 08
	cmp $F080.w,Y		; D9 80 F0
	ora ($70.b)		; 12 70
	tsb $71.b		; 04 71
	sbc $7204E7.l,X		; FF E7 04 72
	tsb $73.b		; 04 73
	tsb $74.b		; 04 74
	tsb $75.b		; 04 75
	tsb $76.b		; 04 76
	tsb $77.b		; 04 77
	cpy #$FF.b		; C0 FF
	sbc ($78.b,S),Y		; F3 78
	tsb $0C79.w		; 0C 79 0C
	ply		; 7A
	tsb $0CDA.w		; 0C DA 0C
	stp		; DB
	tsb $C0DC.w		; 0C DC C0
	cmp $FDFF.w,X		; DD FF FD
	php		; 08
	dec $DF08.w,X		; DE 08 DF
	php		; 08
	cpx #$08.b		; E0 08
	sbc ($08.b,X)		; E1 08
	sep #$C0		; E2 C0
	sed		; F8
	bpl -29.b		; 10 E3
	tsb $E4.b		; 04 E4
	tsb $FF.b		; 04 FF
	sbc ($E5.b,S),Y		; F3 E5
	tsb $E6.b		; 04 E6
	tsb $E7.b		; 04 E7
	tsb $E8.b		; 04 E8
	tsb $E9.b		; 04 E9
	tsb $EA.b		; 04 EA
	cpy #$EB.b		; C0 EB
	sbc $EC0CF9.l,X		; FF F9 0C EC
	tsb $0CED.w		; 0C ED 0C
	inc $EF0C.w		; EE 0C EF
	tsb $C0F0.w		; 0C F0 C0
	sbc ($08.b),Y		; F1 08
	sbc $08F2AA.l,X		; FF AA F2 08
	sbc ($08.b,S),Y		; F3 08
	pea $F508.w		; F4 08 F5
	php		; 08
	inc $C0.b,X		; F6 C0
	sed		; F8
	asl A		; 0A
	rti		; 40

	cld		; D8
	lda $FCF8FE.l,X		; BF FE F8 FC
	asl A		; 0A
	brk $FE.b		; 00 FE
	sed		; F8
	jsr ($C0C0.w,X)		; FC C0 C0
	sta $00.b		; 85 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF.w,X		; FD FF 00
	sbc $F0BEF8.l,X		; FF F8 BE F0
	stz $1E01.w,X		; 9E 01 1E
	cop $1E.b		; 02 1E
	ora $1E.b,S		; 03 1E
	tsb $1E.b		; 04 1E
	ora $1E.b		; 05 1E
	sbc $1E06FF.l,X		; FF FF 06 1E
	ora [$1E.b]		; 07 1E
	php		; 08
	asl $1E09.w,X		; 1E 09 1E
	asl A		; 0A
	asl $1E0B.w,X		; 1E 0B 1E
	tsb $0D1E.w		; 0C 1E 0D
	asl $FFFF.w,X		; 1E FF FF
	asl $0F1E.w		; 0E 1E 0F
	asl $DEFF.w,X		; 1E FF DE
	inc $FDDE.w,X		; FE DE FD
	dec $DEFC.w,X		; DE FC DE
	xce		; FB
	dec $DEFA.w,X		; DE FA DE
	sbc $DEF9FF.l,X		; FF FF F9 DE
	sed		; F8
	dec $DEF7.w,X		; DE F7 DE
	inc $DE.b,X		; F6 DE
	sbc $DE.b,X		; F5 DE
	pea $F3DE.w		; F4 DE F3
	dec $DEF2.w,X		; DE F2 DE
	sbc $DEF1FF.l,X		; FF FF F1 DE
	beq -34.b		; F0 DE
	bpl  30.b		; 10 1E
	ora ($1E.b),Y		; 11 1E
	ora ($1E.b)		; 12 1E
	ora ($1E.b,S),Y		; 13 1E
	trb $1E.b		; 14 1E
	ora $1E.b,X		; 15 1E
	sbc $1E167F.l,X		; FF 7F 16 1E
	ora [$1E.b],Y		; 17 1E
	clc		; 18
	asl $1E19.w,X		; 1E 19 1E
	inc A		; 1A
	asl $1E1B.w,X		; 1E 1B 1E
	trb $1D1E.w		; 1C 1E 1D
	asl $FFF8.w,X		; 1E F8 FF
	sbc $EF1E1F.l,X		; FF 1F 1E EF
	dec $DEEE.w,X		; DE EE DE
	sbc $ECDE.w		; ED DE EC
	dec $DEEB.w,X		; DE EB DE
	sbc $DEEAFF.l,X		; FF FF EA DE
	sbc #$DE.b		; E9 DE
	inx		; E8
	dec $DEE7.w,X		; DE E7 DE
	inc $DE.b		; E6 DE
	sbc $DE.b		; E5 DE
	cpx $DE.b		; E4 DE
	sbc $DE.b,S		; E3 DE
	sbc $DEE2FF.l,X		; FF FF E2 DE
	sbc ($DE.b,X)		; E1 DE
	cpx #$DE.b		; E0 DE
	jsr $211E.w		; 20 1E 21
	asl $1E22.w,X		; 1E 22 1E
	and $1E.b,S		; 23 1E
	bit $1E.b		; 24 1E
	sbc $1E25FF.l,X		; FF FF 25 1E
	rol $1E.b		; 26 1E
	and [$1E.b]		; 27 1E
	plp		; 28
	asl $1E29.w,X		; 1E 29 1E
	rol A		; 2A
	asl $1E2B.w,X		; 1E 2B 1E
	bit $7F1E.w		; 2C 1E 7F
	sed		; F8
	and $2E1E.w		; 2D 1E 2E
	asl $1E2F.w,X		; 1E 2F 1E
	cmp $DDFFDE.l,X		; DF DE FF DD
	dec $DEDC.w,X		; DE DC DE
	sbc $DEDBFF.l,X		; FF FF DB DE
	phx		; DA
	dec $DED9.w,X		; DE D9 DE
	cld		; D8
	dec $DED7.w,X		; DE D7 DE
	dec $DE.b,X		; D6 DE
	cmp $DE.b,X		; D5 DE
	pei ($DE.b)		; D4 DE
	sbc $DED3FF.l,X		; FF FF D3 DE
	cmp ($DE.b)		; D2 DE
	cmp ($DE.b),Y		; D1 DE
	bne -34.b		; D0 DE
	bmi  30.b		; 30 1E
	and ($1E.b),Y		; 31 1E
	and ($1E.b)		; 32 1E
	and ($1E.b,S),Y		; 33 1E
	sbc $1E34FF.l,X		; FF FF 34 1E
	and $1E.b,X		; 35 1E
	rol $1E.b,X		; 36 1E
	and [$1E.b],Y		; 37 1E
	sec		; 38
	asl $1E39.w,X		; 1E 39 1E
	dec A		; 3A
	asl $1E3B.w,X		; 1E 3B 1E
	sbc $1E3CFF.l,X		; FF FF 3C 1E
	and $3E1E.w,X		; 3D 1E 3E
	asl $1E3F.w,X		; 1E 3F 1E
	cmp $DECEDE.l		; CF DE CE DE
	cmp $CCDE.w		; CD DE CC
	dec $FFFF.w,X		; DE FF FF
	wai		; CB
	dec $DECA.w,X		; DE CA DE
	cmp #$DE.b		; C9 DE
	iny		; C8
	dec $DEC7.w,X		; DE C7 DE
	dec $DE.b		; C6 DE
	cmp $DE.b		; C5 DE
	cpy $DE.b		; C4 DE
	sbc $DEC3FF.l,X		; FF FF C3 DE
.INDEX 16
	rep #$DE		; C2 DE
	cmp ($DE.b,X)		; C1 DE
	cpy #$40DE.w		; C0 DE 40
	asl $1E41.w,X		; 1E 41 1E
	.db $42, $1E		; 42 1E
	eor $1E.b,S		; 43 1E
	sbc $1E44FF.l,X		; FF FF 44 1E
	eor $1E.b		; 45 1E
	lsr $1E.b		; 46 1E
	eor [$1E.b]		; 47 1E
	pha		; 48
	asl $1E49.w,X		; 1E 49 1E
	lsr A		; 4A
	asl $1E4B.w,X		; 1E 4B 1E
	sbc $1E4CFF.l,X		; FF FF 4C 1E
	eor $4E1E.w		; 4D 1E 4E
	asl $1E4F.w,X		; 1E 4F 1E
	lda $DEBEDE.l,X		; BF DE BE DE
	lda $BCDE.w,X		; BD DE BC
	dec $FFFF.w,X		; DE FF FF
	tyx		; BB
	dec $DEBA.w,X		; DE BA DE
	lda $B8DE.w,Y		; B9 DE B8
	dec $DEB7.w,X		; DE B7 DE
	ldx $DE.b,Y		; B6 DE
	lda $DE.b,X		; B5 DE
	ldy $DE.b,X		; B4 DE
	sbc $DEB3FF.l,X		; FF FF B3 DE
	lda ($DE.b)		; B2 DE
	lda ($DE.b),Y		; B1 DE
	bcs -34.b		; B0 DE
	bvc  30.b		; 50 1E
	eor ($1E.b),Y		; 51 1E
	eor ($1E.b)		; 52 1E
	eor ($1E.b,S),Y		; 53 1E
	sbc $1E54FF.l,X		; FF FF 54 1E
	eor $1E.b,X		; 55 1E
	lsr $1E.b,X		; 56 1E
	eor [$1E.b],Y		; 57 1E
	cli		; 58
	asl $1E59.w,X		; 1E 59 1E
	phy		; 5A
	asl $1E5B.w,X		; 1E 5B 1E
	sbc $1E5CFF.l,X		; FF FF 5C 1E
	eor $5E1E.w,X		; 5D 1E 5E
	asl $1E5F.w,X		; 1E 5F 1E
	lda $DEAEDE.l		; AF DE AE DE
	lda $ACDE.w		; AD DE AC
	dec $FFFF.w,X		; DE FF FF
	plb		; AB
	dec $DEAA.w,X		; DE AA DE
	lda #$DE.b		; A9 DE
	tay		; A8
	dec $DEA7.w,X		; DE A7 DE
	ldx $DE.b		; A6 DE
	lda $DE.b		; A5 DE
	ldy $DE.b		; A4 DE
	sbc $DEA3FF.l,X		; FF FF A3 DE
	ldx #$A1DE.w		; A2 DE A1
	dec $DEA0.w,X		; DE A0 DE
	rts		; 60

	asl $1E61.w,X		; 1E 61 1E
	.db $62, $1E, $63		; 62 1E 63
	asl $FFFF.w,X		; 1E FF FF
	stz $1E.b		; 64 1E
	adc $1E.b		; 65 1E
	ror $1E.b		; 66 1E
	adc [$1E.b]		; 67 1E
	pla		; 68
	asl $1E69.w,X		; 1E 69 1E
	ror A		; 6A
	asl $1E6B.w,X		; 1E 6B 1E
	sbc $1E6CFF.l,X		; FF FF 6C 1E
	adc $6E1E.w		; 6D 1E 6E
	asl $1E6F.w,X		; 1E 6F 1E
	sta $DE9EDE.l,X		; 9F DE 9E DE
	sta $9CDE.w,X		; 9D DE 9C
	dec $FFFF.w,X		; DE FF FF
	txy		; 9B
	dec $DE9A.w,X		; DE 9A DE
	sta $98DE.w,Y		; 99 DE 98
	dec $DE97.w,X		; DE 97 DE
	stx $DE.b,Y		; 96 DE
	sta $DE.b,X		; 95 DE
	sty $DE.b,X		; 94 DE
	sbc $DE93FF.l,X		; FF FF 93 DE
	sta ($DE.b)		; 92 DE
	sta ($DE.b),Y		; 91 DE
	bcc -34.b		; 90 DE
	bvs  30.b		; 70 1E
	adc ($1E.b),Y		; 71 1E
	adc ($1E.b)		; 72 1E
	adc ($1E.b,S),Y		; 73 1E
	sbc $1E74FF.l,X		; FF FF 74 1E
	adc $1E.b,X		; 75 1E
	ror $1E.b,X		; 76 1E
	adc [$1E.b],Y		; 77 1E
	sei		; 78
	asl $1E79.w,X		; 1E 79 1E
	ply		; 7A
	asl $1E7B.w,X		; 1E 7B 1E
	sbc $1E7CFF.l,X		; FF FF 7C 1E
	adc $7E1E.w,X		; 7D 1E 7E
	asl $1E7F.w,X		; 1E 7F 1E
	sta $DE8EDE.l		; 8F DE 8E DE
	sta $8CDE.w		; 8D DE 8C
	dec $FFFF.w,X		; DE FF FF
	phb		; 8B
	dec $DE8A.w,X		; DE 8A DE
	bit #$DE.b		; 89 DE
	dey		; 88
	dec $DE87.w,X		; DE 87 DE
	stx $DE.b		; 86 DE
	sta $DE.b		; 85 DE
	sty $DE.b		; 84 DE
	and $DE83FC.l,X		; 3F FC 83 DE
	.db $82, $DE, $81		; 82 DE 81
	dec $FE80.w,X		; DE 80 FE
	asl $1E81.w,X		; 1E 81 1E
	.db $82, $1E, $FF		; 82 1E FF
	sbc $841E83.l,X		; FF 83 1E 84
	asl $1E85.w,X		; 1E 85 1E
	stx $1E.b		; 86 1E
	sta [$1E.b]		; 87 1E
	dey		; 88
	asl $1E89.w,X		; 1E 89 1E
	txa		; 8A
	asl $C03F.w,X		; 1E 3F C0
	phb		; 8B
	asl $1E8C.w,X		; 1E 8C 1E
	sta $8E1E.w		; 8D 1E 8E
.ACCU 16
.INDEX 16
	rep #$BE		; C2 BE
	dec $FFFF.w,X		; DE FF FF
	ror $7DDE.w,X		; 7E DE 7D
	dec $DE7C.w,X		; DE 7C DE
	tda		; 7B
	dec $DE7A.w,X		; DE 7A DE
	adc $78DE.w,Y		; 79 DE 78
	dec $DE77.w,X		; DE 77 DE
	sbc $DE7603.l,X		; FF 03 76 DE
	adc $DE.b,X		; 75 DE
	stz $DE.b,X		; 74 DE
	adc ($DE.b,S),Y		; 73 DE
	adc ($DE.b)		; 72 DE
	adc ($82.b),Y		; 71 82
	jsr ($7EFF.w,X)		; FC FF 7E
	asl $1E91.w,X		; 1E 91 1E
	sta ($1E.b)		; 92 1E
	sta ($1E.b,S),Y		; 93 1E
	sty $1E.b,X		; 94 1E
	sta $1E.b,X		; 95 1E
	stx $1E.b,Y		; 96 1E
	sbc $1E973F.l,X		; FF 3F 97 1E
	tya		; 98
	asl $1E99.w,X		; 1E 99 1E
	txs		; 9A
	asl $1E9B.w,X		; 1E 9B 1E
	stz $9D1E.w		; 9C 1E 9D
	asl $C09E.w,X		; 1E 9E C0
	sbc $DE3E42.l,X		; FF 42 3E DE
	ror $6DDE.w		; 6E DE 6D
	dec $DE6C.w,X		; DE 6C DE
	rtl		; 6B

	dec $FFFF.w,X		; DE FF FF
	ror A		; 6A
	dec $DE69.w,X		; DE 69 DE
	pla		; 68
	dec $DE67.w,X		; DE 67 DE
	ror $DE.b		; 66 DE
	adc $DE.b		; 65 DE
	stz $DE.b		; 64 DE
	adc $DE.b,S		; 63 DE
	cmp $FF.b,S		; C3 FF
	.db $62, $DE, $61		; 62 DE 61
	cop $DE.b		; 02 DE
	ldy #$A11E.w		; A0 1E A1
	asl $1EA2.w,X		; 1E A2 1E
	lda $1E.b,S		; A3 1E
	sbc $1EA4FF.l,X		; FF FF A4 1E
	lda $1E.b		; A5 1E
	ldx $1E.b		; A6 1E
	lda [$1E.b]		; A7 1E
	tay		; A8
	asl $1EA9.w,X		; 1E A9 1E
	tax		; AA
	asl $1EAB.w,X		; 1E AB 1E
	sbc $1EACFF.l,X		; FF FF AC 1E
	lda $AE1E.w		; AD 1E AE
	asl $1EAF.w,X		; 1E AF 1E
	eor $DE5EDE.l,X		; 5F DE 5E DE
	eor $5CDE.w,X		; 5D DE 5C
	dec $FFFF.w,X		; DE FF FF
	tad		; 5B
	dec $DE5A.w,X		; DE 5A DE
	eor $58DE.w,Y		; 59 DE 58
	dec $DE57.w,X		; DE 57 DE
	lsr $DE.b,X		; 56 DE
	eor $DE.b,X		; 55 DE
	mvn $FF,$DE		; 54 DE FF
	sbc $52DE53.l,X		; FF 53 DE 52
	dec $DE51.w,X		; DE 51 DE
	bvc -34.b		; 50 DE
	bcs  30.b		; B0 1E
	lda ($1E.b),Y		; B1 1E
	lda ($1E.b)		; B2 1E
	lda ($1E.b,S),Y		; B3 1E
	sbc $1EB4FF.l,X		; FF FF B4 1E
	lda $1E.b,X		; B5 1E
	ldx $1E.b,Y		; B6 1E
	lda [$1E.b],Y		; B7 1E
	clv		; B8
	asl $1EB9.w,X		; 1E B9 1E
	tsx		; BA
	asl $1EBB.w,X		; 1E BB 1E
	sbc $1EBCFF.l,X		; FF FF BC 1E
	lda $BE1E.w,X		; BD 1E BE
	asl $1EBF.w,X		; 1E BF 1E
	eor $DE4EDE.l		; 4F DE 4E DE
	eor $4CDE.w		; 4D DE 4C
	dec $FFFF.w,X		; DE FF FF
	phk		; 4B
	dec $DE4A.w,X		; DE 4A DE
	eor #$48DE.w		; 49 DE 48
	dec $DE47.w,X		; DE 47 DE
	lsr $DE.b		; 46 DE
	eor $DE.b		; 45 DE
	mvp $FF,$DE		; 44 DE FF
	sbc $42DE43.l,X		; FF 43 DE 42
	dec $DE41.w,X		; DE 41 DE
	rti		; 40

	dec $1EC0.w,X		; DE C0 1E
	cmp ($1E.b,X)		; C1 1E
.INDEX 16
	rep #$1E		; C2 1E
	cmp $1E.b,S		; C3 1E
	sbc $1EC4FF.l,X		; FF FF C4 1E
	cmp $1E.b		; C5 1E
	dec $1E.b		; C6 1E
	cmp [$1E.b]		; C7 1E
	iny		; C8
	asl $1EC9.w,X		; 1E C9 1E
	dex		; CA
	asl $1ECB.w,X		; 1E CB 1E
	sbc $1ECCFF.l,X		; FF FF CC 1E
	cmp $CE1E.w		; CD 1E CE
	asl $1ECF.w,X		; 1E CF 1E
	and $DE3EDE.l,X		; 3F DE 3E DE
	and $3CDE.w,X		; 3D DE 3C
	dec $FFFF.w,X		; DE FF FF
	tsa		; 3B
	dec $DE3A.w,X		; DE 3A DE
	and $38DE.w,Y		; 39 DE 38
	dec $DE37.w,X		; DE 37 DE
	rol $DE.b,X		; 36 DE
	and $DE.b,X		; 35 DE
	bit $DE.b,X		; 34 DE
	sbc $DE33FF.l,X		; FF FF 33 DE
	and ($DE.b)		; 32 DE
	and ($DE.b),Y		; 31 DE
	bmi -34.b		; 30 DE
	bne  30.b		; D0 1E
	cmp ($1E.b),Y		; D1 1E
	cmp ($1E.b)		; D2 1E
	cmp ($1E.b,S),Y		; D3 1E
	sbc $1ED4FF.l,X		; FF FF D4 1E
	cmp $1E.b,X		; D5 1E
	dec $1E.b,X		; D6 1E
	cmp [$1E.b],Y		; D7 1E
	cld		; D8
	asl $1ED9.w,X		; 1E D9 1E
	phx		; DA
	asl $1EDB.w,X		; 1E DB 1E
	sbc $1EDCFF.l,X		; FF FF DC 1E
	cmp $DE1E.w,X		; DD 1E DE
	asl $1EDF.w,X		; 1E DF 1E
	and $DE2EDE.l		; 2F DE 2E DE
	and $2CDE.w		; 2D DE 2C
	dec $FFFF.w,X		; DE FF FF
	pld		; 2B
	dec $DE2A.w,X		; DE 2A DE
	and #$28DE.w		; 29 DE 28
	dec $DE27.w,X		; DE 27 DE
	rol $DE.b		; 26 DE
	and $DE.b		; 25 DE
	bit $DE.b		; 24 DE
	sbc $DE23FF.l,X		; FF FF 23 DE
	jsl $DE21DE.l		; 22 DE 21 DE
	jsr $E0DE.w		; 20 DE E0
	asl $1EE1.w,X		; 1E E1 1E
.INDEX 8
	sep #$1E		; E2 1E
	sbc $1E.b,S		; E3 1E
	sbc $1EE4FF.l,X		; FF FF E4 1E
	sbc $1E.b		; E5 1E
	inc $1E.b		; E6 1E
	sbc [$1E.b]		; E7 1E
	inx		; E8
	asl $1EE9.w,X		; 1E E9 1E
	nop		; EA
	asl $1EEB.w,X		; 1E EB 1E
	sbc $1EECF0.l,X		; FF F0 EC 1E
	sbc $EE1E.w		; ED 1E EE
	asl $1EEF.w,X		; 1E EF 1E
	ora $1DDEBB.l,X		; 1F BB DE 1D
	dec $FFFF.w,X		; DE FF FF
	trb $1BDE.w		; 1C DE 1B
	dec $DE1A.w,X		; DE 1A DE
	ora $18DE.w,Y		; 19 DE 18
	dec $DE17.w,X		; DE 17 DE
	asl $DE.b,X		; 16 DE
	ora $DE.b,X		; 15 DE
	sbc $DE14FF.l,X		; FF FF 14 DE
	ora ($DE.b,S),Y		; 13 DE
	ora ($DE.b)		; 12 DE
	ora ($DE.b),Y		; 11 DE
	bpl -34.b		; 10 DE
	beq  30.b		; F0 1E
	sbc ($1E.b),Y		; F1 1E
	sbc ($1E.b)		; F2 1E
	sbc $1EF3FF.l,X		; FF FF F3 1E
	pea $F51E.w		; F4 1E F5
	asl $1EF6.w,X		; 1E F6 1E
	sbc [$1E.b],Y		; F7 1E
	sed		; F8
	asl $1EF9.w,X		; 1E F9 1E
	plx		; FA
	asl $FFFF.w,X		; 1E FF FF
	xce		; FB
	asl $1EFC.w,X		; 1E FC 1E
	sbc $FE1E.w,X		; FD 1E FE
	asl $1EFF.w,X		; 1E FF 1E
	ora $DE0EDE.l		; 0F DE 0E DE
	ora $FFDE.w		; 0D DE FF
	sbc $0BDE0C.l,X		; FF 0C DE 0B
	dec $DE0A.w,X		; DE 0A DE
	ora #$08DE.w		; 09 DE 08
	dec $DE07.w,X		; DE 07 DE
	asl $DE.b		; 06 DE
	ora $DE.b		; 05 DE
	and $DE0454.l,X		; 3F 54 04 DE
	ora $DE.b,S		; 03 DE
	cop $DE.b		; 02 DE
	ora ($C2.b,X)		; 01 C2
	lsr $D840.w,X		; 5E 40 D8
	lda $FCF8FF.l,X		; BF FF F8 FC
	ora $00.b,X		; 15 00
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	sta $00.b		; 85 00
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
	brk $0E.b		; 00 0E
	rts		; 60

	phx		; DA
	xce		; FB
	lda [$4E.b]		; A7 4E
	stx $042C.w		; 8E 2C 04
	pla		; 68
	bcc  31.b		; 90 1F
	ora $0A.b,S		; 03 0A
	bra   8.b		; 80 08
	ora ($08.b,X)		; 01 08
	bmi   0.b		; 30 00
	bit $02.b		; 24 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $82.b		; 00 82
	brk $00.b		; 00 00
	asl A		; 0A
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	tsb $0000.w		; 0C 00 00
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	bpl   2.b		; 10 02
	jsr $1010.w		; 20 10 10
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cop $40.b		; 02 40
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
	ldx #$C0.b		; A2 C0
	jmp $0018.w		; 4C 18 00
	tsb $01.b		; 04 01
	cop $08.b		; 02 08
	cop $B6.b		; 02 B6
	asl $0A.b,X		; 16 0A
	bpl   4.b		; 10 04
	plp		; 28
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	php		; 08
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
	brk $FA.b		; 00 FA
	bra 121.b		; 80 79
	sta ($04.b,X)		; 81 04
	.db $82, $65, $82		; 82 65 82
	nop		; EA
	.db $82, $75, $83		; 82 75 83
	pea $6183.w		; F4 83 61
	sty $E0.b		; 84 E0
	sty $2F.b		; 84 2F
	sta $F6.b		; 85 F6
	sta $B7.b		; 85 B7
	stx $72.b		; 86 72
	sta [$0F.b]		; 87 0F
	dey		; 88
	sty $88.b,X		; 94 88
	ora $896889.l,X		; 1F 89 68 89
	sbc [$89.b]		; E7 89
	ror $8A.b		; 66 8A
	cmp $8B588A.l,X		; DF 8A 58 8B
	sbc $8C808B.l		; EF 8B 80 8C
	ora $8D.b		; 05 8D
	sty $8D.b		; 84 8D
	and [$8E.b]		; 27 8E
	ldx $8E.b		; A6 8E
	and $C28F.w,X		; 3D 8F C2
	sta $84902F.l		; 8F 2F 90 84
	bcc -21.b		; 90 EB
	bcc  64.b		; 90 40
	sta ($B9.b),Y		; 91 B9
	sta ($08.b),Y		; 91 08
	sta ($81.b)		; 92 81
	sta ($E2.b)		; 92 E2
	sta ($91.b)		; 92 91
	sta ($34.b,S),Y		; 93 34
	sty $D1.b,X		; 94 D1
	sty $44.b,X		; 94 44
	sta $CF.b,X		; 95 CF
	sta $5A.b,X		; 95 5A
	stx $03.b,Y		; 96 03
	sta [$76.b],Y		; 97 76
	sta [$EF.b],Y		; 97 EF
	sta [$6E.b],Y		; 97 6E
	tya		; 98
	sbc $7298.w		; ED 98 72
	sta $99FD.w,Y		; 99 FD 99
	jmp ($019A.w,X)		; 7C 9A 01
	txy		; 9B
	iny		; C8
	txy		; 9B
	adc [$9C.b],Y		; 77 9C
	nop		; EA
	stz $9D81.w		; 9C 81 9D
	pea $619D.w		; F4 9D 61
	stz $9EF2.w,X		; 9E F2 9E
	adc $9F.b		; 65 9F
	nop		; EA
	sta $BEA03F.l,X		; 9F 3F A0 BE
	ldy #$19.b		; A0 19
	lda ($9E.b,X)		; A1 9E
	lda ($41.b,X)		; A1 41
	ldx #$F0.b		; A2 F0
	ldx #$9F.b		; A2 9F
	lda $18.b,S		; A3 18
	ldy $91.b		; A4 91
	ldy $10.b		; A4 10
	lda $77.b		; A5 77
	lda $02.b		; A5 02
	ldx $99.b		; A6 99
	ldx $18.b		; A6 18
	lda [$C7.b]		; A7 C7
	lda [$46.b]		; A7 46
	tay		; A8
	cmp $8CA8.w,X		; DD A8 8C
	lda #$AA23.w		; A9 23 AA
	stz $33AA.w		; 9C AA 33
	plb		; AB
	lda ($AB.b)		; B2 AB
	eor $AC98AC.l		; 4F AC 98 AC
	eor ($AD.b,X)		; 41 AD
	cop $AE.b		; 02 AE
	cmp $AE.b,S		; C3 AE
	adc ($AF.b)		; 72 AF
	and [$B0.b]		; 27 B0
	ldy $4FB0.w		; AC B0 4F
	lda ($0A.b),Y		; B1 0A
	lda ($D1.b)		; B2 D1
	lda ($A4.b)		; B2 A4
	lda ($83.b,S),Y		; B3 83
	ldy $62.b,X		; B4 62
	lda $E1.b,X		; B5 E1
	lda $42.b,X		; B5 42
	ldx $C7.b,Y		; B6 C7
	ldx $34.b,Y		; B6 34
	lda [$B3.b],Y		; B7 B3
	lda [$14.b],Y		; B7 14
	clv		; B8
	sta $06B8.w,Y		; 99 B8 06
	lda $B985.w,Y		; B9 85 B9
	tsb $BA.b		; 04 BA
	adc $BA.b		; 65 BA
	nop		; EA
	tsx		; BA
	eor [$BB.b],Y		; 57 BB
	dec $BB.b,X		; D6 BB
	and $BC.b		; 25 BC
	tax		; AA
	ldy $BD2F.w,X		; BC 2F BD
	ldy $BD.b,X		; B4 BD
	and $00BE.w,Y		; 39 BE 00
	lda $7CBFD3.l,X		; BF D3 BF 7C
	cpy #$43.b		; C0 43
	cmp ($D4.b,X)		; C1 D4
	cmp ($3B.b,X)		; C1 3B
	rep #$C0		; C2 C0
.ACCU 16
	rep #$27		; C2 27
	cmp $B2.b,S		; C3 B2
	cmp $15.b,S		; C3 15
	inc $A702.w		; EE 02 A7
	php		; 08
	brk $48.b		; 00 48
	nop		; EA
	asl $BF.b		; 06 BF
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $BF.b,X		; F6 BF
	php		; 08
	tsb $48.b		; 04 48
	nop		; EA
	asl $CF.b		; 06 CF
	php		; 08
	asl $48.b		; 06 48
	plx		; FA
	inc $CF.b,X		; F6 CF
	php		; 08
	php		; 08
	pha		; 48
	ora $F3.b		; 05 F3
	xba		; EB
	brk $0A.b		; 00 0A
	rti		; 40

	sbc $00EA09.l		; EF 09 EA 00
	phd		; 0B
	rti		; 40

	php		; 08
	beq -13.b		; F0 F3
	brk $0C.b		; 00 0C
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cmp $400D00.l,X		; DF 00 0D 40
	sbc $DFFF.w,Y		; F9 FF DF
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $400F00.l,X		; DF 00 0F 40
	asl A		; 0A
	inc $00C5.w		; EE C5 00
	inc A		; 1A
	rti		; 40

	inc $F20A.w		; EE 0A F2
	brk $1B.b		; 00 1B
	rti		; 40

	inc $FA0A.w		; EE 0A FA
	brk $1C.b		; 00 1C
	rti		; 40

	asl $F2.b		; 06 F2
	xce		; FB
	brk $1D.b		; 00 1D
	rti		; 40

	asl $FBEA.w		; 0E EA FB
	brk $1E.b		; 00 1E
	rti		; 40

	xba		; EB
	ora $00B7.w		; 0D B7 00
	ora $05F340.l,X		; 1F 40 F3 05
	lda [$00.b],Y		; B7 00
	jsr $FB40.w		; 20 40 FB
	sbc $00B7.w,X		; FD B7 00
	and ($40.b,X)		; 21 40
	sbc ($05.b,S),Y		; F3 05
	sbc [$00.b]		; E7 00
	jsl $F50340.l		; 22 40 03 F5
	sbc [$00.b]		; E7 00
	and $40.b,S		; 23 40
	ora [$E4.b],Y		; 17 E4
	tsb $08AB.w		; 0C AB 08
	brk $48.b		; 00 48
	cpx $0C.b		; E4 0C
	tyx		; BB
	php		; 08
	cop $48.b		; 02 48
	pea $BBFC.w		; F4 FC BB
	php		; 08
	tsb $48.b		; 04 48
	inc $0A.b		; E6 0A
	wai		; CB
	php		; 08
	asl $48.b		; 06 48
	inc $FA.b,X		; F6 FA
	wai		; CB
	php		; 08
	php		; 08
	pha		; 48
	asl $F2.b		; 06 F2
	wai		; CB
	brk $0A.b		; 00 0A
	rti		; 40

	inc $F30A.w		; EE 0A F3
	brk $0B.b		; 00 0B
	rti		; 40

	inc $FB0A.w		; EE 0A FB
	brk $0C.b		; 00 0C
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $00.b,S		; C3 00
	ora $F440.w		; 0D 40 F4
	tsb $B3.b		; 04 B3
	brk $0E.b		; 00 0E
	rti		; 40

	inc $12.b		; E6 12
	stp		; DB
	brk $0F.b		; 00 0F
	rti		; 40

	inc $DB0A.w		; EE 0A DB
	brk $1A.b		; 00 1A
	rti		; 40

	inc $02.b,X		; F6 02
	stp		; DB
	brk $1B.b		; 00 1B
	rti		; 40

	inc $DBFA.w,X		; FE FA DB
	brk $1C.b		; 00 1C
	rti		; 40

	ora [$F1.b]		; 07 F1
	beq   0.b		; F0 00
	ora $0740.w,X		; 1D 40 07
	sbc ($F8.b),Y		; F1 F8
	brk $1E.b		; 00 1E
	rti		; 40

	ora $00F8E9.l		; 0F E9 F8 00
	ora $0FE940.l,X		; 1F 40 E9 0F
	lda $00.b,S		; A3 00
	jsr $F140.w		; 20 40 F1
	ora [$E3.b]		; 07 E3
	brk $21.b		; 00 21
	rti		; 40

	sbc $E3FF.w,Y		; F9 FF E3
	brk $22.b		; 00 22
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc $00.b,S		; E3 00
	and $40.b,S		; 23 40
	sbc ($07.b),Y		; F1 07
	xba		; EB
	brk $24.b		; 00 24
	rti		; 40

	ora $F5.b,S		; 03 F5
	nop		; EA
	brk $25.b		; 00 25
	rti		; 40

	bpl -17.b		; 10 EF
	ora ($A9.b,X)		; 01 A9
	php		; 08
	brk $48.b		; 00 48
	sbc $08B901.l		; EF 01 B9 08
	cop $48.b		; 02 48
	sbc $08C901.l		; EF 01 C9 08
	tsb $48.b		; 04 48
	cmp $08B911.l,X		; DF 11 B9 08
	asl $48.b		; 06 48
	beq   0.b		; F0 00
	cmp $0808.w,Y		; D9 08 08
	pha		; 48
	beq   0.b		; F0 00
	sbc #$0A08.w		; E9 08 0A
	pha		; 48
	sbc $03.b,X		; F5 03
	sbc $0C00.w,Y		; F9 00 0C
	rti		; 40

	sbc $F9FB.w,X		; FD FB F9
	brk $0D.b		; 00 0D
	rti		; 40

	inc $02.b,X		; F6 02
	lda ($00.b,X)		; A1 00
	asl $E740.w		; 0E 40 E7
	ora ($B1.b),Y		; 11 B1
	brk $0F.b		; 00 0F
	rti		; 40

	cmp $00C919.l,X		; DF 19 C9 00
	trb $E740.w		; 1C 40 E7
	ora ($C9.b),Y		; 11 C9
	brk $1D.b		; 00 1D
	rti		; 40

	sbc [$11.b]		; E7 11
	cmp ($00.b),Y		; D1 00
	asl $FF40.w,X		; 1E 40 FF
	sbc $00C8.w,Y		; F9 C8 00
	ora $F9FF40.l,X		; 1F 40 FF F9
	lda #$2000.w		; A9 00 20
	rti		; 40

	sbc $F90B.w		; ED 0B F9
	brk $21.b		; 00 21
	rti		; 40

	asl $E4.b,X		; 16 E4
	tsb $08B9.w		; 0C B9 08
	brk $48.b		; 00 48
	pea $AEFC.w		; F4 FC AE
	php		; 08
	cop $48.b		; 02 48
	pea $BEFC.w		; F4 FC BE
	php		; 08
	tsb $48.b		; 04 48
	sbc $08CE01.l		; EF 01 CE 08
	asl $48.b		; 06 48
	sbc ($FD.b,S),Y		; F3 FD
	dec $0808.w,X		; DE 08 08
	pha		; 48
	tsb $F4.b		; 04 F4
	ldy $00.b,X		; B4 00
	asl A		; 0A
	rti		; 40

	jsr ($EEFC.w,X)		; FC FC EE
	brk $0B.b		; 00 0B
	rti		; 40

	cpx $B10C.w		; EC 0C B1
	brk $0C.b		; 00 0C
	rti		; 40

	cpx $14.b		; E4 14
	cmp #$0D00.w		; C9 00 0D
	rti		; 40

	tsb $B0EC.w		; 0C EC B0
	brk $0E.b		; 00 0E
	rti		; 40

	inc $F60A.w		; EE 0A F6
	brk $0F.b		; 00 0F
	rti		; 40

	inc $FE0A.w		; EE 0A FE
	brk $1A.b		; 00 1A
	rti		; 40

	sbc [$11.b]		; E7 11
	cmp ($00.b),Y		; D1 00
	tas		; 1B
	rti		; 40

	cpx $C90C.w		; EC 0C C9
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $00CEF9.l,X		; FF F9 CE 00
	ora $FF40.w,X		; 1D 40 FF
	sbc $00D6.w,Y		; F9 D6 00
	asl $0040.w,X		; 1E 40 00
	sed		; F8
	ldx $00.b		; A6 00
	ora $08F040.l,X		; 1F 40 F0 08
	inc $2000.w		; EE 00 20
	rti		; 40

	ora $F5.b,S		; 03 F5
	plx		; FA
	brk $21.b		; 00 21
	rti		; 40

	xce		; FB
	sbc $00F6.w,X		; FD F6 00
	jsl $FDFB40.l		; 22 40 FB FD
	inc $2300.w,X		; FE 00 23
	rti		; 40

	tsb $F4.b		; 04 F4
	ldy $2400.w		; AC 00 24
	rti		; 40

	ora [$F0.b],Y		; 17 F0
	brk $D9.b		; 00 D9
	php		; 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	cmp $0208.w,Y		; D9 08 02
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b,X)		; C1 08
	tsb $48.b		; 04 48
	ora $F3.b		; 05 F3
	sbc $0600.w,Y		; F9 00 06
	rti		; 40

	ora $F9EB.w		; 0D EB F9
	brk $07.b		; 00 07
	rti		; 40

	bpl -24.b		; 10 E8
	cmp ($00.b),Y		; D1 00
	php		; 08
	rti		; 40

	sbc $F90B.w		; ED 0B F9
	brk $09.b		; 00 09
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc $0A00.w,Y		; F9 00 0A
	rti		; 40

	bpl -24.b		; 10 E8
	cmp $0B00.w,Y		; D9 00 0B
	rti		; 40

	bpl -24.b		; 10 E8
	sbc ($00.b,X)		; E1 00
	tsb $F040.w		; 0C 40 F0
	php		; 08
	sbc #$0D00.w		; E9 00 0D
	rti		; 40

	sed		; F8
	brk $E9.b		; 00 E9
	brk $0E.b		; 00 0E
	rti		; 40

	brk $F8.b		; 00 F8
	sbc #$0F00.w		; E9 00 0F
	rti		; 40

	php		; 08
	beq -23.b		; F0 E9
	brk $16.b		; 00 16
	rti		; 40

	bpl -24.b		; 10 E8
	sbc #$1700.w		; E9 00 17
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b),Y		; F1 00
	clc		; 18
	rti		; 40

	plx		; FA
	inc $00F1.w,X		; FE F1 00
	ora $0240.w,Y		; 19 40 02
	inc $F1.b,X		; F6 F1
	brk $1A.b		; 00 1A
	rti		; 40

	asl A		; 0A
	inc $00F1.w		; EE F1 00
	tas		; 1B
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b),Y		; D1 00
	trb $FD40.w		; 1C 40 FD
	xce		; FB
	sbc $1D00.w,Y		; F9 00 1D
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp ($00.b),Y		; D1 00
	asl $FB40.w,X		; 1E 40 FB
	sbc $00D1.w,X		; FD D1 00
	ora $071540.l,X		; 1F 40 15 07
	sbc #$08BE.w		; E9 BE 08
	brk $48.b		; 00 48
	ora $08D8D1.l,X		; 1F D1 D8 08
	cop $48.b		; 02 48
	sbc [$F9.b],Y		; F7 F9
	cpy #$08.b		; C0 08
	tsb $48.b		; 04 48
	inx		; E8
	php		; 08
	lda ($08.b)		; B2 08
	asl $48.b		; 06 48
	php		; 08
	inx		; E8
	ldx $0808.w		; AE 08 08
	pha		; 48
	sed		; F8
	sed		; F8
	bcs   8.b		; B0 08
	asl A		; 0A
	pha		; 48
	sbc $00C209.l		; EF 09 C2 00
	tsb $0740.w		; 0C 40 07
	sbc ($CE.b),Y		; F1 CE
	brk $0D.b		; 00 0D
	rti		; 40

	ora $00CEE9.l		; 0F E9 CE 00
	asl $1F40.w		; 0E 40 1F
	cmp $00D0.w,Y		; D9 D0 00
	ora $D91F40.l		; 0F 40 1F D9
	inx		; E8
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $00CA09.l		; EF 09 CA 00
	ora $1740.w,X		; 1D 40 17
	sbc ($CA.b,X)		; E1 CA
	brk $1E.b		; 00 1E
	rti		; 40

	sbc [$01.b],Y		; F7 01
	bne   0.b		; D0 00
	ora $F9FF40.l,X		; 1F 40 FF F9
	bne   0.b		; D0 00
	jsr $1740.w		; 20 40 17
	sbc ($D2.b,X)		; E1 D2
	brk $21.b		; 00 21
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	phx		; DA
	brk $22.b		; 00 22
	rti		; 40

	clc		; 18
	cpx #$AF.b		; E0 AF
	brk $23.b		; 00 23
	rti		; 40

	cpx #$18.b		; E0 18
	lda [$00.b],Y		; B7 00
	bit $40.b		; 24 40
	clc		; 18
	cpx #$B7.b		; E0 B7
	brk $25.b		; 00 25
	rti		; 40

	and $00DBC9.l		; 2F C9 DB 00
	rol $40.b		; 26 40
	ora ($DF.b)		; 12 DF
	ora ($E1.b),Y		; 11 E1
	php		; 08
	brk $48.b		; 00 48
	cmp $08F111.l,X		; DF 11 F1 08
	cop $48.b		; 02 48
	sbc $08E101.l		; EF 01 E1 08
	tsb $48.b		; 04 48
	sbc $08E1F1.l,X		; FF F1 E1 08
	asl $48.b		; 06 48
	sbc $08F101.l		; EF 01 F1 08
	php		; 08
	pha		; 48
	ora [$D9.b],Y		; 17 D9
	nop		; EA
	php		; 08
	asl A		; 0A
	pha		; 48
	cpx $14.b		; E4 14
	cmp $0C00.w,Y		; D9 00 0C
	rti		; 40

	cpx $D90C.w		; EC 0C D9
	brk $0D.b		; 00 0D
	rti		; 40

	pea $D904.w		; F4 04 D9
	brk $0E.b		; 00 0E
	rti		; 40

	jsr ($D9FC.w,X)		; FC FC D9
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $00F1F9.l,X		; FF F9 F1 00
	trb $0740.w		; 1C 40 07
	sbc ($F1.b),Y		; F1 F1
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $00F9F9.l,X		; FF F9 F9 00
	asl $FC40.w,X		; 1E 40 FC
	jsr ($00D1.w,X)		; FC D1 00
	ora $D12740.l,X		; 1F 40 27 D1
	nop		; EA
	brk $20.b		; 00 20
	rti		; 40

	and [$D1.b]		; 27 D1
	sbc ($00.b)		; F2 00
	and ($40.b,X)		; 21 40
	ora $00E5E9.l		; 0F E9 E5 00
	jsl $E90F40.l		; 22 40 0F E9
	sbc $2300.w		; ED 00 23
	rti		; 40

	ora $FC.b,X		; 15 FC
	pea $08E1.w		; F4 E1 08
	brk $48.b		; 00 48
	jmp.w [$E014]		; DC 14 E0
	php		; 08
	cop $48.b		; 02 48
	sbc #$F107.w		; E9 07 F1
	php		; 08
	tsb $48.b		; 04 48
	ora ($EF.b,X)		; 01 EF
	beq   8.b		; F0 08
	asl $48.b		; 06 48
	ora ($DF.b),Y		; 11 DF
	beq   8.b		; F0 08
	php		; 08
	pha		; 48
	trb $E4.b		; 14 E4
	inx		; E8
	brk $0A.b		; 00 0A
	rti		; 40

	cpy $F02C.w		; CC 2C F0
	brk $0B.b		; 00 0B
	rti		; 40

	pea $E904.w		; F4 04 E9
	brk $0C.b		; 00 0C
	rti		; 40

	pei ($24.b)		; D4 24
	inx		; E8
	brk $0D.b		; 00 0D
	rti		; 40

	pei ($24.b)		; D4 24
	beq   0.b		; F0 00
	asl $DC40.w		; 0E 40 DC
	trb $00F0.w		; 1C F0 00
	ora $14E440.l		; 0F 40 E4 14
	beq   0.b		; F0 00
	inc A		; 1A
	rti		; 40

	ora $0000E9.l		; 0F E9 00 00
	tas		; 1B
	rti		; 40

	sbc #$010F.w		; E9 0F 01
	brk $1C.b		; 00 1C
	rti		; 40

	cpx $E90C.w		; EC 0C E9
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $F1FF.w,Y		; F9 FF F1
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $F9FF.w,Y		; F9 FF F9
	brk $1F.b		; 00 1F
	rti		; 40

	and ($D7.b,X)		; 21 D7
	xce		; FB
	brk $20.b		; 00 20
	rti		; 40

	sbc ($17.b,X)		; E1 17
	sed		; F8
	brk $21.b		; 00 21
	rti		; 40

	tsb $E1EC.w		; 0C EC E1
	brk $22.b		; 00 22
	rti		; 40

	tsb $E9EC.w		; 0C EC E9
	brk $23.b		; 00 23
	rti		; 40

	ora $FCF4.w		; 0D F4 FC
	cmp ($08.b),Y		; D1 08
	brk $48.b		; 00 48
	sbc [$09.b]		; E7 09
	sbc ($08.b),Y		; F1 08
	cop $48.b		; 02 48
	sbc [$F9.b],Y		; F7 F9
	sbc ($08.b),Y		; F1 08
	tsb $48.b		; 04 48
	ora [$E9.b]		; 07 E9
	sbc ($08.b),Y		; F1 08
	asl $48.b		; 06 48
	sbc #$E107.w		; E9 07 E1
	php		; 08
	php		; 08
	pha		; 48
	sbc $E1F7.w,Y		; F9 F7 E1
	php		; 08
	asl A		; 0A
	pha		; 48
	ora #$E1E7.w		; 09 E7 E1
	php		; 08
	tsb $1748.w		; 0C 48 17
	sbc ($F1.b,X)		; E1 F1
	brk $0E.b		; 00 0E
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	sbc $0F00.w,Y		; F9 00 0F
	rti		; 40

	ora $E9DF.w,Y		; 19 DF E9
	brk $1E.b		; 00 1E
	rti		; 40

	cpx $D90C.w		; EC 0C D9
	brk $1F.b		; 00 1F
	rti		; 40

	ora $00F9D9.l,X		; 1F D9 F9 00
	jsr $0F40.w		; 20 40 0F
	sbc #$0001.w		; E9 01 00
	and ($40.b,X)		; 21 40
	and ($E4.b,X)		; 21 E4
	tsb $08D4.w		; 0C D4 08
	brk $48.b		; 00 48
	jsr ($CCF4.w,X)		; FC F4 CC
	php		; 08
	cop $48.b		; 02 48
	trb $DC.b		; 14 DC
	cld		; D8
	php		; 08
	tsb $48.b		; 04 48
	nop		; EA
	asl $EC.b		; 06 EC
	php		; 08
	asl $48.b		; 06 48
	plx		; FA
	inc $EC.b,X		; F6 EC
	php		; 08
	php		; 08
	pha		; 48
	pea $D404.w		; F4 04 D4
	brk $0A.b		; 00 0A
	rti		; 40

	pea $DC04.w		; F4 04 DC
	brk $0B.b		; 00 0B
	rti		; 40

	jsr ($DCFC.w,X)		; FC FC DC
	brk $0C.b		; 00 0C
	rti		; 40

	tsb $F4.b		; 04 F4
	jmp.w [$0D00]		; DC 00 0D
	rti		; 40

	tsb $D7EC.w		; 0C EC D7
	brk $0E.b		; 00 0E
	rti		; 40

	tsb $DFEC.w		; 0C EC DF
	brk $0F.b		; 00 0F
	rti		; 40

	bit $D4.b		; 24 D4
	cpx #$00.b		; E0 00
	inc A		; 1A
	rti		; 40

	jmp.w [$DC1C]		; DC 1C DC
	brk $1B.b		; 00 1B
	rti		; 40

	asl $E2.b,X		; 16 E2
	inx		; E8
	brk $1C.b		; 00 1C
	rti		; 40

	asl $E8DA.w,X		; 1E DA E8
	brk $1D.b		; 00 1D
	rti		; 40

	rol $D2.b		; 26 D2
	inx		; E8
	brk $1E.b		; 00 1E
	rti		; 40

	cmp $E41F.w,Y		; D9 1F E4
	brk $1F.b		; 00 1F
	rti		; 40

	sbc ($17.b,X)		; E1 17
	cpx $00.b		; E4 00
	jsr $E940.w		; 20 40 E9
	ora $2100E4.l		; 0F E4 00 21
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cpx $00.b		; E4 00
	jsl $FFF940.l		; 22 40 F9 FF
	cpx $00.b		; E4 00
	and $40.b,S		; 23 40
	ora ($F7.b,X)		; 01 F7
	cpx $00.b		; E4 00
	bit $40.b		; 24 40
	ora #$E4EF.w		; 09 EF E4
	brk $25.b		; 00 25
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	cpx $2600.w		; EC 00 26
	rti		; 40

	bit $E2CC.w		; 2C CC E2
	brk $27.b		; 00 27
	rti		; 40

	bit $C4.b,X		; 34 C4
	sep #$00		; E2 00
	plp		; 28
	rti		; 40

	asl A		; 0A
	inc $00EC.w		; EE EC 00
	and #$0A40.w		; 29 40 0A
	inc $00F4.w		; EE F4 00
	rol A		; 2A
	rti		; 40

	xba		; EB
	ora $00FC.w		; 0D FC 00
	pld		; 2B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	jsr ($2C00.w,X)		; FC 00 2C
	rti		; 40

	xce		; FB
	sbc $00FC.w,X		; FD FC 00
	and $0340.w		; 2D 40 03
	sbc $FC.b,X		; F5 FC
	brk $2E.b		; 00 2E
	rti		; 40

	phd		; 0B
	sbc $00FC.w		; ED FC 00
	and $E72040.l		; 2F 40 20 E7
	ora #$08B5.w		; 09 B5 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	lda $08.b,X		; B5 08
	cop $48.b		; 02 48
	ora [$E9.b]		; 07 E9
	lda $08.b,X		; B5 08
	tsb $48.b		; 04 48
	sbc [$09.b]		; E7 09
	cmp $08.b		; C5 08
	asl $48.b		; 06 48
	sbc [$09.b]		; E7 09
	cmp $08.b,X		; D5 08
	php		; 08
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	cmp $08.b		; C5 08
	asl A		; 0A
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	cmp $08.b,X		; D5 08
	tsb $0748.w		; 0C 48 07
	sbc #$08D5.w		; E9 D5 08
	asl $0748.w		; 0E 48 07
	sbc #$08C5.w		; E9 C5 08
	jsr $E948.w		; 20 48 E9
	ora [$A5.b]		; 07 A5
	php		; 08
	jsl $FFF148.l		; 22 48 F1 FF
	sta $08.b,X		; 95 08
	bit $48.b		; 24 48
	sbc $A5F7.w,Y		; F9 F7 A5
	php		; 08
	rol $48.b		; 26 48
	nop		; EA
	asl $E5.b		; 06 E5
	php		; 08
	plp		; 28
	pha		; 48
	sbc ($FE.b)		; F2 FE
	sbc $08.b,X		; F5 08
	rol A		; 2A
	pha		; 48
	cop $EE.b		; 02 EE
	sbc $08.b,X		; F5 08
	bit $FA48.w		; 2C 48 FA
	inc $E5.b,X		; F6 E5
	php		; 08
	rol $1148.w		; 2E 48 11
	sbc [$AD.b]		; E7 AD
	brk $40.b		; 00 40
	rti		; 40

	jsr ($05FC.w,X)		; FC FC 05
	brk $41.b		; 00 41
	rti		; 40

	pea $0504.w		; F4 04 05
	brk $42.b		; 00 42
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	lda $00.b,X		; B5 00
	eor $40.b,S		; 43 40
	ora ($F7.b,X)		; 01 F7
	sta $00.b,X		; 95 00
	mvp $E9,$40		; 44 40 E9
	ora $45009D.l		; 0F 9D 00 45
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sta $4600.w,X		; 9D 00 46
	rti		; 40

	ora #$9DEF.w		; 09 EF 9D
	brk $47.b		; 00 47
	rti		; 40

	ora #$A5EF.w		; 09 EF A5
	brk $48.b		; 00 48
	rti		; 40

	ora #$ADEF.w		; 09 EF AD
	brk $49.b		; 00 49
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	lda $4A00.w,X		; BD 00 4A
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	cmp $00.b		; C5 00
	phk		; 4B
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	cmp $4C00.w		; CD 00 4C
	rti		; 40

	sed		; F8
	brk $8D.b		; 00 8D
	brk $4D.b		; 00 4D
	rti		; 40

	asl A		; 0A
	inc $00E5.w		; EE E5 00
	lsr $0A40.w		; 4E 40 0A
	inc $00ED.w		; EE ED 00
	eor $F01F40.l		; 4F 40 1F F0
	brk $A1.b		; 00 A1
	php		; 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	lda ($08.b,X)		; A1 08
	cop $48.b		; 02 48
	ora #$E1E7.w		; 09 E7 E1
	php		; 08
	tsb $48.b		; 04 48
	sbc #$C907.w		; E9 07 C9
	php		; 08
	asl $48.b		; 06 48
	sbc $C9F7.w,Y		; F9 F7 C9
	php		; 08
	php		; 08
	pha		; 48
	ora #$C9E7.w		; 09 E7 C9
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $0D.b,S		; E3 0D
	lda ($08.b),Y		; B1 08
	tsb $F348.w		; 0C 48 F3
	sbc $08B1.w,X		; FD B1 08
	asl $0348.w		; 0E 48 03
	sbc $08B1.w		; ED B1 08
	jsr $1048.w		; 20 48 10
	inx		; E8
	lda #$2200.w		; A9 00 22
	rti		; 40

	ora $C9DF.w,Y		; 19 DF C9
	brk $23.b		; 00 23
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b,X)		; E1 00
	bit $40.b		; 24 40
	nop		; EA
	asl $00D9.w		; 0E D9 00
	and $40.b		; 25 40
	sbc ($06.b)		; F2 06
	cmp $2600.w,Y		; D9 00 26
	rti		; 40

	plx		; FA
	inc $00D9.w,X		; FE D9 00
	and [$40.b]		; 27 40
	cop $F6.b		; 02 F6
	cmp $2800.w,Y		; D9 00 28
	rti		; 40

	asl A		; 0A
	inc $00D9.w		; EE D9 00
	and #$1240.w		; 29 40 12
	inc $D9.b		; E6 D9
	brk $2A.b		; 00 2A
	rti		; 40

	inc A		; 1A
	dec $00D9.w,X		; DE D9 00
	pld		; 2B
	rti		; 40

	sbc $E1FF.w,Y		; F9 FF E1
	brk $2C.b		; 00 2C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b,X)		; E1 00
	and $E840.w		; 2D 40 E8
	bpl -87.b		; 10 A9
	brk $2E.b		; 00 2E
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	lda ($00.b),Y		; B1 00
	and $E51340.l		; 2F 40 13 E5
	lda $3200.w,Y		; B9 00 32
	rti		; 40

	sbc $15.b,S		; E3 15
	cmp ($00.b,X)		; C1 00
	and ($40.b,S),Y		; 33 40
	xba		; EB
	ora $00C1.w		; 0D C1 00
	bit $40.b,X		; 34 40
	sbc ($05.b,S),Y		; F3 05
	cmp ($00.b,X)		; C1 00
	and $40.b,X		; 35 40
	xce		; FB
	sbc $00C1.w,X		; FD C1 00
	rol $40.b,X		; 36 40
	ora $F5.b,S		; 03 F5
	cmp ($00.b,X)		; C1 00
	and [$40.b],Y		; 37 40
	phd		; 0B
	sbc $00C1.w		; ED C1 00
	sec		; 38
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cmp ($00.b,X)		; C1 00
	and $1A40.w,Y		; 39 40 1A
	sbc $D103.w		; ED 03 D1
	php		; 08
	brk $48.b		; 00 48
	ora $EB.b		; 05 EB
	cmp ($08.b),Y		; D1 08
	cop $48.b		; 02 48
	sbc [$09.b]		; E7 09
	lda ($08.b,X)		; A1 08
	tsb $48.b		; 04 48
	sbc [$F9.b],Y		; F7 F9
	lda ($08.b,X)		; A1 08
	asl $48.b		; 06 48
	inx		; E8
	php		; 08
	cmp ($08.b,X)		; C1 08
	php		; 08
	pha		; 48
	sed		; F8
	sed		; F8
	cmp ($08.b,X)		; C1 08
	asl A		; 0A
	pha		; 48
	php		; 08
	inx		; E8
	cmp ($08.b,X)		; C1 08
	tsb $E248.w		; 0C 48 E2
	asl $08B1.w		; 0E B1 08
	asl $F248.w		; 0E 48 F2
	inc $08B1.w,X		; FE B1 08
	jsr $0248.w		; 20 48 02
	inc $08B1.w		; EE B1 08
	jsl $E31548.l		; 22 48 15 E3
	cpx $00.b		; E4 00
	bit $40.b		; 24 40
	ora $E3.b,X		; 15 E3
	cpx $2500.w		; EC 00 25
	rti		; 40

	ora $00A9E9.l		; 0F E9 A9 00
	rol $40.b		; 26 40
	ora $E3.b,X		; 15 E3
	cmp $2700.w,Y		; D9 00 27
	rti		; 40

	ora $D9DB.w,X		; 1D DB D9
	brk $28.b		; 00 28
	rti		; 40

	ora [$F1.b]		; 07 F1
	lda ($00.b,X)		; A1 00
	and #$0740.w		; 29 40 07
	sbc ($A9.b),Y		; F1 A9
	brk $2A.b		; 00 2A
	rti		; 40

	clc		; 18
	cpx #$C1.b		; E0 C1
	brk $2B.b		; 00 2B
	rti		; 40

	sbc $D1FB.w,X		; FD FB D1
	brk $2C.b		; 00 2C
	rti		; 40

	sbc $D9FB.w,X		; FD FB D9
	brk $2D.b		; 00 2D
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	rol $FD40.w		; 2E 40 FD
	xce		; FB
	sbc ($00.b,X)		; E1 00
	and $F30540.l		; 2F 40 05 F3
	sbc ($00.b,X)		; E1 00
	bit $40.b,X		; 34 40
	ora $E4EB.w		; 0D EB E4
	brk $35.b		; 00 35
	rti		; 40

	ora ($E6.b)		; 12 E6
	lda ($00.b),Y		; B1 00
	rol $40.b,X		; 36 40
	ora ($E6.b)		; 12 E6
	lda $3700.w,Y		; B9 00 37
	rti		; 40

	asl $E4.b,X		; 16 E4
	tsb $08D5.w		; 0C D5 08
	brk $48.b		; 00 48
	pea $D5FC.w		; F4 FC D5
	php		; 08
	cop $48.b		; 02 48
	cpx $0C.b		; E4 0C
	sbc $08.b		; E5 08
	tsb $48.b		; 04 48
	pea $E5FC.w		; F4 FC E5
	php		; 08
	asl $48.b		; 06 48
	tsb $E2EC.w		; 0C EC E2
	brk $08.b		; 00 08
	rti		; 40

	tsb $EAEC.w		; 0C EC EA
	brk $09.b		; 00 09
	rti		; 40

	trb $E4.b		; 14 E4
	cmp $0A00.w,X		; DD 00 0A
	rti		; 40

	trb $E1DC.w		; 1C DC E1
	brk $0B.b		; 00 0B
	rti		; 40

	bit $D4.b		; 24 D4
	sbc ($00.b,X)		; E1 00
	tsb $1C40.w		; 0C 40 1C
	jmp.w [$00E9]		; DC E9 00
	ora $0C40.w		; 0D 40 0C
	cpx $00DA.w		; EC DA 00
	asl $0440.w		; 0E 40 04
	pea $00D5.w		; F4 D5 00
	ora $F40440.l		; 0F 40 04 F4
	cmp $1800.w,X		; DD 00 18
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $00.b		; E5 00
	ora $0440.w,Y		; 19 40 04
	pea $00ED.w		; F4 ED 00
	inc A		; 1A
	rti		; 40

	cpx $14.b		; E4 14
	sbc $00.b,X		; F5 00
	tas		; 1B
	rti		; 40

	cpx $F50C.w		; EC 0C F5
	brk $1C.b		; 00 1C
	rti		; 40

	pea $F504.w		; F4 04 F5
	brk $1D.b		; 00 1D
	rti		; 40

	jsr ($F5FC.w,X)		; FC FC F5
	brk $1E.b		; 00 1E
	rti		; 40

	trb $E4.b		; 14 E4
	inx		; E8
	brk $1F.b		; 00 1F
	rti		; 40

	sbc [$11.b]		; E7 11
	cmp $2000.w		; CD 00 20
	rti		; 40

	sbc $00CD09.l		; EF 09 CD 00
	and ($40.b,X)		; 21 40
	ora [$F6.b],Y		; 17 F6
	plx		; FA
	lda $0008.w,Y		; B9 08 00
	pha		; 48
	ora [$E9.b]		; 07 E9
	cmp $0208.w,Y		; D9 08 02
	pha		; 48
	sbc $08C9F1.l,X		; FF F1 C9 08
	tsb $48.b		; 04 48
	sbc $08C901.l		; EF 01 C9 08
	asl $48.b		; 06 48
	sbc $08D901.l		; EF 01 D9 08
	php		; 08
	pha		; 48
	asl $F2.b		; 06 F2
	lda $0A00.w,Y		; B9 00 0A
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b,X)		; C1 00
	phd		; 0B
	rti		; 40

	sbc $00F109.l		; EF 09 F1 00
	tsb $F740.w		; 0C 40 F7
	ora ($F1.b,X)		; 01 F1
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $00F1F9.l,X		; FF F9 F1 00
	asl $E740.w		; 0E 40 E7
	ora ($F9.b),Y		; 11 F9
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $00F909.l		; EF 09 F9 00
	inc A		; 1A
	rti		; 40

	sbc $E9FB.w,X		; FD FB E9
	brk $1B.b		; 00 1B
	rti		; 40

	ora $F3.b		; 05 F3
	sbc #$1C00.w		; E9 00 1C
	rti		; 40

	ora $E9EB.w		; 0D EB E9
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc #$1E00.w		; E9 00 1E
	rti		; 40

	sbc $00D9F9.l,X		; FF F9 D9 00
	ora $F9FF40.l,X		; 1F 40 FF F9
	sbc ($00.b,X)		; E1 00
	jsr $0F40.w		; 20 40 0F
	sbc #$00CF.w		; E9 CF 00
	and ($40.b,X)		; 21 40
	ora #$F1EF.w		; 09 EF F1
	brk $22.b		; 00 22
	rti		; 40

	ora #$F9EF.w		; 09 EF F9
	brk $23.b		; 00 23
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc $2400.w,Y		; F9 00 24
	rti		; 40

	cop $F6.b		; 02 F6
	lda ($00.b),Y		; B1 00
	and $40.b		; 25 40
	tsb $F4FC.w		; 0C FC F4
	rep #$08		; C2 08
	brk $48.b		; 00 48
	pea $D2FC.w		; F4 FC D2
	php		; 08
	cop $48.b		; 02 48
	cpx $E204.w		; EC 04 E2
	php		; 08
	tsb $48.b		; 04 48
	pea $F2FC.w		; F4 FC F2
	php		; 08
	asl $48.b		; 06 48
	tsb $EC.b		; 04 EC
	sbc ($08.b)		; F2 08
	php		; 08
	pha		; 48
	jsr ($E2F4.w,X)		; FC F4 E2
	php		; 08
	asl A		; 0A
	pha		; 48
	tsb $E2E4.w		; 0C E4 E2
	php		; 08
	tsb $0448.w		; 0C 48 04
	cpx $08D2.w		; EC D2 08
	asl $EC48.w		; 0E 48 EC
	tsb $00F9.w		; 0C F9 00
	jsr $0C40.w		; 20 40 0C
	cpx $00C2.w		; EC C2 00
	and ($40.b,X)		; 21 40
	tsb $CAEC.w		; 0C EC CA
	brk $22.b		; 00 22
	rti		; 40

	trb $E4.b		; 14 E4
	phx		; DA
	brk $23.b		; 00 23
	rti		; 40

	ora $EF.b,X		; 15 EF
	ora ($A9.b,X)		; 01 A9
	php		; 08
	brk $48.b		; 00 48
	sbc [$09.b]		; E7 09
	lda $0208.w,Y		; B9 08 02
	pha		; 48
	sbc [$09.b]		; E7 09
	cmp #$0408.w		; C9 08 04
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	cmp #$0608.w		; C9 08 06
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	cmp $0808.w,Y		; D9 08 08
	pha		; 48
	inc $F9FA.w,X		; FE FA F9
	brk $0A.b		; 00 0A
	rti		; 40

	inc $F90A.w		; EE 0A F9
	brk $0B.b		; 00 0B
	rti		; 40

	inc $02.b,X		; F6 02
	sbc $0C00.w,Y		; F9 00 0C
	rti		; 40

	sbc [$01.b],Y		; F7 01
	lda $0D00.w,Y		; B9 00 0D
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cmp ($00.b,X)		; C1 00
	asl $E740.w		; 0E 40 E7
	ora ($D9.b),Y		; 11 D9
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $00D909.l		; EF 09 D9 00
	inc A		; 1A
	rti		; 40

	sbc $00E109.l		; EF 09 E1 00
	tas		; 1B
	rti		; 40

	sbc $00E909.l		; EF 09 E9 00
	trb $F740.w		; 1C 40 F7
	ora ($E9.b,X)		; 01 E9
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $00E9F9.l,X		; FF F9 E9 00
	asl $FF40.w,X		; 1E 40 FF
	sbc $00AB.w,Y		; F9 AB 00
	ora $F9FF40.l,X		; 1F 40 FF F9
	lda ($00.b,S),Y		; B3 00
	jsr $FF40.w		; 20 40 FF
	sbc $00BB.w,Y		; F9 BB 00
	and ($40.b,X)		; 21 40
	beq   8.b		; F0 08
	sbc ($00.b),Y		; F1 00
	jsl $FDFB40.l		; 22 40 FB FD
	sbc ($00.b),Y		; F1 00
	and $40.b,S		; 23 40
	ora $F4.b,X		; 15 F4
	jsr ($08D1.w,X)		; FC D1 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	sbc ($08.b,X)		; E1 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	sbc ($08.b,X)		; E1 08
	tsb $48.b		; 04 48
	xce		; FB
	sbc $C1.b,X		; F5 C1
	php		; 08
	asl $48.b		; 06 48
	tsb $F4.b		; 04 F4
	sbc $0800.w,Y		; F9 00 08
	rti		; 40

	tsb $F9EC.w		; 0C EC F9
	brk $09.b		; 00 09
	rti		; 40

	tsb $D1EC.w		; 0C EC D1
	brk $0A.b		; 00 0A
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b),Y		; D1 00
	phd		; 0B
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $0C00.w,Y		; D9 00 0C
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp $0D00.w,Y		; D9 00 0D
	rti		; 40

	cpx $F90C.w		; EC 0C F9
	brk $0E.b		; 00 0E
	rti		; 40

	pea $F904.w		; F4 04 F9
	brk $0F.b		; 00 0F
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc ($00.b,X)		; E1 00
	clc		; 18
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc #$1900.w		; E9 00 19
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b),Y		; F1 00
	inc A		; 1A
	rti		; 40

	xce		; FB
	sbc $00F1.w,X		; FD F1 00
	tas		; 1B
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b),Y		; F1 00
	trb $0B40.w		; 1C 40 0B
	sbc $00F1.w		; ED F1 00
	ora $FC40.w,X		; 1D 40 FC
	jsr ($00F9.w,X)		; FC F9 00
	asl $0B40.w,X		; 1E 40 0B
	sbc $00C1.w		; ED C1 00
	ora $ED0B40.l,X		; 1F 40 0B ED
	cmp #$2000.w		; C9 00 20
	rti		; 40

	trb $0B.b		; 14 0B
	sbc $A9.b		; E5 A9
	php		; 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b),Y		; D1 08
	cop $48.b		; 02 48
	ora $ED.b,S		; 03 ED
	cmp ($08.b),Y		; D1 08
	tsb $48.b		; 04 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b,X)		; C1 08
	asl $48.b		; 06 48
	ora $ED.b,S		; 03 ED
	cmp ($08.b,X)		; C1 08
	php		; 08
	pha		; 48
	xce		; FB
	sbc $B1.b,X		; F5 B1
	php		; 08
	asl A		; 0A
	pha		; 48
	ora $F5.b,S		; 03 F5
	lda #$0C00.w		; A9 00 0C
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	lda $0D00.w,Y		; B9 00 0D
	rti		; 40

	phd		; 0B
	sbc $00B9.w		; ED B9 00
	asl $F440.w		; 0E 40 F4
	tsb $E1.b		; 04 E1
	brk $1C.b		; 00 1C
	rti		; 40

	jsr ($E1FC.w,X)		; FC FC E1
	brk $1D.b		; 00 1D
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b,X)		; E1 00
	asl $EF40.w,X		; 1E 40 EF
	ora #$00E9.w		; 09 E9 00
	ora $01F740.l,X		; 1F 40 F7 01
	sbc #$2000.w		; E9 00 20
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc #$2100.w		; E9 00 21
	rti		; 40

	sbc $00F109.l		; EF 09 F1 00
	jsl $F10740.l		; 22 40 07 F1
	sbc ($00.b),Y		; F1 00
	and $40.b,S		; 23 40
	sbc $00F909.l		; EF 09 F9 00
	bit $40.b		; 24 40
	ora [$F1.b]		; 07 F1
	sbc $2500.w,Y		; F9 00 25
	rti		; 40

	ora $00F9E9.l		; 0F E9 F9 00
	rol $40.b		; 26 40
	trb $0B.b		; 14 0B
	sbc $A9.b		; E5 A9
	php		; 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b),Y		; D1 08
	cop $48.b		; 02 48
	ora $ED.b,S		; 03 ED
	cmp ($08.b),Y		; D1 08
	tsb $48.b		; 04 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b,X)		; C1 08
	asl $48.b		; 06 48
	ora $ED.b,S		; 03 ED
	cmp ($08.b,X)		; C1 08
	php		; 08
	pha		; 48
	xce		; FB
	sbc $B1.b,X		; F5 B1
	php		; 08
	asl A		; 0A
	pha		; 48
	ora $F5.b,S		; 03 F5
	lda #$0C00.w		; A9 00 0C
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	lda $0D00.w,Y		; B9 00 0D
	rti		; 40

	phd		; 0B
	sbc $00B9.w		; ED B9 00
	asl $F440.w		; 0E 40 F4
	tsb $E1.b		; 04 E1
	brk $1C.b		; 00 1C
	rti		; 40

	jsr ($E1FC.w,X)		; FC FC E1
	brk $1D.b		; 00 1D
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b,X)		; E1 00
	asl $EF40.w,X		; 1E 40 EF
	ora #$00E9.w		; 09 E9 00
	ora $01F740.l,X		; 1F 40 F7 01
	sbc #$2000.w		; E9 00 20
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc #$2100.w		; E9 00 21
	rti		; 40

	sbc $00F109.l		; EF 09 F1 00
	jsl $F10740.l		; 22 40 07 F1
	sbc ($00.b),Y		; F1 00
	and $40.b,S		; 23 40
	sbc $00F909.l		; EF 09 F9 00
	bit $40.b		; 24 40
	ora [$F1.b]		; 07 F1
	sbc $2500.w,Y		; F9 00 25
	rti		; 40

	ora $00F9E9.l		; 0F E9 F9 00
	rol $40.b		; 26 40
	ora $F3FD.w,Y		; 19 FD F3
	lda #$0008.w		; A9 08 00
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	ora [$E9.b]		; 07 E9
	cmp ($08.b,X)		; C1 08
	tsb $48.b		; 04 48
	sbc $B9FB.w,X		; FD FB B9
	brk $06.b		; 00 06
	rti		; 40

	ora $F3.b		; 05 F3
	lda $0700.w,Y		; B9 00 07
	rti		; 40

	ora $B9EB.w		; 0D EB B9
	brk $08.b		; 00 08
	rti		; 40

	inc $D9FA.w,X		; FE FA D9
	brk $09.b		; 00 09
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp $0A00.w,Y		; D9 00 0A
	rti		; 40

	sbc $00F909.l		; EF 09 F9 00
	phd		; 0B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc $0C00.w,Y		; F9 00 0C
	rti		; 40

	ora $A9EB.w		; 0D EB A9
	brk $0D.b		; 00 0D
	rti		; 40

	ora $B1EB.w		; 0D EB B1
	brk $0E.b		; 00 0E
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cmp ($00.b),Y		; D1 00
	ora $F9FF40.l		; 0F 40 FF F9
	cmp ($00.b),Y		; D1 00
	asl $40.b,X		; 16 40
	ora [$F1.b]		; 07 F1
	cmp ($00.b),Y		; D1 00
	ora [$40.b],Y		; 17 40
	ora $00D1E9.l		; 0F E9 D1 00
	clc		; 18
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b,X)		; A1 00
	ora $0840.w,Y		; 19 40 08
	beq -95.b		; F0 A1
	brk $1A.b		; 00 1A
	rti		; 40

	ora #$E1EF.w		; 09 EF E1
	brk $1B.b		; 00 1B
	rti		; 40

	ora #$E9EF.w		; 09 EF E9
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $F1FF.w,Y		; F9 FF F1
	brk $1D.b		; 00 1D
	rti		; 40

	ora #$F1EF.w		; 09 EF F1
	brk $1E.b		; 00 1E
	rti		; 40

	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	ora $FDFB40.l,X		; 1F 40 FB FD
	sbc #$2000.w		; E9 00 20
	rti		; 40

	phd		; 0B
	sbc $00F9.w		; ED F9 00
	and ($40.b,X)		; 21 40
	clc		; 18
	tsb $EC.b		; 04 EC
	cmp #$0008.w		; C9 08 00
	pha		; 48
	pea $C9FC.w		; F4 FC C9
	php		; 08
	cop $48.b		; 02 48
	pea $B1FC.w		; F4 FC B1
	php		; 08
	tsb $48.b		; 04 48
	tsb $F4.b		; 04 F4
	lda ($00.b),Y		; B1 00
	asl $40.b		; 06 40
	tsb $F4.b		; 04 F4
	lda $0700.w,Y		; B9 00 07
	rti		; 40

	pea $C104.w		; F4 04 C1
	brk $08.b		; 00 08
	rti		; 40

	jsr ($C1FC.w,X)		; FC FC C1
	brk $09.b		; 00 09
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b,X)		; C1 00
	asl A		; 0A
	rti		; 40

	tsb $BDEC.w		; 0C EC BD
	brk $0B.b		; 00 0B
	rti		; 40

	sed		; F8
	brk $A9.b		; 00 A9
	brk $0C.b		; 00 0C
	rti		; 40

	brk $F8.b		; 00 F8
	lda #$0D00.w		; A9 00 0D
	rti		; 40

	sed		; F8
	brk $D9.b		; 00 D9
	brk $0E.b		; 00 0E
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $0F00.w,Y		; D9 00 0F
	rti		; 40

	php		; 08
	beq -39.b		; F0 D9
	brk $16.b		; 00 16
	rti		; 40

	sbc $A5FF.w,Y		; F9 FF A5
	brk $17.b		; 00 17
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda $00.b		; A5 00
	clc		; 18
	rti		; 40

	pea $E1FC.w		; F4 FC E1
	php		; 08
	ora $0448.w,Y		; 19 48 04
	pea $00E1.w		; F4 E1 00
	tas		; 1B
	rti		; 40

	ora $F3.b		; 05 F3
	sbc #$1C00.w		; E9 00 1C
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b),Y		; F1 00
	ora $0740.w,X		; 1D 40 07
	sbc ($F9.b),Y		; F1 F9
	brk $1E.b		; 00 1E
	rti		; 40

	ora $00F9E9.l		; 0F E9 F9 00
	ora $08F040.l,X		; 1F 40 F0 08
	sbc $2000.w,Y		; F9 00 20
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b),Y		; F1 00
	and ($40.b,X)		; 21 40
	asl $FA.b,X		; 16 FA
	inc $A1.b,X		; F6 A1
	php		; 08
	brk $48.b		; 00 48
	plx		; FA
	inc $B1.b,X		; F6 B1
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $C1.b,X		; F6 C1
	php		; 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $D1.b,X		; F6 D1
	php		; 08
	asl $48.b		; 06 48
	asl A		; 0A
	inc $B7.b		; E6 B7
	php		; 08
	php		; 08
	pha		; 48
	sbc ($06.b)		; F2 06
	lda #$0A00.w		; A9 00 0A
	rti		; 40

	sbc ($06.b)		; F2 06
	lda ($00.b),Y		; B1 00
	phd		; 0B
	rti		; 40

	sbc ($06.b)		; F2 06
	lda $0C00.w,Y		; B9 00 0C
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp ($00.b,X)		; C1 00
	ora $F240.w		; 0D 40 F2
	asl $C9.b		; 06 C9
	brk $0E.b		; 00 0E
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp ($00.b),Y		; D1 00
	ora $06F240.l		; 0F 40 F2 06
	cmp $1A00.w,Y		; D9 00 1A
	rti		; 40

	inc A		; 1A
	dec $00B7.w,X		; DE B7 00
	tas		; 1B
	rti		; 40

	asl A		; 0A
	inc $00D1.w		; EE D1 00
	trb $F440.w		; 1C 40 F4
	jsr ($08E1.w,X)		; FC E1 08
	ora $0448.w,X		; 1D 48 04
	pea $00E1.w		; F4 E1 00
	ora $F30540.l,X		; 1F 40 05 F3
	sbc #$2000.w		; E9 00 20
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b),Y		; F1 00
	and ($40.b,X)		; 21 40
	ora [$F1.b]		; 07 F1
	sbc $2200.w,Y		; F9 00 22
	rti		; 40

	ora $00F9E9.l		; 0F E9 F9 00
	and $40.b,S		; 23 40
	beq   8.b		; F0 08
	sbc $2400.w,Y		; F9 00 24
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b),Y		; F1 00
	and $40.b		; 25 40
	ora $F6.b,X		; 15 F6
	plx		; FA
	lda #$0008.w		; A9 08 00
	pha		; 48
	sbc $08B901.l		; EF 01 B9 08
	cop $48.b		; 02 48
	sbc $08B9F1.l,X		; FF F1 B9 08
	tsb $48.b		; 04 48
	sbc $08C901.l		; EF 01 C9 08
	asl $48.b		; 06 48
	sbc $08C9F1.l,X		; FF F1 C9 08
	php		; 08
	pha		; 48
	tsb $F4.b		; 04 F4
	lda ($00.b,X)		; A1 00
	asl A		; 0A
	rti		; 40

	jsr ($A1FC.w,X)		; FC FC A1
	brk $0B.b		; 00 0B
	rti		; 40

	asl $F2.b		; 06 F2
	lda #$0C00.w		; A9 00 0C
	rti		; 40

	asl $F2.b		; 06 F2
	lda ($00.b),Y		; B1 00
	ora $0F40.w		; 0D 40 0F
	sbc #$00BC.w		; E9 BC 00
	asl $F240.w		; 0E 40 F2
	asl $D9.b		; 06 D9
	brk $0F.b		; 00 0F
	rti		; 40

	plx		; FA
	inc $00D9.w,X		; FE D9 00
	inc A		; 1A
	rti		; 40

	cop $F6.b		; 02 F6
	cmp $1B00.w,Y		; D9 00 1B
	rti		; 40

	pea $E1FC.w		; F4 FC E1
	php		; 08
	trb $0448.w		; 1C 48 04
	pea $00E1.w		; F4 E1 00
	asl $0540.w,X		; 1E 40 05
	sbc ($E9.b,S),Y		; F3 E9
	brk $1F.b		; 00 1F
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b),Y		; F1 00
	jsr $0740.w		; 20 40 07
	sbc ($F9.b),Y		; F1 F9
	brk $21.b		; 00 21
	rti		; 40

	ora $00F9E9.l		; 0F E9 F9 00
	jsl $08F040.l		; 22 40 F0 08
	sbc $2300.w,Y		; F9 00 23
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b),Y		; F1 00
	bit $40.b		; 24 40
	tas		; 1B
	pea $D1FC.w		; F4 FC D1
	php		; 08
	brk $48.b		; 00 48
	sbc ($FE.b)		; F2 FE
	lda ($08.b),Y		; B1 08
	cop $48.b		; 02 48
	asl A		; 0A
	inc $B7.b		; E6 B7
	php		; 08
	tsb $48.b		; 04 48
	tsb $F4.b		; 04 F4
	cmp $0600.w,Y		; D9 00 06
	rti		; 40

	sbc $A9FF.w,Y		; F9 FF A9
	brk $07.b		; 00 07
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda #$0800.w		; A9 00 08
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cmp #$0900.w		; C9 00 09
	rti		; 40

	sbc $C9FF.w,Y		; F9 FF C9
	brk $0A.b		; 00 0A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp #$0B00.w		; C9 00 0B
	rti		; 40

	cpx $D10C.w		; EC 0C D1
	brk $0C.b		; 00 0C
	rti		; 40

	cop $F6.b		; 02 F6
	lda ($00.b),Y		; B1 00
	ora $0240.w		; 0D 40 02
	inc $B9.b,X		; F6 B9
	brk $0E.b		; 00 0E
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp ($00.b,X)		; C1 00
	ora $FEFA40.l		; 0F 40 FA FE
	cmp ($00.b,X)		; C1 00
	asl $40.b,X		; 16 40
	cop $F6.b		; 02 F6
	cmp ($00.b,X)		; C1 00
	ora [$40.b],Y		; 17 40
	tsb $F4.b		; 04 F4
	cmp ($00.b),Y		; D1 00
	clc		; 18
	rti		; 40

	xce		; FB
	sbc $00A5.w,X		; FD A5 00
	ora $0340.w,Y		; 19 40 03
	sbc $A5.b,X		; F5 A5
	brk $1A.b		; 00 1A
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	lda $401B00.l		; AF 00 1B 40
	pea $E1FC.w		; F4 FC E1
	php		; 08
	trb $0448.w		; 1C 48 04
	pea $00E1.w		; F4 E1 00
	asl $0540.w,X		; 1E 40 05
	sbc ($E9.b,S),Y		; F3 E9
	brk $1F.b		; 00 1F
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b),Y		; F1 00
	jsr $0740.w		; 20 40 07
	sbc ($F9.b),Y		; F1 F9
	brk $21.b		; 00 21
	rti		; 40

	ora $00F9E9.l		; 0F E9 F9 00
	jsl $08F040.l		; 22 40 F0 08
	sbc $2300.w,Y		; F9 00 23
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b),Y		; F1 00
	bit $40.b		; 24 40
	ora $EC.b,X		; 15 EC
	tsb $C9.b		; 04 C9
	php		; 08
	brk $48.b		; 00 48
	jsr ($C9F4.w,X)		; FC F4 C9
	php		; 08
	cop $48.b		; 02 48
	sbc $FB.b,X		; F5 FB
	lda #$0408.w		; A9 08 04
	pha		; 48
	inc $B902.w		; EE 02 B9
	php		; 08
	asl $48.b		; 06 48
	inc $B9F2.w,X		; FE F2 B9
	php		; 08
	php		; 08
	pha		; 48
	beq   0.b		; F0 00
	sbc ($08.b,X)		; E1 08
	asl A		; 0A
	pha		; 48
	ora $F3.b		; 05 F3
	lda ($00.b),Y		; B1 00
	tsb $0C40.w		; 0C 40 0C
	cpx $00F9.w		; EC F9 00
	ora $0440.w		; 0D 40 04
	pea $00F9.w		; F4 F9 00
	asl $0E40.w		; 0E 40 0E
	nop		; EA
	lda $0F00.w,Y		; B9 00 0F
	rti		; 40

	asl $C1EA.w		; 0E EA C1
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $00D909.l		; EF 09 D9 00
	ora $F740.w,X		; 1D 40 F7
	ora ($D9.b,X)		; 01 D9
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $00D9F9.l,X		; FF F9 D9 00
	ora $F10740.l,X		; 1F 40 07 F1
	cmp $2000.w,Y		; D9 00 20
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b,X)		; E1 00
	and ($40.b,X)		; 21 40
	sbc $00F909.l		; EF 09 F9 00
	jsl $F00840.l		; 22 40 08 F0
	sbc #$2300.w		; E9 00 23
	rti		; 40

	beq   8.b		; F0 08
	sbc ($00.b),Y		; F1 00
	bit $40.b		; 24 40
	php		; 08
	beq -15.b		; F0 F1
	brk $25.b		; 00 25
	rti		; 40

	ora $F3.b		; 05 F3
	lda #$2600.w		; A9 00 26
	rti		; 40

	ora $FCF4.w,Y		; 19 F4 FC
	lda #$0008.w		; A9 08 00
	pha		; 48
	inc $FA.b,X		; F6 FA
	cmp #$0208.w		; C9 08 02
	pha		; 48
	beq   0.b		; F0 00
	sbc ($08.b,X)		; E1 08
	tsb $48.b		; 04 48
	sbc ($FE.b)		; F2 FE
	lda $0608.w,Y		; B9 08 06
	pha		; 48
	cop $EE.b		; 02 EE
	lda $0808.w,Y		; B9 08 08
	pha		; 48
	tsb $F4.b		; 04 F4
	lda ($00.b),Y		; B1 00
	asl A		; 0A
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b,X)		; E1 00
	phd		; 0B
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $0C00.w,Y		; F9 00 0C
	rti		; 40

	asl $F2.b		; 06 F2
	cmp #$0D00.w		; C9 00 0D
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b),Y		; D1 00
	asl $F640.w		; 0E 40 F6
	cop $D9.b		; 02 D9
	brk $0F.b		; 00 0F
	rti		; 40

	inc $D9FA.w,X		; FE FA D9
	brk $1A.b		; 00 1A
	rti		; 40

	asl $F2.b		; 06 F2
	cmp $1B00.w,Y		; D9 00 1B
	rti		; 40

	inc $C60A.w		; EE 0A C6
	brk $1C.b		; 00 1C
	rti		; 40

	inc $CE0A.w		; EE 0A CE
	brk $1D.b		; 00 1D
	rti		; 40

	inc $D60A.w		; EE 0A D6
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $00F709.l		; EF 09 F7 00
	ora $09EF40.l,X		; 1F 40 EF 09
	sbc $402000.l,X		; FF 00 20 40
	php		; 08
	beq -23.b		; F0 E9
	brk $21.b		; 00 21
	rti		; 40

	php		; 08
	beq -15.b		; F0 F1
	brk $22.b		; 00 22
	rti		; 40

	tsb $F9EC.w		; 0C EC F9
	brk $23.b		; 00 23
	rti		; 40

	beq   8.b		; F0 08
	sbc $402400.l		; EF 00 24 40
	jsr ($A1FC.w,X)		; FC FC A1
	brk $25.b		; 00 25
	rti		; 40

	tsb $F4.b		; 04 F4
	lda #$2600.w		; A9 00 26
	rti		; 40

	nop		; EA
	asl $00BE.w		; 0E BE 00
	and [$40.b]		; 27 40
	asl $FE.b,X		; 16 FE
	sbc ($C9.b)		; F2 C9
	php		; 08
	brk $48.b		; 00 48
	inc $B9F2.w,X		; FE F2 B9
	php		; 08
	cop $48.b		; 02 48
	inc $BB02.w		; EE 02 BB
	php		; 08
	tsb $48.b		; 04 48
	inc $CB02.w		; EE 02 CB
	php		; 08
	asl $48.b		; 06 48
	sbc $A3F7.w,Y		; F9 F7 A3
	php		; 08
	php		; 08
	pha		; 48
	sbc ($FE.b)		; F2 FE
	sbc ($08.b,X)		; E1 08
	asl A		; 0A
	pha		; 48
	inc $F90A.w		; EE 0A F9
	brk $0C.b		; 00 0C
	rti		; 40

	pea $D904.w		; F4 04 D9
	brk $0D.b		; 00 0D
	rti		; 40

	jsr ($D9FC.w,X)		; FC FC D9
	brk $0E.b		; 00 0E
	rti		; 40

	asl $B9EA.w		; 0E EA B9
	brk $0F.b		; 00 0F
	rti		; 40

	asl $C1EA.w		; 0E EA C1
	brk $1C.b		; 00 1C
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $1D00.w,Y		; D9 00 1D
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $1E00.w,Y		; F9 00 1E
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc #$1F00.w		; E9 00 1F
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b),Y		; F1 00
	jsr $F040.w		; 20 40 F0
	php		; 08
	sbc ($00.b),Y		; F1 00
	and ($40.b,X)		; 21 40
	tsb $F9EC.w		; 0C EC F9
	brk $22.b		; 00 22
	rti		; 40

	sbc ($07.b),Y		; F1 07
	plb		; AB
	brk $23.b		; 00 23
	rti		; 40

	sbc ($07.b),Y		; F1 07
	lda ($00.b,S),Y		; B3 00
	bit $40.b		; 24 40
	sbc $B3FF.w,Y		; F9 FF B3
	brk $25.b		; 00 25
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda ($00.b,S),Y		; B3 00
	rol $40.b		; 26 40
	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	and [$40.b]		; 27 40
	ora ($F4.b)		; 12 F4
	jsr ($08EB.w,X)		; FC EB 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	ldx $0208.w		; AE 08 02
	pha		; 48
	sbc $DBF7.w,Y		; F9 F7 DB
	php		; 08
	tsb $48.b		; 04 48
	nop		; EA
	asl $C6.b		; 06 C6
	php		; 08
	asl $48.b		; 06 48
	plx		; FA
	inc $C6.b,X		; F6 C6
	php		; 08
	php		; 08
	pha		; 48
	inc $02.b,X		; F6 02
	ldx $0A00.w,Y		; BE 00 0A
	rti		; 40

	inc $BEFA.w,X		; FE FA BE
	brk $0B.b		; 00 0B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	xce		; FB
	brk $0C.b		; 00 0C
	rti		; 40

	asl $F2.b		; 06 F2
	ldx $0D00.w		; AE 00 0D
	rti		; 40

	sbc $A6FF.w,Y		; F9 FF A6
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ldx $00.b		; A6 00
	ora $0EEA40.l		; 0F 40 EA 0E
	lda $1A00.w,Y		; B9 00 1A
	rti		; 40

	inc $B60A.w		; EE 0A B6
	brk $1B.b		; 00 1B
	rti		; 40

	inc $BE0A.w		; EE 0A BE
	brk $1C.b		; 00 1C
	rti		; 40

	nop		; EA
	asl $00D6.w		; 0E D6 00
	ora $F240.w,X		; 1D 40 F2
	asl $D6.b		; 06 D6
	brk $1E.b		; 00 1E
	rti		; 40

	plx		; FA
	inc $00D6.w,X		; FE D6 00
	ora $F60240.l,X		; 1F 40 02 F6
	dec $00.b,X		; D6 00
	jsr $0E40.w		; 20 40 0E
	pea $A8FC.w		; F4 FC A8
	php		; 08
	brk $48.b		; 00 48
	inx		; E8
	php		; 08
	cpy #$08.b		; C0 08
	cop $48.b		; 02 48
	sed		; F8
	sed		; F8
	cpy #$08.b		; C0 08
	tsb $48.b		; 04 48
	xce		; FB
	sbc $D0.b,X		; F5 D0
	php		; 08
	asl $48.b		; 06 48
	xba		; EB
	ora $D0.b		; 05 D0
	php		; 08
	php		; 08
	pha		; 48
	jsr ($B8FC.w,X)		; FC FC B8
	brk $0A.b		; 00 0A
	rti		; 40

	tsb $F4.b		; 04 F4
	clv		; B8
	brk $0B.b		; 00 0B
	rti		; 40

	cpx $B80C.w		; EC 0C B8
	brk $0C.b		; 00 0C
	rti		; 40

	tsb $F4.b		; 04 F4
	tay		; A8
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $15.b,S		; E3 15
	cld		; D8
	brk $0E.b		; 00 0E
	rti		; 40

	tsb $F4.b		; 04 F4
	bcs   0.b		; B0 00
	ora $04F440.l		; 0F 40 F4 04
	clv		; B8
	brk $1A.b		; 00 1A
	rti		; 40

	xba		; EB
	ora $00E0.w		; 0D E0 00
	tas		; 1B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cpx #$00.b		; E0 00
	trb $1140.w		; 1C 40 11
	sbc $FB.b,X		; F5 FB
	cmp ($08.b),Y		; D1 08
	brk $48.b		; 00 48
	ora #$B9E7.w		; 09 E7 B9
	php		; 08
	cop $48.b		; 02 48
	sbc #$B907.w		; E9 07 B9
	php		; 08
	tsb $48.b		; 04 48
	sbc $B9F7.w,Y		; F9 F7 B9
	php		; 08
	asl $48.b		; 06 48
	sbc $00B109.l		; EF 09 B1 00
	php		; 08
	rti		; 40

	sbc [$01.b],Y		; F7 01
	lda ($00.b),Y		; B1 00
	ora #$FF40.w		; 09 40 FF
	sbc $00B1.w,Y		; F9 B1 00
	asl A		; 0A
	rti		; 40

	ora [$F1.b]		; 07 F1
	lda ($00.b),Y		; B1 00
	phd		; 0B
	rti		; 40

	ora $00B1E9.l		; 0F E9 B1 00
	tsb $0540.w		; 0C 40 05
	sbc ($D1.b,S),Y		; F3 D1
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	asl $ED40.w		; 0E 40 ED
	phd		; 0B
	cmp ($00.b),Y		; D1 00
	ora $0FE940.l		; 0F 40 E9 0F
	cmp #$1800.w		; C9 00 18
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cmp #$1900.w		; C9 00 19
	rti		; 40

	sbc $C9FF.w,Y		; F9 FF C9
	brk $1A.b		; 00 1A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp #$1B00.w		; C9 00 1B
	rti		; 40

	ora #$C9EF.w		; 09 EF C9
	brk $1C.b		; 00 1C
	rti		; 40

	asl $FFF1.w		; 0E F1 FF
	lda $0008.w,Y		; B9 08 00
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	lda $0208.w,Y		; B9 08 02
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	cmp #$0408.w		; C9 08 04
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cmp #$0608.w		; C9 08 06
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cmp $0808.w,Y		; D9 08 08
	pha		; 48
	sbc $00B109.l		; EF 09 B1 00
	asl A		; 0A
	rti		; 40

	sbc [$01.b],Y		; F7 01
	lda ($00.b),Y		; B1 00
	phd		; 0B
	rti		; 40

	sbc $00B1F9.l,X		; FF F9 B1 00
	tsb $0740.w		; 0C 40 07
	sbc ($B1.b),Y		; F1 B1
	brk $0D.b		; 00 0D
	rti		; 40

	sed		; F8
	brk $A9.b		; 00 A9
	brk $0E.b		; 00 0E
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cmp $0F00.w,Y		; D9 00 0F
	rti		; 40

	sbc $D9FF.w,Y		; F9 FF D9
	brk $1A.b		; 00 1A
	rti		; 40

	sbc $E1FF.w,Y		; F9 FF E1
	brk $1B.b		; 00 1B
	rti		; 40

	sbc #$BE0F.w		; E9 0F BE
	brk $1C.b		; 00 1C
	rti		; 40

	trb $EE.b		; 14 EE
	cop $B1.b		; 02 B1
	php		; 08
	brk $48.b		; 00 48
	inc $B9F2.w,X		; FE F2 B9
	php		; 08
	cop $48.b		; 02 48
	inc $C9F2.w,X		; FE F2 C9
	php		; 08
	tsb $48.b		; 04 48
	inc $C102.w		; EE 02 C1
	php		; 08
	asl $48.b		; 06 48
	sbc $03.b,X		; F5 03
	lda #$0800.w		; A9 00 08
	rti		; 40

	sbc $A9FB.w,X		; FD FB A9
	brk $09.b		; 00 09
	rti		; 40

	inc $12.b		; E6 12
	lda $0A00.w,Y		; B9 00 0A
	rti		; 40

	inc $12.b		; E6 12
	cmp ($00.b,X)		; C1 00
	phd		; 0B
	rti		; 40

	inc $12.b		; E6 12
	cmp #$0C00.w		; C9 00 0C
	rti		; 40

	inc $12.b		; E6 12
	cmp ($00.b),Y		; D1 00
	ora $EE40.w		; 0D 40 EE
	asl A		; 0A
	cmp ($00.b),Y		; D1 00
	asl $F640.w		; 0E 40 F6
	cop $D1.b		; 02 D1
	brk $0F.b		; 00 0F
	rti		; 40

	asl $BFEA.w		; 0E EA BF
	brk $18.b		; 00 18
	rti		; 40

	asl $C7EA.w		; 0E EA C7
	brk $19.b		; 00 19
	rti		; 40

	asl $CFEA.w		; 0E EA CF
	brk $1A.b		; 00 1A
	rti		; 40

	sbc #$D90F.w		; E9 0F D9
	brk $1B.b		; 00 1B
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cmp $1C00.w,Y		; D9 00 1C
	rti		; 40

	sbc $D9FF.w,Y		; F9 FF D9
	brk $1D.b		; 00 1D
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $1E00.w,Y		; D9 00 1E
	rti		; 40

	xce		; FB
	sbc $00A1.w,X		; FD A1 00
	ora $F00D40.l,X		; 1F 40 0D F0
	brk $A8.b		; 00 A8
	php		; 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	clv		; B8
	php		; 08
	cop $48.b		; 02 48
	beq   0.b		; F0 00
	clv		; B8
	php		; 08
	tsb $48.b		; 04 48
	inx		; E8
	php		; 08
	bne   8.b		; D0 08
	asl $48.b		; 06 48
	sed		; F8
	sed		; F8
	bne   8.b		; D0 08
	php		; 08
	pha		; 48
	inx		; E8
	bpl -80.b		; 10 B0
	brk $0A.b		; 00 0A
	rti		; 40

	inx		; E8
	bpl -72.b		; 10 B8
	brk $0B.b		; 00 0B
	rti		; 40

	inx		; E8
	bpl -64.b		; 10 C0
	brk $0C.b		; 00 0C
	rti		; 40

	inx		; E8
	bpl -56.b		; 10 C8
	brk $0D.b		; 00 0D
	rti		; 40

	beq   8.b		; F0 08
	iny		; C8
	brk $0E.b		; 00 0E
	rti		; 40

	sed		; F8
	brk $C8.b		; 00 C8
	brk $0F.b		; 00 0F
	rti		; 40

	brk $F8.b		; 00 F8
	iny		; C8
	brk $1A.b		; 00 1A
	rti		; 40

	php		; 08
	beq -56.b		; F0 C8
	brk $1B.b		; 00 1B
	rti		; 40

	trb $0C.b		; 14 0C
	cpx $B6.b		; E4 B6
	pha		; 48
	brk $08.b		; 00 08
	jsr ($B6F4.w,X)		; FC F4 B6
	pha		; 48
	cop $08.b		; 02 08
	tsb $C6E4.w		; 0C E4 C6
	pha		; 48
	tsb $08.b		; 04 08
	jsr ($C6F4.w,X)		; FC F4 C6
	pha		; 48
	asl $08.b		; 06 08
	ora [$E9.b]		; 07 E9
	ldx $48.b		; A6 48
	php		; 08
	php		; 08
	cpx $C20C.w		; EC 0C C2
	rti		; 40

	asl A		; 0A
	brk $DC.b		; 00 DC
	trb $40B1.w		; 1C B1 40
	phd		; 0B
	brk $E4.b		; 00 E4
	trb $B9.b		; 14 B9
	rti		; 40

	tsb $DC00.w		; 0C 00 DC
	trb $40B9.w		; 1C B9 40
	ora $E400.w		; 0D 00 E4
	trb $C1.b		; 14 C1
	rti		; 40

	asl $F400.w		; 0E 00 F4
	tsb $B6.b		; 04 B6
	rti		; 40

	ora $04F400.l		; 0F 00 F4 04
	ldx $1A40.w,Y		; BE 40 1A
	brk $F4.b		; 00 F4
	tsb $C6.b		; 04 C6
	rti		; 40

	tas		; 1B
	brk $14.b		; 00 14
	cpx $D6.b		; E4 D6
	rti		; 40

	trb $0C00.w		; 1C 00 0C
	cpx $40D6.w		; EC D6 40
	ora $0400.w,X		; 1D 00 04
	pea $40D6.w		; F4 D6 40
	asl $EC00.w,X		; 1E 00 EC
	tsb $40BA.w		; 0C BA 40
	ora $F9FF00.l,X		; 1F 00 FF F9
	ldx $40.b		; A6 40
	jsr $FF00.w		; 20 00 FF
	sbc $40AE.w,Y		; F9 AE 40
	and ($00.b,X)		; 21 00
	inc $B20A.w		; EE 0A B2
	rti		; 40

	jsl $F31000.l		; 22 00 10 F3
	sbc $48BB.w,X		; FD BB 48
	brk $08.b		; 00 08
	sbc $0D.b,S		; E3 0D
	lda $48.b,X		; B5 48
	cop $08.b		; 02 08
	php		; 08
	inx		; E8
	cmp ($48.b,S),Y		; D3 48
	tsb $08.b		; 04 08
	sed		; F8
	sed		; F8
	cmp ($48.b,S),Y		; D3 48
	asl $08.b		; 06 08
	ora [$D9.b],Y		; 17 D9
	cmp ($48.b,X)		; C1 48
	php		; 08
	php		; 08
	ora [$E9.b]		; 07 E9
	cmp $48.b,S		; C3 48
	asl A		; 0A
	php		; 08
	ora [$E9.b]		; 07 E9
	sbc $48.b,S		; E3 48
	tsb $F708.w		; 0C 08 F7
	sbc $48E3.w,Y		; F9 E3 48
	asl $1F08.w		; 0E 08 1F
	cmp $40D1.w,Y		; D9 D1 40
	jsr $1700.w		; 20 00 17
	sbc ($D1.b,X)		; E1 D1
	rti		; 40

	and ($00.b,X)		; 21 00
	sbc [$01.b],Y		; F7 01
	wai		; CB
	rti		; 40

	jsl $1DDB00.l		; 22 00 DB 1D
	plb		; AB
	rti		; 40

	and $00.b,S		; 23 00
	stp		; DB
	ora $40B3.w,X		; 1D B3 40
	bit $00.b		; 24 00
	clc		; 18
	cpx #$D9.b		; E0 D9
	rti		; 40

	and $00.b		; 25 00
	sbc $40C3F9.l,X		; FF F9 C3 40
	rol $00.b		; 26 00
	sbc $40CBF9.l,X		; FF F9 CB 40
	and [$00.b]		; 27 00
	ora $07E9.w,X		; 1D E9 07
	sbc ($48.b,S),Y		; F3 48
	brk $08.b		; 00 08
	sbc ($FF.b),Y		; F1 FF
	cmp $48.b,S		; C3 48
	cop $08.b		; 02 08
	sbc ($FF.b),Y		; F1 FF
	cmp ($48.b,S),Y		; D3 48
	tsb $08.b		; 04 08
	cmp $D517.w,Y		; D9 17 D5
	pha		; 48
	asl $08.b		; 06 08
	cmp $E517.w,Y		; D9 17 E5
	pha		; 48
	php		; 08
	php		; 08
	ora ($F7.b,X)		; 01 F7
	cmp $40.b,S		; C3 40
	asl A		; 0A
	brk $F9.b		; 00 F9
	sbc $0B40F3.l,X		; FF F3 40 0B
	brk $FC.b		; 00 FC
	jsr ($40AB.w,X)		; FC AB 40
	tsb $F400.w		; 0C 00 F4
	tsb $AB.b		; 04 AB
	rti		; 40

	ora $FC00.w		; 0D 00 FC
	jsr ($40B3.w,X)		; FC B3 40
	asl $E900.w		; 0E 00 E9
	ora $0F40D3.l		; 0F D3 40 0F
	brk $E9.b		; 00 E9
	ora $1A40DB.l		; 0F DB 40 1A
	brk $FC.b		; 00 FC
	jsr ($40BB.w,X)		; FC BB 40
	tas		; 1B
	brk $F4.b		; 00 F4
	tsb $BB.b		; 04 BB
	rti		; 40

	trb $D100.w		; 1C 00 D1
	and [$DD.b]		; 27 DD
	rti		; 40

	ora $D100.w,X		; 1D 00 D1
	and [$E5.b]		; 27 E5
	rti		; 40

	asl $D100.w,X		; 1E 00 D1
	and [$ED.b]		; 27 ED
	rti		; 40

	ora $17E100.l,X		; 1F 00 E1 17
	sbc $40.b,X		; F5 40
	jsr $D900.w		; 20 00 D9
	ora $2140F5.l,X		; 1F F5 40 21
	brk $D1.b		; 00 D1
	and [$F5.b]		; 27 F5
	rti		; 40

	jsl $07F100.l		; 22 00 F1 07
	stx $40.b,Y		; 96 40
	and $00.b,S		; 23 00
	sbc ($07.b),Y		; F1 07
	stz $2440.w,X		; 9E 40 24
	brk $F8.b		; 00 F8
	brk $EB.b		; 00 EB
	rti		; 40

	and $00.b		; 25 00
	beq   8.b		; F0 08
	xba		; EB
	rti		; 40

	rol $00.b		; 26 00
	inc $02.b,X		; F6 02
	lda $40.b,S		; A3 40
	and [$00.b]		; 27 00
	sbc $E3FB.w,X		; FD FB E3
	rti		; 40

	plp		; 28
	brk $F5.b		; 00 F5
	ora $E3.b,S		; 03 E3
	rti		; 40

	and #$ED00.w		; 29 00 ED
	phd		; 0B
	sbc $40.b,S		; E3 40
	rol A		; 2A
	brk $E5.b		; 00 E5
	ora ($E3.b,S),Y		; 13 E3
	rti		; 40

	pld		; 2B
	brk $1B.b		; 00 1B
	cmp ($1E.b)		; D2 1E
	lda ($48.b),Y		; B1 48
	brk $08.b		; 00 08
	cmp ($1E.b)		; D2 1E
	cmp ($48.b,X)		; C1 48
	cop $08.b		; 02 08
	sep #$0E		; E2 0E
	lda $0448.w,Y		; B9 48 04
	php		; 08
	sep #$0E		; E2 0E
	cmp #$0648.w		; C9 48 06
	php		; 08
	sbc ($FE.b)		; F2 FE
	cmp ($48.b,X)		; C1 48
	php		; 08
	php		; 08
.ACCU 16
	rep #$2E		; C2 2E
	cmp $48.b,S		; C3 48
	asl A		; 0A
	php		; 08
	asl A		; 0A
	inc $C8.b		; E6 C8
	pha		; 48
	tsb $E908.w		; 0C 08 E9
	ora [$D9.b]		; 07 D9
	pha		; 48
	asl $E708.w		; 0E 08 E7
	ora #$48E9.w		; 09 E9 48
	jsr $E208.w		; 20 08 E2
	asl $B1.b,X		; 16 B1
	rti		; 40

	jsl $D62200.l		; 22 00 22 D6
	cpy #$40.b		; C0 40
	and $00.b,S		; 23 00
	inc A		; 1A
	dec $40C0.w,X		; DE C0 40
	bit $00.b		; 24 00
	inc A		; 1A
	dec $40C8.w,X		; DE C8 40
	and $00.b		; 25 00
	plx		; FA
	inc $40D1.w,X		; FE D1 40
	rol $00.b		; 26 00
	cop $F6.b		; 02 F6
	iny		; C8
	rti		; 40

	and [$00.b]		; 27 00
	cop $F6.b		; 02 F6
	bne  64.b		; D0 40
	plp		; 28
	brk $F9.b		; 00 F9
	sbc $2940D9.l,X		; FF D9 40 29
	brk $F2.b		; 00 F2
	asl $D1.b		; 06 D1
	rti		; 40

	rol A		; 2A
	brk $E1.b		; 00 E1
	ora [$D9.b],Y		; 17 D9
	rti		; 40

	pld		; 2B
	brk $E1.b		; 00 E1
	ora [$E1.b],Y		; 17 E1
	rti		; 40

	bit $0100.w		; 2C 00 01
	sbc [$D8.b],Y		; F7 D8
	rti		; 40

	and $CF00.w		; 2D 00 CF
	and #$40D1.w		; 29 D1 40
	rol $CA00.w		; 2E 00 CA
	rol $40BB.w		; 2E BB 40
	and $09EF00.l		; 2F 00 EF 09
	sbc $3240.w,Y		; F9 40 32
	brk $E7.b		; 00 E7
	ora ($F9.b),Y		; 11 F9
	rti		; 40

	and ($00.b,S),Y		; 33 00
	cmp [$31.b]		; C7 31
	cmp ($40.b,S),Y		; D3 40
	bit $00.b,X		; 34 00
	dec $D92A.w		; CE 2A D9
	rti		; 40

	and $00.b,X		; 35 00
	inc A		; 1A
	tsb $EC.b		; 04 EC
	cpx $0048.w		; EC 48 00
	php		; 08
	pea $BCFC.w		; F4 FC BC
	pha		; 48
	cop $08.b		; 02 08
	pea $CCFC.w		; F4 FC CC
	pha		; 48
	tsb $08.b		; 04 08
	cpx $0C.b		; E4 0C
	cpy #$48.b		; C0 48
	asl $08.b		; 06 08
	brk $F0.b		; 00 F0
	jmp.w [$0848]		; DC 48 08
	php		; 08
	beq   0.b		; F0 00
	jmp.w [$0A48]		; DC 48 0A
	php		; 08
	cpx #$10.b		; E0 10
	sbc $080C48.l		; EF 48 0C 08
	jsr ($ECFC.w,X)		; FC FC EC
	rti		; 40

	asl $DC00.w		; 0E 00 DC
	trb $40C7.w		; 1C C7 40
	ora $0CEC00.l		; 0F 00 EC 0C
	clv		; B8
	rti		; 40

	asl $EC00.w,X		; 1E 00 EC
	tsb $40D0.w		; 0C D0 40
	ora $0CEC00.l,X		; 1F 00 EC 0C
	cld		; D8
	rti		; 40

	jsr $E400.w		; 20 00 E4
	trb $D8.b		; 14 D8
	rti		; 40

	and ($00.b,X)		; 21 00
	jmp.w [$D81C]		; DC 1C D8
	rti		; 40

	jsl $DC1C00.l		; 22 00 1C DC
	pea $2340.w		; F4 40 23
	brk $DA.b		; 00 DA
	asl $40FB.w,X		; 1E FB 40
	bit $00.b		; 24 00
.INDEX 8
	sep #$16		; E2 16
	sbc $002540.l,X		; FF 40 25 00
	and #$F1CF.w		; 29 CF F1
	rti		; 40

	rol $00.b		; 26 00
	beq   8.b		; F0 08
	cpx $2740.w		; EC 40 27
	brk $F0.b		; 00 F0
	php		; 08
	pea $2840.w		; F4 40 28
	brk $14.b		; 00 14
	cpx $F4.b		; E4 F4
	rti		; 40

	and #$2400.w		; 29 00 24
	pei ($F3.b)		; D4 F3
	rti		; 40

	rol A		; 2A
	brk $F4.b		; 00 F4
	tsb $B4.b		; 04 B4
	rti		; 40

	pld		; 2B
	brk $E8.b		; 00 E8
	bpl -32.b		; 10 E0
	rti		; 40

	bit $E000.w		; 2C 00 E0
	clc		; 18
	cpx #$40.b		; E0 40
	and $E800.w		; 2D 00 E8
	bpl -24.b		; 10 E8
	rti		; 40

	rol $1300.w		; 2E 00 13
	tsb $EC.b		; 04 EC
	cmp ($08.b,S),Y		; D3 08
	brk $48.b		; 00 48
	tsb $EC.b		; 04 EC
	sbc $08.b,S		; E3 08
	cop $48.b		; 02 48
	brk $F0.b		; 00 F0
	sbc ($08.b,S),Y		; F3 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $BB.b,X		; F6 BB
	php		; 08
	asl $48.b		; 06 48
	asl A		; 0A
	inc $BB.b		; E6 BB
	php		; 08
	php		; 08
	pha		; 48
	sbc $00B3F9.l,X		; FF F9 B3 00
	asl A		; 0A
	rti		; 40

	ora [$F1.b]		; 07 F1
	lda ($00.b,S),Y		; B3 00
	phd		; 0B
	rti		; 40

	ora $00B3E9.l		; 0F E9 B3 00
	tsb $1040.w		; 0C 40 10
	inx		; E8
	xce		; FB
	brk $0D.b		; 00 0D
	rti		; 40

	jsr ($D3FC.w,X)		; FC FC D3
	brk $0E.b		; 00 0E
	rti		; 40

	brk $F8.b		; 00 F8
	lda $00.b		; A5 00
	ora $F00840.l		; 0F 40 08 F0
	lda $00.b		; A5 00
	inc A		; 1A
	rti		; 40

	bpl -24.b		; 10 E8
	lda $00.b		; A5 00
	tas		; 1B
	rti		; 40

	ora $F3.b		; 05 F3
	plb		; AB
	brk $1C.b		; 00 1C
	rti		; 40

	ora $ABEB.w		; 0D EB AB
	brk $1D.b		; 00 1D
	rti		; 40

	plx		; FA
	inc $00CB.w,X		; FE CB 00
	asl $0240.w,X		; 1E 40 02
	inc $CB.b,X		; F6 CB
	brk $1F.b		; 00 1F
	rti		; 40

	asl A		; 0A
	inc $00CB.w		; EE CB 00
	jsr $1240.w		; 20 40 12
	inc $CB.b		; E6 CB
	brk $21.b		; 00 21
	rti		; 40

	ora [$0D.b],Y		; 17 0D
	sbc $D9.b,S		; E3 D9
	php		; 08
	brk $48.b		; 00 48
	asl $EA.b		; 06 EA
	lda ($08.b),Y		; B1 08
	cop $48.b		; 02 48
	cop $EE.b		; 02 EE
	cmp ($08.b,X)		; C1 08
	tsb $48.b		; 04 48
	ora ($DE.b)		; 12 DE
	cmp ($08.b,X)		; C1 08
	asl $48.b		; 06 48
	ora $E3.b,X		; 15 E3
	lda #$0800.w		; A9 00 08
	rti		; 40

	ora $F3.b		; 05 F3
	cmp $0900.w,Y		; D9 00 09
	rti		; 40

	ora $F3.b		; 05 F3
	sbc #$0A00.w		; E9 00 0A
	rti		; 40

	ora $E3.b,X		; 15 E3
	sbc ($00.b),Y		; F1 00
	phd		; 0B
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b),Y		; D1 00
	tsb $0D40.w		; 0C 40 0D
	xba		; EB
	sbc #$0D00.w		; E9 00 0D
	rti		; 40

	ora $E3.b,X		; 15 E3
	sbc #$0E00.w		; E9 00 0E
	rti		; 40

	ora $B7DB.w,X		; 1D DB B7
	brk $0F.b		; 00 0F
	rti		; 40

	tsb $D1EC.w		; 0C EC D1
	brk $18.b		; 00 18
	rti		; 40

	asl $E2.b,X		; 16 E2
	lda ($00.b),Y		; B1 00
	ora $1640.w,Y		; 19 40 16
.ACCU 8
.INDEX 8
	sep #$B9		; E2 B9
	brk $1A.b		; 00 1A
	rti		; 40

	ora $00A5E9.l		; 0F E9 A5 00
	tas		; 1B
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	lda $00.b		; A5 00
	trb $0A40.w		; 1C 40 0A
	inc $00F1.w		; EE F1 00
	ora $0A40.w,X		; 1D 40 0A
	inc $00F9.w		; EE F9 00
	asl $1240.w,X		; 1E 40 12
	inc $F9.b		; E6 F9
	brk $1F.b		; 00 1F
	rti		; 40

	inc A		; 1A
	dec $00F9.w,X		; DE F9 00
	jsr $1440.w		; 20 40 14
	cpx $D1.b		; E4 D1
	brk $21.b		; 00 21
	rti		; 40

	ora $A9EB.w		; 0D EB A9
	brk $22.b		; 00 22
	rti		; 40

	ora [$07.b],Y		; 17 07
	sbc #$BB.b		; E9 BB
	php		; 08
	brk $48.b		; 00 48
	ora [$D9.b],Y		; 17 D9
	tyx		; BB
	php		; 08
	cop $48.b		; 02 48
	ora [$E9.b]		; 07 E9
	wai		; CB
	php		; 08
	tsb $48.b		; 04 48
	ora [$D9.b],Y		; 17 D9
	wai		; CB
	php		; 08
	asl $48.b		; 06 48
	ora $08DBE1.l		; 0F E1 DB 08
	php		; 08
	pha		; 48
	asl $B3EA.w		; 0E EA B3
	brk $0A.b		; 00 0A
	rti		; 40

	asl $E2.b,X		; 16 E2
	lda ($00.b,S),Y		; B3 00
	phd		; 0B
	rti		; 40

	asl $B3DA.w,X		; 1E DA B3
	brk $0C.b		; 00 0C
	rti		; 40

	rol $D2.b		; 26 D2
	ldy $00.b,X		; B4 00
	ora $1F40.w		; 0D 40 1F
	cmp $00EB.w,Y		; D9 EB 00
	asl $1440.w		; 0E 40 14
	cpx $A6.b		; E4 A6
	brk $0F.b		; 00 0F
	rti		; 40

	trb $A6DC.w		; 1C DC A6
	brk $1A.b		; 00 1A
	rti		; 40

	ora $EBEB.w		; 0D EB EB
	brk $1B.b		; 00 1B
	rti		; 40

	asl $F2.b		; 06 F2
	sbc $1C00.w,Y		; F9 00 1C
	rti		; 40

	asl $F9EA.w		; 0E EA F9
	brk $1D.b		; 00 1D
	rti		; 40

	ora $00DBD9.l,X		; 1F D9 DB 00
	asl $1F40.w,X		; 1E 40 1F
	cmp $00E3.w,Y		; D9 E3 00
	ora $D82040.l,X		; 1F 40 20 D8
	sbc $2000.w,Y		; F9 00 20
	rti		; 40

	plp		; 28
	bne  -7.b		; D0 F9
	brk $21.b		; 00 21
	rti		; 40

	and ($D7.b,X)		; 21 D7
	sbc ($00.b,S),Y		; F3 00
	jsl $E61240.l		; 22 40 12 E6
	plb		; AB
	brk $23.b		; 00 23
	rti		; 40

	inc A		; 1A
	dec $00AB.w,X		; DE AB 00
	bit $40.b		; 24 40
	phd		; 0B
	sbc $00F3.w		; ED F3 00
	and $40.b		; 25 40
	trb $FFF1.w		; 1C F1 FF
	dec $0008.w		; CE 08 00
	pha		; 48
	sbc ($FE.b)		; F2 FE
	ldx $0208.w,Y		; BE 08 02
	pha		; 48
	xce		; FB
	sbc $A6.b,X		; F5 A6
	php		; 08
	tsb $48.b		; 04 48
	sed		; F8
	brk $DE.b		; 00 DE
	brk $06.b		; 00 06
	rti		; 40

	brk $F8.b		; 00 F8
	dec $0700.w,X		; DE 00 07
	rti		; 40

	brk $F8.b		; 00 F8
	inc $00.b		; E6 00
	php		; 08
	rti		; 40

	brk $F8.b		; 00 F8
	inc $0900.w		; EE 00 09
	rti		; 40

	brk $F8.b		; 00 F8
	inc $00.b,X		; F6 00
	asl A		; 0A
	rti		; 40

	sbc $03.b,X		; F5 03
	cpx $00.b		; E4 00
	phd		; 0B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	dec $0C00.w		; CE 00 0C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	dec $00.b,X		; D6 00
	ora $0A40.w		; 0D 40 0A
	inc $00B9.w		; EE B9 00
	asl $0A40.w		; 0E 40 0A
	inc $00C1.w		; EE C1 00
	ora $0EEA40.l		; 0F 40 EA 0E
	cpy $00.b		; C4 00
	asl $40.b,X		; 16 40
	nop		; EA
	asl $00CC.w		; 0E CC 00
	ora [$40.b],Y		; 17 40
	ora ($E6.b)		; 12 E6
	ldx $1800.w,Y		; BE 00 18
	rti		; 40

	beq   8.b		; F0 08
	sbc ($00.b),Y		; F1 00
	ora $0240.w,Y		; 19 40 02
	inc $BE.b,X		; F6 BE
	brk $1A.b		; 00 1A
	rti		; 40

	cop $F6.b		; 02 F6
	dec $00.b		; C6 00
	tas		; 1B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc #$00.b		; E9 00
	trb $0340.w		; 1C 40 03
	sbc $FB.b,X		; F5 FB
	brk $1D.b		; 00 1D
	rti		; 40

	phd		; 0B
	sbc $00FB.w		; ED FB 00
	asl $EB40.w,X		; 1E 40 EB
	ora $00BC.w		; 0D BC 00
	ora $08F040.l,X		; 1F 40 F0 08
	sbc $2000.w,Y		; F9 00 20
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	ldx INIDSP.w		; AE 00 21
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	ldx $00.b,Y		; B6 00
	jsl $FDFB40.l		; 22 40 FB FD
	ldx $00.b,Y		; B6 00
	and $40.b,S		; 23 40
	ora $F5.b,S		; 03 F5
	ldx $00.b,Y		; B6 00
	bit $40.b		; 24 40
	ora ($F7.b,S),Y		; 13 F7
	sbc $08F1.w,Y		; F9 F1 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	sbc ($08.b,X)		; E1 08
	cop $48.b		; 02 48
	sbc [$F9.b],Y		; F7 F9
	cmp ($08.b),Y		; D1 08
	tsb $48.b		; 04 48
	sbc $08B901.l		; EF 01 B9 08
	asl $48.b		; 06 48
	sbc $08B9F1.l,X		; FF F1 B9 08
	php		; 08
	pha		; 48
	jsr ($A1FC.w,X)		; FC FC A1
	brk $0A.b		; 00 0A
	rti		; 40

	pea $B104.w		; F4 04 B1
	brk $0B.b		; 00 0B
	rti		; 40

	jsr ($B1FC.w,X)		; FC FC B1
	brk $0C.b		; 00 0C
	rti		; 40

	tsb $F4.b		; 04 F4
	lda ($00.b),Y		; B1 00
	ora $0440.w		; 0D 40 04
	pea $00A5.w		; F4 A5 00
	asl $EF40.w		; 0E 40 EF
	ora #$C9.b		; 09 C9
	brk $0F.b		; 00 0F
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cmp #$00.b		; C9 00
	inc A		; 1A
	rti		; 40

	sbc $00C9F9.l,X		; FF F9 C9 00
	tas		; 1B
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp #$00.b		; C9 00
	trb $EF40.w		; 1C 40 EF
	ora #$D1.b		; 09 D1
	brk $1D.b		; 00 1D
	rti		; 40

	ora $00B6E9.l		; 0F E9 B6 00
	asl $0F40.w,X		; 1E 40 0F
	sbc #$BE.b		; E9 BE
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $A9FF.w,Y		; F9 FF A9
	brk $20.b		; 00 20
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda #$00.b		; A9 00
	and ($40.b,X)		; 21 40
	trb $F6.b		; 14 F6
	plx		; FA
	sbc #$08.b		; E9 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	stp		; DB
	php		; 08
	cop $48.b		; 02 48
	sbc $08BB01.l		; EF 01 BB 08
	tsb $48.b		; 04 48
	sbc $08BBF1.l,X		; FF F1 BB 08
	asl $48.b		; 06 48
	sbc $08CB01.l		; EF 01 CB 08
	php		; 08
	pha		; 48
	tsb $F4.b		; 04 F4
	ldx $00.b		; A6 00
	asl A		; 0A
	rti		; 40

	asl $F2.b		; 06 F2
	sbc $0B00.w,Y		; F9 00 0B
	rti		; 40

	pea $B304.w		; F4 04 B3
	brk $0C.b		; 00 0C
	rti		; 40

	inc $02.b,X		; F6 02
	sbc $0D00.w,Y		; F9 00 0D
	rti		; 40

	inc $F9FA.w,X		; FE FA F9
	brk $0E.b		; 00 0E
	rti		; 40

	jsr ($B3FC.w,X)		; FC FC B3
	brk $0F.b		; 00 0F
	rti		; 40

	tsb $F4.b		; 04 F4
	lda ($00.b,S),Y		; B3 00
	inc A		; 1A
	rti		; 40

	tsb $B4EC.w		; 0C EC B4
	brk $1B.b		; 00 1B
	rti		; 40

	jsr ($A6FC.w,X)		; FC FC A6
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $00CBF9.l,X		; FF F9 CB 00
	ora $0740.w,X		; 1D 40 07
	sbc ($CB.b),Y		; F1 CB
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $00D3F9.l,X		; FF F9 D3 00
	ora $E90F40.l,X		; 1F 40 0F E9
	ldy $2000.w,X		; BC 00 20
	rti		; 40

	sbc $ABFF.w,Y		; F9 FF AB
	brk $21.b		; 00 21
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	plb		; AB
	brk $22.b		; 00 22
	rti		; 40

	ora $FF.b,X		; 15 FF
	sbc ($CA.b),Y		; F1 CA
	php		; 08
	brk $48.b		; 00 48
	sbc $08CA01.l		; EF 01 CA 08
	cop $48.b		; 02 48
	sbc $08BA01.l		; EF 01 BA 08
	tsb $48.b		; 04 48
	ora [$E9.b]		; 07 E9
	lda $08.b,X		; B5 08
	asl $48.b		; 06 48
	brk $F0.b		; 00 F0
	phx		; DA
	php		; 08
	php		; 08
	pha		; 48
	sbc $00BAF9.l,X		; FF F9 BA 00
	asl A		; 0A
	rti		; 40

	sed		; F8
	brk $F1.b		; 00 F1
	brk $0B.b		; 00 0B
	rti		; 40

	sed		; F8
	brk $F9.b		; 00 F9
	brk $0C.b		; 00 0C
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $0D00.w,Y		; F9 00 0D
	rti		; 40

	sbc $00C2F9.l,X		; FF F9 C2 00
	asl $F840.w		; 0E 40 F8
	brk $DA.b		; 00 DA
	brk $0F.b		; 00 0F
	rti		; 40

	sed		; F8
	brk $E2.b		; 00 E2
	brk $1A.b		; 00 1A
	rti		; 40

	sed		; F8
	brk $EA.b		; 00 EA
	brk $1B.b		; 00 1B
	rti		; 40

	brk $F8.b		; 00 F8
	nop		; EA
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $ADFF.w,Y		; F9 FF AD
	brk $1D.b		; 00 1D
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda $1E00.w		; AD 00 1E
	rti		; 40

	sbc ($06.b)		; F2 06
	lda ($00.b)		; B2 00
	ora $FEFA40.l,X		; 1F 40 FA FE
	lda ($00.b)		; B2 00
	jsr $0240.w		; 20 40 02
	inc $B2.b,X		; F6 B2
	brk $21.b		; 00 21
	rti		; 40

	xce		; FB
	sbc $00A5.w,X		; FD A5 00
	jsl $F50340.l		; 22 40 03 F5
	lda $00.b		; A5 00
	and $40.b,S		; 23 40
	ora $F9.b,X		; 15 F9
	sbc [$D2.b],Y		; F7 D2
	php		; 08
	brk $48.b		; 00 48
	sbc $E2F7.w,Y		; F9 F7 E2
	php		; 08
	cop $48.b		; 02 48
	ora #$E7.b		; 09 E7
	cpy $0408.w		; CC 08 04
	pha		; 48
	ora #$E7.b		; 09 E7
	jmp.w [$0608]		; DC 08 06
	pha		; 48
	tsb $FCEC.w		; 0C EC FC
	brk $08.b		; 00 08
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	dex		; CA
	brk $09.b		; 00 09
	rti		; 40

	cpx $F90C.w		; EC 0C F9
	brk $0A.b		; 00 0A
	rti		; 40

	pea $F904.w		; F4 04 F9
	brk $0B.b		; 00 0B
	rti		; 40

	sbc ($07.b),Y		; F1 07
	phx		; DA
	brk $0C.b		; 00 0C
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sep #$00		; E2 00
	ora $F140.w		; 0D 40 F1
	ora [$EA.b]		; 07 EA
	brk $0E.b		; 00 0E
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b)		; F2 00
	ora $FFF940.l		; 0F 40 F9 FF
	sbc ($00.b)		; F2 00
	clc		; 18
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b)		; F2 00
	ora $0940.w,Y		; 19 40 09
	sbc $1A00F4.l		; EF F4 00 1A
	rti		; 40

	jsr ($FAFC.w,X)		; FC FC FA
	brk $1B.b		; 00 1B
	rti		; 40

	tsb $F4.b		; 04 F4
	plx		; FA
	brk $1C.b		; 00 1C
	rti		; 40

	ora #$EF.b		; 09 EF
	cpx $1D00.w		; EC 00 1D
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cpx $1E00.w		; EC 00 1E
	rti		; 40

	ora $F5.b,S		; 03 F5
	cpy $00.b		; C4 00
	ora $ED0B40.l,X		; 1F 40 0B ED
	cpy $00.b		; C4 00
	jsr $1640.w		; 20 40 16
	sbc $FB.b,X		; F5 FB
	cmp ($08.b),Y		; D1 08
	brk $48.b		; 00 48
	ora $EB.b		; 05 EB
	cmp ($08.b),Y		; D1 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	sbc ($08.b,X)		; E1 08
	tsb $48.b		; 04 48
	sbc ($FF.b),Y		; F1 FF
	sbc ($08.b),Y		; F1 08
	asl $48.b		; 06 48
	ora #$E7.b		; 09 E7
	cpx #$08.b		; E0 08
	php		; 08
	pha		; 48
	ora $F3.b		; 05 F3
	cmp #$00.b		; C9 00
	asl A		; 0A
	rti		; 40

	ora $C9EB.w		; 0D EB C9
	brk $0B.b		; 00 0B
	rti		; 40

	ora $E3.b,X		; 15 E3
	cmp ($00.b)		; D2 00
	tsb $1D40.w		; 0C 40 1D
	stp		; DB
	cmp ($00.b)		; D2 00
	ora $2540.w		; 0D 40 25
	cmp ($D2.b,S),Y		; D3 D2
	brk $0E.b		; 00 0E
	rti		; 40

	and $D2CB.w		; 2D CB D2
	brk $0F.b		; 00 0F
	rti		; 40

	sbc #$0F.b		; E9 0F
	sbc $1A00.w,Y		; F9 00 1A
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b,X)		; C1 00
	tas		; 1B
	rti		; 40

	tsb $C1EC.w		; 0C EC C1
	brk $1C.b		; 00 1C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b,X)		; E1 00
	ora $0140.w,X		; 1D 40 01
	sbc [$E9.b],Y		; F7 E9
	brk $1E.b		; 00 1E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b),Y		; F1 00
	ora $F70140.l,X		; 1F 40 01 F7
	sbc $2000.w,Y		; F9 00 20
	rti		; 40

	sbc $C9FB.w,X		; FD FB C9
	brk $21.b		; 00 21
	rti		; 40

	asl A		; 0A
	inc $00F8.w		; EE F8 00
	jsl $E61240.l		; 22 40 12 E6
	sed		; F8
	brk $23.b		; 00 23
	rti		; 40

	phd		; 0B
	sbc $00F0.w		; ED F0 00
	bit $40.b		; 24 40
	ora [$FC.b],Y		; 17 FC
	pea $08F1.w		; F4 F1 08
	brk $48.b		; 00 48
	sbc $FB.b,X		; F5 FB
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	ora $EB.b		; 05 EB
	cmp ($08.b,X)		; C1 08
	tsb $48.b		; 04 48
	sbc $08D9F1.l,X		; FF F1 D9 08
	asl $48.b		; 06 48
	asl A		; 0A
	inc $A9.b		; E6 A9
	php		; 08
	php		; 08
	pha		; 48
	sbc $03.b,X		; F5 03
	cmp ($00.b),Y		; D1 00
	asl A		; 0A
	rti		; 40

	sbc $D1FB.w,X		; FD FB D1
	brk $0B.b		; 00 0B
	rti		; 40

	ora $F3.b		; 05 F3
	cmp ($00.b),Y		; D1 00
	tsb $0D40.w		; 0C 40 0D
	xba		; EB
	cmp ($00.b),Y		; D1 00
	ora $F740.w		; 0D 40 F7
	ora ($D9.b,X)		; 01 D9
	brk $0E.b		; 00 0E
	rti		; 40

	tsb $F1EC.w		; 0C EC F1
	brk $0F.b		; 00 0F
	rti		; 40

	ora $00D9E9.l		; 0F E9 D9 00
	inc A		; 1A
	rti		; 40

	ora $00E1E9.l		; 0F E9 E1 00
	tas		; 1B
	rti		; 40

	sbc $00E9F9.l,X		; FF F9 E9 00
	trb $0740.w		; 1C 40 07
	sbc ($E9.b),Y		; F1 E9
	brk $1D.b		; 00 1D
	rti		; 40

	ora $00E9E9.l		; 0F E9 E9 00
	asl $F940.w,X		; 1E 40 F9
	sbc $1F00B9.l,X		; FF B9 00 1F
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda $2000.w,Y		; B9 00 20
	rti		; 40

	ora #$EF.b		; 09 EF
	lda $2100.w,Y		; B9 00 21
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	lda $2200.w,Y		; B9 00 22
	rti		; 40

	inc A		; 1A
	dec $00A9.w,X		; DE A9 00
	and $40.b,S		; 23 40
	cop $F6.b		; 02 F6
	lda ($00.b),Y		; B1 00
	bit $40.b		; 24 40
	tsb $F9EC.w		; 0C EC F9
	brk $25.b		; 00 25
	rti		; 40

	ora $04.b,X		; 15 04
	cpx $08A1.w		; EC A1 08
	brk $48.b		; 00 48
	jsr ($F1F4.w,X)		; FC F4 F1
	php		; 08
	cop $48.b		; 02 48
	tsb $EC.b		; 04 EC
	cmp ($08.b),Y		; D1 08
	tsb $48.b		; 04 48
	tsb $EC.b		; 04 EC
	cmp ($08.b,X)		; C1 08
	asl $48.b		; 06 48
	pea $C1FC.w		; F4 FC C1
	php		; 08
	php		; 08
	pha		; 48
	sbc $B1F7.w,Y		; F9 F7 B1
	php		; 08
	asl A		; 0A
	pha		; 48
	ora #$E7.b		; 09 E7
	lda ($08.b),Y		; B1 08
	tsb $0C48.w		; 0C 48 0C
	cpx $00F1.w		; EC F1 00
	asl $0C40.w		; 0E 40 0C
	cpx $00F9.w		; EC F9 00
	ora $E41440.l		; 0F 40 14 E4
	lda $00.b,S		; A3 00
	asl $1C40.w,X		; 1E 40 1C
	jmp.w [$00A3]		; DC A3 00
	ora $E41440.l,X		; 1F 40 14 E4
	plb		; AB
	brk $20.b		; 00 20
	rti		; 40

	trb $E4.b		; 14 E4
	dec $00.b		; C6 00
	and ($40.b,X)		; 21 40
	ora $E3.b,X		; 15 E3
	sta ($00.b,S),Y		; 93 00
	jsl $E01840.l		; 22 40 18 E0
	txy		; 9B
	brk $23.b		; 00 23
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc #$00.b		; E9 00
	bit $40.b		; 24 40
	ora #$EF.b		; 09 EF
	sbc #$00.b		; E9 00
	and $40.b		; 25 40
	pea $D104.w		; F4 04 D1
	brk $26.b		; 00 26
	rti		; 40

	jsr ($D1FC.w,X)		; FC FC D1
	brk $27.b		; 00 27
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	plp		; 28
	rti		; 40

	phd		; 0B
	sbc $00E1.w		; ED E1 00
	and #$40.b		; 29 40
	asl $0C.b,X		; 16 0C
	cpx $B5.b		; E4 B5
	php		; 08
	brk $48.b		; 00 48
	jsr ($ADF4.w,X)		; FC F4 AD
	php		; 08
	cop $48.b		; 02 48
	pea $D5FC.w		; F4 FC D5
	php		; 08
	tsb $48.b		; 04 48
	tsb $EC.b		; 04 EC
	cmp $08.b,X		; D5 08
	asl $48.b		; 06 48
	tsb $EC.b		; 04 EC
	cmp $08.b		; C5 08
	php		; 08
	pha		; 48
	pea $C5FC.w		; F4 FC C5
	php		; 08
	asl A		; 0A
	pha		; 48
	tsb $F5EC.w		; 0C EC F5
	brk $0C.b		; 00 0C
	rti		; 40

	tsb $ADEC.w		; 0C EC AD
	brk $0D.b		; 00 0D
	rti		; 40

	pea $B504.w		; F4 04 B5
	brk $0E.b		; 00 0E
	rti		; 40

	pea $BD04.w		; F4 04 BD
	brk $0F.b		; 00 0F
	rti		; 40

	jsr ($BDFC.w,X)		; FC FC BD
	brk $1C.b		; 00 1C
	rti		; 40

	tsb $F4.b		; 04 F4
	lda $1D00.w,X		; BD 00 1D
	rti		; 40

	sbc $03.b,X		; F5 03
	cpx $00.b		; E4 00
	asl $EE40.w,X		; 1E 40 EE
	asl A		; 0A
	sbc $1F00.w,Y		; F9 00 1F
	rti		; 40

	asl $F2.b		; 06 F2
	sbc $2000.w,X		; FD 00 20
	rti		; 40

	asl $FDEA.w		; 0E EA FD
	brk $21.b		; 00 21
	rti		; 40

	beq   8.b		; F0 08
	sbc ($00.b),Y		; F1 00
	jsl $F80040.l		; 22 40 00 F8
	lda $00.b		; A5 00
	and $40.b,S		; 23 40
	php		; 08
	beq -91.b		; F0 A5
	brk $24.b		; 00 24
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc #$00.b		; E9 00
	and $40.b		; 25 40
	asl A		; 0A
	inc $00E5.w		; EE E5 00
	rol $40.b		; 26 40
	asl A		; 0A
	inc $00ED.w		; EE ED 00
	and [$40.b]		; 27 40
	and ($F7.b,X)		; 21 F7
	sbc $08C3.w,Y		; F9 C3 08
	brk $48.b		; 00 48
	ora [$E9.b]		; 07 E9
	cmp $08.b,S		; C3 08
	cop $48.b		; 02 48
	cop $EE.b		; 02 EE
	lda ($08.b,S),Y		; B3 08
	tsb $48.b		; 04 48
	asl $F2.b		; 06 F2
	plx		; FA
	brk $06.b		; 00 06
	rti		; 40

	asl $FAEA.w		; 0E EA FA
	brk $07.b		; 00 07
	rti		; 40

	inc $FB0A.w		; EE 0A FB
	brk $08.b		; 00 08
	rti		; 40

	pea $EB04.w		; F4 04 EB
	brk $09.b		; 00 09
	rti		; 40

	ora $EDEB.w		; 0D EB ED
	brk $0A.b		; 00 0A
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cmp ($00.b,S),Y		; D3 00
	phd		; 0B
	rti		; 40

	sbc $00D3F9.l,X		; FF F9 D3 00
	tsb $0740.w		; 0C 40 07
	sbc ($D3.b),Y		; F1 D3
	brk $0D.b		; 00 0D
	rti		; 40

	ora $00D3E9.l		; 0F E9 D3 00
	asl $0F40.w		; 0E 40 0F
	sbc #$E6.b		; E9 E6
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $00EE09.l		; EF 09 EE 00
	asl $40.b,X		; 16 40
	plx		; FA
	inc $00BB.w,X		; FE BB 00
	ora [$40.b],Y		; 17 40
	plx		; FA
	inc $00DB.w,X		; FE DB 00
	clc		; 18
	rti		; 40

	cop $F6.b		; 02 F6
	stp		; DB
	brk $19.b		; 00 19
	rti		; 40

	asl A		; 0A
	inc $00DB.w		; EE DB 00
	inc A		; 1A
	rti		; 40

	ora ($E6.b)		; 12 E6
	stp		; DB
	brk $1B.b		; 00 1B
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc $00.b,S		; E3 00
	trb $FA40.w		; 1C 40 FA
	inc $00E3.w,X		; FE E3 00
	ora $1240.w,X		; 1D 40 12
	inc $E3.b		; E6 E3
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $F60B.w		; ED 0B F6
	brk $1F.b		; 00 1F
	rti		; 40

	ora ($E6.b)		; 12 E6
	lda ($00.b,S),Y		; B3 00
	jsr $1240.w		; 20 40 12
	inc $BB.b		; E6 BB
	brk $21.b		; 00 21
	rti		; 40

	inc A		; 1A
	dec $00B8.w,X		; DE B8 00
	jsl $D62240.l		; 22 40 22 D6
	clv		; B8
	brk $23.b		; 00 23
	rti		; 40

	rol A		; 2A
	dec $00B8.w		; CE B8 00
	bit $40.b		; 24 40
	and ($C6.b)		; 32 C6
	clv		; B8
	brk $25.b		; 00 25
	rti		; 40

	ora $F5.b,S		; 03 F5
	plb		; AB
	brk $26.b		; 00 26
	rti		; 40

	phd		; 0B
	sbc $00AB.w		; ED AB 00
	and [$40.b]		; 27 40
	ora ($E5.b,S),Y		; 13 E5
	plb		; AB
	brk $28.b		; 00 28
	rti		; 40

	phd		; 0B
	sbc $00F5.w		; ED F5 00
	and #$40.b		; 29 40
	ora $F2FE.w,X		; 1D FE F2
	tay		; A8
	php		; 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	cpy #$08.b		; C0 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	cpy #$08.b		; C0 08
	tsb $48.b		; 04 48
	ora $F3.b		; 05 F3
	clv		; B8
	brk $06.b		; 00 06
	rti		; 40

	ora $B8EB.w		; 0D EB B8
	brk $07.b		; 00 07
	rti		; 40

	ora $E3.b,X		; 15 E3
	clv		; B8
	brk $08.b		; 00 08
	rti		; 40

	sbc $03.b,X		; F5 03
	cld		; D8
	brk $09.b		; 00 09
	rti		; 40

	sbc $D8FB.w,X		; FD FB D8
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F3.b		; 05 F3
	cld		; D8
	brk $0B.b		; 00 0B
	rti		; 40

	ora $D8EB.w		; 0D EB D8
	brk $0C.b		; 00 0C
	rti		; 40

	inc $F90A.w		; EE 0A F9
	brk $0D.b		; 00 0D
	rti		; 40

	pea $E404.w		; F4 04 E4
	brk $0E.b		; 00 0E
	rti		; 40

	asl $A8EA.w		; 0E EA A8
	brk $0F.b		; 00 0F
	rti		; 40

	asl $B0EA.w		; 0E EA B0
	brk $16.b		; 00 16
	rti		; 40

	sbc $00F109.l		; EF 09 F1 00
	ora [$40.b],Y		; 17 40
	sed		; F8
	brk $E0.b		; 00 E0
	brk $18.b		; 00 18
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cpy #$00.b		; C0 00
	ora $F540.w,Y		; 19 40 F5
	ora $B8.b,S		; 03 B8
	brk $1A.b		; 00 1A
	rti		; 40

	sbc $B8FB.w,X		; FD FB B8
	brk $1B.b		; 00 1B
	rti		; 40

	sbc ($07.b),Y		; F1 07
	bne   0.b		; D0 00
	trb $F940.w		; 1C 40 F9
	sbc $1D00D0.l,X		; FF D0 00 1D
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	bne   0.b		; D0 00
	asl $0940.w,X		; 1E 40 09
	sbc $1F00D0.l		; EF D0 00 1F
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc #$00.b		; E9 00
	jsr $0A40.w		; 20 40 0A
	inc $00E0.w		; EE E0 00
	and ($40.b,X)		; 21 40
	asl A		; 0A
	inc $00E8.w		; EE E8 00
	jsl $EE0A40.l		; 22 40 0A EE
	beq   0.b		; F0 00
	and $40.b,S		; 23 40
	asl A		; 0A
	inc $00F8.w		; EE F8 00
	bit $40.b		; 24 40
	ora ($E6.b)		; 12 E6
	sed		; F8
	brk $25.b		; 00 25
	rti		; 40

	ora ($F4.b,S),Y		; 13 F4
	jsr ($08D6.w,X)		; FC D6 08
	brk $48.b		; 00 48
	inc $B602.w		; EE 02 B6
	php		; 08
	cop $48.b		; 02 48
	inc $B6F2.w,X		; FE F2 B6
	php		; 08
	tsb $48.b		; 04 48
	inc $C602.w		; EE 02 C6
	php		; 08
	asl $48.b		; 06 48
	inc $C6F2.w,X		; FE F2 C6
	php		; 08
	php		; 08
	pha		; 48
	sed		; F8
	sed		; F8
	ldx $08.b		; A6 08
	asl A		; 0A
	pha		; 48
	sbc $F60B.w		; ED 0B F6
	brk $0C.b		; 00 0C
	rti		; 40

	asl $BEEA.w		; 0E EA BE
	brk $0D.b		; 00 0D
	rti		; 40

	cpx $D60C.w		; EC 0C D6
	brk $0E.b		; 00 0E
	rti		; 40

	tsb $FCEC.w		; 0C EC FC
	brk $0F.b		; 00 0F
	rti		; 40

	tsb $F4.b		; 04 F4
	dec $00.b,X		; D6 00
	trb $0440.w		; 1C 40 04
	pea $00DE.w		; F4 DE 00
	ora $0740.w,X		; 1D 40 07
	sbc ($EE.b),Y		; F1 EE
	brk $1E.b		; 00 1E
	rti		; 40

	beq   8.b		; F0 08
	ldx $1F00.w		; AE 00 1F
	rti		; 40

	beq   8.b		; F0 08
	inc $2000.w		; EE 00 20
	rti		; 40

	ora $F3.b		; 05 F3
	inc $00.b		; E6 00
	and ($40.b,X)		; 21 40
	sbc ($06.b)		; F2 06
	inc $40.b		; E6 40
	and ($00.b,X)		; 21 00
	asl A		; 0A
	inc $00F6.w		; EE F6 00
	jsl $0DEB40.l		; 22 40 EB 0D
	jsr ($0F40.w,X)		; FC 40 0F
	brk $19.b		; 00 19
	sbc $A7F3.w,X		; FD F3 A7
	php		; 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	lda $480208.l,X		; BF 08 02 48
	asl $EA.b		; 06 EA
	lda $480408.l,X		; BF 08 04 48
	asl $EA.b		; 06 EA
	cmp $480608.l		; CF 08 06 48
	tsb $DFEC.w		; 0C EC DF
	brk $08.b		; 00 08
	rti		; 40

	trb $B3DC.w		; 1C DC B3
	brk $09.b		; 00 09
	rti		; 40

	ora $A7EB.w		; 0D EB A7
	brk $0A.b		; 00 0A
	rti		; 40

	ora $AFEB.w		; 0D EB AF
	brk $0B.b		; 00 0B
	rti		; 40

	inc $ECFA.w,X		; FE FA EC
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($F4FC.w,X)		; FC FC F4
	brk $0D.b		; 00 0D
	rti		; 40

	jsr ($FCFC.w,X)		; FC FC FC
	brk $0E.b		; 00 0E
	rti		; 40

	tsb $FEEC.w		; 0C EC FE
	brk $0F.b		; 00 0F
	rti		; 40

	inc $02.b,X		; F6 02
	cmp $401800.l		; CF 00 18 40
	inc $CFFA.w,X		; FE FA CF
	brk $19.b		; 00 19
	rti		; 40

	inc $D7FA.w,X		; FE FA D7
	brk $1A.b		; 00 1A
	rti		; 40

	ora $B4DF.w,Y		; 19 DF B4
	brk $1B.b		; 00 1B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	ldx $00.b,Y		; B6 00
	trb $F940.w		; 1C 40 F9
	sbc $1D00B7.l,X		; FF B7 00 1D
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda [$00.b],Y		; B7 00
	asl $0940.w,X		; 1E 40 09
	sbc $1F00B7.l		; EF B7 00 1F
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc [$00.b]		; E7 00
	jsr $0940.w		; 20 40 09
	sbc $2100EF.l		; EF EF 00 21
	rti		; 40

	asl A		; 0A
	inc $00E7.w		; EE E7 00
	jsl $F50340.l		; 22 40 03 F5
	cmp $402300.l,X		; DF 00 23 40
	phd		; 0B
	sbc $00F7.w		; ED F7 00
	bit $40.b		; 24 40
	ora ($F8.b,S),Y		; 13 F8
	sed		; F8
	cmp $08.b,S		; C3 08
	brk $48.b		; 00 48
	php		; 08
	inx		; E8
	cmp $08.b,S		; C3 08
	cop $48.b		; 02 48
	ora $ED.b,S		; 03 ED
	cmp ($08.b,S),Y		; D3 08
	tsb $48.b		; 04 48
	ora $ED.b,S		; 03 ED
	lda $08.b,S		; A3 08
	asl $48.b		; 06 48
	ora $ED.b,S		; 03 ED
	lda ($08.b,S),Y		; B3 08
	php		; 08
	pha		; 48
	ora ($F7.b,X)		; 01 F7
	sbc $00.b,S		; E3 00
	asl A		; 0A
	rti		; 40

	ora #$EF.b		; 09 EF
	sbc $00.b,S		; E3 00
	phd		; 0B
	rti		; 40

	ora #$EF.b		; 09 EF
	xba		; EB
	brk $0C.b		; 00 0C
	rti		; 40

	ora #$EF.b		; 09 EF
	sbc ($00.b,S),Y		; F3 00
	ora $0940.w		; 0D 40 09
	sbc $0E00FB.l		; EF FB 00 0E
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	xce		; FB
	brk $0F.b		; 00 0F
	rti		; 40

	xce		; FB
	sbc $00D3.w,X		; FD D3 00
	inc A		; 1A
	rti		; 40

	sbc $00F3F9.l,X		; FF F9 F3 00
	tas		; 1B
	rti		; 40

	inc $FBFA.w,X		; FE FA FB
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $00EBF9.l,X		; FF F9 EB 00
	ora $FB40.w,X		; 1D 40 FB
	sbc $00AB.w,X		; FD AB 00
	asl $FB40.w,X		; 1E 40 FB
	sbc $00B3.w,X		; FD B3 00
	ora $FDFB40.l,X		; 1F 40 FB FD
	tyx		; BB
	brk $20.b		; 00 20
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	lda [$00.b],Y		; B7 00
	and ($40.b,X)		; 21 40
	ora ($DF.b)		; 12 DF
	ora ($BD.b),Y		; 11 BD
	php		; 08
	brk $48.b		; 00 48
	sbc $08B801.l		; EF 01 B8 08
	cop $48.b		; 02 48
	sbc $08B8F1.l,X		; FF F1 B8 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $A8.b,X		; F6 A8
	php		; 08
	asl $48.b		; 06 48
	sbc ($FD.b,S),Y		; F3 FD
	bne   8.b		; D0 08
	php		; 08
	pha		; 48
	sbc ($06.b)		; F2 06
	bcs   0.b		; B0 00
	asl A		; 0A
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	iny		; C8
	brk $0B.b		; 00 0B
	rti		; 40

	nop		; EA
	asl $00C8.w		; 0E C8 00
	tsb $F240.w		; 0C 40 F2
	asl $C8.b		; 06 C8
	brk $0D.b		; 00 0D
	rti		; 40

	plx		; FA
	inc $00C8.w,X		; FE C8 00
	asl $0240.w		; 0E 40 02
	inc $C8.b,X		; F6 C8
	brk $0F.b		; 00 0F
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	lda $00.b,X		; B5 00
	inc A		; 1A
	rti		; 40

	sbc $15.b,S		; E3 15
	bne   0.b		; D0 00
	tas		; 1B
	rti		; 40

	xba		; EB
	ora $00D0.w		; 0D D0 00
	trb $0B40.w		; 1C 40 0B
	sbc $00D8.w		; ED D8 00
	ora $EA40.w,X		; 1D 40 EA
	asl $00B5.w		; 0E B5 00
	asl $0340.w,X		; 1E 40 03
	sbc $D0.b,X		; F5 D0
	brk $1F.b		; 00 1F
	rti		; 40

	ora $F5.b,S		; 03 F5
	cld		; D8
	brk $20.b		; 00 20
	rti		; 40

	clc		; 18
	jsr ($ACF4.w,X)		; FC F4 AC
	php		; 08
	brk $48.b		; 00 48
	jsr ($BCF4.w,X)		; FC F4 BC
	php		; 08
	cop $48.b		; 02 48
	jsr ($CCF4.w,X)		; FC F4 CC
	php		; 08
	tsb $48.b		; 04 48
	cpx $AD04.w		; EC 04 AD
	php		; 08
	asl $48.b		; 06 48
	pei ($1C.b)		; D4 1C
	bcs   8.b		; B0 08
	php		; 08
	pha		; 48
	bit $D1CC.w		; 2C CC D1
	brk $0A.b		; 00 0A
	rti		; 40

	tsb $BCEC.w		; 0C EC BC
	brk $0B.b		; 00 0B
	rti		; 40

	tsb $C4EC.w		; 0C EC C4
	brk $0C.b		; 00 0C
	rti		; 40

	tsb $CCEC.w		; 0C EC CC
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $D4EC.w		; 0C EC D4
	brk $0E.b		; 00 0E
	rti		; 40

	pea $C504.w		; F4 04 C5
	brk $0F.b		; 00 0F
	rti		; 40

	pea $CD04.w		; F4 04 CD
	brk $1A.b		; 00 1A
	rti		; 40

	trb $D1DC.w		; 1C DC D1
	brk $1B.b		; 00 1B
	rti		; 40

	cpx $BD0C.w		; EC 0C BD
	brk $1C.b		; 00 1C
	rti		; 40

	pea $BD04.w		; F4 04 BD
	brk $1D.b		; 00 1D
	rti		; 40

	trb $E4.b		; 14 E4
	bne   0.b		; D0 00
	asl $2440.w,X		; 1E 40 24
	pei ($D1.b)		; D4 D1
	brk $1F.b		; 00 1F
	rti		; 40

	cpx $14.b		; E4 14
	bcs   0.b		; B0 00
	jsr $E440.w		; 20 40 E4
	trb $B8.b		; 14 B8
	brk $21.b		; 00 21
	rti		; 40

	pei ($24.b)		; D4 24
	cpy #$00.b		; C0 00
	jsl $1CDC40.l		; 22 40 DC 1C
	cpy #$00.b		; C0 00
	and $40.b,S		; 23 40
	cpx $14.b		; E4 14
	cpy #$00.b		; C0 00
	bit $40.b		; 24 40
	sbc $D6FF.w,Y		; F9 FF D6
	brk $25.b		; 00 25
	rti		; 40

	sbc ($17.b,X)		; E1 17
	iny		; C8
	brk $26.b		; 00 26
	rti		; 40

	ora ($F7.b,S),Y		; 13 F7
	sbc $08CD.w,Y		; F9 CD 08
	brk $48.b		; 00 48
	ora [$E9.b]		; 07 E9
	cmp $0208.w		; CD 08 02
	pha		; 48
	sbc $08DDF1.l,X		; FF F1 DD 08
	tsb $48.b		; 04 48
	ora $08DDE1.l		; 0F E1 DD 08
	asl $48.b		; 06 48
	php		; 08
	inx		; E8
	sbc $0808.w		; ED 08 08
	pha		; 48
	ora $00E3D9.l,X		; 1F D9 E3 00
	asl A		; 0A
	rti		; 40

	trb $E4.b		; 14 E4
	ora $00.b		; 05 00
	phd		; 0B
	rti		; 40

	bit $D4.b		; 24 D4
	sbc [$00.b]		; E7 00
	tsb $0D40.w		; 0C 40 0D
	xba		; EB
	sbc $0D00.w,X		; FD 00 0D
	rti		; 40

	ora $E3.b,X		; 15 E3
	sbc $0E00.w,X		; FD 00 0E
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	cmp $0F00.w		; CD 00 0F
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	cmp $00.b,X		; D5 00
	inc A		; 1A
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cmp $1B00.w,X		; DD 00 1B
	rti		; 40

	sbc $00D709.l		; EF 09 D7 00
	trb $0040.w		; 1C 40 00
	sed		; F8
	sbc $1D00.w		; ED 00 1D
	rti		; 40

	asl $E2.b,X		; 16 E2
	ora #$00.b		; 09 00
	asl $1840.w,X		; 1E 40 18
	cpx #$ED.b		; E0 ED
	brk $1F.b		; 00 1F
	rti		; 40

	clc		; 18
	cpx #$F5.b		; E0 F5
	brk $20.b		; 00 20
	rti		; 40

	jsr $F0D8.w		; 20 D8 F0
	brk $21.b		; 00 21
	rti		; 40

	asl $FF.b,X		; 16 FF
	sbc ($E0.b),Y		; F1 E0
	php		; 08
	brk $48.b		; 00 48
	ora $08E0E1.l		; 0F E1 E0 08
	cop $48.b		; 02 48
	sbc $D0F7.w,Y		; F9 F7 D0
	php		; 08
	tsb $48.b		; 04 48
	ora #$E7.b		; 09 E7
	bne   8.b		; D0 08
	asl $48.b		; 06 48
	trb $F0DC.w		; 1C DC F0
	brk $08.b		; 00 08
	rti		; 40

	tsb $F8EC.w		; 0C EC F8
	brk $09.b		; 00 09
	rti		; 40

	and [$C1.b],Y		; 37 C1
	sbc $0A00.w,Y		; F9 00 0A
	rti		; 40

	ora $00DED9.l,X		; 1F D9 DE 00
	phd		; 0B
	rti		; 40

	ora $00C8E9.l		; 0F E9 C8 00
	tsb $1740.w		; 0C 40 17
	sbc ($C8.b,X)		; E1 C8
	brk $0D.b		; 00 0D
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cpx #$00.b		; E0 00
	asl $2440.w		; 0E 40 24
	pei ($F2.b)		; D4 F2
	brk $0F.b		; 00 0F
	rti		; 40

	tsb $F4.b		; 04 F4
	beq   0.b		; F0 00
	clc		; 18
	rti		; 40

	plp		; 28
	bne -11.b		; D0 F5
	brk $19.b		; 00 19
	rti		; 40

	bmi -56.b		; 30 C8
	sbc [$00.b],Y		; F7 00
	inc A		; 1A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cmp ($00.b),Y		; D1 00
	tas		; 1B
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cmp $1C00.w,Y		; D9 00 1C
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b,X)		; E1 00
	ora $0C40.w,X		; 1D 40 0C
	cpx $00F0.w		; EC F0 00
	asl $1440.w,X		; 1E 40 14
	cpx $F0.b		; E4 F0
	brk $1F.b		; 00 1F
	rti		; 40

	ora $D0DF.w,Y		; 19 DF D0
	brk $20.b		; 00 20
	rti		; 40

	ora $D8DF.w,Y		; 19 DF D8
	brk $21.b		; 00 21
	rti		; 40

	asl $F000.w		; 0E 00 F0
	cmp $0008.w,Y		; D9 08 00
	pha		; 48
	bpl -32.b		; 10 E0
	cmp $0208.w,Y		; D9 08 02
	pha		; 48
	plx		; FA
	inc $E9.b,X		; F6 E9
	php		; 08
	tsb $48.b		; 04 48
	asl A		; 0A
	inc $E9.b		; E6 E9
	php		; 08
	asl $48.b		; 06 48
	asl $E2.b,X		; 16 E2
	cmp ($00.b),Y		; D1 00
	php		; 08
	rti		; 40

	sbc $00C9F9.l,X		; FF F9 C9 00
	ora #$40.b		; 09 40
	ora [$F1.b]		; 07 F1
	cmp #$00.b		; C9 00
	asl A		; 0A
	rti		; 40

	sed		; F8
	brk $E1.b		; 00 E1
	brk $0B.b		; 00 0B
	rti		; 40

	tsb $F9EC.w		; 0C EC F9
	brk $0C.b		; 00 0C
	rti		; 40

	inc $D1FA.w,X		; FE FA D1
	brk $0D.b		; 00 0D
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b),Y		; D1 00
	asl $0E40.w		; 0E 40 0E
	nop		; EA
	cmp ($00.b),Y		; D1 00
	ora $DE1A40.l		; 0F 40 1A DE
	sbc #$00.b		; E9 00
	clc		; 18
	rti		; 40

	inc A		; 1A
	dec $00F1.w,X		; DE F1 00
	ora $1540.w,Y		; 19 40 15
	and $D2C3.w		; 2D C3 D2
	php		; 08
	brk $48.b		; 00 48
	ora $EB.b		; 05 EB
	iny		; C8
	php		; 08
	cop $48.b		; 02 48
	sbc $D8F3.w,X		; FD F3 D8
	php		; 08
	tsb $48.b		; 04 48
	ora $DB.b,X		; 15 DB
	bne   8.b		; D0 08
	asl $48.b		; 06 48
	sbc $E8F7.w,Y		; F9 F7 E8
	php		; 08
	php		; 08
	pha		; 48
	ora #$E7.b		; 09 E7
	inx		; E8
	php		; 08
	asl A		; 0A
	pha		; 48
	and $D3.b		; 25 D3
	sep #$00		; E2 00
	tsb $2D40.w		; 0C 40 2D
	wai		; CB
	sep #$00		; E2 00
	ora $0C40.w		; 0D 40 0C
	cpx $00F8.w		; EC F8 00
	asl $2540.w		; 0E 40 25
	cmp ($EA.b,S),Y		; D3 EA
	brk $0F.b		; 00 0F
	rti		; 40

	tsb $F4.b		; 04 F4
	sed		; F8
	brk $1C.b		; 00 1C
	rti		; 40

	ora $D8EB.w		; 0D EB D8
	brk $1D.b		; 00 1D
	rti		; 40

	ora $E0EB.w		; 0D EB E0
	brk $1E.b		; 00 1E
	rti		; 40

	ora $E3.b,X		; 15 E3
	cpx #$00.b		; E0 00
	ora $DB1D40.l,X		; 1F 40 1D DB
	cpx #$00.b		; E0 00
	jsr $F140.w		; 20 40 F1
	ora [$F2.b]		; 07 F2
	brk $21.b		; 00 21
	rti		; 40

	cmp $F31F.w,Y		; D9 1F F3
	brk $22.b		; 00 22
	rti		; 40

	sbc ($17.b,X)		; E1 17
	sbc ($00.b,S),Y		; F3 00
	and $40.b,S		; 23 40
	sbc #$0F.b		; E9 0F
	sbc ($00.b,S),Y		; F3 00
	bit $40.b		; 24 40
	and $D3.b		; 25 D3
	cmp ($00.b)		; D2 00
	and $40.b		; 25 40
	and $D3.b		; 25 D3
	phx		; DA
	brk $26.b		; 00 26
	rti		; 40

	ora $D10CE4.l		; 0F E4 0C D1
	php		; 08
	brk $48.b		; 00 48
	pea $D1FC.w		; F4 FC D1
	php		; 08
	cop $48.b		; 02 48
	sbc $0B.b		; E5 0B
	cmp ($08.b,X)		; C1 08
	tsb $48.b		; 04 48
	sbc $FB.b,X		; F5 FB
	cmp ($08.b,X)		; C1 08
	asl $48.b		; 06 48
	plx		; FA
	inc $A9.b,X		; F6 A9
	php		; 08
	php		; 08
	pha		; 48
	ora [$F1.b]		; 07 F1
	lda $00.b,S		; A3 00
	asl A		; 0A
	rti		; 40

	sbc #$0F.b		; E9 0F
	lda $0B00.w,Y		; B9 00 0B
	rti		; 40

	sbc ($07.b),Y		; F1 07
	lda $0C00.w,Y		; B9 00 0C
	rti		; 40

	sbc $B9FF.w,Y		; F9 FF B9
	brk $0D.b		; 00 0D
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda $0E00.w,Y		; B9 00 0E
	rti		; 40

	ora #$EF.b		; 09 EF
	lda $0F00.w,Y		; B9 00 0F
	rti		; 40

	sbc ($06.b)		; F2 06
	lda ($00.b),Y		; B1 00
	inc A		; 1A
	rti		; 40

	ora $F3.b		; 05 F3
	cmp #$00.b		; C9 00
	tas		; 1B
	rti		; 40

	asl A		; 0A
	inc $00A9.w		; EE A9 00
	trb $0A40.w		; 1C 40 0A
	inc $00B1.w		; EE B1 00
	ora $1640.w,X		; 1D 40 16
	sbc ($FF.b),Y		; F1 FF
	tsx		; BA
	php		; 08
	brk $48.b		; 00 48
	ora ($EF.b,X)		; 01 EF
	tsx		; BA
	php		; 08
	cop $48.b		; 02 48
	sbc ($0F.b,X)		; E1 0F
	tyx		; BB
	php		; 08
	tsb $48.b		; 04 48
	xce		; FB
	sbc $AA.b,X		; F5 AA
	php		; 08
	asl $48.b		; 06 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b)		; D2 08
	php		; 08
	pha		; 48
	sbc $13.b		; E5 13
	wai		; CB
	brk $0A.b		; 00 0A
	rti		; 40

	clc		; 18
	cpx #$CB.b		; E0 CB
	brk $0B.b		; 00 0B
	rti		; 40

	trb $E4.b		; 14 E4
	cmp #$00.b		; C9 00
	tsb $0C40.w		; 0C 40 0C
	cpx $00C6.w		; EC C6 00
	ora $ED40.w		; 0D 40 ED
	phd		; 0B
	dex		; CA
	brk $0E.b		; 00 0E
	rti		; 40

	inc A		; 1A
	dec $00C7.w,X		; DE C7 00
	ora $05F340.l		; 0F 40 F3 05
	lda ($00.b)		; B2 00
	inc A		; 1A
	rti		; 40

	sbc $03.b,X		; F5 03
	dex		; CA
	brk $1B.b		; 00 1B
	rti		; 40

	sbc $CAFB.w,X		; FD FB CA
	brk $1C.b		; 00 1C
	rti		; 40

	phd		; 0B
	sbc $00AA.w		; ED AA 00
	ora $0B40.w,X		; 1D 40 0B
	sbc $00B2.w		; ED B2 00
	asl $EB40.w,X		; 1E 40 EB
	ora $00D2.w		; 0D D2 00
	ora $0DEB40.l,X		; 1F 40 EB 0D
	phx		; DA
	brk $20.b		; 00 20
	rti		; 40

	xba		; EB
	ora $00E2.w		; 0D E2 00
	and ($40.b,X)		; 21 40
	sbc ($05.b,S),Y		; F3 05
	sep #$00		; E2 00
	jsl $15E340.l		; 22 40 E3 15
	lda ($00.b,S),Y		; B3 00
	and $40.b,S		; 23 40
	xba		; EB
	ora $00B3.w		; 0D B3 00
	bit $40.b		; 24 40
	tas		; 1B
	trb $91D4.w		; 1C D4 91
	php		; 08
	brk $48.b		; 00 48
	jsr ($A9F4.w,X)		; FC F4 A9
	php		; 08
	cop $48.b		; 02 48
	tsb $90E4.w		; 0C E4 90
	php		; 08
	tsb $48.b		; 04 48
	tsb $B1EC.w		; 0C EC B1
	brk $06.b		; 00 06
	rti		; 40

	tsb $A9EC.w		; 0C EC A9
	brk $07.b		; 00 07
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b,X)		; A1 00
	php		; 08
	rti		; 40

	php		; 08
	beq -95.b		; F0 A1
	brk $09.b		; 00 09
	rti		; 40

	ora ($E6.b)		; 12 E6
	ldy #$00.b		; A0 00
	asl A		; 0A
	rti		; 40

	inc A		; 1A
	dec $00A0.w,X		; DE A0 00
	phd		; 0B
	rti		; 40

	jsr ($C1F4.w,X)		; FC F4 C1
	php		; 08
	asl $48.b,X		; 16 48
	tsb $C1E4.w		; 0C E4 C1
	php		; 08
	clc		; 18
	pha		; 48
	jsr ($D1F4.w,X)		; FC F4 D1
	php		; 08
	inc A		; 1A
	pha		; 48
	jsr ($E1FC.w,X)		; FC FC E1
	brk $1C.b		; 00 1C
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $1D.b		; 00 1D
	rti		; 40

	jsr ($F1FC.w,X)		; FC FC F1
	brk $1E.b		; 00 1E
	rti		; 40

	tsb $D1EC.w		; 0C EC D1
	brk $1F.b		; 00 1F
	rti		; 40

	trb $E4.b		; 14 E4
	cmp ($00.b),Y		; D1 00
	jsr $0C40.w		; 20 40 0C
	cpx $00D9.w		; EC D9 00
	and ($40.b,X)		; 21 40
	sbc $B9FB.w,X		; FD FB B9
	brk $22.b		; 00 22
	rti		; 40

	ora $F3.b		; 05 F3
	lda $2300.w,Y		; B9 00 23
	rti		; 40

	ora $B9EB.w		; 0D EB B9
	brk $24.b		; 00 24
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b,X)		; E1 00
	and $40.b		; 25 40
	asl $F2.b		; 06 F2
	sbc #$00.b		; E9 00
	bit $0640.w		; 2C 40 06
	sbc ($F1.b)		; F2 F1
	brk $2D.b		; 00 2D
	rti		; 40

	sed		; F8
	brk $F9.b		; 00 F9
	brk $2E.b		; 00 2E
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $2F00.w,Y		; F9 00 2F
	rti		; 40

	php		; 08
	beq  -7.b		; F0 F9
	brk $30.b		; 00 30
	rti		; 40

	ora $D41C.w,X		; 1D 1C D4
	sta ($08.b),Y		; 91 08
	brk $48.b		; 00 48
	jsr ($A1F4.w,X)		; FC F4 A1
	php		; 08
	cop $48.b		; 02 48
	tsb $A1EC.w		; 0C EC A1
	brk $04.b		; 00 04
	rti		; 40

	tsb $A9EC.w		; 0C EC A9
	brk $05.b		; 00 05
	rti		; 40

	jsr ($B1FC.w,X)		; FC FC B1
	brk $06.b		; 00 06
	rti		; 40

	tsb $F4.b		; 04 F4
	lda ($00.b),Y		; B1 00
	ora [$40.b]		; 07 40
	tsb $B1EC.w		; 0C EC B1
	brk $08.b		; 00 08
	rti		; 40

	tsb $90EC.w		; 0C EC 90
	brk $09.b		; 00 09
	rti		; 40

	trb $E4.b		; 14 E4
	bcc   0.b		; 90 00
	asl A		; 0A
	rti		; 40

	trb $E4.b		; 14 E4
	tya		; 98
	brk $0B.b		; 00 0B
	rti		; 40

	trb $E4.b		; 14 E4
	ldy #$00.b		; A0 00
	tsb $FC40.w		; 0C 40 FC
	pea $08C1.w		; F4 C1 08
	trb $48.b		; 14 48
	tsb $C1E4.w		; 0C E4 C1
	php		; 08
	asl $48.b,X		; 16 48
	jsr ($D1F4.w,X)		; FC F4 D1
	php		; 08
	clc		; 18
	pha		; 48
	jsr ($E1FC.w,X)		; FC FC E1
	brk $1A.b		; 00 1A
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $1B.b		; 00 1B
	rti		; 40

	jsr ($F1FC.w,X)		; FC FC F1
	brk $1C.b		; 00 1C
	rti		; 40

	tsb $D1EC.w		; 0C EC D1
	brk $1D.b		; 00 1D
	rti		; 40

	trb $E4.b		; 14 E4
	cmp ($00.b),Y		; D1 00
	asl $0C40.w,X		; 1E 40 0C
	cpx $00D9.w		; EC D9 00
	ora $FBFD40.l,X		; 1F 40 FD FB
	lda $2000.w,Y		; B9 00 20
	rti		; 40

	ora $F3.b		; 05 F3
	lda $2100.w,Y		; B9 00 21
	rti		; 40

	ora $B9EB.w		; 0D EB B9
	brk $22.b		; 00 22
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b,X)		; E1 00
	and $40.b,S		; 23 40
	asl $F2.b		; 06 F2
	sbc #$00.b		; E9 00
	rol A		; 2A
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b),Y		; F1 00
	pld		; 2B
	rti		; 40

	sed		; F8
	brk $F9.b		; 00 F9
	brk $2C.b		; 00 2C
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $2D00.w,Y		; F9 00 2D
	rti		; 40

	php		; 08
	beq  -7.b		; F0 F9
	brk $2E.b		; 00 2E
	rti		; 40

	ora $D41C.w,X		; 1D 1C D4
	sta ($08.b),Y		; 91 08
	brk $48.b		; 00 48
	jsr ($A1F4.w,X)		; FC F4 A1
	php		; 08
	cop $48.b		; 02 48
	tsb $A1EC.w		; 0C EC A1
	brk $04.b		; 00 04
	rti		; 40

	tsb $A9EC.w		; 0C EC A9
	brk $05.b		; 00 05
	rti		; 40

	jsr ($B1FC.w,X)		; FC FC B1
	brk $06.b		; 00 06
	rti		; 40

	tsb $F4.b		; 04 F4
	lda ($00.b),Y		; B1 00
	ora [$40.b]		; 07 40
	tsb $B1EC.w		; 0C EC B1
	brk $08.b		; 00 08
	rti		; 40

	tsb $90EC.w		; 0C EC 90
	brk $09.b		; 00 09
	rti		; 40

	trb $E4.b		; 14 E4
	bcc   0.b		; 90 00
	asl A		; 0A
	rti		; 40

	trb $E4.b		; 14 E4
	tya		; 98
	brk $0B.b		; 00 0B
	rti		; 40

	trb $E4.b		; 14 E4
	ldy #$00.b		; A0 00
	tsb $FC40.w		; 0C 40 FC
	pea $08C1.w		; F4 C1 08
	trb $48.b		; 14 48
	tsb $C1E4.w		; 0C E4 C1
	php		; 08
	asl $48.b,X		; 16 48
	jsr ($D1F4.w,X)		; FC F4 D1
	php		; 08
	clc		; 18
	pha		; 48
	jsr ($E1FC.w,X)		; FC FC E1
	brk $1A.b		; 00 1A
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $1B.b		; 00 1B
	rti		; 40

	jsr ($F1FC.w,X)		; FC FC F1
	brk $1C.b		; 00 1C
	rti		; 40

	tsb $D1EC.w		; 0C EC D1
	brk $1D.b		; 00 1D
	rti		; 40

	trb $E4.b		; 14 E4
	cmp ($00.b),Y		; D1 00
	asl $0C40.w,X		; 1E 40 0C
	cpx $00D9.w		; EC D9 00
	ora $FBFD40.l,X		; 1F 40 FD FB
	lda $2000.w,Y		; B9 00 20
	rti		; 40

	ora $F3.b		; 05 F3
	lda $2100.w,Y		; B9 00 21
	rti		; 40

	ora $B9EB.w		; 0D EB B9
	brk $22.b		; 00 22
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b,X)		; E1 00
	and $40.b,S		; 23 40
	asl $F2.b		; 06 F2
	sbc #$00.b		; E9 00
	rol A		; 2A
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b),Y		; F1 00
	pld		; 2B
	rti		; 40

	sed		; F8
	brk $F9.b		; 00 F9
	brk $2C.b		; 00 2C
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $2D00.w,Y		; F9 00 2D
	rti		; 40

	php		; 08
	beq  -7.b		; F0 F9
	brk $2E.b		; 00 2E
	rti		; 40

	trb $F6.b		; 14 F6
	plx		; FA
	lda ($08.b,X)		; A1 08
	brk $48.b		; 00 48
	inc $B902.w		; EE 02 B9
	php		; 08
	cop $48.b		; 02 48
	inc $B9F2.w,X		; FE F2 B9
	php		; 08
	tsb $48.b		; 04 48
	sbc ($06.b)		; F2 06
	lda ($00.b),Y		; B1 00
	asl $40.b		; 06 40
	plx		; FA
	inc $00B1.w,X		; FE B1 00
	ora [$40.b]		; 07 40
	cop $F6.b		; 02 F6
	lda ($00.b),Y		; B1 00
	php		; 08
	rti		; 40

	cpx $C904.w		; EC 04 C9
	php		; 08
	asl $48.b,X		; 16 48
	jsr ($C9F4.w,X)		; FC F4 C9
	php		; 08
	clc		; 18
	pha		; 48
	pea $F904.w		; F4 04 F9
	brk $1A.b		; 00 1A
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b),Y		; F1 00
	tas		; 1B
	rti		; 40

	asl $F2.b		; 06 F2
	sbc $1C00.w,Y		; F9 00 1C
	rti		; 40

	asl $F9EA.w		; 0E EA F9
	brk $1D.b		; 00 1D
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($00.b,X)		; E1 00
	asl $F740.w,X		; 1E 40 F7
	ora ($E9.b,X)		; 01 E9
	brk $1F.b		; 00 1F
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($00.b),Y		; F1 00
	jsr $F140.w		; 20 40 F1
	ora [$D9.b]		; 07 D9
	brk $21.b		; 00 21
	rti		; 40

	sbc $D9FF.w,Y		; F9 FF D9
	brk $22.b		; 00 22
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $2300.w,Y		; D9 00 23
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	bit $40.b		; 24 40
	ora $F5.b,S		; 03 F5
	sbc #$00.b		; E9 00
	and $40.b		; 25 40
	trb $F6.b		; 14 F6
	plx		; FA
	lda ($08.b,X)		; A1 08
	brk $48.b		; 00 48
	inc $B902.w		; EE 02 B9
	php		; 08
	cop $48.b		; 02 48
	inc $B9F2.w,X		; FE F2 B9
	php		; 08
	tsb $48.b		; 04 48
	sbc ($06.b)		; F2 06
	lda ($00.b),Y		; B1 00
	asl $40.b		; 06 40
	plx		; FA
	inc $00B1.w,X		; FE B1 00
	ora [$40.b]		; 07 40
	cop $F6.b		; 02 F6
	lda ($00.b),Y		; B1 00
	php		; 08
	rti		; 40

	cpx $C904.w		; EC 04 C9
	php		; 08
	asl $48.b,X		; 16 48
	jsr ($C9F4.w,X)		; FC F4 C9
	php		; 08
	clc		; 18
	pha		; 48
	pea $F904.w		; F4 04 F9
	brk $1A.b		; 00 1A
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b),Y		; F1 00
	tas		; 1B
	rti		; 40

	asl $F2.b		; 06 F2
	sbc $1C00.w,Y		; F9 00 1C
	rti		; 40

	asl $F9EA.w		; 0E EA F9
	brk $1D.b		; 00 1D
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($00.b,X)		; E1 00
	asl $F740.w,X		; 1E 40 F7
	ora ($E9.b,X)		; 01 E9
	brk $1F.b		; 00 1F
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($00.b),Y		; F1 00
	jsr $F140.w		; 20 40 F1
	ora [$D9.b]		; 07 D9
	brk $21.b		; 00 21
	rti		; 40

	sbc $D9FF.w,Y		; F9 FF D9
	brk $22.b		; 00 22
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $2300.w,Y		; D9 00 23
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	bit $40.b		; 24 40
	ora $F5.b,S		; 03 F5
	sbc #$00.b		; E9 00
	and $40.b		; 25 40
	ora $F6.b,X		; 15 F6
	plx		; FA
	lda ($08.b,X)		; A1 08
	brk $48.b		; 00 48
	sbc $08B101.l		; EF 01 B1 08
	cop $48.b		; 02 48
	sbc $08B1F1.l,X		; FF F1 B1 08
	tsb $48.b		; 04 48
	sbc $00C109.l		; EF 09 C1 00
	asl $40.b		; 06 40
	sbc [$01.b],Y		; F7 01
	cmp ($00.b,X)		; C1 00
	ora [$40.b]		; 07 40
	sbc $00C1F9.l,X		; FF F9 C1 00
	php		; 08
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp ($00.b,X)		; C1 00
	ora #$40.b		; 09 40
	cpx $C904.w		; EC 04 C9
	php		; 08
	asl $48.b,X		; 16 48
	jsr ($C9F4.w,X)		; FC F4 C9
	php		; 08
	clc		; 18
	pha		; 48
	pea $F904.w		; F4 04 F9
	brk $1A.b		; 00 1A
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b),Y		; F1 00
	tas		; 1B
	rti		; 40

	asl $F2.b		; 06 F2
	sbc $1C00.w,Y		; F9 00 1C
	rti		; 40

	asl $F9EA.w		; 0E EA F9
	brk $1D.b		; 00 1D
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($00.b,X)		; E1 00
	asl $F740.w,X		; 1E 40 F7
	ora ($E9.b,X)		; 01 E9
	brk $1F.b		; 00 1F
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($00.b),Y		; F1 00
	jsr $F140.w		; 20 40 F1
	ora [$D9.b]		; 07 D9
	brk $21.b		; 00 21
	rti		; 40

	sbc $D9FF.w,Y		; F9 FF D9
	brk $22.b		; 00 22
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $2300.w,Y		; D9 00 23
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	bit $40.b		; 24 40
	ora $F5.b,S		; 03 F5
	sbc #$00.b		; E9 00
	and $40.b		; 25 40
	ora ($04.b),Y		; 11 04
	cpx $08C9.w		; EC C9 08
	brk $48.b		; 00 48
	xce		; FB
	sbc $E1.b,X		; F5 E1
	php		; 08
	cop $48.b		; 02 48
	phd		; 0B
	sbc $E1.b		; E5 E1
	php		; 08
	tsb $48.b		; 04 48
	jsr ($D9FC.w,X)		; FC FC D9
	brk $06.b		; 00 06
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $0700.w,Y		; D9 00 07
	rti		; 40

	tsb $D9EC.w		; 0C EC D9
	brk $08.b		; 00 08
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc $0900.w,Y		; F9 00 09
	rti		; 40

	sbc $F9FB.w,X		; FD FB F9
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $0B00.w,Y		; F9 00 0B
	rti		; 40

	ora $F9EB.w		; 0D EB F9
	brk $0C.b		; 00 0C
	rti		; 40

	sed		; F8
	brk $F1.b		; 00 F1
	brk $0D.b		; 00 0D
	rti		; 40

	brk $F8.b		; 00 F8
	sbc ($00.b),Y		; F1 00
	asl $0840.w		; 0E 40 08
	beq -15.b		; F0 F1
	brk $0F.b		; 00 0F
	rti		; 40

	bpl -24.b		; 10 E8
	sbc ($00.b),Y		; F1 00
	asl $40.b,X		; 16 40
	beq   8.b		; F0 08
	sbc ($00.b)		; F2 00
	ora [$40.b],Y		; 17 40
	trb $E4.b		; 14 E4
	cmp $1800.w,Y		; D9 00 18
	rti		; 40

	jsr ($D1FC.w,X)		; FC FC D1
	brk $19.b		; 00 19
	rti		; 40

	ora [$1C.b],Y		; 17 1C
	pei ($E1.b)		; D4 E1
	php		; 08
	brk $48.b		; 00 48
	cpx $E104.w		; EC 04 E1
	php		; 08
	cop $48.b		; 02 48
	jsr ($E1F4.w,X)		; FC F4 E1
	php		; 08
	tsb $48.b		; 04 48
	tsb $E1E4.w		; 0C E4 E1
	php		; 08
	asl $48.b		; 06 48
	sbc ($FF.b),Y		; F1 FF
	cmp ($08.b),Y		; D1 08
	php		; 08
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cmp ($08.b),Y		; D1 08
	asl A		; 0A
	pha		; 48
	pea $F104.w		; F4 04 F1
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($F1FC.w,X)		; FC FC F1
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc ($00.b),Y		; F1 00
	asl $0C40.w		; 0E 40 0C
	cpx $00F1.w		; EC F1 00
	ora $E41440.l		; 0F 40 14 E4
	sbc ($00.b),Y		; F1 00
	trb $3440.w		; 1C 40 34
	cpy $DB.b		; C4 DB
	brk $1D.b		; 00 1D
	rti		; 40

	bit $DFCC.w		; 2C CC DF
	brk $1E.b		; 00 1E
	rti		; 40

	bit $E7CC.w		; 2C CC E7
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $00F9F9.l,X		; FF F9 F9 00
	jsr $0740.w		; 20 40 07
	sbc ($F9.b),Y		; F1 F9
	brk $21.b		; 00 21
	rti		; 40

	ora $00F9E9.l		; 0F E9 F9 00
	jsl $0FE940.l		; 22 40 E9 0F
	cmp $2300.w,Y		; D9 00 23
	rti		; 40

	bit $D1BC.w,X		; 3C BC D1
	brk $24.b		; 00 24
	rti		; 40

	bit $D9BC.w,X		; 3C BC D9
	brk $25.b		; 00 25
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp ($00.b),Y		; D1 00
	rol $40.b		; 26 40
	ora ($E7.b),Y		; 11 E7
	cmp $2700.w,Y		; D9 00 27
	rti		; 40

	plx		; FA
	inc $00C9.w,X		; FE C9 00
	plp		; 28
	rti		; 40

	ora $ED03.w,Y		; 19 03 ED
	lda ($08.b),Y		; B1 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	lda $0208.w,Y		; B9 08 02
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp #$08.b		; C9 08
	tsb $48.b		; 04 48
	ora $ED.b,S		; 03 ED
	cmp ($08.b,X)		; C1 08
	asl $48.b		; 06 48
	sbc $A9FB.w,X		; FD FB A9
	brk $08.b		; 00 08
	rti		; 40

	ora $F3.b		; 05 F3
	lda #$00.b		; A9 00
	ora #$40.b		; 09 40
	ora $A9EB.w		; 0D EB A9
	brk $0A.b		; 00 0A
	rti		; 40

	asl $E1EA.w		; 0E EA E1
	brk $0B.b		; 00 0B
	rti		; 40

	inc $E90A.w		; EE 0A E9
	brk $0C.b		; 00 0C
	rti		; 40

	inc $02.b,X		; F6 02
	sbc #$00.b		; E9 00
	ora $0E40.w		; 0D 40 0E
	nop		; EA
	sbc #$00.b		; E9 00
	asl $EE40.w		; 0E 40 EE
	asl A		; 0A
	sbc ($00.b),Y		; F1 00
	ora $0AEE40.l		; 0F 40 EE 0A
	sbc $1800.w,Y		; F9 00 18
	rti		; 40

	ora $00F1E9.l		; 0F E9 F1 00
	ora $0F40.w,Y		; 19 40 0F
	sbc #$F9.b		; E9 F9
	brk $1A.b		; 00 1A
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	sbc $1B00.w,Y		; F9 00 1B
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b,X)		; E1 00
	trb $FA40.w		; 1C 40 FA
	inc $00E1.w,X		; FE E1 00
	ora $F440.w,X		; 1D 40 F4
	tsb $D9.b		; 04 D9
	brk $1E.b		; 00 1E
	rti		; 40

	jsr ($D9FC.w,X)		; FC FC D9
	brk $1F.b		; 00 1F
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $2000.w,Y		; D9 00 20
	rti		; 40

	tsb $D9EC.w		; 0C EC D9
	brk $21.b		; 00 21
	rti		; 40

	xce		; FB
	sbc $00B1.w,X		; FD B1 00
	jsl $F50340.l		; 22 40 03 F5
	cmp ($00.b),Y		; D1 00
	and $40.b,S		; 23 40
	phd		; 0B
	sbc $00D1.w		; ED D1 00
	bit $40.b		; 24 40
	ora $F4.b,X		; 15 F4
	jsr ($08C9.w,X)		; FC C9 08
	brk $48.b		; 00 48
	tsb $EC.b		; 04 EC
	cmp #$08.b		; C9 08
	cop $48.b		; 02 48
	sbc $A9F3.w,X		; FD F3 A9
	php		; 08
	tsb $48.b		; 04 48
	inc $FA.b,X		; F6 FA
	lda $0608.w,Y		; B9 08 06
	pha		; 48
	asl $EA.b		; 06 EA
	lda $0808.w,Y		; B9 08 08
	pha		; 48
	tsb $D9EC.w		; 0C EC D9
	brk $0A.b		; 00 0A
	rti		; 40

	pea $E404.w		; F4 04 E4
	brk $0B.b		; 00 0B
	rti		; 40

	ora $E1EB.w		; 0D EB E1
	brk $0C.b		; 00 0C
	rti		; 40

	ora $E9EB.w		; 0D EB E9
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $F10B.w		; ED 0B F1
	brk $0E.b		; 00 0E
	rti		; 40

	ora $F1EB.w		; 0D EB F1
	brk $0F.b		; 00 0F
	rti		; 40

	ora $F9EB.w		; 0D EB F9
	brk $1A.b		; 00 1A
	rti		; 40

	ora $E3.b,X		; 15 E3
	sbc $1B00.w,Y		; F9 00 1B
	rti		; 40

	pea $D904.w		; F4 04 D9
	brk $1C.b		; 00 1C
	rti		; 40

	ora $A9EB.w		; 0D EB A9
	brk $1D.b		; 00 1D
	rti		; 40

	ora $B1EB.w		; 0D EB B1
	brk $1E.b		; 00 1E
	rti		; 40

	inc $F90A.w		; EE 0A F9
	brk $1F.b		; 00 1F
	rti		; 40

	jsr ($D9FC.w,X)		; FC FC D9
	brk $20.b		; 00 20
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $2100.w,Y		; D9 00 21
	rti		; 40

	sed		; F8
	brk $E1.b		; 00 E1
	brk $22.b		; 00 22
	rti		; 40

	beq   8.b		; F0 08
	sbc #$00.b		; E9 00
	and $40.b,S		; 23 40
	ora $EB05.w,X		; 1D 05 EB
	tsx		; BA
	php		; 08
	brk $48.b		; 00 48
	ora $DB.b,X		; 15 DB
	tsx		; BA
	php		; 08
	cop $48.b		; 02 48
	xce		; FB
	sbc $CA.b,X		; F5 CA
	php		; 08
	tsb $48.b		; 04 48
	phd		; 0B
	sbc $CA.b		; E5 CA
	php		; 08
	asl $48.b		; 06 48
	bit $D4.b		; 24 D4
	plx		; FA
	brk $08.b		; 00 08
	rti		; 40

	and $BACB.w		; 2D CB BA
	brk $09.b		; 00 09
	rti		; 40

	sbc $C2FB.w,X		; FD FB C2
	brk $0A.b		; 00 0A
	rti		; 40

	and $C2CB.w		; 2D CB C2
	brk $0B.b		; 00 0B
	rti		; 40

	trb $E2DC.w		; 1C DC E2
	brk $0C.b		; 00 0C
	rti		; 40

	trb $EADC.w		; 1C DC EA
	brk $0D.b		; 00 0D
	rti		; 40

	and $D3.b		; 25 D3
	cpy #$00.b		; C0 00
	asl $EE40.w		; 0E 40 EE
	asl A		; 0A
	plx		; FA
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $00F209.l		; EF 09 F2 00
	clc		; 18
	rti		; 40

	sbc [$11.b]		; E7 11
	inc $00.b,X		; F6 00
	ora $0840.w,Y		; 19 40 08
	beq -78.b		; F0 B2
	brk $1A.b		; 00 1A
	rti		; 40

	bpl -24.b		; 10 E8
	lda ($00.b)		; B2 00
	tas		; 1B
	rti		; 40

	clc		; 18
	cpx #$B2.b		; E0 B2
	brk $1C.b		; 00 1C
	rti		; 40

	sed		; F8
	brk $E2.b		; 00 E2
	brk $1D.b		; 00 1D
	rti		; 40

	brk $F8.b		; 00 F8
	sep #$00		; E2 00
	asl $F240.w,X		; 1E 40 F2
	asl $EA.b		; 06 EA
	brk $1F.b		; 00 1F
	rti		; 40

	plx		; FA
	inc $00EA.w,X		; FE EA 00
	jsr $1B40.w		; 20 40 1B
	cmp $00DA.w,X		; DD DA 00
	and ($40.b,X)		; 21 40
	trb $F2DC.w		; 1C DC F2
	brk $22.b		; 00 22
	rti		; 40

	trb $FADC.w		; 1C DC FA
	brk $23.b		; 00 23
	rti		; 40

	xce		; FB
	sbc $00DA.w,X		; FD DA 00
	bit $40.b		; 24 40
	ora $F5.b,S		; 03 F5
	phx		; DA
	brk $25.b		; 00 25
	rti		; 40

	phd		; 0B
	sbc $00DA.w		; ED DA 00
	rol $40.b		; 26 40
	ora ($E5.b,S),Y		; 13 E5
	phx		; DA
	brk $27.b		; 00 27
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp ($00.b,S),Y		; D3 00
	plp		; 28
	rti		; 40

	ora $06.b,X		; 15 06
	nop		; EA
	sbc $08.b,S		; E3 08
	brk $48.b		; 00 48
	asl $EA.b		; 06 EA
	plb		; AB
	php		; 08
	cop $48.b		; 02 48
	asl $EA.b		; 06 EA
	tyx		; BB
	php		; 08
	tsb $48.b		; 04 48
	asl $EA.b		; 06 EA
	wai		; CB
	php		; 08
	asl $48.b		; 06 48
	asl $DA.b,X		; 16 DA
	cmp ($08.b,S),Y		; D3 08
	php		; 08
	pha		; 48
	inc $D2FA.w,X		; FE FA D2
	brk $0A.b		; 00 0A
	rti		; 40

	rol $D2.b		; 26 D2
	wai		; CB
	brk $0B.b		; 00 0B
	rti		; 40

	tsb $FBEC.w		; 0C EC FB
	brk $0C.b		; 00 0C
	rti		; 40

	inc $BAFA.w,X		; FE FA BA
	brk $0D.b		; 00 0D
	rti		; 40

	inc $C2FA.w,X		; FE FA C2
	brk $0E.b		; 00 0E
	rti		; 40

	inc $CAFA.w,X		; FE FA CA
	brk $0F.b		; 00 0F
	rti		; 40

	asl $CADA.w,X		; 1E DA CA
	brk $1A.b		; 00 1A
	rti		; 40

	asl $E2.b,X		; 16 E2
	plb		; AB
	brk $1B.b		; 00 1B
	rti		; 40

	asl $E2.b,X		; 16 E2
	lda ($00.b,S),Y		; B3 00
	trb $1640.w		; 1C 40 16
.ACCU 8
.INDEX 8
	sep #$BB		; E2 BB
	brk $1D.b		; 00 1D
	rti		; 40

	asl $E2.b,X		; 16 E2
	cmp $00.b,S		; C3 00
	asl $1640.w,X		; 1E 40 16
	sep #$CB		; E2 CB
	brk $1F.b		; 00 1F
	rti		; 40

	asl $F2.b		; 06 F2
	stp		; DB
	brk $20.b		; 00 20
	rti		; 40

	asl $DBEA.w		; 0E EA DB
	brk $21.b		; 00 21
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc $00.b,S		; E3 00
	jsl $ED0B40.l		; 22 40 0B ED
	sbc ($00.b,S),Y		; F3 00
	and $40.b,S		; 23 40
	ora $D41C.w,Y		; 19 1C D4
	lda $0008.w,Y		; B9 08 00
	pha		; 48
	jsr ($B9F4.w,X)		; FC F4 B9
	php		; 08
	cop $48.b		; 02 48
	tsb $B9E4.w		; 0C E4 B9
	php		; 08
	tsb $48.b		; 04 48
	tsb $EC.b		; 04 EC
	cmp #$08.b		; C9 08
	asl $48.b		; 06 48
	sbc $08A9F1.l,X		; FF F1 A9 08
	php		; 08
	pha		; 48
	ora $08A1E1.l		; 0F E1 A1 08
	asl A		; 0A
	pha		; 48
	jsr ($C9FC.w,X)		; FC FC C9
	brk $0C.b		; 00 0C
	rti		; 40

	trb $E4.b		; 14 E4
	cmp #$00.b		; C9 00
	ora $1C40.w		; 0D 40 1C
	jmp.w [$00C9]		; DC C9 00
	asl $1440.w		; 0E 40 14
	cpx $D1.b		; E4 D1
	brk $0F.b		; 00 0F
	rti		; 40

	bit $BBCC.w		; 2C CC BB
	brk $1C.b		; 00 1C
	rti		; 40

	bit $C4.b,X		; 34 C4
	tyx		; BB
	brk $1D.b		; 00 1D
	rti		; 40

	bit $BBBC.w,X		; 3C BC BB
	brk $1E.b		; 00 1E
	rti		; 40

	mvp $BB,$B4		; 44 B4 BB
	brk $1F.b		; 00 1F
	rti		; 40

	asl $E9EA.w		; 0E EA E9
	brk $20.b		; 00 20
	rti		; 40

	and [$D1.b]		; 27 D1
	lda ($00.b),Y		; B1 00
	and ($40.b,X)		; 21 40
	tsb $F1EC.w		; 0C EC F1
	brk $22.b		; 00 22
	rti		; 40

	tsb $F9EC.w		; 0C EC F9
	brk $23.b		; 00 23
	rti		; 40

	ora $00A1D9.l,X		; 1F D9 A1 00
	bit $40.b		; 24 40
	ora $00A9D9.l,X		; 1F D9 A9 00
	and $40.b		; 25 40
	ora $00B1E9.l		; 0F E9 B1 00
	rol $40.b		; 26 40
	ora [$E1.b],Y		; 17 E1
	lda ($00.b),Y		; B1 00
	and [$40.b]		; 27 40
	ora $00B1D9.l,X		; 1F D9 B1 00
	plp		; 28
	rti		; 40

	bpl -24.b		; 10 E8
	sbc ($00.b,X)		; E1 00
	and #$40.b		; 29 40
	ora ($E6.b)		; 12 E6
	cmp $2A00.w,Y		; D9 00 2A
	rti		; 40

	ora $EF01.w,X		; 1D 01 EF
	cmp ($08.b,X)		; C1 08
	brk $48.b		; 00 48
	and #$C7.b		; 29 C7
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	ora ($DF.b),Y		; 11 DF
	cmp ($08.b,X)		; C1 08
	tsb $48.b		; 04 48
	inc A		; 1A
	dec $A9.b,X		; D6 A9
	php		; 08
	asl $48.b		; 06 48
	trb $E4.b		; 14 E4
	cmp ($00.b),Y		; D1 00
	php		; 08
	rti		; 40

	trb $D1DC.w		; 1C DC D1
	brk $09.b		; 00 09
	rti		; 40

	bit $D4.b		; 24 D4
	cmp ($00.b),Y		; D1 00
	asl A		; 0A
	rti		; 40

	bit $D1CC.w		; 2C CC D1
	brk $0B.b		; 00 0B
	rti		; 40

	tsb $D9EC.w		; 0C EC D9
	brk $0C.b		; 00 0C
	rti		; 40

	bit $D4.b		; 24 D4
	cmp $0D00.w,Y		; D9 00 0D
	rti		; 40

	tsb $F0EC.w		; 0C EC F0
	brk $0E.b		; 00 0E
	rti		; 40

	tsb $F8EC.w		; 0C EC F8
	brk $0F.b		; 00 0F
	rti		; 40

	ora $E0EB.w		; 0D EB E0
	brk $18.b		; 00 18
	rti		; 40

	ora $E3.b,X		; 15 E3
	cpx #$00.b		; E0 00
	ora $1840.w,Y		; 19 40 18
	cpx #$D9.b		; E0 D9
	brk $1A.b		; 00 1A
	rti		; 40

	bpl -24.b		; 10 E8
	inx		; E8
	brk $1B.b		; 00 1B
	rti		; 40

	trb $A1DC.w		; 1C DC A1
	brk $1C.b		; 00 1C
	rti		; 40

	bit $D4.b		; 24 D4
	lda ($00.b,X)		; A1 00
	ora $0440.w,X		; 1D 40 04
	pea $00D1.w		; F4 D1 00
	asl $0940.w,X		; 1E 40 09
	sbc $1F00B9.l		; EF B9 00 1F
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	lda $2000.w,Y		; B9 00 20
	rti		; 40

	ora $B9DF.w,Y		; 19 DF B9
	brk $21.b		; 00 21
	rti		; 40

	and ($D7.b,X)		; 21 D7
	lda $2200.w,Y		; B9 00 22
	rti		; 40

	and #$CF.b		; 29 CF
	lda $2300.w,Y		; B9 00 23
	rti		; 40

	and ($D7.b,X)		; 21 D7
	cmp ($00.b,X)		; C1 00
	bit $40.b		; 24 40
	and ($D7.b,X)		; 21 D7
	cmp #$00.b		; C9 00
	and $40.b		; 25 40
	rol A		; 2A
	dec $00A9.w		; CE A9 00
	rol $40.b		; 26 40
	ora ($E6.b)		; 12 E6
	lda ($00.b),Y		; B1 00
	and [$40.b]		; 27 40
	tsb $D1EC.w		; 0C EC D1
	brk $28.b		; 00 28
	rti		; 40

	ora $D41C.w,Y		; 19 1C D4
	lda $0008.w,Y		; B9 08 00
	pha		; 48
	jsr ($B9F4.w,X)		; FC F4 B9
	php		; 08
	cop $48.b		; 02 48
	tsb $B9E4.w		; 0C E4 B9
	php		; 08
	tsb $48.b		; 04 48
	tsb $EC.b		; 04 EC
	cmp #$08.b		; C9 08
	asl $48.b		; 06 48
	sbc $08A9F1.l,X		; FF F1 A9 08
	php		; 08
	pha		; 48
	ora $08A1E1.l		; 0F E1 A1 08
	asl A		; 0A
	pha		; 48
	jsr ($C9FC.w,X)		; FC FC C9
	brk $0C.b		; 00 0C
	rti		; 40

	trb $E4.b		; 14 E4
	cmp #$00.b		; C9 00
	ora $1C40.w		; 0D 40 1C
	jmp.w [$00C9]		; DC C9 00
	asl $1440.w		; 0E 40 14
	cpx $D1.b		; E4 D1
	brk $0F.b		; 00 0F
	rti		; 40

	bit $BBCC.w		; 2C CC BB
	brk $1C.b		; 00 1C
	rti		; 40

	bit $C4.b,X		; 34 C4
	tyx		; BB
	brk $1D.b		; 00 1D
	rti		; 40

	bit $BBBC.w,X		; 3C BC BB
	brk $1E.b		; 00 1E
	rti		; 40

	mvp $BB,$B4		; 44 B4 BB
	brk $1F.b		; 00 1F
	rti		; 40

	asl $E9EA.w		; 0E EA E9
	brk $20.b		; 00 20
	rti		; 40

	and [$D1.b]		; 27 D1
	lda ($00.b),Y		; B1 00
	and ($40.b,X)		; 21 40
	tsb $F1EC.w		; 0C EC F1
	brk $22.b		; 00 22
	rti		; 40

	tsb $F9EC.w		; 0C EC F9
	brk $23.b		; 00 23
	rti		; 40

	ora $00A1D9.l,X		; 1F D9 A1 00
	bit $40.b		; 24 40
	ora $00A9D9.l,X		; 1F D9 A9 00
	and $40.b		; 25 40
	ora $00B1E9.l		; 0F E9 B1 00
	rol $40.b		; 26 40
	ora [$E1.b],Y		; 17 E1
	lda ($00.b),Y		; B1 00
	and [$40.b]		; 27 40
	ora $00B1D9.l,X		; 1F D9 B1 00
	plp		; 28
	rti		; 40

	bpl -24.b		; 10 E8
	sbc ($00.b,X)		; E1 00
	and #$40.b		; 29 40
	ora ($E6.b)		; 12 E6
	cmp $2A00.w,Y		; D9 00 2A
	rti		; 40

	trb $09.b		; 14 09
	sbc [$A1.b]		; E7 A1
	php		; 08
	brk $48.b		; 00 48
	ora $ED.b,S		; 03 ED
	lda ($08.b),Y		; B1 08
	cop $48.b		; 02 48
	ora ($DD.b,S),Y		; 13 DD
	lda ($08.b),Y		; B1 08
	tsb $48.b		; 04 48
	xce		; FB
	sbc $C1.b,X		; F5 C1
	php		; 08
	asl $48.b		; 06 48
	phd		; 0B
	sbc $C1.b		; E5 C1
	php		; 08
	php		; 08
	pha		; 48
	ora $A9DF.w,Y		; 19 DF A9
	brk $0A.b		; 00 0A
	rti		; 40

	asl $D9EA.w		; 0E EA D9
	brk $0B.b		; 00 0B
	rti		; 40

	asl $E1EA.w		; 0E EA E1
	brk $0C.b		; 00 0C
	rti		; 40

	asl $E9EA.w		; 0E EA E9
	brk $0D.b		; 00 0D
	rti		; 40

	asl $F1EA.w		; 0E EA F1
	brk $0E.b		; 00 0E
	rti		; 40

	asl $F9EA.w		; 0E EA F9
	brk $0F.b		; 00 0F
	rti		; 40

	and $D5.b,S		; 23 D5
	lda ($00.b),Y		; B1 00
	inc A		; 1A
	rti		; 40

	and $D5.b,S		; 23 D5
	lda $1B00.w,Y		; B9 00 1B
	rti		; 40

	tas		; 1B
	cmp $00C1.w,X		; DD C1 00
	trb $2340.w		; 1C 40 23
	cmp $C1.b,X		; D5 C1
	brk $1D.b		; 00 1D
	rti		; 40

	tas		; 1B
	cmp $00C9.w,X		; DD C9 00
	asl $FB40.w,X		; 1E 40 FB
	sbc $00D1.w,X		; FD D1 00
	ora $F50340.l,X		; 1F 40 03 F5
	cmp ($00.b),Y		; D1 00
	jsr $0B40.w		; 20 40 0B
	sbc $00D1.w		; ED D1 00
	and ($40.b,X)		; 21 40
	ora ($E5.b,S),Y		; 13 E5
	cmp ($00.b),Y		; D1 00
	jsl $FC1940.l		; 22 40 19 FC
	pea $08BA.w		; F4 BA 08
	brk $48.b		; 00 48
	tsb $BAE4.w		; 0C E4 BA
	php		; 08
	cop $48.b		; 02 48
	trb $BAD4.w		; 1C D4 BA
	php		; 08
	tsb $48.b		; 04 48
	sbc $A2F3.w,X		; FD F3 A2
	php		; 08
	asl $48.b		; 06 48
	ora $AADB.w,X		; 1D DB AA
	brk $08.b		; 00 08
	rti		; 40

	ora $E3.b,X		; 15 E3
	tax		; AA
	brk $09.b		; 00 09
	rti		; 40

	ora $A2EB.w		; 0D EB A2
	brk $0A.b		; 00 0A
	rti		; 40

	ora $AAEB.w		; 0D EB AA
	brk $0B.b		; 00 0B
	rti		; 40

	asl $F0EA.w		; 0E EA F0
	brk $0C.b		; 00 0C
	rti		; 40

	asl $F8EA.w		; 0E EA F8
	brk $0D.b		; 00 0D
	rti		; 40

	ora $00CAD9.l,X		; 1F D9 CA 00
	asl $F740.w		; 0E 40 F7
	ora ($CE.b,X)		; 01 CE
	brk $0F.b		; 00 0F
	rti		; 40

	cop $F6.b		; 02 F6
	lda ($00.b)		; B2 00
	clc		; 18
	rti		; 40

	asl A		; 0A
	inc $00B2.w		; EE B2 00
	ora $1240.w,Y		; 19 40 12
	inc $B2.b		; E6 B2
	brk $1A.b		; 00 1A
	rti		; 40

	inc A		; 1A
	dec $00B2.w,X		; DE B2 00
	tas		; 1B
	rti		; 40

	jsl $00B2D6.l		; 22 D6 B2 00
	trb $FA40.w		; 1C 40 FA
	inc $00CA.w,X		; FE CA 00
	ora $0240.w,X		; 1D 40 02
	inc $CA.b,X		; F6 CA
	brk $1E.b		; 00 1E
	rti		; 40

	asl A		; 0A
	inc $00CA.w		; EE CA 00
	ora $E61240.l,X		; 1F 40 12 E6
	dex		; CA
	brk $20.b		; 00 20
	rti		; 40

	asl A		; 0A
	inc $00D2.w		; EE D2 00
	and ($40.b,X)		; 21 40
	asl A		; 0A
	inc $00DA.w		; EE DA 00
	jsl $EE0A40.l		; 22 40 0A EE
	sep #$00		; E2 00
	and $40.b,S		; 23 40
	asl A		; 0A
	inc $00EA.w		; EE EA 00
	bit $40.b		; 24 40
	ora $05.b,X		; 15 05
	xba		; EB
	lda ($08.b)		; B2 08
	brk $48.b		; 00 48
	ora $DB.b,X		; 15 DB
	lda ($08.b)		; B2 08
	cop $48.b		; 02 48
	php		; 08
	inx		; E8
	ldx #$08.b		; A2 08
	tsb $48.b		; 04 48
	ora ($EF.b,X)		; 01 EF
	rep #$08		; C2 08
	asl $48.b		; 06 48
	ora ($DF.b),Y		; 11 DF
	rep #$08		; C2 08
	php		; 08
	pha		; 48
	cop $EE.b		; 02 EE
	cmp ($08.b)		; D2 08
	asl A		; 0A
	pha		; 48
	asl $F2EA.w		; 0E EA F2
	brk $0C.b		; 00 0C
	rti		; 40

	asl $FAEA.w		; 0E EA FA
	brk $0D.b		; 00 0D
	rti		; 40

	inc $E4FA.w,X		; FE FA E4
	brk $0E.b		; 00 0E
	rti		; 40

	clc		; 18
	cpx #$AA.b		; E0 AA
	brk $0F.b		; 00 0F
	rti		; 40

	and $D3.b		; 25 D3
	lda ($00.b)		; B2 00
	trb $2540.w		; 1C 40 25
	cmp ($BA.b,S),Y		; D3 BA
	brk $1D.b		; 00 1D
	rti		; 40

	asl $E2EA.w		; 0E EA E2
	brk $1E.b		; 00 1E
	rti		; 40

	and ($D7.b,X)		; 21 D7
	rep #$00		; C2 00
	ora $D72140.l,X		; 1F 40 21 D7
	dex		; CA
	brk $20.b		; 00 20
	rti		; 40

	inc A		; 1A
	dec $00D2.w,X		; DE D2 00
	and ($40.b,X)		; 21 40
	cop $F6.b		; 02 F6
	sep #$00		; E2 00
	jsl $FEFA40.l		; 22 40 FA FE
	nop		; EA
	brk $23.b		; 00 23
	rti		; 40

	asl $EAEA.w		; 0E EA EA
	brk $24.b		; 00 24
	rti		; 40

	ora ($E6.b)		; 12 E6
	cmp ($00.b)		; D2 00
	and $40.b		; 25 40
	ora ($E6.b)		; 12 E6
	phx		; DA
	brk $26.b		; 00 26
	rti		; 40

	inc A		; 1A
	sbc ($0F.b,X)		; E1 0F
	lda $480008.l,X		; BF 08 00 48
	ora ($EF.b,X)		; 01 EF
	lda $480208.l,X		; BF 08 02 48
	sbc ($FF.b),Y		; F1 FF
	lda $480408.l,X		; BF 08 04 48
	nop		; EA
	asl $AF.b		; 06 AF
	php		; 08
	asl $48.b		; 06 48
	plx		; FA
	inc $AF.b,X		; F6 AF
	php		; 08
	php		; 08
	pha		; 48
	xce		; FB
	sbc $9F.b,X		; F5 9F
	php		; 08
	asl A		; 0A
	pha		; 48
	ora ($E7.b),Y		; 11 E7
	cmp [$00.b]		; C7 00
	tsb $F940.w		; 0C 40 F9
	sbc $0D00EF.l,X		; FF EF 00 0D
	rti		; 40

	cpx $D70C.w		; EC 0C D7
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $D7FB.w,X		; FD FB D7
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp $401C00.l,X		; DF 00 1C 40
	sbc #$0F.b		; E9 0F
	cmp $401D00.l		; CF 00 1D 40
	sbc ($07.b),Y		; F1 07
	cmp $401E00.l		; CF 00 1E 40
	sbc $CFFF.w,Y		; F9 FF CF
	brk $1F.b		; 00 1F
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $402000.l		; CF 00 20 40
	ora ($E6.b)		; 12 E6
	lda $402100.l		; AF 00 21 40
	plx		; FA
	inc $00E7.w,X		; FE E7 00
	jsl $FBFD40.l		; 22 40 FD FB
	cmp $402300.l,X		; DF 00 23 40
	sbc [$01.b],Y		; F7 01
	sbc [$00.b],Y		; F7 00
	bit $40.b		; 24 40
	asl A		; 0A
	inc $00AF.w		; EE AF 00
	and $40.b		; 25 40
	asl A		; 0A
	inc $00B7.w		; EE B7 00
	rol $40.b		; 26 40
	tas		; 1B
	cmp $009C.w,X		; DD 9C 00
	and [$40.b]		; 27 40
	tas		; 1B
	cmp $00A4.w,X		; DD A4 00
	plp		; 28
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	lda [$00.b]		; A7 00
	and #$40.b		; 29 40
	ora ($E5.b,S),Y		; 13 E5
	lda [$00.b]		; A7 00
	rol A		; 2A
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc $402B00.l,X		; FF 00 2B 40
	tsb $FAF6.w		; 0C F6 FA
	pea $0008.w		; F4 08 00
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	pei ($08.b)		; D4 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	pei ($08.b)		; D4 08
	tsb $48.b		; 04 48
	sbc ($FF.b),Y		; F1 FF
	cpx $08.b		; E4 08
	asl $48.b		; 06 48
	ora ($EF.b,X)		; 01 EF
	cpx $08.b		; E4 08
	php		; 08
	pha		; 48
	ora [$F1.b]		; 07 F1
	cpy $0A00.w		; CC 00 0A
	rti		; 40

	sed		; F8
	brk $C4.b		; 00 C4
	brk $0B.b		; 00 0B
	rti		; 40

	brk $F8.b		; 00 F8
	cpy $00.b		; C4 00
	tsb $0640.w		; 0C 40 06
	sbc ($F4.b)		; F2 F4
	brk $0D.b		; 00 0D
	rti		; 40

	asl $F2.b		; 06 F2
	jsr ($0E00.w,X)		; FC 00 0E
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cpy $0F00.w		; CC 00 0F
	rti		; 40

	sbc $00CCF9.l,X		; FF F9 CC 00
	inc A		; 1A
	rti		; 40

	trb $C828.w		; 1C 28 C8
	cmp ($08.b,S),Y		; D3 08
	brk $48.b		; 00 48
	jsr $F3D0.w		; 20 D0 F3
	php		; 08
	cop $48.b		; 02 48
	bmi -64.b		; 30 C0
	xba		; EB
	php		; 08
	tsb $48.b		; 04 48
	sec		; 38
	cpy #$E3.b		; C0 E3
	brk $06.b		; 00 06
	rti		; 40

	rol $C3CA.w		; 2E CA C3
	brk $07.b		; 00 07
	rti		; 40

	rol $CBCA.w		; 2E CA CB
	brk $08.b		; 00 08
	rti		; 40

	plp		; 28
	bne -29.b		; D0 E3
	brk $09.b		; 00 09
	rti		; 40

	bmi -56.b		; 30 C8
	xce		; FB
	brk $0A.b		; 00 0A
	rti		; 40

	sec		; 38
	cpy #$FB.b		; C0 FB
	brk $0B.b		; 00 0B
	rti		; 40

	clc		; 18
	cpx #$E8.b		; E0 E8
	brk $0C.b		; 00 0C
	rti		; 40

	clc		; 18
	cpx #$F0.b		; E0 F0
	brk $0D.b		; 00 0D
	rti		; 40

	clc		; 18
	cpx #$F8.b		; E0 F8
	brk $0E.b		; 00 0E
	rti		; 40

	pea $D9FC.w		; F4 FC D9
	php		; 08
	asl $48.b,X		; 16 48
	tsb $EC.b		; 04 EC
	cmp $1808.w,Y		; D9 08 18
	pha		; 48
	cpx $E904.w		; EC 04 E9
	php		; 08
	inc A		; 1A
	pha		; 48
	jsr ($E9F4.w,X)		; FC F4 E9
	php		; 08
	trb $0C48.w		; 1C 48 0C
	cpx $E9.b		; E4 E9
	php		; 08
	asl $F648.w,X		; 1E 48 F6
	plx		; FA
	cmp #$08.b		; C9 08
	jsr $1448.w		; 20 48 14
	cpx $E1.b		; E4 E1
	brk $22.b		; 00 22
	rti		; 40

	cpx $F90C.w		; EC 0C F9
	brk $23.b		; 00 23
	rti		; 40

	pea $F904.w		; F4 04 F9
	brk $24.b		; 00 24
	rti		; 40

	jsr ($F9FC.w,X)		; FC FC F9
	brk $25.b		; 00 25
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $3200.w,Y		; F9 00 32
	rti		; 40

	tsb $F9EC.w		; 0C EC F9
	brk $33.b		; 00 33
	rti		; 40

	trb $E4.b		; 14 E4
	sbc $3400.w,Y		; F9 00 34
	rti		; 40

	cpx $14.b		; E4 14
	sbc $3500.w,Y		; F9 00 35
	rti		; 40

	asl $F2.b		; 06 F2
	cmp #$00.b		; C9 00
	rol $40.b,X		; 36 40
	asl $F2.b		; 06 F2
	cmp ($00.b),Y		; D1 00
	and [$40.b],Y		; 37 40
	jsr $13DD.w		; 20 DD 13
	lda #$08.b		; A9 08
	brk $48.b		; 00 48
	cmp $AB23.w		; CD 23 AB
	php		; 08
	cop $48.b		; 02 48
	sbc $B10B.w		; ED 0B B1
	brk $04.b		; 00 04
	rti		; 40

	sbc $03.b,X		; F5 03
	lda ($00.b),Y		; B1 00
	ora $40.b		; 05 40
	cpx $B90C.w		; EC 0C B9
	brk $06.b		; 00 06
	rti		; 40

	pea $B904.w		; F4 04 B9
	brk $07.b		; 00 07
	rti		; 40

	sbc $08E301.l		; EF 01 E3 08
	trb $48.b		; 14 48
	sbc $08D301.l		; EF 01 D3 08
	asl $48.b,X		; 16 48
	sbc [$F9.b],Y		; F7 F9
	cmp $08.b,S		; C3 08
	clc		; 18
	pha		; 48
	ora [$E9.b]		; 07 E9
	cmp $08.b,S		; C3 08
	inc A		; 1A
	pha		; 48
	sbc $08D3F1.l,X		; FF F1 D3 08
	trb $0F48.w		; 1C 48 0F
	sbc ($D3.b,X)		; E1 D3
	php		; 08
	asl $0E48.w,X		; 1E 48 0E
	nop		; EA
	xba		; EB
	brk $20.b		; 00 20
	rti		; 40

	sbc [$11.b]		; E7 11
	cmp ($00.b)		; D2 00
	and ($40.b,X)		; 21 40
	ora $F3.b		; 05 F3
	lda [$00.b],Y		; B7 00
	jsl $F20640.l		; 22 40 06 F2
	xba		; EB
	brk $23.b		; 00 23
	rti		; 40

	sbc $00CB09.l		; EF 09 CB 00
	bmi  64.b		; 30 40
	ora [$E1.b],Y		; 17 E1
	wai		; CB
	brk $31.b		; 00 31
	rti		; 40

	sbc $00E3F9.l,X		; FF F9 E3 00
	and ($40.b)		; 32 40
	ora [$F1.b]		; 07 F1
	sbc $00.b,S		; E3 00
	and ($40.b,S),Y		; 33 40
	ora $00E3E9.l		; 0F E9 E3 00
	bit $40.b,X		; 34 40
	ora [$E1.b],Y		; 17 E1
	sbc $00.b,S		; E3 00
	and $40.b,X		; 35 40
	cmp $00D419.l,X		; DF 19 D4 00
	rol $40.b,X		; 36 40
	cmp [$21.b],Y		; D7 21
	cmp $00.b,X		; D5 00
	and [$40.b],Y		; 37 40
	cmp $00D829.l		; CF 29 D8 00
	sec		; 38
	rti		; 40

	sbc $BBFF.w,Y		; F9 FF BB
	brk $39.b		; 00 39
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	tyx		; BB
	brk $3A.b		; 00 3A
	rti		; 40

	ora #$EF.b		; 09 EF
	tyx		; BB
	brk $3B.b		; 00 3B
	rti		; 40

	ora #$EF.b		; 09 EF
	sbc ($00.b,S),Y		; F3 00
	bit $0940.w,X		; 3C 40 09
	sbc $3D00FB.l		; EF FB 00 3D
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	xce		; FB
	brk $3E.b		; 00 3E
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,S),Y		; F3 00
	and $142040.l,X		; 3F 40 20 14
	jmp.w [$089B]		; DC 9B 08
	brk $48.b		; 00 48
	ora ($DE.b)		; 12 DE
	plb		; AB
	php		; 08
	cop $48.b		; 02 48
	bit $D4.b		; 24 D4
	lda $00.b,S		; A3 00
	tsb $40.b		; 04 40
	asl $F2.b		; 06 F2
	ldy #$00.b		; A0 00
	ora $40.b		; 05 40
	brk $F8.b		; 00 F8
	tya		; 98
	brk $06.b		; 00 06
	rti		; 40

	php		; 08
	beq -104.b		; F0 98
	brk $07.b		; 00 07
	rti		; 40

	bit $D4.b		; 24 D4
	txy		; 9B
	brk $08.b		; 00 08
	rti		; 40

	trb $D9D4.w		; 1C D4 D9
	php		; 08
	trb $48.b		; 14 48
	pea $D9FC.w		; F4 FC D9
	php		; 08
	asl $48.b,X		; 16 48
	pea $E9FC.w		; F4 FC E9
	php		; 08
	clc		; 18
	pha		; 48
	tsb $EC.b		; 04 EC
	cmp $1A08.w,Y		; D9 08 1A
	pha		; 48
	tsb $EC.b		; 04 EC
	sbc #$08.b		; E9 08
	trb $F748.w		; 1C 48 F7
	sbc $08B9.w,Y		; F9 B9 08
	asl $F948.w,X		; 1E 48 F9
	sbc [$C9.b],Y		; F7 C9
	php		; 08
	jsr $0948.w		; 20 48 09
	sbc [$C9.b]		; E7 C9
	php		; 08
	jsl $E41448.l		; 22 48 14 E4
	sbc #$00.b		; E9 00
	bit $40.b,X		; 34 40
	trb $E9DC.w		; 1C DC E9
	brk $35.b		; 00 35
	rti		; 40

	trb $E4.b		; 14 E4
	sbc ($00.b),Y		; F1 00
	rol $40.b,X		; 36 40
	jsr ($F9FC.w,X)		; FC FC F9
	brk $37.b		; 00 37
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $3800.w,Y		; F9 00 38
	rti		; 40

	tsb $F9EC.w		; 0C EC F9
	brk $39.b		; 00 39
	rti		; 40

	inc $02.b,X		; F6 02
	lda #$00.b		; A9 00
	dec A		; 3A
	rti		; 40

	inc $02.b,X		; F6 02
	lda ($00.b),Y		; B1 00
	tsa		; 3B
	rti		; 40

	asl $B9EA.w		; 0E EA B9
	brk $3C.b		; 00 3C
	rti		; 40

	asl $E2.b,X		; 16 E2
	lda $3D00.w,Y		; B9 00 3D
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp ($00.b,X)		; C1 00
	rol $0F40.w,X		; 3E 40 0F
	sbc #$C1.b		; E9 C1
	brk $3F.b		; 00 3F
	rti		; 40

	bit $D4.b		; 24 D4
	cmp ($00.b),Y		; D1 00
	rti		; 40

	rti		; 40

	beq   8.b		; F0 08
	lda ($00.b,X)		; A1 00
	eor ($40.b,X)		; 41 40
	sed		; F8
	brk $A1.b		; 00 A1
	brk $42.b		; 00 42
	rti		; 40

	trb $E4.b		; 14 E4
	cmp $4300.w,Y		; D9 00 43
	rti		; 40

	trb $E4.b		; 14 E4
	sbc ($00.b,X)		; E1 00
	mvp $1D,$40		; 44 40 1D
	tas		; 1B
	cmp $C3.b,X		; D5 C3
	php		; 08
	brk $48.b		; 00 48
	pld		; 2B
	cmp $D3.b		; C5 D3
	php		; 08
	cop $48.b		; 02 48
	tas		; 1B
	cmp $00D9.w,X		; DD D9 00
	tsb $40.b		; 04 40
	tas		; 1B
	cmp $00E1.w,X		; DD E1 00
	ora $40.b		; 05 40
	jsl $00BBD6.l		; 22 D6 BB 00
	asl $40.b		; 06 40
	rol A		; 2A
	dec $00BB.w		; CE BB 00
	ora [$40.b]		; 07 40
	pld		; 2B
	cmp $00C3.w		; CD C3 00
	php		; 08
	rti		; 40

	pld		; 2B
	cmp $00CB.w		; CD CB 00
	ora #$40.b		; 09 40
	and ($C5.b,S),Y		; 33 C5
	wai		; CB
	brk $0A.b		; 00 0A
	rti		; 40

	and $D5.b,S		; 23 D5
	pei ($00.b)		; D4 00
	phd		; 0B
	rti		; 40

	and $D5.b,S		; 23 D5
	jmp.w [$0C00]		; DC 00 0C
	rti		; 40

	tsa		; 3B
	lda $00D8.w,X		; BD D8 00
	ora $0D40.w		; 0D 40 0D
	sbc $D1.b,S		; E3 D1
	php		; 08
	trb $48.b		; 14 48
	ora $E1E3.w		; 0D E3 E1
	php		; 08
	asl $48.b,X		; 16 48
	cmp $C913.w,X		; DD 13 C9
	php		; 08
	clc		; 18
	pha		; 48
	cmp $D913.w,X		; DD 13 D9
	php		; 08
	inc A		; 1A
	pha		; 48
	sbc $C903.w		; ED 03 C9
	php		; 08
	trb $ED48.w		; 1C 48 ED
	ora $D9.b,S		; 03 D9
	php		; 08
	asl $FD48.w,X		; 1E 48 FD
	sbc ($D9.b,S),Y		; F3 D9
	php		; 08
	jsr $E148.w		; 20 48 E1
	ora $2208B9.l		; 0F B9 08 22
	pha		; 48
	sbc $C9FB.w,X		; FD FB C9
	brk $34.b		; 00 34
	rti		; 40

	sbc $D1FB.w,X		; FD FB D1
	brk $35.b		; 00 35
	rti		; 40

	sbc $E90B.w		; ED 0B E9
	brk $36.b		; 00 36
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc #$00.b		; E9 00
	and [$40.b],Y		; 37 40
	sbc $E9FB.w,X		; FD FB E9
	brk $38.b		; 00 38
	rti		; 40

	ora $F3.b		; 05 F3
	sbc #$00.b		; E9 00
	and $1440.w,Y		; 39 40 14
	cpx $C9.b		; E4 C9
	brk $3A.b		; 00 3A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b),Y		; F1 00
	tsa		; 3B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc $3C00.w,Y		; F9 00 3C
	rti		; 40

	asl $E20E.w,X		; 1E 0E E2
	rep #$08		; C2 08
	brk $48.b		; 00 48
	inc $C2F2.w,X		; FE F2 C2
	php		; 08
	cop $48.b		; 02 48
	asl $A3E2.w		; 0E E2 A3
	php		; 08
	tsb $48.b		; 04 48
	asl $F2.b		; 06 F2
	txs		; 9A
	brk $06.b		; 00 06
	rti		; 40

	asl $F2.b		; 06 F2
	ldx #$00.b		; A2 00
	ora [$40.b]		; 07 40
	asl $F2.b		; 06 F2
	tax		; AA
	brk $08.b		; 00 08
	rti		; 40

	inc $EAFA.w,X		; FE FA EA
	brk $09.b		; 00 09
	rti		; 40

	inc $F2FA.w,X		; FE FA F2
	brk $0A.b		; 00 0A
	rti		; 40

	inc $FAFA.w,X		; FE FA FA
	brk $0B.b		; 00 0B
	rti		; 40

	ora $F3.b		; 05 F3
	phx		; DA
	brk $0C.b		; 00 0C
	rti		; 40

	ora $DAEB.w		; 0D EB DA
	brk $0D.b		; 00 0D
	rti		; 40

	inc $D2FA.w,X		; FE FA D2
	brk $0E.b		; 00 0E
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b)		; D2 00
	ora $EA0E40.l		; 0F 40 0E EA
	cmp ($00.b)		; D2 00
	asl $40.b,X		; 16 40
	asl $93EA.w		; 0E EA 93
	brk $17.b		; 00 17
	rti		; 40

	asl $F2.b		; 06 F2
	sta ($00.b)		; 92 00
	clc		; 18
	rti		; 40

	sbc $00BAF9.l,X		; FF F9 BA 00
	ora $0740.w,Y		; 19 40 07
	sbc ($BA.b),Y		; F1 BA
	brk $1A.b		; 00 1A
	rti		; 40

	ora $00BAE9.l		; 0F E9 BA 00
	tas		; 1B
	rti		; 40

	ora $009BE9.l		; 0F E9 9B 00
	trb $0040.w		; 1C 40 00
	sed		; F8
	sep #$00		; E2 00
	ora $0840.w,X		; 1D 40 08
	beq -30.b		; F0 E2
	brk $1E.b		; 00 1E
	rti		; 40

	bpl -24.b		; 10 E8
	sep #$00		; E2 00
	ora $F70140.l,X		; 1F 40 01 F7
	lda ($00.b)		; B2 00
	jsr $0940.w		; 20 40 09
	sbc $2100B2.l		; EF B2 00 21
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	lda ($00.b,S),Y		; B3 00
	jsl $EE0A40.l		; 22 40 0A EE
	nop		; EA
	brk $23.b		; 00 23
	rti		; 40

	asl A		; 0A
	inc $00F2.w		; EE F2 00
	bit $40.b		; 24 40
	asl A		; 0A
	inc $00FA.w		; EE FA 00
	and $40.b		; 25 40
	ora ($E6.b)		; 12 E6
	plx		; FA
	brk $26.b		; 00 26
	rti		; 40

	asl $F4.b,X		; 16 F4
	jsr ($08C9.w,X)		; FC C9 08
	brk $48.b		; 00 48
	tsb $EC.b		; 04 EC
	cmp #$08.b		; C9 08
	cop $48.b		; 02 48
	php		; 08
	inx		; E8
	lda ($08.b,X)		; A1 08
	tsb $48.b		; 04 48
	php		; 08
	inx		; E8
	lda ($08.b),Y		; B1 08
	asl $48.b		; 06 48
	sed		; F8
	sed		; F8
	lda ($08.b),Y		; B1 08
	php		; 08
	pha		; 48
	sbc $E1F7.w,Y		; F9 F7 E1
	php		; 08
	asl A		; 0A
	pha		; 48
	tsb $D9EC.w		; 0C EC D9
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp ($00.b,X)		; C1 00
	ora $FD40.w		; 0D 40 FD
	xce		; FB
	cmp ($00.b,X)		; C1 00
	asl $0540.w		; 0E 40 05
	sbc ($C1.b,S),Y		; F3 C1
	brk $0F.b		; 00 0F
	rti		; 40

	ora $E9EB.w		; 0D EB E9
	brk $1C.b		; 00 1C
	rti		; 40

	asl $E1EA.w		; 0E EA E1
	brk $1D.b		; 00 1D
	rti		; 40

	sed		; F8
	brk $F1.b		; 00 F1
	brk $1E.b		; 00 1E
	rti		; 40

	sed		; F8
	brk $F9.b		; 00 F9
	brk $1F.b		; 00 1F
	rti		; 40

	trb $E4.b		; 14 E4
	cmp $2000.w,Y		; D9 00 20
	rti		; 40

	pea $D904.w		; F4 04 D9
	brk $21.b		; 00 21
	rti		; 40

	jsr ($D9FC.w,X)		; FC FC D9
	brk $22.b		; 00 22
	rti		; 40

	brk $F8.b		; 00 F8
	lda #$00.b		; A9 00
	and $40.b,S		; 23 40
	tsb $F4.b		; 04 F4
	cmp $2400.w,Y		; D9 00 24
	rti		; 40

	asl A		; 0A
	inc $00F1.w		; EE F1 00
	and $40.b		; 25 40
	asl A		; 0A
	inc $00F9.w		; EE F9 00
	rol $40.b		; 26 40
	ora ($E6.b)		; 12 E6
	sbc $2700.w,Y		; F9 00 27
	rti		; 40

	tas		; 1B
	inc $FA.b,X		; F6 FA
	lda $0008.w,Y		; B9 08 00
	pha		; 48
	asl $EA.b		; 06 EA
	lda $0208.w,Y		; B9 08 02
	pha		; 48
	ora #$E7.b		; 09 E7
	cmp $0408.w,Y		; D9 08 04
	pha		; 48
	sbc $D9F7.w,Y		; F9 F7 D9
	php		; 08
	asl $48.b		; 06 48
	asl $F2.b		; 06 F2
	cmp #$00.b		; C9 00
	php		; 08
	rti		; 40

	asl $C9EA.w		; 0E EA C9
	brk $09.b		; 00 09
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc $0A00.w,Y		; F9 00 0A
	rti		; 40

	sed		; F8
	brk $E9.b		; 00 E9
	brk $0B.b		; 00 0B
	rti		; 40

	brk $F8.b		; 00 F8
	sbc #$00.b		; E9 00
	tsb $0840.w		; 0C 40 08
	beq -23.b		; F0 E9
	brk $0D.b		; 00 0D
	rti		; 40

	bpl -24.b		; 10 E8
	sbc #$00.b		; E9 00
	asl $F940.w		; 0E 40 F9
	sbc $0F00F1.l,X		; FF F1 00 0F
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b),Y		; F1 00
	clc		; 18
	rti		; 40

	inc $02.b,X		; F6 02
	cmp #$00.b		; C9 00
	ora $FE40.w,Y		; 19 40 FE
	plx		; FA
	cmp #$00.b		; C9 00
	inc A		; 1A
	rti		; 40

	sbc $D1FF.w,Y		; F9 FF D1
	brk $1B.b		; 00 1B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b),Y		; D1 00
	trb $0940.w		; 1C 40 09
	sbc $1D00D1.l		; EF D1 00 1D
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cpy $1E00.w		; CC 00 1E
	rti		; 40

	sbc ($07.b),Y		; F1 07
	pei ($00.b)		; D4 00
	ora $07F140.l,X		; 1F 40 F1 07
	jmp.w [$2000]		; DC 00 20
	rti		; 40

	asl A		; 0A
	inc $00F9.w		; EE F9 00
	and ($40.b,X)		; 21 40
	ora ($E6.b)		; 12 E6
	sbc $2200.w,Y		; F9 00 22
	rti		; 40

	xce		; FB
	sbc $00B1.w,X		; FD B1 00
	brk $40.b		; 00 40
	ora $F5.b,S		; 03 F5
	lda ($00.b),Y		; B1 00
	and $40.b,S		; 23 40
	phd		; 0B
	sbc $00B1.w		; ED B1 00
	bit $40.b		; 24 40
	phd		; 0B
	sbc $00F1.w		; ED F1 00
	and $40.b		; 25 40
	ora $B9F4FC.l,X		; 1F FC F4 B9
	php		; 08
	brk $48.b		; 00 48
	tsb $B9E4.w		; 0C E4 B9
	php		; 08
	cop $48.b		; 02 48
	sed		; F8
	sed		; F8
	cmp #$08.b		; C9 08
	tsb $48.b		; 04 48
	php		; 08
	inx		; E8
	cmp #$08.b		; C9 08
	asl $48.b		; 06 48
	pea $E904.w		; F4 04 E9
	brk $08.b		; 00 08
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $09.b		; 00 09
	rti		; 40

	jsr ($D9FC.w,X)		; FC FC D9
	brk $0A.b		; 00 0A
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $0B00.w,Y		; D9 00 0B
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b,X)		; E1 00
	tsb $0740.w		; 0C 40 07
	sbc ($E9.b),Y		; F1 E9
	brk $0D.b		; 00 0D
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b),Y		; F1 00
	asl $0840.w		; 0E 40 08
	beq  -7.b		; F0 F9
	brk $0F.b		; 00 0F
	rti		; 40

	tsb $D9EC.w		; 0C EC D9
	brk $18.b		; 00 18
	rti		; 40

	jsr ($E1FC.w,X)		; FC FC E1
	brk $19.b		; 00 19
	rti		; 40

	pea $DFFC.w		; F4 FC DF
	php		; 08
	inc A		; 1A
	pha		; 48
	cpx $BF04.w		; EC 04 BF
	php		; 08
	trb $FC48.w		; 1C 48 FC
	pea $08BF.w		; F4 BF 08
	asl $F448.w,X		; 1E 48 F4
	jsr ($08CF.w,X)		; FC CF 08
	jsr $0448.w		; 20 48 04
	cpx $08CF.w		; EC CF 08
	jsl $FBF548.l		; 22 48 F5 FB
	lda [$08.b]		; A7 08
	bit $48.b		; 24 48
	tsb $C7EC.w		; 0C EC C7
	brk $26.b		; 00 26
	rti		; 40

	cpx $CF0C.w		; EC 0C CF
	brk $27.b		; 00 27
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $402800.l,X		; DF 00 28 40
	trb $E4.b		; 14 E4
	cmp [$00.b]		; C7 00
	and #$40.b		; 29 40
	ora $F3.b		; 05 F3
	lda [$00.b]		; A7 00
	rol $40.b,X		; 36 40
	ora $F3.b		; 05 F3
	lda $403700.l		; AF 00 37 40
	beq   8.b		; F0 08
	lda [$00.b],Y		; B7 00
	sec		; 38
	rti		; 40

	sed		; F8
	brk $B7.b		; 00 B7
	brk $39.b		; 00 39
	rti		; 40

	brk $F8.b		; 00 F8
	lda [$00.b],Y		; B7 00
	dec A		; 3A
	rti		; 40

	xce		; FB
	sbc $00EF.w,X		; FD EF 00
	tsa		; 3B
	rti		; 40

	xce		; FB
	sbc $00F7.w,X		; FD F7 00
	bit $2140.w,X		; 3C 40 21
	sbc ($0F.b,X)		; E1 0F
	lda $08.b		; A5 08
	brk $48.b		; 00 48
	sbc $B20B.w		; ED 0B B2
	brk $02.b		; 00 02
	rti		; 40

	pea $B904.w		; F4 04 B9
	brk $03.b		; 00 03
	rti		; 40

	cmp $A71F.w,Y		; D9 1F A7
	brk $04.b		; 00 04
	rti		; 40

	cmp ($27.b),Y		; D1 27
	lda $400500.l		; AF 00 05 40
	cmp $AF1F.w,Y		; D9 1F AF
	brk $06.b		; 00 06
	rti		; 40

	sbc ($06.b)		; F2 06
	ldy $00.b,X		; B4 00
	ora [$40.b]		; 07 40
	sbc $08E301.l		; EF 01 E3 08
	ora ($48.b)		; 12 48
	sbc $08D301.l		; EF 01 D3 08
	trb $48.b		; 14 48
	sbc [$F9.b],Y		; F7 F9
	cmp $08.b,S		; C3 08
	asl $48.b,X		; 16 48
	ora [$E9.b]		; 07 E9
	cmp $08.b,S		; C3 08
	clc		; 18
	pha		; 48
	sbc $08D3F1.l,X		; FF F1 D3 08
	inc A		; 1A
	pha		; 48
	ora $08D3E1.l		; 0F E1 D3 08
	trb $0E48.w		; 1C 48 0E
	nop		; EA
	xba		; EB
	brk $1E.b		; 00 1E
	rti		; 40

	sbc [$11.b]		; E7 11
	cmp ($00.b)		; D2 00
	ora $F30540.l,X		; 1F 40 05 F3
	lda [$00.b],Y		; B7 00
	jsr $0640.w		; 20 40 06
	sbc ($EB.b)		; F2 EB
	brk $21.b		; 00 21
	rti		; 40

	sbc $00CB09.l		; EF 09 CB 00
	rol $1740.w		; 2E 40 17
	sbc ($CB.b,X)		; E1 CB
	brk $2F.b		; 00 2F
	rti		; 40

	sbc $00E3F9.l,X		; FF F9 E3 00
	bmi  64.b		; 30 40
	ora [$F1.b]		; 07 F1
	sbc $00.b,S		; E3 00
	and ($40.b),Y		; 31 40
	ora $00E3E9.l		; 0F E9 E3 00
	and ($40.b)		; 32 40
	ora [$E1.b],Y		; 17 E1
	sbc $00.b,S		; E3 00
	and ($40.b,S),Y		; 33 40
	cmp $00D419.l,X		; DF 19 D4 00
	bit $40.b,X		; 34 40
	cmp [$21.b],Y		; D7 21
	cmp $00.b,X		; D5 00
	and $40.b,X		; 35 40
	cmp $00D829.l		; CF 29 D8 00
	rol $40.b,X		; 36 40
	sbc $BBFF.w,Y		; F9 FF BB
	brk $37.b		; 00 37
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	tyx		; BB
	brk $38.b		; 00 38
	rti		; 40

	ora #$EF.b		; 09 EF
	tyx		; BB
	brk $39.b		; 00 39
	rti		; 40

	ora #$EF.b		; 09 EF
	sbc ($00.b,S),Y		; F3 00
	dec A		; 3A
	rti		; 40

	ora #$EF.b		; 09 EF
	xce		; FB
	brk $3B.b		; 00 3B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	xce		; FB
	brk $3C.b		; 00 3C
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,S),Y		; F3 00
	and $2340.w,X		; 3D 40 23
	dec $1A.b,X		; D6 1A
	lda $08.b,S		; A3 08
	brk $48.b		; 00 48
	pea $B304.w		; F4 04 B3
	brk $02.b		; 00 02
	rti		; 40

	pea $BB04.w		; F4 04 BB
	brk $03.b		; 00 03
	rti		; 40

	inc $AB0A.w		; EE 0A AB
	brk $04.b		; 00 04
	rti		; 40

	cpx $B30C.w		; EC 0C B3
	brk $05.b		; 00 05
	rti		; 40

	inc $12.b		; E6 12
	lda $00.b,S		; A3 00
	asl $40.b		; 06 40
	inc $12.b		; E6 12
	plb		; AB
	brk $07.b		; 00 07
	rti		; 40

	cmp $00B029.l		; CF 29 B0 00
	php		; 08
	rti		; 40

	plx		; FA
	inc $00BE.w,X		; FE BE 00
	ora #$40.b		; 09 40
	sbc $08E301.l		; EF 01 E3 08
	ora ($48.b)		; 12 48
	sbc $08D301.l		; EF 01 D3 08
	trb $48.b		; 14 48
	sbc [$F9.b],Y		; F7 F9
	cmp $08.b,S		; C3 08
	asl $48.b,X		; 16 48
	ora [$E9.b]		; 07 E9
	cmp $08.b,S		; C3 08
	clc		; 18
	pha		; 48
	sbc $08D3F1.l,X		; FF F1 D3 08
	inc A		; 1A
	pha		; 48
	ora $08D3E1.l		; 0F E1 D3 08
	trb $0E48.w		; 1C 48 0E
	nop		; EA
	xba		; EB
	brk $1E.b		; 00 1E
	rti		; 40

	sbc [$11.b]		; E7 11
	cmp ($00.b)		; D2 00
	ora $F30540.l,X		; 1F 40 05 F3
	lda [$00.b],Y		; B7 00
	jsr $0640.w		; 20 40 06
	sbc ($EB.b)		; F2 EB
	brk $21.b		; 00 21
	rti		; 40

	sbc $00CB09.l		; EF 09 CB 00
	rol $1740.w		; 2E 40 17
	sbc ($CB.b,X)		; E1 CB
	brk $2F.b		; 00 2F
	rti		; 40

	sbc $00E3F9.l,X		; FF F9 E3 00
	bmi  64.b		; 30 40
	ora [$F1.b]		; 07 F1
	sbc $00.b,S		; E3 00
	and ($40.b),Y		; 31 40
	ora $00E3E9.l		; 0F E9 E3 00
	and ($40.b)		; 32 40
	ora [$E1.b],Y		; 17 E1
	sbc $00.b,S		; E3 00
	and ($40.b,S),Y		; 33 40
	cmp $00D419.l,X		; DF 19 D4 00
	bit $40.b,X		; 34 40
	cmp [$21.b],Y		; D7 21
	cmp $00.b,X		; D5 00
	and $40.b,X		; 35 40
	cmp $00D829.l		; CF 29 D8 00
	rol $40.b,X		; 36 40
	sbc $BBFF.w,Y		; F9 FF BB
	brk $37.b		; 00 37
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	tyx		; BB
	brk $38.b		; 00 38
	rti		; 40

	ora #$EF.b		; 09 EF
	tyx		; BB
	brk $39.b		; 00 39
	rti		; 40

	ora #$EF.b		; 09 EF
	sbc ($00.b,S),Y		; F3 00
	dec A		; 3A
	rti		; 40

	ora #$EF.b		; 09 EF
	xce		; FB
	brk $3B.b		; 00 3B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	xce		; FB
	brk $3C.b		; 00 3C
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,S),Y		; F3 00
	and $2540.w,X		; 3D 40 25
	asl A		; 0A
	inc $99.b		; E6 99
	php		; 08
	brk $48.b		; 00 48
	inc A		; 1A
	dec $99.b,X		; D6 99
	php		; 08
	cop $48.b		; 02 48
	trb $A9DC.w		; 1C DC A9
	brk $04.b		; 00 04
	rti		; 40

	tsb $A9EC.w		; 0C EC A9
	brk $05.b		; 00 05
	rti		; 40

	trb $E4.b		; 14 E4
	lda #$00.b		; A9 00
	asl $40.b		; 06 40
	xce		; FB
	sbc $0091.w,X		; FD 91 00
	ora [$40.b]		; 07 40
	ora $F5.b,S		; 03 F5
	sta ($00.b),Y		; 91 00
	php		; 08
	rti		; 40

	phd		; 0B
	sbc $0091.w		; ED 91 00
	ora #$40.b		; 09 40
	ora ($E5.b,S),Y		; 13 E5
	sta ($00.b),Y		; 91 00
	asl A		; 0A
	rti		; 40

	tas		; 1B
	cmp $0091.w,X		; DD 91 00
	phd		; 0B
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	lda ($00.b),Y		; B1 00
	tsb $1B40.w		; 0C 40 1B
	cmp $00B1.w,X		; DD B1 00
	ora $1C40.w		; 0D 40 1C
	pei ($D9.b)		; D4 D9
	php		; 08
	trb $48.b		; 14 48
	pea $D9FC.w		; F4 FC D9
	php		; 08
	asl $48.b,X		; 16 48
	pea $E9FC.w		; F4 FC E9
	php		; 08
	clc		; 18
	pha		; 48
	tsb $EC.b		; 04 EC
	cmp $1A08.w,Y		; D9 08 1A
	pha		; 48
	tsb $EC.b		; 04 EC
	sbc #$08.b		; E9 08
	trb $F748.w		; 1C 48 F7
	sbc $08B9.w,Y		; F9 B9 08
	asl $F948.w,X		; 1E 48 F9
	sbc [$C9.b],Y		; F7 C9
	php		; 08
	jsr $0948.w		; 20 48 09
	sbc [$C9.b]		; E7 C9
	php		; 08
	jsl $E41448.l		; 22 48 14 E4
	sbc #$00.b		; E9 00
	bit $40.b,X		; 34 40
	trb $E9DC.w		; 1C DC E9
	brk $35.b		; 00 35
	rti		; 40

	trb $E4.b		; 14 E4
	sbc ($00.b),Y		; F1 00
	rol $40.b,X		; 36 40
	jsr ($F9FC.w,X)		; FC FC F9
	brk $37.b		; 00 37
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $3800.w,Y		; F9 00 38
	rti		; 40

	tsb $F9EC.w		; 0C EC F9
	brk $39.b		; 00 39
	rti		; 40

	inc $02.b,X		; F6 02
	lda #$00.b		; A9 00
	dec A		; 3A
	rti		; 40

	inc $02.b,X		; F6 02
	lda ($00.b),Y		; B1 00
	tsa		; 3B
	rti		; 40

	asl $B9EA.w		; 0E EA B9
	brk $3C.b		; 00 3C
	rti		; 40

	asl $E2.b,X		; 16 E2
	lda $3D00.w,Y		; B9 00 3D
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp ($00.b,X)		; C1 00
	rol $0F40.w,X		; 3E 40 0F
	sbc #$C1.b		; E9 C1
	brk $3F.b		; 00 3F
	rti		; 40

	bit $D4.b		; 24 D4
	cmp ($00.b),Y		; D1 00
	rti		; 40

	rti		; 40

	beq   8.b		; F0 08
	lda ($00.b,X)		; A1 00
	eor ($40.b,X)		; 41 40
	sed		; F8
	brk $A1.b		; 00 A1
	brk $42.b		; 00 42
	rti		; 40

	trb $E4.b		; 14 E4
	cmp $4300.w,Y		; D9 00 43
	rti		; 40

	trb $E4.b		; 14 E4
	sbc ($00.b,X)		; E1 00
	mvp $25,$40		; 44 40 25
	ora $ED.b,S		; 03 ED
	sta ($08.b),Y		; 91 08
	brk $48.b		; 00 48
	ora ($DD.b,S),Y		; 13 DD
	sta ($08.b),Y		; 91 08
	cop $48.b		; 02 48
	phd		; 0B
	sbc $A1.b		; E5 A1
	php		; 08
	tsb $48.b		; 04 48
	tas		; 1B
	cmp $A1.b,X		; D5 A1
	php		; 08
	asl $48.b		; 06 48
	and $D5.b,S		; 23 D5
	sta $0800.w,Y		; 99 00 08
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda ($00.b,X)		; A1 00
	ora #$40.b		; 09 40
	ora ($E5.b,S),Y		; 13 E5
	lda ($00.b),Y		; B1 00
	asl A		; 0A
	rti		; 40

	tas		; 1B
	cmp $00B1.w,X		; DD B1 00
	phd		; 0B
	rti		; 40

	and $D5.b,S		; 23 D5
	lda ($00.b),Y		; B1 00
	tsb $EB40.w		; 0C 40 EB
	ora $0092.w		; 0D 92 00
	ora $F340.w		; 0D 40 F3
	ora $92.b		; 05 92
	brk $0E.b		; 00 0E
	rti		; 40

	xce		; FB
	sbc $0092.w,X		; FD 92 00
	ora $D41C40.l		; 0F 40 1C D4
	cmp $1808.w,Y		; D9 08 18
	pha		; 48
	pea $D9FC.w		; F4 FC D9
	php		; 08
	inc A		; 1A
	pha		; 48
	pea $E9FC.w		; F4 FC E9
	php		; 08
	trb $0448.w		; 1C 48 04
	cpx $08D9.w		; EC D9 08
	asl $0448.w,X		; 1E 48 04
	cpx $08E9.w		; EC E9 08
	jsr $F748.w		; 20 48 F7
	sbc $08B9.w,Y		; F9 B9 08
	jsl $F7F948.l		; 22 48 F9 F7
	cmp #$08.b		; C9 08
	bit $48.b		; 24 48
	ora #$E7.b		; 09 E7
	cmp #$08.b		; C9 08
	rol $48.b		; 26 48
	trb $E4.b		; 14 E4
	sbc #$00.b		; E9 00
	sec		; 38
	rti		; 40

	trb $E9DC.w		; 1C DC E9
	brk $39.b		; 00 39
	rti		; 40

	trb $E4.b		; 14 E4
	sbc ($00.b),Y		; F1 00
	dec A		; 3A
	rti		; 40

	jsr ($F9FC.w,X)		; FC FC F9
	brk $3B.b		; 00 3B
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $3C00.w,Y		; F9 00 3C
	rti		; 40

	tsb $F9EC.w		; 0C EC F9
	brk $3D.b		; 00 3D
	rti		; 40

	inc $02.b,X		; F6 02
	lda #$00.b		; A9 00
	rol $F640.w,X		; 3E 40 F6
	cop $B1.b		; 02 B1
	brk $3F.b		; 00 3F
	rti		; 40

	asl $B9EA.w		; 0E EA B9
	brk $40.b		; 00 40
	rti		; 40

	asl $E2.b,X		; 16 E2
	lda $4100.w,Y		; B9 00 41
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp ($00.b,X)		; C1 00
	.db $42, $40		; 42 40
	ora $00C1E9.l		; 0F E9 C1 00
	eor $40.b,S		; 43 40
	bit $D4.b		; 24 D4
	cmp ($00.b),Y		; D1 00
	mvp $F0,$40		; 44 40 F0
	php		; 08
	lda ($00.b,X)		; A1 00
	eor $40.b		; 45 40
	sed		; F8
	brk $A1.b		; 00 A1
	brk $46.b		; 00 46
	rti		; 40

	trb $E4.b		; 14 E4
	cmp $4700.w,Y		; D9 00 47
	rti		; 40

	trb $E4.b		; 14 E4
	sbc ($00.b,X)		; E1 00
	pha		; 48
	rti		; 40

	ora $EE.b,X		; 15 EE
	cop $EF.b		; 02 EF
	dey		; 88
	brk $C8.b		; 00 C8
	nop		; EA
	asl $D7.b		; 06 D7
	dey		; 88
	cop $C8.b		; 02 C8
	plx		; FA
	inc $D7.b,X		; F6 D7
	dey		; 88
	tsb $C8.b		; 04 C8
	nop		; EA
	asl $C7.b		; 06 C7
	dey		; 88
	asl $C8.b		; 06 C8
	plx		; FA
	inc $C7.b,X		; F6 C7
	dey		; 88
	php		; 08
	iny		; C8
	ora $F3.b		; 05 F3
	lda ($80.b,S),Y		; B3 80
	asl A		; 0A
	cpy #$EF.b		; C0 EF
	ora #$B4.b		; 09 B4
	bra  11.b		; 80 0B
	cpy #$08.b		; C0 08
	beq -85.b		; F0 AB
	bra  12.b		; 80 0C
	cpy #$F1.b		; C0 F1
	ora [$BF.b]		; 07 BF
	bra  13.b		; 80 0D
	cpy #$F9.b		; C0 F9
	sbc $0E80BF.l,X		; FF BF 80 0E
	cpy #$01.b		; C0 01
	sbc [$BF.b],Y		; F7 BF
	bra  15.b		; 80 0F
	cpy #$0A.b		; C0 0A
	inc $80D9.w		; EE D9 80
	inc A		; 1A
	cpy #$EE.b		; C0 EE
	asl A		; 0A
	ldy $1B80.w		; AC 80 1B
	cpy #$EE.b		; C0 EE
	asl A		; 0A
	ldy $80.b		; A4 80
	trb $06C0.w		; 1C C0 06
	sbc ($A3.b)		; F2 A3
	bra  29.b		; 80 1D
	cpy #$0E.b		; C0 0E
	nop		; EA
	lda $80.b,S		; A3 80
	asl $EBC0.w,X		; 1E C0 EB
	ora $80E7.w		; 0D E7 80
	ora $05F3C0.l,X		; 1F C0 F3 05
	sbc [$80.b]		; E7 80
	jsr $FBC0.w		; 20 C0 FB
	sbc $80E7.w,X		; FD E7 80
	and ($C0.b,X)		; 21 C0
	sbc ($05.b,S),Y		; F3 05
	lda [$80.b],Y		; B7 80
	jsl $F503C0.l		; 22 C0 03 F5
	lda [$80.b],Y		; B7 80
	and $C0.b,S		; 23 C0
	bpl -17.b		; 10 EF
	ora ($EE.b,X)		; 01 EE
	dey		; 88
	brk $C8.b		; 00 C8
	sbc $88DE01.l		; EF 01 DE 88
	cop $C8.b		; 02 C8
	sbc $88CE01.l		; EF 01 CE 88
	tsb $C8.b		; 04 C8
	cmp $88DE11.l,X		; DF 11 DE 88
	asl $C8.b		; 06 C8
	beq   0.b		; F0 00
	ldx $0888.w,Y		; BE 88 08
	iny		; C8
	beq   0.b		; F0 00
	ldx $0A88.w		; AE 88 0A
	iny		; C8
	sbc $03.b,X		; F5 03
	ldx $80.b		; A6 80
	tsb $FDC0.w		; 0C C0 FD
	xce		; FB
	ldx $80.b		; A6 80
	ora $F6C0.w		; 0D C0 F6
	cop $FE.b		; 02 FE
	bra  14.b		; 80 0E
	cpy #$E7.b		; C0 E7
	ora ($EE.b),Y		; 11 EE
	bra  15.b		; 80 0F
	cpy #$DF.b		; C0 DF
	ora $80D6.w,Y		; 19 D6 80
	trb $E7C0.w		; 1C C0 E7
	ora ($D6.b),Y		; 11 D6
	bra  29.b		; 80 1D
	cpy #$E7.b		; C0 E7
	ora ($CE.b),Y		; 11 CE
	bra  30.b		; 80 1E
	cpy #$FF.b		; C0 FF
	sbc $80D7.w,Y		; F9 D7 80
	ora $F9FFC0.l,X		; 1F C0 FF F9
	inc $80.b,X		; F6 80
	jsr $EDC0.w		; 20 C0 ED
	phd		; 0B
	ldx $80.b		; A6 80
	and ($C0.b,X)		; 21 C0
	asl $E4.b,X		; 16 E4
	tsb $88E3.w		; 0C E3 88
	brk $C8.b		; 00 C8
	pea $EEFC.w		; F4 FC EE
	dey		; 88
	cop $C8.b		; 02 C8
	pea $DEFC.w		; F4 FC DE
	dey		; 88
	tsb $C8.b		; 04 C8
	sbc $88CE01.l		; EF 01 CE 88
	asl $C8.b		; 06 C8
	sbc ($FD.b,S),Y		; F3 FD
	ldx $0888.w,Y		; BE 88 08
	iny		; C8
	tsb $F4.b		; 04 F4
	beq -128.b		; F0 80
	asl A		; 0A
	cpy #$FC.b		; C0 FC
	jsr ($80B6.w,X)		; FC B6 80
	phd		; 0B
	cpy #$EC.b		; C0 EC
	tsb $80F3.w		; 0C F3 80
	tsb $E4C0.w		; 0C C0 E4
	trb $DB.b		; 14 DB
	bra  13.b		; 80 0D
	cpy #$0C.b		; C0 0C
	cpx $80F4.w		; EC F4 80
	asl $EEC0.w		; 0E C0 EE
	asl A		; 0A
	ldx $0F80.w		; AE 80 0F
	cpy #$EE.b		; C0 EE
	asl A		; 0A
	ldx $80.b		; A6 80
	inc A		; 1A
	cpy #$E7.b		; C0 E7
	ora ($D3.b),Y		; 11 D3
	bra  27.b		; 80 1B
	cpy #$EC.b		; C0 EC
	tsb $80DB.w		; 0C DB 80
	trb $FFC0.w		; 1C C0 FF
	sbc $80D6.w,Y		; F9 D6 80
	ora $FFC0.w,X		; 1D C0 FF
	sbc $80CE.w,Y		; F9 CE 80
	asl $00C0.w,X		; 1E C0 00
	sed		; F8
	inc $1F80.w,X		; FE 80 1F
	cpy #$F0.b		; C0 F0
	php		; 08
	ldx $80.b,Y		; B6 80
	jsr $03C0.w		; 20 C0 03
	sbc $AA.b,X		; F5 AA
	bra  33.b		; 80 21
	cpy #$FB.b		; C0 FB
	sbc $80AE.w,X		; FD AE 80
	jsl $FDFBC0.l		; 22 C0 FB FD
	ldx $80.b		; A6 80
	and $C0.b,S		; 23 C0
	tsb $F4.b		; 04 F4
	sed		; F8
	bra  36.b		; 80 24
	cpy #$12.b		; C0 12
	cmp $88E911.l,X		; DF 11 E9 88
	brk $C8.b		; 00 C8
	cmp $88D911.l,X		; DF 11 D9 88
	cop $C8.b		; 02 C8
	sbc $88E901.l		; EF 01 E9 88
	tsb $C8.b		; 04 C8
	sbc $88E9F1.l,X		; FF F1 E9 88
	asl $C8.b		; 06 C8
	sbc $88D901.l		; EF 01 D9 88
	php		; 08
	iny		; C8
	ora [$D9.b],Y		; 17 D9
	cpx #$88.b		; E0 88
	asl A		; 0A
	iny		; C8
	cpx $14.b		; E4 14
	sbc $0C80.w,Y		; F9 80 0C
	cpy #$EC.b		; C0 EC
	tsb $80F9.w		; 0C F9 80
	ora $F4C0.w		; 0D C0 F4
	tsb $F9.b		; 04 F9
	bra  14.b		; 80 0E
	cpy #$FC.b		; C0 FC
	jsr ($80F9.w,X)		; FC F9 80
	ora $F9FFC0.l		; 0F C0 FF F9
	sbc ($80.b,X)		; E1 80
	trb $07C0.w		; 1C C0 07
	sbc ($E1.b),Y		; F1 E1
	bra  29.b		; 80 1D
	cpy #$FF.b		; C0 FF
	sbc $80D9.w,Y		; F9 D9 80
	asl $FCC0.w,X		; 1E C0 FC
	jsr ($8001.w,X)		; FC 01 80
	ora $D127C0.l,X		; 1F C0 27 D1
	inx		; E8
	bra  32.b		; 80 20
	cpy #$27.b		; C0 27
	cmp ($E0.b),Y		; D1 E0
	bra  33.b		; 80 21
	cpy #$0F.b		; C0 0F
	sbc #$ED.b		; E9 ED
	bra  34.b		; 80 22
	cpy #$0F.b		; C0 0F
	sbc #$E5.b		; E9 E5
	bra  35.b		; 80 23
	cpy #$15.b		; C0 15
	cop $EE.b		; 02 EE
	lda [$48.b]		; A7 48
	brk $08.b		; 00 08
	asl $EA.b		; 06 EA
	lda $080248.l,X		; BF 48 02 08
	inc $FA.b,X		; F6 FA
	lda $080448.l,X		; BF 48 04 08
	asl $EA.b		; 06 EA
	cmp $080648.l		; CF 48 06 08
	inc $FA.b,X		; F6 FA
	cmp $080848.l		; CF 48 08 08
	sbc ($05.b,S),Y		; F3 05
	xba		; EB
	rti		; 40

	asl A		; 0A
	brk $09.b		; 00 09
	sbc $0B40EA.l		; EF EA 40 0B
	brk $F0.b		; 00 F0
	php		; 08
	sbc ($40.b,S),Y		; F3 40
	tsb $0700.w		; 0C 00 07
	sbc ($DF.b),Y		; F1 DF
	rti		; 40

	ora $FF00.w		; 0D 00 FF
	sbc $40DF.w,Y		; F9 DF 40
	asl $F700.w		; 0E 00 F7
	ora ($DF.b,X)		; 01 DF
	rti		; 40

	ora $0AEE00.l		; 0F 00 EE 0A
	cmp $40.b		; C5 40
	inc A		; 1A
	brk $0A.b		; 00 0A
	inc $40F2.w		; EE F2 40
	tas		; 1B
	brk $0A.b		; 00 0A
	inc $40FA.w		; EE FA 40
	trb $F200.w		; 1C 00 F2
	asl $FB.b		; 06 FB
	rti		; 40

	ora $EA00.w,X		; 1D 00 EA
	asl $40FB.w		; 0E FB 40
	asl $0D00.w,X		; 1E 00 0D
	xba		; EB
	lda [$40.b],Y		; B7 40
	ora $F30500.l,X		; 1F 00 05 F3
	lda [$40.b],Y		; B7 40
	jsr $FD00.w		; 20 00 FD
	xce		; FB
	lda [$40.b],Y		; B7 40
	and ($00.b,X)		; 21 00
	ora $F3.b		; 05 F3
	sbc [$40.b]		; E7 40
	jsl $03F500.l		; 22 00 F5 03
	sbc [$40.b]		; E7 40
	and $00.b,S		; 23 00
	bpl   1.b		; 10 01
	sbc $0048A9.l		; EF A9 48 00
	php		; 08
	ora ($EF.b,X)		; 01 EF
	lda $0248.w,Y		; B9 48 02
	php		; 08
	ora ($EF.b,X)		; 01 EF
	cmp #$48.b		; C9 48
	tsb $08.b		; 04 08
	ora ($DF.b),Y		; 11 DF
	lda $0648.w,Y		; B9 48 06
	php		; 08
	brk $F0.b		; 00 F0
	cmp $0848.w,Y		; D9 48 08
	php		; 08
	brk $F0.b		; 00 F0
	sbc #$48.b		; E9 48
	asl A		; 0A
	php		; 08
	ora $F5.b,S		; 03 F5
	sbc $0C40.w,Y		; F9 40 0C
	brk $FB.b		; 00 FB
	sbc $40F9.w,X		; FD F9 40
	ora $0200.w		; 0D 00 02
	inc $A1.b,X		; F6 A1
	rti		; 40

	asl $1100.w		; 0E 00 11
	sbc [$B1.b]		; E7 B1
	rti		; 40

	ora $DF1900.l		; 0F 00 19 DF
	cmp #$40.b		; C9 40
	trb $1100.w		; 1C 00 11
	sbc [$C9.b]		; E7 C9
	rti		; 40

	ora $1100.w,X		; 1D 00 11
	sbc [$D1.b]		; E7 D1
	rti		; 40

	asl $F900.w,X		; 1E 00 F9
	sbc $1F40C8.l,X		; FF C8 40 1F
	brk $F9.b		; 00 F9
	sbc $2040A9.l,X		; FF A9 40 20
	brk $0B.b		; 00 0B
	sbc $40F9.w		; ED F9 40
	and ($00.b,X)		; 21 00
	asl $0C.b,X		; 16 0C
	cpx $B9.b		; E4 B9
	pha		; 48
	brk $08.b		; 00 08
	jsr ($AEF4.w,X)		; FC F4 AE
	pha		; 48
	cop $08.b		; 02 08
	jsr ($BEF4.w,X)		; FC F4 BE
	pha		; 48
	tsb $08.b		; 04 08
	ora ($EF.b,X)		; 01 EF
	dec $0648.w		; CE 48 06
	php		; 08
	sbc $DEF3.w,X		; FD F3 DE
	pha		; 48
	php		; 08
	php		; 08
	pea $B404.w		; F4 04 B4
	rti		; 40

	asl A		; 0A
	brk $FC.b		; 00 FC
	jsr ($40EE.w,X)		; FC EE 40
	phd		; 0B
	brk $0C.b		; 00 0C
	cpx $40B1.w		; EC B1 40
	tsb $1400.w		; 0C 00 14
	cpx $C9.b		; E4 C9
	rti		; 40

	ora $EC00.w		; 0D 00 EC
	tsb $40B0.w		; 0C B0 40
	asl $0A00.w		; 0E 00 0A
	inc $40F6.w		; EE F6 40
	ora $EE0A00.l		; 0F 00 0A EE
	inc $1A40.w,X		; FE 40 1A
	brk $11.b		; 00 11
	sbc [$D1.b]		; E7 D1
	rti		; 40

	tas		; 1B
	brk $0C.b		; 00 0C
	cpx $40C9.w		; EC C9 40
	trb $F900.w		; 1C 00 F9
	sbc $1D40CE.l,X		; FF CE 40 1D
	brk $F9.b		; 00 F9
	sbc $1E40D6.l,X		; FF D6 40 1E
	brk $F8.b		; 00 F8
	brk $A6.b		; 00 A6
	rti		; 40

	ora $F00800.l,X		; 1F 00 08 F0
	inc $2040.w		; EE 40 20
	brk $F5.b		; 00 F5
	ora $FA.b,S		; 03 FA
	rti		; 40

	and ($00.b,X)		; 21 00
	sbc $F6FB.w,X		; FD FB F6
	rti		; 40

	jsl $FBFD00.l		; 22 00 FD FB
	inc $2340.w,X		; FE 40 23
	brk $F4.b		; 00 F4
	tsb $AC.b		; 04 AC
	rti		; 40

	bit $00.b		; 24 00
	ora ($11.b)		; 12 11
	cmp $0048E1.l,X		; DF E1 48 00
	php		; 08
	ora ($DF.b),Y		; 11 DF
	sbc ($48.b),Y		; F1 48
	cop $08.b		; 02 08
	ora ($EF.b,X)		; 01 EF
	sbc ($48.b,X)		; E1 48
	tsb $08.b		; 04 08
	sbc ($FF.b),Y		; F1 FF
	sbc ($48.b,X)		; E1 48
	asl $08.b		; 06 08
	ora ($EF.b,X)		; 01 EF
	sbc ($48.b),Y		; F1 48
	php		; 08
	php		; 08
	cmp $EA17.w,Y		; D9 17 EA
	pha		; 48
	asl A		; 0A
	php		; 08
	trb $E4.b		; 14 E4
	cmp $0C40.w,Y		; D9 40 0C
	brk $0C.b		; 00 0C
	cpx $40D9.w		; EC D9 40
	ora $0400.w		; 0D 00 04
	pea $40D9.w		; F4 D9 40
	asl $FC00.w		; 0E 00 FC
	jsr ($40D9.w,X)		; FC D9 40
	ora $FFF900.l		; 0F 00 F9 FF
	sbc ($40.b),Y		; F1 40
	trb $F100.w		; 1C 00 F1
	ora [$F1.b]		; 07 F1
	rti		; 40

	ora $F900.w,X		; 1D 00 F9
	sbc $1E40F9.l,X		; FF F9 40 1E
	brk $FC.b		; 00 FC
	jsr ($40D1.w,X)		; FC D1 40
	ora $27D100.l,X		; 1F 00 D1 27
	nop		; EA
	rti		; 40

	jsr $D100.w		; 20 00 D1
	and [$F2.b]		; 27 F2
	rti		; 40

	and ($00.b,X)		; 21 00
	sbc #$0F.b		; E9 0F
	sbc $40.b		; E5 40
	jsl $0FE900.l		; 22 00 E9 0F
	sbc $2340.w		; ED 40 23
	brk $15.b		; 00 15
	pea $E1FC.w		; F4 FC E1
	pha		; 48
	brk $08.b		; 00 08
	trb $DC.b		; 14 DC
	cpx #$48.b		; E0 48
	cop $08.b		; 02 08
	ora [$E9.b]		; 07 E9
	sbc ($48.b),Y		; F1 48
	tsb $08.b		; 04 08
	sbc $48F001.l		; EF 01 F0 48
	asl $08.b		; 06 08
	cmp $48F011.l,X		; DF 11 F0 48
	php		; 08
	php		; 08
	cpx $14.b		; E4 14
	inx		; E8
	rti		; 40

	asl A		; 0A
	brk $2C.b		; 00 2C
	cpy $40F0.w		; CC F0 40
	phd		; 0B
	brk $04.b		; 00 04
	pea $40E9.w		; F4 E9 40
	tsb $2400.w		; 0C 00 24
	pei ($E8.b)		; D4 E8
	rti		; 40

	ora $2400.w		; 0D 00 24
	pei ($F0.b)		; D4 F0
	rti		; 40

	asl $1C00.w		; 0E 00 1C
	jmp.w [$40F0]		; DC F0 40
	ora $E41400.l		; 0F 00 14 E4
	beq  64.b		; F0 40
	inc A		; 1A
	brk $E9.b		; 00 E9
	ora $1B4000.l		; 0F 00 40 1B
	brk $0F.b		; 00 0F
	sbc #$01.b		; E9 01
	rti		; 40

	trb $0C00.w		; 1C 00 0C
	cpx $40E9.w		; EC E9 40
	ora $FF00.w,X		; 1D 00 FF
	sbc $40F1.w,Y		; F9 F1 40
	asl $FF00.w,X		; 1E 00 FF
	sbc $40F9.w,Y		; F9 F9 40
	ora $21D700.l,X		; 1F 00 D7 21
	xce		; FB
	rti		; 40

	jsr $1700.w		; 20 00 17
	sbc ($F8.b,X)		; E1 F8
	rti		; 40

	and ($00.b,X)		; 21 00
	cpx $E10C.w		; EC 0C E1
	rti		; 40

	jsl $0CEC00.l		; 22 00 EC 0C
	sbc #$40.b		; E9 40
	and $00.b,S		; 23 00
	ora $02.b,X		; 15 02
	inc $C8EF.w		; EE EF C8
	brk $88.b		; 00 88
	asl $EA.b		; 06 EA
	cmp [$C8.b],Y		; D7 C8
	cop $88.b		; 02 88
	inc $FA.b,X		; F6 FA
	cmp [$C8.b],Y		; D7 C8
	tsb $88.b		; 04 88
	asl $EA.b		; 06 EA
	cmp [$C8.b]		; C7 C8
	asl $88.b		; 06 88
	inc $FA.b,X		; F6 FA
	cmp [$C8.b]		; C7 C8
	php		; 08
	dey		; 88
	sbc ($05.b,S),Y		; F3 05
	lda ($C0.b,S),Y		; B3 C0
	asl A		; 0A
	bra   9.b		; 80 09
	sbc $0BC0B4.l		; EF B4 C0 0B
	bra -16.b		; 80 F0
	php		; 08
	plb		; AB
	cpy #$0C.b		; C0 0C
	bra   7.b		; 80 07
	sbc ($BF.b),Y		; F1 BF
	cpy #$0D.b		; C0 0D
	bra  -1.b		; 80 FF
	sbc $C0BF.w,Y		; F9 BF C0
	asl $F780.w		; 0E 80 F7
	ora ($BF.b,X)		; 01 BF
	cpy #$0F.b		; C0 0F
	bra -18.b		; 80 EE
	asl A		; 0A
	cmp $1AC0.w,Y		; D9 C0 1A
	bra  10.b		; 80 0A
	inc $C0AC.w		; EE AC C0
	tas		; 1B
	bra  10.b		; 80 0A
	inc $C0A4.w		; EE A4 C0
	trb $F280.w		; 1C 80 F2
	asl $A3.b		; 06 A3
	cpy #$1D.b		; C0 1D
	bra -22.b		; 80 EA
	asl $C0A3.w		; 0E A3 C0
	asl $0D80.w,X		; 1E 80 0D
	xba		; EB
	sbc [$C0.b]		; E7 C0
	ora $F30580.l,X		; 1F 80 05 F3
	sbc [$C0.b]		; E7 C0
	jsr $FD80.w		; 20 80 FD
	xce		; FB
	sbc [$C0.b]		; E7 C0
	and ($80.b,X)		; 21 80
	ora $F3.b		; 05 F3
	lda [$C0.b],Y		; B7 C0
	jsl $03F580.l		; 22 80 F5 03
	lda [$C0.b],Y		; B7 C0
	and $80.b,S		; 23 80
	bpl   1.b		; 10 01
	sbc $00C8EE.l		; EF EE C8 00
	dey		; 88
	ora ($EF.b,X)		; 01 EF
	dec $02C8.w,X		; DE C8 02
	dey		; 88
	ora ($EF.b,X)		; 01 EF
	dec $04C8.w		; CE C8 04
	dey		; 88
	ora ($DF.b),Y		; 11 DF
	dec $06C8.w,X		; DE C8 06
	dey		; 88
	brk $F0.b		; 00 F0
	ldx $08C8.w,Y		; BE C8 08
	dey		; 88
	brk $F0.b		; 00 F0
	ldx $0AC8.w		; AE C8 0A
	dey		; 88
	ora $F5.b,S		; 03 F5
	ldx $C0.b		; A6 C0
	tsb $FB80.w		; 0C 80 FB
	sbc $C0A6.w,X		; FD A6 C0
	ora $0280.w		; 0D 80 02
	inc $FE.b,X		; F6 FE
	cpy #$0E.b		; C0 0E
	bra  17.b		; 80 11
	sbc [$EE.b]		; E7 EE
	cpy #$0F.b		; C0 0F
	bra  25.b		; 80 19
	cmp $1CC0D6.l,X		; DF D6 C0 1C
	bra  17.b		; 80 11
	sbc [$D6.b]		; E7 D6
	cpy #$1D.b		; C0 1D
	bra  17.b		; 80 11
	sbc [$CE.b]		; E7 CE
	cpy #$1E.b		; C0 1E
	bra  -7.b		; 80 F9
	sbc $1FC0D7.l,X		; FF D7 C0 1F
	bra  -7.b		; 80 F9
	sbc $20C0F6.l,X		; FF F6 C0 20
	bra  11.b		; 80 0B
	sbc $C0A6.w		; ED A6 C0
	and ($80.b,X)		; 21 80
	asl $0C.b,X		; 16 0C
	cpx $E3.b		; E4 E3
	iny		; C8
	brk $88.b		; 00 88
	jsr ($EEF4.w,X)		; FC F4 EE
	iny		; C8
	cop $88.b		; 02 88
	jsr ($DEF4.w,X)		; FC F4 DE
	iny		; C8
	tsb $88.b		; 04 88
	ora ($EF.b,X)		; 01 EF
	dec $06C8.w		; CE C8 06
	dey		; 88
	sbc $BEF3.w,X		; FD F3 BE
	iny		; C8
	php		; 08
	dey		; 88
	pea $F004.w		; F4 04 F0
	cpy #$0A.b		; C0 0A
	bra  -4.b		; 80 FC
	jsr ($C0B6.w,X)		; FC B6 C0
	phd		; 0B
	bra  12.b		; 80 0C
	cpx $C0F3.w		; EC F3 C0
	tsb $1480.w		; 0C 80 14
	cpx $DB.b		; E4 DB
	cpy #$0D.b		; C0 0D
	bra -20.b		; 80 EC
	tsb $C0F4.w		; 0C F4 C0
	asl $0A80.w		; 0E 80 0A
	inc $C0AE.w		; EE AE C0
	ora $EE0A80.l		; 0F 80 0A EE
	ldx $C0.b		; A6 C0
	inc A		; 1A
	bra  17.b		; 80 11
	sbc [$D3.b]		; E7 D3
	cpy #$1B.b		; C0 1B
	bra  12.b		; 80 0C
	cpx $C0DB.w		; EC DB C0
	trb $F980.w		; 1C 80 F9
	sbc $1DC0D6.l,X		; FF D6 C0 1D
	bra  -7.b		; 80 F9
	sbc $1EC0CE.l,X		; FF CE C0 1E
	bra  -8.b		; 80 F8
	brk $FE.b		; 00 FE
	cpy #$1F.b		; C0 1F
	bra   8.b		; 80 08
	beq -74.b		; F0 B6
	cpy #$20.b		; C0 20
	bra -11.b		; 80 F5
	ora $AA.b,S		; 03 AA
	cpy #$21.b		; C0 21
	bra  -3.b		; 80 FD
	xce		; FB
	ldx $22C0.w		; AE C0 22
	bra  -3.b		; 80 FD
	xce		; FB
	ldx $C0.b		; A6 C0
	and $80.b,S		; 23 80
	pea $F804.w		; F4 04 F8
	cpy #$24.b		; C0 24
	bra  18.b		; 80 12
	ora ($DF.b),Y		; 11 DF
	sbc #$C8.b		; E9 C8
	brk $88.b		; 00 88
	ora ($DF.b),Y		; 11 DF
	cmp $02C8.w,Y		; D9 C8 02
	dey		; 88
	ora ($EF.b,X)		; 01 EF
	sbc #$C8.b		; E9 C8
	tsb $88.b		; 04 88
	sbc ($FF.b),Y		; F1 FF
	sbc #$C8.b		; E9 C8
	asl $88.b		; 06 88
	ora ($EF.b,X)		; 01 EF
	cmp $08C8.w,Y		; D9 C8 08
	dey		; 88
	cmp $E017.w,Y		; D9 17 E0
	iny		; C8
	asl A		; 0A
	dey		; 88
	trb $E4.b		; 14 E4
	sbc $0CC0.w,Y		; F9 C0 0C
	bra  12.b		; 80 0C
	cpx $C0F9.w		; EC F9 C0
	ora $0480.w		; 0D 80 04
	pea $C0F9.w		; F4 F9 C0
	asl $FC80.w		; 0E 80 FC
	jsr ($C0F9.w,X)		; FC F9 C0
	ora $FFF980.l		; 0F 80 F9 FF
	sbc ($C0.b,X)		; E1 C0
	trb $F180.w		; 1C 80 F1
	ora [$E1.b]		; 07 E1
	cpy #$1D.b		; C0 1D
	bra  -7.b		; 80 F9
	sbc $1EC0D9.l,X		; FF D9 C0 1E
	bra  -4.b		; 80 FC
	jsr ($C001.w,X)		; FC 01 C0
	ora $27D180.l,X		; 1F 80 D1 27
	inx		; E8
	cpy #$20.b		; C0 20
	bra -47.b		; 80 D1
	and [$E0.b]		; 27 E0
	cpy #$21.b		; C0 21
	bra -23.b		; 80 E9
	ora $22C0ED.l		; 0F ED C0 22
	bra -23.b		; 80 E9
	ora $23C0E5.l		; 0F E5 C0 23
	bra  21.b		; 80 15
	pea $EFFC.w		; F4 FC EF
	iny		; C8
	brk $88.b		; 00 88
	trb $DC.b		; 14 DC
	beq -56.b		; F0 C8
	cop $88.b		; 02 88
	ora [$E9.b]		; 07 E9
	cmp $8804C8.l,X		; DF C8 04 88
	sbc $C8E001.l		; EF 01 E0 C8
	asl $88.b		; 06 88
	cmp $C8E011.l,X		; DF 11 E0 C8
	php		; 08
	dey		; 88
	cpx $14.b		; E4 14
	beq -64.b		; F0 C0
	asl A		; 0A
	bra  44.b		; 80 2C
	cpy $C0E8.w		; CC E8 C0
	phd		; 0B
	bra   4.b		; 80 04
	pea $C0EF.w		; F4 EF C0
	tsb $2480.w		; 0C 80 24
	pei ($F0.b)		; D4 F0
	cpy #$0D.b		; C0 0D
	bra  36.b		; 80 24
	pei ($E8.b)		; D4 E8
	cpy #$0E.b		; C0 0E
	bra  28.b		; 80 1C
	jmp.w [$C0E8]		; DC E8 C0
	ora $E41480.l		; 0F 80 14 E4
	inx		; E8
	cpy #$1A.b		; C0 1A
	bra -23.b		; 80 E9
	ora $1BC0D8.l		; 0F D8 C0 1B
	bra  15.b		; 80 0F
	sbc #$D7.b		; E9 D7
	cpy #$1C.b		; C0 1C
	bra  12.b		; 80 0C
	cpx $C0EF.w		; EC EF C0
	ora $FF80.w,X		; 1D 80 FF
	sbc $C0E7.w,Y		; F9 E7 C0
	asl $FF80.w,X		; 1E 80 FF
	sbc $C0DF.w,Y		; F9 DF C0
	ora $21D780.l,X		; 1F 80 D7 21
	cmp $20C0.w,X		; DD C0 20
	bra  23.b		; 80 17
	sbc ($E0.b,X)		; E1 E0
	cpy #$21.b		; C0 21
	bra -20.b		; 80 EC
	tsb $C0F7.w		; 0C F7 C0
	jsl $0CEC80.l		; 22 80 EC 0C
	sbc $8023C0.l		; EF C0 23 80
	ora $F4FC.w		; 0D FC F4
	beq -56.b		; F0 C8
	brk $88.b		; 00 88
	ora #$E7.b		; 09 E7
	bne -56.b		; D0 C8
	cop $88.b		; 02 88
	sbc $D0F7.w,Y		; F9 F7 D0
	iny		; C8
	tsb $88.b		; 04 88
	sbc #$07.b		; E9 07
	bne -56.b		; D0 C8
	asl $88.b		; 06 88
	ora [$E9.b]		; 07 E9
	cpx #$C8.b		; E0 C8
	php		; 08
	dey		; 88
	sbc [$F9.b],Y		; F7 F9
	cpx #$C8.b		; E0 C8
	asl A		; 0A
	dey		; 88
	sbc [$09.b]		; E7 09
	cpx #$C8.b		; E0 C8
	tsb $E188.w		; 0C 88 E1
	ora [$D8.b],Y		; 17 D8
	cpy #$0E.b		; C0 0E
	bra -31.b		; 80 E1
	ora [$D0.b],Y		; 17 D0
	cpy #$0F.b		; C0 0F
	bra -33.b		; 80 DF
	ora $C0E0.w,Y		; 19 E0 C0
	asl $0C80.w,X		; 1E 80 0C
	cpx $C0F0.w		; EC F0 C0
	ora $1FD980.l,X		; 1F 80 D9 1F
	bne -64.b		; D0 C0
	jsr $E980.w		; 20 80 E9
	ora $21C0C8.l		; 0F C8 C0 21
	bra  22.b		; 80 16
	sbc $FB.b,X		; F5 FB
	cmp ($08.b),Y		; D1 08
	brk $48.b		; 00 48
	ora $EB.b		; 05 EB
	cmp ($08.b),Y		; D1 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	sbc ($08.b,X)		; E1 08
	tsb $48.b		; 04 48
	sbc ($FF.b),Y		; F1 FF
	sbc ($08.b),Y		; F1 08
	asl $48.b		; 06 48
	ora #$E7.b		; 09 E7
	cpx #$08.b		; E0 08
	php		; 08
	pha		; 48
	ora $F3.b		; 05 F3
	cmp #$00.b		; C9 00
	asl A		; 0A
	rti		; 40

	ora $C9EB.w		; 0D EB C9
	brk $0B.b		; 00 0B
	rti		; 40

	ora $E3.b,X		; 15 E3
	cmp ($00.b)		; D2 00
	tsb $1D40.w		; 0C 40 1D
	stp		; DB
	cmp ($00.b)		; D2 00
	ora $2540.w		; 0D 40 25
	cmp ($D2.b,S),Y		; D3 D2
	brk $0E.b		; 00 0E
	rti		; 40

	and $D2CB.w		; 2D CB D2
	brk $0F.b		; 00 0F
	rti		; 40

	sbc #$0F.b		; E9 0F
	sbc $1A00.w,Y		; F9 00 1A
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b,X)		; C1 00
	tas		; 1B
	rti		; 40

	tsb $C1EC.w		; 0C EC C1
	brk $1C.b		; 00 1C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b,X)		; E1 00
	ora $0140.w,X		; 1D 40 01
	sbc [$E9.b],Y		; F7 E9
	brk $1E.b		; 00 1E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b),Y		; F1 00
	ora $F70140.l,X		; 1F 40 01 F7
	sbc $2000.w,Y		; F9 00 20
	rti		; 40

	sbc $C9FB.w,X		; FD FB C9
	brk $21.b		; 00 21
	rti		; 40

	asl A		; 0A
	inc $00F8.w		; EE F8 00
	jsl $E61240.l		; 22 40 12 E6
	sed		; F8
	brk $23.b		; 00 23
	rti		; 40

	phd		; 0B
	sbc $00F0.w		; ED F0 00
	bit $40.b		; 24 40
	asl $F1.b,X		; 16 F1
	sbc $0008BA.l,X		; FF BA 08 00
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	tsx		; BA
	php		; 08
	cop $48.b		; 02 48
	sbc ($0F.b,X)		; E1 0F
	tyx		; BB
	php		; 08
	tsb $48.b		; 04 48
	xce		; FB
	sbc $AA.b,X		; F5 AA
	php		; 08
	asl $48.b		; 06 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b)		; D2 08
	php		; 08
	pha		; 48
	sbc $13.b		; E5 13
	wai		; CB
	brk $0A.b		; 00 0A
	rti		; 40

	clc		; 18
	cpx #$CB.b		; E0 CB
	brk $0B.b		; 00 0B
	rti		; 40

	trb $E4.b		; 14 E4
	cmp #$00.b		; C9 00
	tsb $0C40.w		; 0C 40 0C
	cpx $00C6.w		; EC C6 00
	ora $ED40.w		; 0D 40 ED
	phd		; 0B
	dex		; CA
	brk $0E.b		; 00 0E
	rti		; 40

	inc A		; 1A
	dec $00C7.w,X		; DE C7 00
	ora $05F340.l		; 0F 40 F3 05
	lda ($00.b)		; B2 00
	inc A		; 1A
	rti		; 40

	sbc $03.b,X		; F5 03
	dex		; CA
	brk $1B.b		; 00 1B
	rti		; 40

	sbc $CAFB.w,X		; FD FB CA
	brk $1C.b		; 00 1C
	rti		; 40

	phd		; 0B
	sbc $00AA.w		; ED AA 00
	ora $0B40.w,X		; 1D 40 0B
	sbc $00B2.w		; ED B2 00
	asl $EB40.w,X		; 1E 40 EB
	ora $00D2.w		; 0D D2 00
	ora $0DEB40.l,X		; 1F 40 EB 0D
	phx		; DA
	brk $20.b		; 00 20
	rti		; 40

	xba		; EB
	ora $00E2.w		; 0D E2 00
	and ($40.b,X)		; 21 40
	sbc ($05.b,S),Y		; F3 05
	sep #$00		; E2 00
	jsl $15E340.l		; 22 40 E3 15
	lda ($00.b,S),Y		; B3 00
	and $40.b,S		; 23 40
	xba		; EB
	ora $00B3.w		; 0D B3 00
	bit $40.b		; 24 40
	asl $F4.b,X		; 16 F4
	jsr ($08A5.w,X)		; FC A5 08
	brk $48.b		; 00 48
	tsb $EC.b		; 04 EC
	lda $08.b		; A5 08
	cop $48.b		; 02 48
	cpx $B504.w		; EC 04 B5
	php		; 08
	tsb $48.b		; 04 48
	jsr ($B5F4.w,X)		; FC F4 B5
	php		; 08
	asl $48.b		; 06 48
	cpx $C504.w		; EC 04 C5
	php		; 08
	php		; 08
	pha		; 48
	jsr ($C5F4.w,X)		; FC F4 C5
	php		; 08
	asl A		; 0A
	pha		; 48
	pea $EDFC.w		; F4 FC ED
	php		; 08
	tsb $F448.w		; 0C 48 F4
	jsr ($08DD.w,X)		; FC DD 08
	asl $0448.w		; 0E 48 04
	cpx $08DD.w		; EC DD 08
	jsr $0C48.w		; 20 48 0C
	cpx $00B5.w		; EC B5 00
	jsl $EC0C40.l		; 22 40 0C EC
	lda $2300.w,X		; BD 00 23
	rti		; 40

	tsb $C5EC.w		; 0C EC C5
	brk $24.b		; 00 24
	rti		; 40

	tsb $CDEC.w		; 0C EC CD
	brk $25.b		; 00 25
	rti		; 40

	cpx $D50C.w		; EC 0C D5
	brk $26.b		; 00 26
	rti		; 40

	pea $D504.w		; F4 04 D5
	brk $27.b		; 00 27
	rti		; 40

	jsr ($D5FC.w,X)		; FC FC D5
	brk $28.b		; 00 28
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $00.b,X		; D5 00
	and #$40.b		; 29 40
	tsb $D5EC.w		; 0C EC D5
	brk $2A.b		; 00 2A
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $2B00.w		; ED 00 2B
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $00.b,X		; F5 00
	bit $F840.w		; 2C 40 F8
	brk $FD.b		; 00 FD
	brk $2D.b		; 00 2D
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $2E00.w,X		; FD 00 2E
	rti		; 40

	asl $F4.b,X		; 16 F4
	jsr ($08A8.w,X)		; FC A8 08
	brk $48.b		; 00 48
	tsb $EC.b		; 04 EC
	tay		; A8
	php		; 08
	cop $48.b		; 02 48
	inx		; E8
	php		; 08
	cpy #$08.b		; C0 08
	tsb $48.b		; 04 48
	sed		; F8
	sed		; F8
	cpy #$08.b		; C0 08
	asl $48.b		; 06 48
	php		; 08
	inx		; E8
	cpy #$08.b		; C0 08
	php		; 08
	pha		; 48
	phd		; 0B
	sbc $D0.b		; E5 D0
	php		; 08
	asl A		; 0A
	pha		; 48
	xba		; EB
	ora $D0.b		; 05 D0
	php		; 08
	tsb $FB48.w		; 0C 48 FB
	sbc $D0.b,X		; F5 D0
	php		; 08
	asl $0C48.w		; 0E 48 0C
	cpx $00B8.w		; EC B8 00
	jsr $1440.w		; 20 40 14
	cpx $B8.b		; E4 B8
	brk $21.b		; 00 21
	rti		; 40

	cpx $B80C.w		; EC 0C B8
	brk $22.b		; 00 22
	rti		; 40

	trb $E4.b		; 14 E4
	tay		; A8
	brk $23.b		; 00 23
	rti		; 40

	trb $E4.b		; 14 E4
	bcs   0.b		; B0 00
	bit $40.b		; 24 40
	sbc $15.b,S		; E3 15
	cld		; D8
	brk $25.b		; 00 25
	rti		; 40

	pea $B804.w		; F4 04 B8
	brk $26.b		; 00 26
	rti		; 40

	jsr ($B8FC.w,X)		; FC FC B8
	brk $27.b		; 00 27
	rti		; 40

	tsb $F4.b		; 04 F4
	clv		; B8
	brk $28.b		; 00 28
	rti		; 40

	xba		; EB
	ora $00E0.w		; 0D E0 00
	and #$40.b		; 29 40
	sbc ($05.b,S),Y		; F3 05
	cpx #$00.b		; E0 00
	rol A		; 2A
	rti		; 40

	xce		; FB
	sbc $00E0.w,X		; FD E0 00
	pld		; 2B
	rti		; 40

	ora $F5.b,S		; 03 F5
	cpx #$00.b		; E0 00
	bit $0B40.w		; 2C 40 0B
	sbc $00E0.w		; ED E0 00
	and $2140.w		; 2D 40 21
	ora $08D3D1.l,X		; 1F D1 D3 08
	brk $48.b		; 00 48
	and $08D3C1.l		; 2F C1 D3 08
	cop $48.b		; 02 48
	and ($BD.b,S),Y		; 33 BD
	cmp $08.b,S		; C3 08
	tsb $48.b		; 04 48
	tas		; 1B
	cmp $BB.b,X		; D5 BB
	php		; 08
	asl $48.b		; 06 48
	and #$CF.b		; 29 CF
	lda ($00.b,S),Y		; B3 00
	php		; 08
	rti		; 40

	tas		; 1B
	cmp $00E3.w,X		; DD E3 00
	ora #$40.b		; 09 40
	and $D5.b,S		; 23 D5
	sbc $00.b,S		; E3 00
	asl A		; 0A
	rti		; 40

	pld		; 2B
	cmp $00E3.w		; CD E3 00
	phd		; 0B
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	stp		; DB
	brk $0C.b		; 00 0C
	rti		; 40

	and ($D7.b,X)		; 21 D7
	plb		; AB
	brk $0D.b		; 00 0D
	rti		; 40

	pld		; 2B
	cmp $00BB.w		; CD BB 00
	asl $3340.w		; 0E 40 33
	cmp $BB.b		; C5 BB
	brk $0F.b		; 00 0F
	rti		; 40

	pld		; 2B
	cmp $00C3.w		; CD C3 00
	clc		; 18
	rti		; 40

	tas		; 1B
	cmp $00CB.w,X		; DD CB 00
	ora $2340.w,Y		; 19 40 23
	cmp $CB.b,X		; D5 CB
	brk $1A.b		; 00 1A
	rti		; 40

	pld		; 2B
	cmp $00CB.w		; CD CB 00
	tas		; 1B
	rti		; 40

	ora $D1E3.w		; 0D E3 D1
	php		; 08
	trb $0D48.w		; 1C 48 0D
	sbc $E1.b,S		; E3 E1
	php		; 08
	asl $DD48.w,X		; 1E 48 DD
	ora ($C9.b,S),Y		; 13 C9
	php		; 08
	jsr $DD48.w		; 20 48 DD
	ora ($D9.b,S),Y		; 13 D9
	php		; 08
	jsl $03ED48.l		; 22 48 ED 03
	cmp #$08.b		; C9 08
	bit $48.b		; 24 48
	sbc $D903.w		; ED 03 D9
	php		; 08
	rol $48.b		; 26 48
	sbc $D9F3.w,X		; FD F3 D9
	php		; 08
	plp		; 28
	pha		; 48
	sbc ($0F.b,X)		; E1 0F
	lda $2A08.w,Y		; B9 08 2A
	pha		; 48
	sbc $C9FB.w,X		; FD FB C9
	brk $3C.b		; 00 3C
	rti		; 40

	sbc $D1FB.w,X		; FD FB D1
	brk $3D.b		; 00 3D
	rti		; 40

	sbc $E90B.w		; ED 0B E9
	brk $3E.b		; 00 3E
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc #$00.b		; E9 00
	and $FBFD40.l,X		; 3F 40 FD FB
	sbc #$00.b		; E9 00
	rti		; 40

	rti		; 40

	ora $F3.b		; 05 F3
	sbc #$00.b		; E9 00
	eor ($40.b,X)		; 41 40
	trb $E4.b		; 14 E4
	cmp #$00.b		; C9 00
	.db $42, $40		; 42 40
	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b),Y		; F1 00
	eor $40.b,S		; 43 40
	sbc ($05.b,S),Y		; F3 05
	sbc $4400.w,Y		; F9 00 44
	rti		; 40

	and $1C.b,S		; 23 1C
	pei ($C9.b)		; D4 C9
	php		; 08
	brk $48.b		; 00 48
	trb $D9D4.w		; 1C D4 D9
	php		; 08
	cop $48.b		; 02 48
	bit $C9C4.w		; 2C C4 C9
	php		; 08
	tsb $48.b		; 04 48
	ora $08B1D1.l,X		; 1F D1 B1 08
	asl $48.b		; 06 48
	bit $D1BC.w,X		; 3C BC D1
	brk $08.b		; 00 08
	rti		; 40

	bit $D9CC.w		; 2C CC D9
	brk $09.b		; 00 09
	rti		; 40

	bit $C4.b,X		; 34 C4
	cmp $0A00.w,Y		; D9 00 0A
	rti		; 40

	bit $D9BC.w,X		; 3C BC D9
	brk $0B.b		; 00 0B
	rti		; 40

	bit $E1CC.w		; 2C CC E1
	brk $0C.b		; 00 0C
	rti		; 40

	asl $ABDA.w,X		; 1E DA AB
	brk $0D.b		; 00 0D
	rti		; 40

	and [$C1.b],Y		; 37 C1
	cmp ($00.b,X)		; C1 00
	asl $3C40.w		; 0E 40 3C
	ldy $00C9.w,X		; BC C9 00
	ora $C92F40.l		; 0F 40 2F C9
	lda $1800.w,Y		; B9 00 18
	rti		; 40

	ora $00C1D9.l,X		; 1F D9 C1 00
	ora $2740.w,Y		; 19 40 27
	cmp ($C1.b),Y		; D1 C1
	brk $1A.b		; 00 1A
	rti		; 40

	and $00C1C9.l		; 2F C9 C1 00
	tas		; 1B
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	plb		; AB
	brk $1C.b		; 00 1C
	rti		; 40

	and ($C5.b,S),Y		; 33 C5
	cpx #$00.b		; E0 00
	ora $0D40.w,X		; 1D 40 0D
	sbc $D1.b,S		; E3 D1
	php		; 08
	asl $0D48.w,X		; 1E 48 0D
	sbc $E1.b,S		; E3 E1
	php		; 08
	jsr $DD48.w		; 20 48 DD
	ora ($C9.b,S),Y		; 13 C9
	php		; 08
	jsl $13DD48.l		; 22 48 DD 13
	cmp $2408.w,Y		; D9 08 24
	pha		; 48
	sbc $C903.w		; ED 03 C9
	php		; 08
	rol $48.b		; 26 48
	sbc $D903.w		; ED 03 D9
	php		; 08
	plp		; 28
	pha		; 48
	sbc $D9F3.w,X		; FD F3 D9
	php		; 08
	rol A		; 2A
	pha		; 48
	sbc ($0F.b,X)		; E1 0F
	lda $2C08.w,Y		; B9 08 2C
	pha		; 48
	sbc $C9FB.w,X		; FD FB C9
	brk $3E.b		; 00 3E
	rti		; 40

	sbc $D1FB.w,X		; FD FB D1
	brk $3F.b		; 00 3F
	rti		; 40

	sbc $E90B.w		; ED 0B E9
	brk $40.b		; 00 40
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc #$00.b		; E9 00
	eor ($40.b,X)		; 41 40
	sbc $E9FB.w,X		; FD FB E9
	brk $42.b		; 00 42
	rti		; 40

	ora $F3.b		; 05 F3
	sbc #$00.b		; E9 00
	eor $40.b,S		; 43 40
	trb $E4.b		; 14 E4
	cmp #$00.b		; C9 00
	mvp $F3,$40		; 44 40 F3
	ora $F1.b		; 05 F1
	brk $45.b		; 00 45
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc $4600.w,Y		; F9 00 46
	rti		; 40

	trb $D41C.w		; 1C 1C D4
	sep #$08		; E2 08
	brk $48.b		; 00 48
	trb $F2D4.w		; 1C D4 F2
	php		; 08
	cop $48.b		; 02 48
	bit $C4C4.w		; 2C C4 C4
	php		; 08
	tsb $48.b		; 04 48
	bit $D4C4.w		; 2C C4 D4
	php		; 08
	asl $48.b		; 06 48
	bit $E4C4.w		; 2C C4 E4
	php		; 08
	php		; 08
	pha		; 48
	bit $F4C4.w		; 2C C4 F4
	php		; 08
	asl A		; 0A
	pha		; 48
	bit $E2BC.w,X		; 3C BC E2
	brk $0C.b		; 00 0C
	rti		; 40

	bit $EABC.w,X		; 3C BC EA
	brk $0D.b		; 00 0D
	rti		; 40

	bit $F2BC.w,X		; 3C BC F2
	brk $0E.b		; 00 0E
	rti		; 40

	bit $FABC.w,X		; 3C BC FA
	brk $0F.b		; 00 0F
	rti		; 40

	bit $D4.b		; 24 D4
	phx		; DA
	brk $1C.b		; 00 1C
	rti		; 40

	bmi -56.b		; 30 C8
	ldy $1D00.w,X		; BC 00 1D
	rti		; 40

	pea $D9FC.w		; F4 FC D9
	php		; 08
	asl $0448.w,X		; 1E 48 04
	cpx $08D9.w		; EC D9 08
	jsr $EC48.w		; 20 48 EC
	tsb $E9.b		; 04 E9
	php		; 08
	jsl $F4FC48.l		; 22 48 FC F4
	sbc #$08.b		; E9 08
	bit $48.b		; 24 48
	tsb $E9E4.w		; 0C E4 E9
	php		; 08
	rol $48.b		; 26 48
	inc $FA.b,X		; F6 FA
	cmp #$08.b		; C9 08
	plp		; 28
	pha		; 48
	trb $E4.b		; 14 E4
	sbc ($00.b,X)		; E1 00
	rol A		; 2A
	rti		; 40

	cpx $F90C.w		; EC 0C F9
	brk $2B.b		; 00 2B
	rti		; 40

	pea $F904.w		; F4 04 F9
	brk $2C.b		; 00 2C
	rti		; 40

	jsr ($F9FC.w,X)		; FC FC F9
	brk $2D.b		; 00 2D
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $3A00.w,Y		; F9 00 3A
	rti		; 40

	tsb $F9EC.w		; 0C EC F9
	brk $3B.b		; 00 3B
	rti		; 40

	trb $E4.b		; 14 E4
	sbc $3C00.w,Y		; F9 00 3C
	rti		; 40

	cpx $14.b		; E4 14
	sbc $3D00.w,Y		; F9 00 3D
	rti		; 40

	asl $F2.b		; 06 F2
	cmp #$00.b		; C9 00
	rol $0640.w,X		; 3E 40 06
	sbc ($D1.b)		; F2 D1
	brk $3F.b		; 00 3F
	rti		; 40

	and ($1C.b,X)		; 21 1C
	pei ($E6.b)		; D4 E6
	php		; 08
	brk $48.b		; 00 48
	trb $F6D4.w		; 1C D4 F6
	php		; 08
	cop $48.b		; 02 48
	bit $E6C4.w		; 2C C4 E6
	php		; 08
	tsb $48.b		; 04 48
	bit $F6C4.w		; 2C C4 F6
	php		; 08
	asl $48.b		; 06 48
	bit $C0C4.w		; 2C C4 C0
	php		; 08
	php		; 08
	pha		; 48
	and $CD.b,S		; 23 CD
	dec $08.b,X		; D6 08
	asl A		; 0A
	pha		; 48
	and ($BD.b,S),Y		; 33 BD
	dec $08.b,X		; D6 08
	tsb $3C48.w		; 0C 48 3C
	ldy $00FE.w,X		; BC FE 00
	asl $3C40.w		; 0E 40 3C
	ldy $00E6.w,X		; BC E6 00
	ora $CB2D40.l		; 0F 40 2D CB
	lda $1E00.w,Y		; B9 00 1E
	rti		; 40

	plp		; 28
	bne -50.b		; D0 CE
	brk $1F.b		; 00 1F
	rti		; 40

	bmi -56.b		; 30 C8
	dec $2000.w		; CE 00 20
	rti		; 40

	sec		; 38
	cpy #$CE.b		; C0 CE
	brk $21.b		; 00 21
	rti		; 40

	rol A		; 2A
	dec $00AF.w		; CE AF 00
	jsl $BC3C40.l		; 22 40 3C BC
	inc $2300.w		; EE 00 23
	rti		; 40

	bit $F6BC.w,X		; 3C BC F6
	brk $24.b		; 00 24
	rti		; 40

	tas		; 1B
	cmp $00DF.w,X		; DD DF 00
	and $40.b		; 25 40
	pea $D9FC.w		; F4 FC D9
	php		; 08
	rol $48.b		; 26 48
	tsb $EC.b		; 04 EC
	cmp $2808.w,Y		; D9 08 28
	pha		; 48
	cpx $E904.w		; EC 04 E9
	php		; 08
	rol A		; 2A
	pha		; 48
	jsr ($E9F4.w,X)		; FC F4 E9
	php		; 08
	bit $0C48.w		; 2C 48 0C
	cpx $E9.b		; E4 E9
	php		; 08
	rol $F648.w		; 2E 48 F6
	plx		; FA
	cmp #$08.b		; C9 08
	bmi  72.b		; 30 48
	trb $E4.b		; 14 E4
	sbc ($00.b,X)		; E1 00
	and ($40.b)		; 32 40
	cpx $F90C.w		; EC 0C F9
	brk $33.b		; 00 33
	rti		; 40

	pea $F904.w		; F4 04 F9
	brk $34.b		; 00 34
	rti		; 40

	jsr ($F9FC.w,X)		; FC FC F9
	brk $35.b		; 00 35
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $4200.w,Y		; F9 00 42
	rti		; 40

	tsb $F9EC.w		; 0C EC F9
	brk $43.b		; 00 43
	rti		; 40

	trb $E4.b		; 14 E4
	sbc $4400.w,Y		; F9 00 44
	rti		; 40

	cpx $14.b		; E4 14
	sbc $4500.w,Y		; F9 00 45
	rti		; 40

	asl $F2.b		; 06 F2
	cmp #$00.b		; C9 00
	lsr $40.b		; 46 40
	asl $F2.b		; 06 F2
	cmp ($00.b),Y		; D1 00
	eor [$40.b]		; 47 40
	clc		; 18
	bit $F9CC.w		; 2C CC F9
	brk $00.b		; 00 00
	rti		; 40

	bit $F9BC.w,X		; 3C BC F9
	brk $01.b		; 00 01
	rti		; 40

	bit $C4.b,X		; 34 C4
	sbc ($00.b,S),Y		; F3 00
	cop $40.b		; 02 40
	bit $C4.b,X		; 34 C4
	xce		; FB
	brk $03.b		; 00 03
	rti		; 40

	trb $E6DC.w		; 1C DC E6
	brk $04.b		; 00 04
	rti		; 40

	trb $EEDC.w		; 1C DC EE
	brk $05.b		; 00 05
	rti		; 40

	trb $F6DC.w		; 1C DC F6
	brk $06.b		; 00 06
	rti		; 40

	bit $D4.b		; 24 D4
	sed		; F8
	brk $07.b		; 00 07
	rti		; 40

	pea $D9FC.w		; F4 FC D9
	php		; 08
	php		; 08
	pha		; 48
	tsb $EC.b		; 04 EC
	cmp $0A08.w,Y		; D9 08 0A
	pha		; 48
	cpx $E904.w		; EC 04 E9
	php		; 08
	tsb $FC48.w		; 0C 48 FC
	pea $08E9.w		; F4 E9 08
	asl $0C48.w		; 0E 48 0C
	cpx $E9.b		; E4 E9
	php		; 08
	bpl  72.b		; 10 48
	inc $FA.b,X		; F6 FA
	cmp #$08.b		; C9 08
	ora ($48.b)		; 12 48
	trb $E4.b		; 14 E4
	sbc ($00.b,X)		; E1 00
	trb $40.b		; 14 40
	cpx $F90C.w		; EC 0C F9
	brk $15.b		; 00 15
	rti		; 40

	pea $F904.w		; F4 04 F9
	brk $16.b		; 00 16
	rti		; 40

	jsr ($F9FC.w,X)		; FC FC F9
	brk $17.b		; 00 17
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $2400.w,Y		; F9 00 24
	rti		; 40

	tsb $F9EC.w		; 0C EC F9
	brk $25.b		; 00 25
	rti		; 40

	trb $E4.b		; 14 E4
	sbc $2600.w,Y		; F9 00 26
	rti		; 40

	cpx $14.b		; E4 14
	sbc $2700.w,Y		; F9 00 27
	rti		; 40

	asl $F2.b		; 06 F2
	cmp #$00.b		; C9 00
	plp		; 28
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b),Y		; D1 00
	and #$40.b		; 29 40
	ora ($DC.b),Y		; 11 DC
	trb $B3.b		; 14 B3
	php		; 08
	brk $48.b		; 00 48
	jsr ($ACF4.w,X)		; FC F4 AC
	php		; 08
	cop $48.b		; 02 48
	jsr ($BCF4.w,X)		; FC F4 BC
	php		; 08
	tsb $48.b		; 04 48
	jsr ($CCF4.w,X)		; FC F4 CC
	php		; 08
	asl $48.b		; 06 48
	cpx $B004.w		; EC 04 B0
	php		; 08
	php		; 08
	pha		; 48
	cpx $C004.w		; EC 04 C0
	php		; 08
	asl A		; 0A
	pha		; 48
	jmp.w [$C31C]		; DC 1C C3
	brk $0C.b		; 00 0C
	rti		; 40

	cpx $14.b		; E4 14
	cmp $00.b,S		; C3 00
	ora $0C40.w		; 0D 40 0C
	cpx $00BD.w		; EC BD 00
	asl $0C40.w		; 0E 40 0C
	cpx $00C5.w		; EC C5 00
	ora $EC0C40.l		; 0F 40 0C EC
	cmp $1C00.w		; CD 00 1C
	rti		; 40

	trb $E4.b		; 14 E4
	cmp $1D00.w		; CD 00 1D
	rti		; 40

	pea $A804.w		; F4 04 A8
	brk $1E.b		; 00 1E
	rti		; 40

	pea $D004.w		; F4 04 D0
	brk $1F.b		; 00 1F
	rti		; 40

	jsr ($DCFC.w,X)		; FC FC DC
	brk $20.b		; 00 20
	rti		; 40

	cpx $14.b		; E4 14
	wai		; CB
	brk $21.b		; 00 21
	rti		; 40

	bpl -24.b		; 10 E8
	cmp $00.b,X		; D5 00
	jsl $F41640.l		; 22 40 16 F4
	jsr ($08C7.w,X)		; FC C7 08
	brk $48.b		; 00 48
	cmp [$19.b],Y		; D7 19
	lda $480208.l		; AF 08 02 48
	sbc [$09.b]		; E7 09
	lda $480408.l		; AF 08 04 48
	sbc [$F9.b],Y		; F7 F9
	lda $480608.l		; AF 08 06 48
	jsr ($D7FC.w,X)		; FC FC D7
	brk $08.b		; 00 08
	rti		; 40

	trb $E4.b		; 14 E4
	cmp ($00.b)		; D2 00
	ora #$40.b		; 09 40
	tsb $F4.b		; 04 F4
	cmp [$00.b]		; C7 00
	asl A		; 0A
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $400B00.l		; CF 00 0B 40
	tsb $C8EC.w		; 0C EC C8
	brk $0C.b		; 00 0C
	rti		; 40

	tsb $D0EC.w		; 0C EC D0
	brk $0D.b		; 00 0D
	rti		; 40

	trb $D3DC.w		; 1C DC D3
	brk $0E.b		; 00 0E
	rti		; 40

	bit $D4.b		; 24 D4
	pei ($00.b)		; D4 00
	ora $CC2C40.l		; 0F 40 2C CC
	dec $00.b,X		; D6 00
	clc		; 18
	rti		; 40

	cmp [$21.b],Y		; D7 21
	lda $401900.l,X		; BF 00 19 40
	cmp $00BF19.l,X		; DF 19 BF 00
	inc A		; 1A
	rti		; 40

	sbc [$11.b]		; E7 11
	lda $401B00.l,X		; BF 00 1B 40
	sbc $00BF09.l		; EF 09 BF 00
	trb $F740.w		; 1C 40 F7
	ora ($BF.b,X)		; 01 BF
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $00BFF9.l,X		; FF F9 BF 00
	asl $0740.w,X		; 1E 40 07
	sbc ($C0.b),Y		; F1 C0
	brk $1F.b		; 00 1F
	rti		; 40

	phx		; DA
	asl $00C7.w,X		; 1E C7 00
	jsr $E240.w		; 20 40 E2
	asl $C7.b,X		; 16 C7
	brk $21.b		; 00 21
	rti		; 40

	ora ($F4.b),Y		; 11 F4
	jsr ($08DF.w,X)		; FC DF 08
	brk $48.b		; 00 48
	cpx $BF04.w		; EC 04 BF
	php		; 08
	cop $48.b		; 02 48
	jsr ($BFF4.w,X)		; FC F4 BF
	php		; 08
	tsb $48.b		; 04 48
	pea $CFFC.w		; F4 FC CF
	php		; 08
	asl $48.b		; 06 48
	tsb $EC.b		; 04 EC
	cmp $480808.l		; CF 08 08 48
	sbc $FB.b,X		; F5 FB
	lda [$08.b]		; A7 08
	asl A		; 0A
	pha		; 48
	tsb $C7EC.w		; 0C EC C7
	brk $0C.b		; 00 0C
	rti		; 40

	cpx $CF0C.w		; EC 0C CF
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $400E00.l,X		; DF 00 0E 40
	trb $E4.b		; 14 E4
	cmp [$00.b]		; C7 00
	ora $F30540.l		; 0F 40 05 F3
	lda [$00.b]		; A7 00
	trb $0540.w		; 1C 40 05
	sbc ($AF.b,S),Y		; F3 AF
	brk $1D.b		; 00 1D
	rti		; 40

	beq   8.b		; F0 08
	lda [$00.b],Y		; B7 00
	asl $F840.w,X		; 1E 40 F8
	brk $B7.b		; 00 B7
	brk $1F.b		; 00 1F
	rti		; 40

	brk $F8.b		; 00 F8
	lda [$00.b],Y		; B7 00
	jsr $FB40.w		; 20 40 FB
	sbc $00EF.w,X		; FD EF 00
	and ($40.b,X)		; 21 40
	xce		; FB
	sbc $00F7.w,X		; FD F7 00
	jsl $EC1740.l		; 22 40 17 EC
	tsb $A1.b		; 04 A1
	php		; 08
	brk $48.b		; 00 48
	jsr ($A1F4.w,X)		; FC F4 A1
	php		; 08
	cop $48.b		; 02 48
	sbc $E103.w		; ED 03 E1
	php		; 08
	tsb $48.b		; 04 48
	sbc $E1F3.w,X		; FD F3 E1
	php		; 08
	asl $48.b		; 06 48
	ora #$E7.b		; 09 E7
	cmp ($08.b,X)		; C1 08
	php		; 08
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cmp ($08.b),Y		; D1 08
	asl A		; 0A
	pha		; 48
	sbc $C1F7.w,Y		; F9 F7 C1
	php		; 08
	tsb $E948.w		; 0C 48 E9
	ora [$C1.b]		; 07 C1
	php		; 08
	asl $E948.w		; 0E 48 E9
	ora [$D1.b]		; 07 D1
	php		; 08
	jsr $EA48.w		; 20 48 EA
	asl $B1.b		; 06 B1
	php		; 08
	jsl $F6FA48.l		; 22 48 FA F6
	lda ($08.b),Y		; B1 08
	bit $48.b		; 24 48
	asl A		; 0A
	inc $B1.b		; E6 B1
	php		; 08
	rol $48.b		; 26 48
	sbc ($FD.b,S),Y		; F3 FD
	sbc ($08.b),Y		; F1 08
	plp		; 28
	pha		; 48
	sbc $0099F9.l,X		; FF F9 99 00
	rol A		; 2A
	rti		; 40

	sed		; F8
	brk $01.b		; 00 01
	brk $2B.b		; 00 2B
	rti		; 40

	sbc $D1FF.w,Y		; F9 FF D1
	brk $2C.b		; 00 2C
	rti		; 40

	sbc $D9FF.w,Y		; F9 FF D9
	brk $2D.b		; 00 2D
	rti		; 40

	sbc ($17.b,X)		; E1 17
	dex		; CA
	brk $2E.b		; 00 2E
	rti		; 40

	ora $C1DF.w,Y		; 19 DF C1
	brk $2F.b		; 00 2F
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sta ($00.b),Y		; 91 00
	dec A		; 3A
	rti		; 40

	sbc $009909.l		; EF 09 99 00
	tsa		; 3B
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b),Y		; F1 00
	bit $F740.w,X		; 3C 40 F7
	ora ($99.b,X)		; 01 99
	brk $3D.b		; 00 3D
	rti		; 40

	inc A		; 1A
	sbc ($0F.b,X)		; E1 0F
	lda $480008.l,X		; BF 08 00 48
	ora ($EF.b,X)		; 01 EF
	lda $480208.l,X		; BF 08 02 48
	sbc ($FF.b),Y		; F1 FF
	lda $480408.l,X		; BF 08 04 48
	nop		; EA
	asl $AF.b		; 06 AF
	php		; 08
	asl $48.b		; 06 48
	plx		; FA
	inc $AF.b,X		; F6 AF
	php		; 08
	php		; 08
	pha		; 48
	xce		; FB
	sbc $9F.b,X		; F5 9F
	php		; 08
	asl A		; 0A
	pha		; 48
	ora ($E7.b),Y		; 11 E7
	cmp [$00.b]		; C7 00
	tsb $F940.w		; 0C 40 F9
	sbc $0D00EF.l,X		; FF EF 00 0D
	rti		; 40

	cpx $D70C.w		; EC 0C D7
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $D7FB.w,X		; FD FB D7
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp $401C00.l,X		; DF 00 1C 40
	sbc #$0F.b		; E9 0F
	cmp $401D00.l		; CF 00 1D 40
	sbc ($07.b),Y		; F1 07
	cmp $401E00.l		; CF 00 1E 40
	sbc $CFFF.w,Y		; F9 FF CF
	brk $1F.b		; 00 1F
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $402000.l		; CF 00 20 40
	ora ($E6.b)		; 12 E6
	lda $402100.l		; AF 00 21 40
	plx		; FA
	inc $00E7.w,X		; FE E7 00
	jsl $FBFD40.l		; 22 40 FD FB
	cmp $402300.l,X		; DF 00 23 40
	sbc [$01.b],Y		; F7 01
	sbc [$00.b],Y		; F7 00
	bit $40.b		; 24 40
	asl A		; 0A
	inc $00AF.w		; EE AF 00
	and $40.b		; 25 40
	asl A		; 0A
	inc $00B7.w		; EE B7 00
	rol $40.b		; 26 40
	tas		; 1B
	cmp $009C.w,X		; DD 9C 00
	and [$40.b]		; 27 40
	tas		; 1B
	cmp $00A4.w,X		; DD A4 00
	plp		; 28
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	lda [$00.b]		; A7 00
	and #$40.b		; 29 40
	ora ($E5.b,S),Y		; 13 E5
	lda [$00.b]		; A7 00
	rol A		; 2A
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc $402B00.l,X		; FF 00 2B 40
	ora $8AC5.w,X		; 1D C5 8A
	cmp $09.b		; C5 09
	dec $52.b		; C6 52
	dec $AD.b		; C6 AD
	dec $14.b		; C6 14
	cmp [$4B.b]		; C7 4B
	cmp [$A0.b]		; C7 A0
	cmp [$E9.b]		; C7 E9
	cmp [$2C.b]		; C7 2C
	iny		; C8
	sta ($C8.b,X)		; 81 C8
	bit $C9.b		; 24 C9
	lda #$C9.b		; A9 C9
	asl A		; 0A
	dex		; CA
	eor [$CA.b]		; 47 CA
	tay		; A8
	dex		; CA
	sbc ($CA.b),Y		; F1 CA
	lsr $CB.b		; 46 CB
	sta $CBE4CB.l		; 8F CB E4 CB
	and $BECC.w,Y		; 39 CC BE
	cpy $CD2B.w		; CC 2B CD
	sta ($CD.b)		; 92 CD
	cmp #$CD.b		; C9 CD
	rol A		; 2A
	dec $CE85.w		; CE 85 CE
	sed		; F8
	dec $CF7D.w		; CE 7D CF
	beq -49.b		; F0 CF
	eor $D0.b		; 45 D0
	sty $D0.b,X		; 94 D0
	sbc $D15CD0.l		; EF D0 5C D1
	lda ($D1.b),Y		; B1 D1
	bmi -46.b		; 30 D2
	adc $DAD2.w,Y		; 79 D2 DA
	cmp ($41.b)		; D2 41
	cmp ($B4.b,S),Y		; D3 B4
	cmp ($0F.b,S),Y		; D3 0F
	pei ($82.b)		; D4 82
	pei ($D7.b)		; D4 D7
	pei ($32.b)		; D4 32
	cmp $8D.b,X		; D5 8D
	cmp $D6.b,X		; D5 D6
	cmp $25.b,X		; D5 25
	dec $74.b,X		; D6 74
	dec $DB.b,X		; D6 DB
	dec $48.b,X		; D6 48
	cmp [$91.b],Y		; D7 91
	cmp [$F8.b],Y		; D7 F8
	cmp [$41.b],Y		; D7 41
	cld		; D8
	stx $D8.b,Y		; 96 D8
	cmp $D946D8.l,X		; DF D8 46 D9
	lda [$D9.b]		; A7 D9
	rol $DA.b		; 26 DA
	eor $BEDA.w,X		; 5D DA BE
	phx		; DA
	ora [$DB.b]		; 07 DB
	stz $DB.b,X		; 74 DB
	lda [$DB.b],Y		; B7 DB
	asl $DC.b		; 06 DC
	eor $DC92DC.l		; 4F DC 92 DC
	ora ($DD.b),Y		; 11 DD
	ror $EBDD.w,X		; 7E DD EB
	cmp $DE3A.w,X		; DD 3A DE
	lda $DF7ADE.l,X		; BF DE 7A DF
	sbc [$DF.b]		; E7 DF
	lsr $A9E0.w		; 4E E0 A9
	cpx #$10.b		; E0 10
	sbc ($B9.b,X)		; E1 B9
	sbc ($26.b,X)		; E1 26
.ACCU 8
	sep #$6F		; E2 6F
	sep #$CA		; E2 CA
.INDEX 8
	sep #$1F		; E2 1F
	sbc $8C.b,S		; E3 8C
	sbc $D5.b,S		; E3 D5
	sbc $30.b,S		; E3 30
	cpx $85.b		; E4 85
	cpx $CE.b		; E4 CE
	cpx $3B.b		; E4 3B
	sbc $84.b		; E5 84
	sbc $DF.b		; E5 DF
	sbc $34.b		; E5 34
	inc $7D.b		; E6 7D
	inc $C0.b		; E6 C0
	inc $0F.b		; E6 0F
	sbc [$76.b]		; E7 76
	sbc [$BF.b]		; E7 BF
	sbc [$14.b]		; E7 14
	inx		; E8
	tda		; 7B
	inx		; E8
	bit $E9.b		; 24 E9
	adc ($E9.b,S),Y		; 73 E9
	ldx $E9.b,Y		; B6 E9
	ora $EA.b		; 05 EA
	rts		; 60

	nop		; EA
	lda $EE12EA.l		; AF EA 12 EE
	cop $C1.b		; 02 C1
	php		; 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	cmp $0208.w,Y		; D9 08 02
	pha		; 48
	ora $F3.b		; 05 F3
	sed		; F8
	brk $04.b		; 00 04
	rti		; 40

	inc $12.b		; E6 12
	cmp #$00.b		; C9 00
	ora $40.b		; 05 40
	inc $02.b,X		; F6 02
	sbc ($00.b),Y		; F1 00
	asl $40.b		; 06 40
	ora $F5.b,S		; 03 F5
	sbc ($00.b),Y		; F1 00
	ora [$40.b]		; 07 40
	inc $C1FA.w,X		; FE FA C1
	brk $08.b		; 00 08
	rti		; 40

	inc $C9FA.w,X		; FE FA C9
	brk $09.b		; 00 09
	rti		; 40

	inc $D10A.w		; EE 0A D1
	brk $0A.b		; 00 0A
	rti		; 40

	inc $02.b,X		; F6 02
	cmp ($00.b),Y		; D1 00
	phd		; 0B
	rti		; 40

	inc $D1FA.w,X		; FE FA D1
	brk $0C.b		; 00 0C
	rti		; 40

	asl $F2.b		; 06 F2
	cmp $00.b		; C5 00
	ora $0640.w		; 0D 40 06
	sbc ($CD.b)		; F2 CD
	brk $0E.b		; 00 0E
	rti		; 40

	beq   8.b		; F0 08
	cmp $0F00.w,Y		; D9 00 0F
	rti		; 40

	php		; 08
	beq -39.b		; F0 D9
	brk $14.b		; 00 14
	rti		; 40

	sed		; F8
	brk $E9.b		; 00 E9
	brk $15.b		; 00 15
	rti		; 40

	pea $F904.w		; F4 04 F9
	brk $16.b		; 00 16
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc #$00.b		; E9 00
	ora [$40.b],Y		; 17 40
	ora $EB.b,X		; 15 EB
	ora $C0.b		; 05 C0
	php		; 08
	brk $48.b		; 00 48
	xce		; FB
	sbc $C0.b,X		; F5 C0
	php		; 08
	cop $48.b		; 02 48
	ora $F5.b,S		; 03 F5
	cpx #$00.b		; E0 00
	tsb $40.b		; 04 40
	sbc ($05.b,S),Y		; F3 05
	brk $00.b		; 00 00
	ora $40.b		; 05 40
	sbc ($05.b,S),Y		; F3 05
	cpx #$00.b		; E0 00
	asl $40.b		; 06 40
	xce		; FB
	sbc $00E0.w,X		; FD E0 00
	ora [$40.b]		; 07 40
	xba		; EB
	ora $00D0.w		; 0D D0 00
	php		; 08
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	bne   0.b		; D0 00
	ora #$40.b		; 09 40
	xce		; FB
	sbc $00D0.w,X		; FD D0 00
	asl A		; 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	bne   0.b		; D0 00
	phd		; 0B
	rti		; 40

	pea $F804.w		; F4 04 F8
	brk $0C.b		; 00 0C
	rti		; 40

	inc $02.b,X		; F6 02
	beq   0.b		; F0 00
	ora $F740.w		; 0D 40 F7
	ora ($E8.b,X)		; 01 E8
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $00E8F9.l,X		; FF F9 E8 00
	ora $F00840.l		; 0F 40 08 F0
	dec $00.b,X		; D6 00
	trb $40.b		; 14 40
	beq   8.b		; F0 08
	cld		; D8
	brk $15.b		; 00 15
	rti		; 40

	sed		; F8
	brk $D8.b		; 00 D8
	brk $16.b		; 00 16
	rti		; 40

	brk $F8.b		; 00 F8
	cld		; D8
	brk $17.b		; 00 17
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	beq   0.b		; F0 00
	clc		; 18
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sed		; F8
	brk $19.b		; 00 19
	rti		; 40

	ora #$EF.b		; 09 EF
	sed		; F8
	brk $1A.b		; 00 1A
	rti		; 40

	tsb $F9F7.w		; 0C F7 F9
	cmp ($08.b,X)		; C1 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	cmp ($08.b),Y		; D1 08
	cop $48.b		; 02 48
	ora [$E9.b]		; 07 E9
	rep #$08		; C2 08
	tsb $48.b		; 04 48
	ora [$E9.b]		; 07 E9
	cmp ($08.b)		; D2 08
	asl $48.b		; 06 48
	ora $F5.b,S		; 03 F5
	sbc ($00.b),Y		; F1 00
	php		; 08
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc $0900.w,Y		; F9 00 09
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $0A00.w,Y		; F9 00 0A
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($00.b),Y		; F1 00
	phd		; 0B
	rti		; 40

	sed		; F8
	brk $E1.b		; 00 E1
	brk $0C.b		; 00 0C
	rti		; 40

	brk $F8.b		; 00 F8
	sbc ($00.b,X)		; E1 00
	ora $F840.w		; 0D 40 F8
	brk $E9.b		; 00 E9
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc #$00.b		; E9 00
	ora $F50F40.l		; 0F 40 0F F5
	xce		; FB
	stp		; DB
	php		; 08
	brk $48.b		; 00 48
	ora $EB.b		; 05 EB
	cmp ($08.b,S),Y		; D3 08
	cop $48.b		; 02 48
	sbc $FB.b,X		; F5 FB
	wai		; CB
	php		; 08
	tsb $48.b		; 04 48
	sbc ($05.b,S),Y		; F3 05
	plx		; FA
	brk $06.b		; 00 06
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b)		; F2 00
	ora [$40.b]		; 07 40
	sbc $DB0B.w		; ED 0B DB
	brk $08.b		; 00 08
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp $00.b,S		; C3 00
	ora #$40.b		; 09 40
	sbc $C3FB.w,X		; FD FB C3
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F3.b		; 05 F3
	cmp $00.b,S		; C3 00
	phd		; 0B
	rti		; 40

	ora $F3.b		; 05 F3
	wai		; CB
	brk $0C.b		; 00 0C
	rti		; 40

	ora $CBEB.w		; 0D EB CB
	brk $0D.b		; 00 0D
	rti		; 40

	ora $F3.b		; 05 F3
	sed		; F8
	brk $0E.b		; 00 0E
	rti		; 40

	inc $02.b,X		; F6 02
	nop		; EA
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $00EAF9.l,X		; FF F9 EA 00
	asl $40.b,X		; 16 40
	brk $F8.b		; 00 F8
	sbc ($00.b)		; F2 00
	ora [$40.b],Y		; 17 40
	ora ($EC.b),Y		; 11 EC
	tsb $D1.b		; 04 D1
	php		; 08
	brk $48.b		; 00 48
	sbc $FB.b,X		; F5 FB
	sbc #$08.b		; E9 08
	cop $48.b		; 02 48
	jsr ($D1FC.w,X)		; FC FC D1
	brk $04.b		; 00 04
	rti		; 40

	jsr ($D9FC.w,X)		; FC FC D9
	brk $05.b		; 00 05
	rti		; 40

	cpx $E10C.w		; EC 0C E1
	brk $06.b		; 00 06
	rti		; 40

	pea $E104.w		; F4 04 E1
	brk $07.b		; 00 07
	rti		; 40

	jsr ($E1FC.w,X)		; FC FC E1
	brk $08.b		; 00 08
	rti		; 40

	tsb $F4.b		; 04 F4
	pei ($00.b)		; D4 00
	ora #$40.b		; 09 40
	tsb $F4.b		; 04 F4
	jmp.w [$0A00]		; DC 00 0A
	rti		; 40

	sbc $E90B.w		; ED 0B E9
	brk $0B.b		; 00 0B
	rti		; 40

	xce		; FB
	sbc $00C9.w,X		; FD C9 00
	tsb $F540.w		; 0C 40 F5
	ora $F9.b,S		; 03 F9
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $F9FB.w,X		; FD FB F9
	brk $0E.b		; 00 0E
	rti		; 40

	ora $F3.b		; 05 F3
	inx		; E8
	brk $0F.b		; 00 0F
	rti		; 40

	ora $F3.b		; 05 F3
	beq   0.b		; F0 00
	trb $40.b		; 14 40
	ora $F3.b		; 05 F3
	sed		; F8
	brk $15.b		; 00 15
	rti		; 40

	inc $12.b		; E6 12
	phx		; DA
	brk $16.b		; 00 16
	rti		; 40

	ora #$02.b		; 09 02
	inc $08D1.w		; EE D1 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	sbc ($08.b,X)		; E1 08
	cop $48.b		; 02 48
	ora ($DE.b)		; 12 DE
	sbc $0408.w		; ED 08 04
	pha		; 48
	sbc ($FE.b)		; F2 FE
	bne   8.b		; D0 08
	asl $48.b		; 06 48
	sbc ($FE.b)		; F2 FE
	cpx #$08.b		; E0 08
	php		; 08
	pha		; 48
	cop $F6.b		; 02 F6
	sbc ($00.b),Y		; F1 00
	asl A		; 0A
	rti		; 40

	plx		; FA
	inc $00F0.w,X		; FE F0 00
	phd		; 0B
	rti		; 40

	asl A		; 0A
	inc $00F1.w		; EE F1 00
	tsb $1240.w		; 0C 40 12
	inc $E5.b		; E6 E5
	brk $0D.b		; 00 0D
	rti		; 40

	asl $FEF2.w		; 0E F2 FE
	sbc ($08.b,X)		; E1 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	sbc ($08.b,X)		; E1 08
	cop $48.b		; 02 48
	sbc ($FE.b)		; F2 FE
	sbc ($08.b),Y		; F1 08
	tsb $48.b		; 04 48
	sep #$0E		; E2 0E
	phx		; DA
	php		; 08
	asl $48.b		; 06 48
	sbc ($06.b)		; F2 06
	cmp $0800.w,Y		; D9 00 08
	rti		; 40

	cop $F6.b		; 02 F6
	sbc ($00.b),Y		; F1 00
	ora #$40.b		; 09 40
	asl A		; 0A
	inc $00F1.w		; EE F1 00
	asl A		; 0A
	rti		; 40

	cop $F6.b		; 02 F6
	sbc $0B00.w,Y		; F9 00 0B
	rti		; 40

	asl A		; 0A
	inc $00D9.w		; EE D9 00
	tsb $E240.w		; 0C 40 E2
	asl $EA.b,X		; 16 EA
	brk $0D.b		; 00 0D
	rti		; 40

	nop		; EA
	asl $00EA.w		; 0E EA 00
	asl $1A40.w		; 0E 40 1A
	dec $00DE.w,X		; DE DE 00
	ora $E61240.l		; 0F 40 12 E6
	inc $00.b		; E6 00
	clc		; 18
	rti		; 40

	inc A		; 1A
	dec $00E6.w,X		; DE E6 00
	ora $0C40.w,Y		; 19 40 0C
	sbc $0D.b,S		; E3 0D
	beq   8.b		; F0 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	beq   8.b		; F0 08
	cop $48.b		; 02 48
	ora $ED.b,S		; 03 ED
	beq   8.b		; F0 08
	tsb $48.b		; 04 48
	and $D5.b,S		; 23 D5
	sed		; F8
	brk $06.b		; 00 06
	rti		; 40

	tas		; 1B
	cmp $00F8.w,X		; DD F8 00
	ora [$40.b]		; 07 40
	ora ($E5.b,S),Y		; 13 E5
	beq   0.b		; F0 00
	php		; 08
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	sed		; F8
	brk $09.b		; 00 09
	rti		; 40

	sbc $13.b		; E5 13
	brk $00.b		; 00 00
	asl A		; 0A
	rti		; 40

	sbc $000B.w		; ED 0B 00
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $03.b,X		; F5 03
	brk $00.b		; 00 00
	tsb $FD40.w		; 0C 40 FD
	xce		; FB
	brk $00.b		; 00 00
	ora $0540.w		; 0D 40 05
	sbc ($00.b,S),Y		; F3 00
	brk $0E.b		; 00 0E
	rti		; 40

	phd		; 0B
	sbc ($FE.b)		; F2 FE
	sbc #$08.b		; E9 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	sbc #$08.b		; E9 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	cmp $0408.w,Y		; D9 08 04
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cmp $0608.w,Y		; D9 08 06
	pha		; 48
	sbc ($06.b)		; F2 06
	sbc $0800.w,Y		; F9 00 08
	rti		; 40

	plx		; FA
	inc $00F9.w,X		; FE F9 00
	ora #$40.b		; 09 40
	cop $F6.b		; 02 F6
	sbc $0A00.w,Y		; F9 00 0A
	rti		; 40

	asl A		; 0A
	inc $00F9.w		; EE F9 00
	phd		; 0B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	ora ($00.b,X)		; 01 00
	tsb $EA40.w		; 0C 40 EA
	asl $00E9.w		; 0E E9 00
	ora $1240.w		; 0D 40 12
	inc $F9.b		; E6 F9
	brk $0E.b		; 00 0E
	rti		; 40

	asl $E20E.w		; 0E 0E E2
	sbc ($08.b),Y		; F1 08
	brk $48.b		; 00 48
	inc $0A.b		; E6 0A
	sbc #$08.b		; E9 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	sbc #$08.b		; E9 08
	tsb $48.b		; 04 48
	asl A		; 0A
	inc $00E1.w		; EE E1 00
	asl $40.b		; 06 40
	sbc ($06.b)		; F2 06
	sbc ($00.b,X)		; E1 00
	ora [$40.b]		; 07 40
	plx		; FA
	inc $00E1.w,X		; FE E1 00
	php		; 08
	rti		; 40

	cop $F6.b		; 02 F6
	sbc ($00.b,X)		; E1 00
	ora #$40.b		; 09 40
	asl $F2.b		; 06 F2
	sbc #$00.b		; E9 00
	asl A		; 0A
	rti		; 40

	asl $E9EA.w		; 0E EA E9
	brk $0B.b		; 00 0B
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b),Y		; F1 00
	tsb $E640.w		; 0C 40 E6
	ora ($F9.b)		; 12 F9
	brk $0D.b		; 00 0D
	rti		; 40

	inc $F90A.w		; EE 0A F9
	brk $0E.b		; 00 0E
	rti		; 40

	inc $02.b,X		; F6 02
	sbc $0F00.w,Y		; F9 00 0F
	rti		; 40

	inc $F9FA.w,X		; FE FA F9
	brk $16.b		; 00 16
	rti		; 40

	tas		; 1B
	xba		; EB
	ora $C1.b		; 05 C1
	php		; 08
	brk $48.b		; 00 48
	xce		; FB
	sbc $C1.b,X		; F5 C1
	php		; 08
	cop $48.b		; 02 48
	phd		; 0B
	sbc $C1.b		; E5 C1
	php		; 08
	tsb $48.b		; 04 48
	tsb $EC.b		; 04 EC
	sbc ($08.b),Y		; F1 08
	asl $48.b		; 06 48
	cpx $F104.w		; EC 04 F1
	php		; 08
	php		; 08
	pha		; 48
	inx		; E8
	php		; 08
	cmp ($08.b),Y		; D1 08
	asl A		; 0A
	pha		; 48
	bpl -32.b		; 10 E0
	cmp ($08.b),Y		; D1 08
	tsb $F048.w		; 0C 48 F0
	brk $E1.b		; 00 E1
	php		; 08
	asl $F848.w		; 0E 48 F8
	sed		; F8
	cmp ($08.b),Y		; D1 08
	jsr $0048.w		; 20 48 00
	beq -31.b		; F0 E1
	php		; 08
	jsl $04F448.l		; 22 48 F4 04
	ora ($00.b,X)		; 01 00
	bit $40.b		; 24 40
	jsr ($01FC.w,X)		; FC FC 01
	brk $25.b		; 00 25
	rti		; 40

	asl $F2.b		; 06 F2
	ora ($00.b,X)		; 01 00
	rol $40.b		; 26 40
	asl $01EA.w		; 0E EA 01
	brk $27.b		; 00 27
	rti		; 40

	beq   8.b		; F0 08
	lda $2800.w,Y		; B9 00 28
	rti		; 40

	sed		; F8
	brk $B9.b		; 00 B9
	brk $29.b		; 00 29
	rti		; 40

	brk $F8.b		; 00 F8
	lda $2A00.w,Y		; B9 00 2A
	rti		; 40

	php		; 08
	beq -71.b		; F0 B9
	brk $2B.b		; 00 2B
	rti		; 40

	sbc $15.b,S		; E3 15
	cmp #$00.b		; C9 00
	bit $0440.w		; 2C 40 04
	pea $00B1.w		; F4 B1 00
	and $FC40.w		; 2D 40 FC
	jsr ($00F1.w,X)		; FC F1 00
	rol $FC40.w		; 2E 40 FC
	jsr ($00F9.w,X)		; FC F9 00
	and $0CEC40.l		; 2F 40 EC 0C
	ora ($00.b,X)		; 01 00
	bit $40.b,X		; 34 40
	php		; 08
	beq -47.b		; F0 D1
	brk $35.b		; 00 35
	rti		; 40

	php		; 08
	beq -39.b		; F0 D9
	brk $36.b		; 00 36
	rti		; 40

	bpl -24.b		; 10 E8
	sbc ($00.b,X)		; E1 00
	and [$40.b],Y		; 37 40
	bpl -24.b		; 10 E8
	sbc #$00.b		; E9 00
	sec		; 38
	rti		; 40

	asl $EA.b,X		; 16 EA
	asl $B9.b		; 06 B9
	php		; 08
	brk $48.b		; 00 48
	plx		; FA
	inc $B9.b,X		; F6 B9
	php		; 08
	cop $48.b		; 02 48
	nop		; EA
	asl $C9.b		; 06 C9
	php		; 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $C9.b,X		; F6 C9
	php		; 08
	asl $48.b		; 06 48
	asl A		; 0A
	inc $D1.b		; E6 D1
	php		; 08
	php		; 08
	pha		; 48
	nop		; EA
	asl $D9.b		; 06 D9
	php		; 08
	asl A		; 0A
	pha		; 48
	plx		; FA
	inc $D9.b,X		; F6 D9
	php		; 08
	tsb $EA48.w		; 0C 48 EA
	asl $E9.b		; 06 E9
	php		; 08
	asl $FA48.w		; 0E 48 FA
	inc $E9.b,X		; F6 E9
	php		; 08
	jsr $0A48.w		; 20 48 0A
	inc $00B9.w		; EE B9 00
	jsl $EE0A40.l		; 22 40 0A EE
	cmp ($00.b,X)		; C1 00
	and $40.b,S		; 23 40
	asl A		; 0A
	inc $00C9.w		; EE C9 00
	bit $40.b		; 24 40
	asl A		; 0A
	inc $00E1.w		; EE E1 00
	and $40.b		; 25 40
	asl A		; 0A
	inc $00E9.w		; EE E9 00
	rol $40.b		; 26 40
	sbc ($06.b)		; F2 06
	sbc $2700.w,Y		; F9 00 27
	rti		; 40

	plx		; FA
	inc $00F9.w,X		; FE F9 00
	plp		; 28
	rti		; 40

	cop $F6.b		; 02 F6
	sbc $2900.w,Y		; F9 00 29
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	cmp $00.b,S		; C3 00
	rol A		; 2A
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	wai		; CB
	brk $2B.b		; 00 2B
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	cmp ($00.b,S),Y		; D3 00
	bit $E240.w		; 2C 40 E2
	asl $DB.b,X		; 16 DB
	brk $2D.b		; 00 2D
	rti		; 40

	sbc [$01.b],Y		; F7 01
	lda ($00.b),Y		; B1 00
	rol $1040.w		; 2E 40 10
	plx		; FA
	inc $F1.b,X		; F6 F1
	php		; 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	sbc ($08.b,X)		; E1 08
	cop $48.b		; 02 48
	cop $EE.b		; 02 EE
	cmp ($08.b),Y		; D1 08
	tsb $48.b		; 04 48
	cop $EE.b		; 02 EE
	cmp ($08.b,X)		; C1 08
	asl $48.b		; 06 48
	nop		; EA
	asl $E9.b		; 06 E9
	php		; 08
	php		; 08
	pha		; 48
	sep #$0E		; E2 0E
	cmp $0A08.w,Y		; D9 08 0A
	pha		; 48
	sbc ($FE.b)		; F2 FE
	cmp $0C08.w,Y		; D9 08 0C
	pha		; 48
	sep #$0E		; E2 0E
	cmp #$08.b		; C9 08
	asl $F248.w		; 0E 48 F2
	inc $08C9.w,X		; FE C9 08
	jsr $EA48.w		; 20 48 EA
	asl $B9.b		; 06 B9
	php		; 08
	jsl $FEFA48.l		; 22 48 FA FE
	lda $2400.w,Y		; B9 00 24
	rti		; 40

	cop $F6.b		; 02 F6
	lda $2500.w,Y		; B9 00 25
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	cmp ($00.b,X)		; C1 00
	rol $40.b		; 26 40
	plx		; FA
	inc $00C1.w,X		; FE C1 00
	and [$40.b]		; 27 40
	plx		; FA
	inc $00E9.w,X		; FE E9 00
	plp		; 28
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc $2900.w,Y		; F9 00 29
	rti		; 40

	asl A		; 0A
	sbc $FB.b,X		; F5 FB
	bne   8.b		; D0 08
	brk $48.b		; 00 48
	ora $EB.b		; 05 EB
	bne   8.b		; D0 08
	cop $48.b		; 02 48
	sbc $FB.b,X		; F5 FB
	cpx #$08.b		; E0 08
	tsb $48.b		; 04 48
	ora $EB.b		; 05 EB
	cpx #$08.b		; E0 08
	asl $48.b		; 06 48
	ora ($E6.b)		; 12 E6
	beq   0.b		; F0 00
	php		; 08
	rti		; 40

	inc A		; 1A
	dec $00F0.w,X		; DE F0 00
	ora #$40.b		; 09 40
	sbc ($06.b)		; F2 06
	beq   0.b		; F0 00
	asl A		; 0A
	rti		; 40

	plx		; FA
	inc $00F0.w,X		; FE F0 00
	phd		; 0B
	rti		; 40

	cop $F6.b		; 02 F6
	beq   0.b		; F0 00
	tsb $0A40.w		; 0C 40 0A
	inc $00F0.w		; EE F0 00
	ora $1040.w		; 0D 40 10
	sbc $FB.b,X		; F5 FB
	cpx #$08.b		; E0 08
	brk $48.b		; 00 48
	sbc $08D001.l		; EF 01 D0 08
	cop $48.b		; 02 48
	sbc $08D0F1.l,X		; FF F1 D0 08
	tsb $48.b		; 04 48
	tsb $F4.b		; 04 F4
	beq   0.b		; F0 00
	asl $40.b		; 06 40
	sbc $03.b,X		; F5 03
	sbc $0700.w,Y		; F9 00 07
	rti		; 40

	ora $E0EB.w		; 0D EB E0
	brk $08.b		; 00 08
	rti		; 40

	ora $F3.b		; 05 F3
	sed		; F8
	brk $09.b		; 00 09
	rti		; 40

	sbc ($06.b)		; F2 06
	iny		; C8
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F3.b		; 05 F3
	cpx #$00.b		; E0 00
	phd		; 0B
	rti		; 40

	ora $F3.b		; 05 F3
	inx		; E8
	brk $0C.b		; 00 0C
	rti		; 40

	plx		; FA
	inc $00C8.w,X		; FE C8 00
	ora $0240.w		; 0D 40 02
	inc $C8.b,X		; F6 C8
	brk $0E.b		; 00 0E
	rti		; 40

	ora $00D0E9.l		; 0F E9 D0 00
	ora $E90F40.l		; 0F 40 0F E9
	cld		; D8
	brk $16.b		; 00 16
	rti		; 40

	sbc $ECFF.w,Y		; F9 FF EC
	brk $17.b		; 00 17
	rti		; 40

	sbc $F4FF.w,Y		; F9 FF F4
	brk $18.b		; 00 18
	rti		; 40

	tsb $FBF5.w		; 0C F5 FB
	sbc ($08.b),Y		; F1 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	cmp $0208.w,Y		; D9 08 02
	pha		; 48
	brk $F0.b		; 00 F0
	cmp $0408.w,Y		; D9 08 04
	pha		; 48
	pea $D104.w		; F4 04 D1
	brk $06.b		; 00 06
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b),Y		; F1 00
	ora [$40.b]		; 07 40
	ora $F3.b		; 05 F3
	sbc $0800.w,Y		; F9 00 08
	rti		; 40

	jsr ($D1FC.w,X)		; FC FC D1
	brk $09.b		; 00 09
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b),Y		; D1 00
	asl A		; 0A
	rti		; 40

	beq   8.b		; F0 08
	sbc #$00.b		; E9 00
	phd		; 0B
	rti		; 40

	sed		; F8
	brk $E9.b		; 00 E9
	brk $0C.b		; 00 0C
	rti		; 40

	brk $F8.b		; 00 F8
	sbc #$00.b		; E9 00
	ora $0840.w		; 0D 40 08
	beq -23.b		; F0 E9
	brk $0E.b		; 00 0E
	rti		; 40

	asl $F8F8.w		; 0E F8 F8
	cmp $0008.w,Y		; D9 08 00
	pha		; 48
	beq   0.b		; F0 00
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	brk $F0.b		; 00 F0
	cmp ($08.b,X)		; C1 08
	tsb $48.b		; 04 48
	sed		; F8
	brk $B9.b		; 00 B9
	brk $06.b		; 00 06
	rti		; 40

	sed		; F8
	brk $E9.b		; 00 E9
	brk $07.b		; 00 07
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc $0800.w,Y		; F9 00 08
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $0900.w,Y		; F9 00 09
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($00.b),Y		; F1 00
	asl A		; 0A
	rti		; 40

	beq   8.b		; F0 08
	cmp ($00.b),Y		; D1 00
	phd		; 0B
	rti		; 40

	sed		; F8
	brk $D1.b		; 00 D1
	brk $0C.b		; 00 0C
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b),Y		; D1 00
	ora $0840.w		; 0D 40 08
	beq -47.b		; F0 D1
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc #$00.b		; E9 00
	ora $F70140.l		; 0F 40 01 F7
	sbc ($00.b),Y		; F1 00
	asl $40.b,X		; 16 40
	tsb $01EF.w		; 0C EF 01
	cmp ($08.b),Y		; D1 08
	brk $48.b		; 00 48
	sbc $08D1F1.l,X		; FF F1 D1 08
	cop $48.b		; 02 48
	sbc $08E1F1.l,X		; FF F1 E1 08
	tsb $48.b		; 04 48
	sbc $03.b,X		; F5 03
	sbc $0600.w,Y		; F9 00 06
	rti		; 40

	sbc $F9FB.w,X		; FD FB F9
	brk $07.b		; 00 07
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $0800.w,Y		; F9 00 08
	rti		; 40

	sbc $00E109.l		; EF 09 E1 00
	ora #$40.b		; 09 40
	sbc [$01.b],Y		; F7 01
	sbc ($00.b,X)		; E1 00
	asl A		; 0A
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc #$00.b		; E9 00
	phd		; 0B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($00.b),Y		; F1 00
	tsb $FF40.w		; 0C 40 FF
	sbc $00F1.w,Y		; F9 F1 00
	ora $0740.w		; 0D 40 07
	sbc ($F1.b),Y		; F1 F1
	brk $0E.b		; 00 0E
	rti		; 40

	asl $EB05.w		; 0E 05 EB
	cmp #$08.b		; C9 08
	brk $48.b		; 00 48
	sbc $FB.b,X		; F5 FB
	cmp #$08.b		; C9 08
	cop $48.b		; 02 48
	sbc $FB.b,X		; F5 FB
	cmp $0408.w,Y		; D9 08 04
	pha		; 48
	ora $F3.b		; 05 F3
	sbc $0600.w,Y		; F9 00 06
	rti		; 40

	cop $F6.b		; 02 F6
	sbc #$00.b		; E9 00
	ora [$40.b]		; 07 40
	cop $F6.b		; 02 F6
	sbc ($00.b),Y		; F1 00
	php		; 08
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc $0900.w,Y		; F9 00 09
	rti		; 40

	ora $F3.b		; 05 F3
	cmp $0A00.w,Y		; D9 00 0A
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	phd		; 0B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cmp ($00.b,X)		; C1 00
	tsb $FF40.w		; 0C 40 FF
	sbc $00C1.w,Y		; F9 C1 00
	ora $0740.w		; 0D 40 07
	sbc ($C1.b),Y		; F1 C1
	brk $0E.b		; 00 0E
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($00.b),Y		; F1 00
	ora $FFF940.l		; 0F 40 F9 FF
	sbc #$00.b		; E9 00
	asl $40.b,X		; 16 40
	asl $FBF5.w		; 0E F5 FB
	stp		; DB
	php		; 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	wai		; CB
	php		; 08
	cop $48.b		; 02 48
	asl $EA.b		; 06 EA
	wai		; CB
	php		; 08
	tsb $48.b		; 04 48
	sbc $03.b,X		; F5 03
	sbc $0600.w,Y		; F9 00 06
	rti		; 40

	plx		; FA
	inc $00EB.w,X		; FE EB 00
	ora [$40.b]		; 07 40
	ora $F3.b		; 05 F3
	stp		; DB
	brk $08.b		; 00 08
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $00.b,S		; E3 00
	ora #$40.b		; 09 40
	ora $F3.b		; 05 F3
	sed		; F8
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	inx		; E8
	brk $0B.b		; 00 0B
	rti		; 40

	ora $F5.b,S		; 03 F5
	beq   0.b		; F0 00
	tsb $F740.w		; 0C 40 F7
	ora ($F1.b,X)		; 01 F1
	brk $0D.b		; 00 0D
	rti		; 40

	sed		; F8
	brk $C3.b		; 00 C3
	brk $0E.b		; 00 0E
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $00.b,S		; C3 00
	ora $F00840.l		; 0F 40 08 F0
	cmp $00.b,S		; C3 00
	asl $40.b,X		; 16 40
	asl $F1.b,X		; 16 F1
	sbc $0008C5.l,X		; FF C5 08 00
	pha		; 48
	asl A		; 0A
	inc $00D1.w		; EE D1 00
	cop $40.b		; 02 40
	plx		; FA
	inc $00E5.w,X		; FE E5 00
	ora $40.b,S		; 03 40
	cop $F6.b		; 02 F6
	sbc $00.b		; E5 00
	tsb $40.b		; 04 40
	plx		; FA
	inc $00ED.w,X		; FE ED 00
	ora $40.b		; 05 40
	tsb $F4.b		; 04 F4
	inx		; E8
	brk $06.b		; 00 06
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc $0700.w,Y		; F9 00 07
	rti		; 40

	ora $F3.b		; 05 F3
	beq   0.b		; F0 00
	php		; 08
	rti		; 40

	ora $F3.b		; 05 F3
	sed		; F8
	brk $09.b		; 00 09
	rti		; 40

	inc $02.b,X		; F6 02
	cmp $0A00.w,X		; DD 00 0A
	rti		; 40

	inc $DDFA.w,X		; FE FA DD
	brk $0B.b		; 00 0B
	rti		; 40

	asl $F2.b		; 06 F2
	cmp $0C00.w,X		; DD 00 0C
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($00.b),Y		; F1 00
	ora $1040.w		; 0D 40 10
	inx		; E8
	cmp $0E00.w		; CD 00 0E
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp #$00.b		; C9 00
	ora $FFF940.l		; 0F 40 F9 FF
	lda $1200.w,X		; BD 00 12
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b,X)		; C1 00
	ora ($40.b,S),Y		; 13 40
	ora ($F7.b,X)		; 01 F7
	cmp $00.b		; C5 00
	trb $40.b		; 14 40
	ora ($F7.b,X)		; 01 F7
	cmp $1500.w		; CD 00 15
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cmp $00.b,X		; D5 00
	asl $40.b,X		; 16 40
	sbc $D5FF.w,Y		; F9 FF D5
	brk $17.b		; 00 17
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $00.b,X		; D5 00
	clc		; 18
	rti		; 40

	ora ($F2.b)		; 12 F2
	inc $08C2.w,X		; FE C2 08
	brk $48.b		; 00 48
	xce		; FB
	sbc $E9.b,X		; F5 E9
	php		; 08
	cop $48.b		; 02 48
	cop $F6.b		; 02 F6
	sep #$00		; E2 00
	tsb $40.b		; 04 40
	nop		; EA
	asl $00CA.w		; 0E CA 00
	ora $40.b		; 05 40
	cop $F6.b		; 02 F6
	rep #$00		; C2 00
	asl $40.b		; 06 40
	cop $F6.b		; 02 F6
	dex		; CA
	brk $07.b		; 00 07
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp ($00.b)		; D2 00
	php		; 08
	rti		; 40

	plx		; FA
	inc $00D2.w,X		; FE D2 00
	ora #$40.b		; 09 40
	cop $F6.b		; 02 F6
	cmp ($00.b)		; D2 00
	asl A		; 0A
	rti		; 40

	asl A		; 0A
	inc $00C8.w		; EE C8 00
	phd		; 0B
	rti		; 40

	asl A		; 0A
	inc $00D0.w		; EE D0 00
	tsb $F340.w		; 0C 40 F3
	ora $F1.b		; 05 F1
	brk $0D.b		; 00 0D
	rti		; 40

	plx		; FA
	inc $00E2.w,X		; FE E2 00
	asl $F540.w		; 0E 40 F5
	ora $F9.b,S		; 03 F9
	brk $0F.b		; 00 0F
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $1400.w,Y		; F9 00 14
	rti		; 40

	sed		; F8
	brk $DA.b		; 00 DA
	brk $15.b		; 00 15
	rti		; 40

	brk $F8.b		; 00 F8
	phx		; DA
	brk $16.b		; 00 16
	rti		; 40

	php		; 08
	beq -38.b		; F0 DA
	brk $17.b		; 00 17
	rti		; 40

	ora ($FA.b),Y		; 11 FA
	inc $D9.b,X		; F6 D9
	php		; 08
	brk $48.b		; 00 48
	sbc ($FE.b)		; F2 FE
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	cop $F6.b		; 02 F6
	sbc ($00.b),Y		; F1 00
	tsb $40.b		; 04 40
	asl A		; 0A
	inc $00D9.w		; EE D9 00
	ora $40.b		; 05 40
	cop $F6.b		; 02 F6
	sbc #$00.b		; E9 00
	asl $40.b		; 06 40
	cop $F6.b		; 02 F6
	cmp ($00.b,X)		; C1 00
	ora [$40.b]		; 07 40
	cop $F6.b		; 02 F6
	cmp #$00.b		; C9 00
	php		; 08
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp ($00.b),Y		; D1 00
	ora #$40.b		; 09 40
	plx		; FA
	inc $00D1.w,X		; FE D1 00
	asl A		; 0A
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b),Y		; D1 00
	phd		; 0B
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp $0C00.w,Y		; D9 00 0C
	rti		; 40

	asl A		; 0A
	inc $00C7.w		; EE C7 00
	ora $0A40.w		; 0D 40 0A
	inc $00CF.w		; EE CF 00
	asl $F440.w		; 0E 40 F4
	tsb $F9.b		; 04 F9
	brk $0F.b		; 00 0F
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $1400.w,Y		; F9 00 14
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($00.b),Y		; F1 00
	ora $40.b,X		; 15 40
	sbc $E9FF.w,Y		; F9 FF E9
	brk $16.b		; 00 16
	rti		; 40

	ora #$EF.b		; 09 EF
	ora ($C1.b,X)		; 01 C1
	php		; 08
	brk $48.b		; 00 48
	sbc $08C1F1.l,X		; FF F1 C1 08
	cop $48.b		; 02 48
	sbc $F1F7.w,Y		; F9 F7 F1
	php		; 08
	tsb $48.b		; 04 48
	sbc $E1F7.w,Y		; F9 F7 E1
	php		; 08
	asl $48.b		; 06 48
	sbc ($FF.b),Y		; F1 FF
	cmp ($08.b),Y		; D1 08
	php		; 08
	pha		; 48
	ora #$EF.b		; 09 EF
	cmp ($00.b),Y		; D1 00
	asl A		; 0A
	rti		; 40

	inc $B9FA.w,X		; FE FA B9
	brk $0B.b		; 00 0B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b),Y		; D1 00
	tsb $0140.w		; 0C 40 01
	sbc [$D9.b],Y		; F7 D9
	brk $0D.b		; 00 0D
	rti		; 40

	bpl  -4.b		; 10 FC
	pea $08E9.w		; F4 E9 08
	brk $48.b		; 00 48
	pea $C1FC.w		; F4 FC C1
	php		; 08
	cop $48.b		; 02 48
	tsb $F4.b		; 04 F4
	cmp ($00.b,X)		; C1 00
	tsb $40.b		; 04 40
	tsb $F4.b		; 04 F4
	cmp #$00.b		; C9 00
	ora $40.b		; 05 40
	pea $D104.w		; F4 04 D1
	brk $06.b		; 00 06
	rti		; 40

	jsr ($D1FC.w,X)		; FC FC D1
	brk $07.b		; 00 07
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b),Y		; D1 00
	php		; 08
	rti		; 40

	jsr ($F9FC.w,X)		; FC FC F9
	brk $09.b		; 00 09
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $0A00.w,Y		; F9 00 0A
	rti		; 40

	tsb $C6EC.w		; 0C EC C6
	brk $0B.b		; 00 0B
	rti		; 40

	tsb $CEEC.w		; 0C EC CE
	brk $0C.b		; 00 0C
	rti		; 40

	sed		; F8
	brk $D9.b		; 00 D9
	brk $0D.b		; 00 0D
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $0E00.w,Y		; D9 00 0E
	rti		; 40

	php		; 08
	beq -42.b		; F0 D6
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $E1FF.w,Y		; F9 FF E1
	brk $14.b		; 00 14
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b,X)		; E1 00
	ora $40.b,X		; 15 40
	ora $C1F6FA.l		; 0F FA F6 C1
	php		; 08
	brk $48.b		; 00 48
	plx		; FA
	inc $D1.b,X		; F6 D1
	php		; 08
	cop $48.b		; 02 48
	pea $E1FC.w		; F4 FC E1
	php		; 08
	tsb $48.b		; 04 48
	ora ($E6.b)		; 12 E6
	cmp ($00.b),Y		; D1 00
	asl $40.b		; 06 40
	sbc ($06.b)		; F2 06
	cmp #$00.b		; C9 00
	ora [$40.b]		; 07 40
	sbc ($06.b)		; F2 06
	cmp ($00.b),Y		; D1 00
	php		; 08
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp $0900.w,Y		; D9 00 09
	rti		; 40

	asl A		; 0A
	inc $00C6.w		; EE C6 00
	asl A		; 0A
	rti		; 40

	asl A		; 0A
	inc $00CE.w		; EE CE 00
	phd		; 0B
	rti		; 40

	asl A		; 0A
	inc $00D6.w		; EE D6 00
	tsb $1240.w		; 0C 40 12
	inc $C9.b		; E6 C9
	brk $0D.b		; 00 0D
	rti		; 40

	cpx $DD0C.w		; EC 0C DD
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $F1FF.w,Y		; F9 FF F1
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $F9FF.w,Y		; F9 FF F9
	brk $16.b		; 00 16
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc $1700.w,Y		; F9 00 17
	rti		; 40

	ora ($F9.b,S),Y		; 13 F9
	sbc [$C5.b],Y		; F7 C5
	php		; 08
	brk $48.b		; 00 48
	sbc $D5F7.w,Y		; F9 F7 D5
	php		; 08
	cop $48.b		; 02 48
	ora $F5.b,S		; 03 F5
	cmp ($00.b,X)		; C1 00
	tsb $40.b		; 04 40
	pea $F104.w		; F4 04 F1
	brk $05.b		; 00 05
	rti		; 40

	tsb $F4.b		; 04 F4
	xba		; EB
	brk $06.b		; 00 06
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,S),Y		; F3 00
	ora [$40.b]		; 07 40
	beq   8.b		; F0 08
	sbc $0800.w,Y		; F9 00 08
	rti		; 40

	sed		; F8
	brk $C0.b		; 00 C0
	brk $09.b		; 00 09
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp #$00.b		; C9 00
	asl A		; 0A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	stp		; DB
	brk $0B.b		; 00 0B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp $0C00.w		; CD 00 0C
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp $0D00.w,X		; DD 00 0D
	rti		; 40

	sbc $EDFF.w,Y		; F9 FF ED
	brk $0E.b		; 00 0E
	rti		; 40

	asl A		; 0A
	inc $00D1.w		; EE D1 00
	ora $EE0A40.l		; 0F 40 0A EE
	sed		; F8
	brk $14.b		; 00 14
	rti		; 40

	sbc $E5FF.w,Y		; F9 FF E5
	brk $15.b		; 00 15
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc $00.b		; E5 00
	asl $40.b,X		; 16 40
	sbc ($07.b),Y		; F1 07
	iny		; C8
	brk $17.b		; 00 17
	rti		; 40

	sbc ($07.b),Y		; F1 07
	bne   0.b		; D0 00
	clc		; 18
	rti		; 40

	asl $FA.b,X		; 16 FA
	inc $C3.b,X		; F6 C3
	php		; 08
	brk $48.b		; 00 48
	nop		; EA
	asl $00CA.w		; 0E CA 00
	cop $40.b		; 02 40
	plx		; FA
	inc $00D3.w,X		; FE D3 00
	ora $40.b,S		; 03 40
	cop $F6.b		; 02 F6
	cmp ($00.b,S),Y		; D3 00
	tsb $40.b		; 04 40
	sbc ($06.b)		; F2 06
	cmp [$00.b]		; C7 00
	ora $40.b		; 05 40
	sbc ($06.b)		; F2 06
	cmp $400600.l		; CF 00 06 40
	sbc ($06.b)		; F2 06
	cmp [$00.b],Y		; D7 00
	ora [$40.b]		; 07 40
	asl A		; 0A
	inc $00C8.w		; EE C8 00
	php		; 08
	rti		; 40

	asl A		; 0A
	inc $00D0.w		; EE D0 00
	ora #$40.b		; 09 40
	sbc ($05.b,S),Y		; F3 05
	sbc $0A00.w,Y		; F9 00 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	xba		; EB
	brk $0B.b		; 00 0B
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b,S),Y		; F3 00
	tsb $0540.w		; 0C 40 05
	sbc ($BD.b,S),Y		; F3 BD
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $03.b,X		; F5 03
	lda $400E00.l,X		; BF 00 0E 40
	inc $02.b,X		; F6 02
	sbc ($00.b),Y		; F1 00
	ora $00F840.l		; 0F 40 F8 00
	stp		; DB
	brk $12.b		; 00 12
	rti		; 40

	brk $F8.b		; 00 F8
	stp		; DB
	brk $13.b		; 00 13
	rti		; 40

	php		; 08
	beq -37.b		; F0 DB
	brk $14.b		; 00 14
	rti		; 40

	php		; 08
	beq  -8.b		; F0 F8
	brk $15.b		; 00 15
	rti		; 40

	sbc $E3FF.w,Y		; F9 FF E3
	brk $16.b		; 00 16
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc $00.b,S		; E3 00
	ora [$40.b],Y		; 17 40
	sbc $EBFF.w,Y		; F9 FF EB
	brk $18.b		; 00 18
	rti		; 40

	ora ($F2.b,S),Y		; 13 F2
	inc $08C1.w,X		; FE C1 08
	brk $48.b		; 00 48
	cop $F6.b		; 02 F6
	sbc ($00.b),Y		; F1 00
	cop $40.b		; 02 40
	cop $F6.b		; 02 F6
	sbc #$00.b		; E9 00
	ora $40.b,S		; 03 40
	cop $F6.b		; 02 F6
	cmp ($00.b,X)		; C1 00
	tsb $40.b		; 04 40
	cop $F6.b		; 02 F6
	cmp #$00.b		; C9 00
	ora $40.b		; 05 40
	sbc ($06.b)		; F2 06
	cmp ($00.b),Y		; D1 00
	asl $40.b		; 06 40
	plx		; FA
	inc $00D1.w,X		; FE D1 00
	ora [$40.b]		; 07 40
	cop $F6.b		; 02 F6
	cmp ($00.b),Y		; D1 00
	php		; 08
	rti		; 40

	asl A		; 0A
	inc $00C7.w		; EE C7 00
	ora #$40.b		; 09 40
	asl A		; 0A
	inc $00CF.w		; EE CF 00
	asl A		; 0A
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc $0B00.w,Y		; F9 00 0B
	rti		; 40

	ora $F3.b		; 05 F3
	sed		; F8
	brk $0C.b		; 00 0C
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($00.b),Y		; F1 00
	ora $F840.w		; 0D 40 F8
	brk $D9.b		; 00 D9
	brk $0E.b		; 00 0E
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $0F00.w,Y		; D9 00 0F
	rti		; 40

	php		; 08
	beq -39.b		; F0 D9
	brk $12.b		; 00 12
	rti		; 40

	sbc $E1FF.w,Y		; F9 FF E1
	brk $13.b		; 00 13
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b,X)		; E1 00
	trb $40.b		; 14 40
	sbc $E9FF.w,Y		; F9 FF E9
	brk $15.b		; 00 15
	rti		; 40

	asl $FEF2.w		; 0E F2 FE
	cmp $08.b,S		; C3 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	cmp $08.b,S		; C3 08
	cop $48.b		; 02 48
	plx		; FA
	inc $DB.b,X		; F6 DB
	php		; 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $00EB.w,X		; FE EB 00
	asl $40.b		; 06 40
	cop $F6.b		; 02 F6
	xba		; EB
	brk $07.b		; 00 07
	rti		; 40

	ora ($E6.b)		; 12 E6
	cpy $0800.w		; CC 00 08
	rti		; 40

	ora $F5.b,S		; 03 F5
	tyx		; BB
	brk $09.b		; 00 09
	rti		; 40

	pea $D304.w		; F4 04 D3
	brk $0A.b		; 00 0A
	rti		; 40

	jsr ($D3FC.w,X)		; FC FC D3
	brk $0B.b		; 00 0B
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b,S),Y		; D3 00
	tsb $0C40.w		; 0C 40 0C
	cpx $00D3.w		; EC D3 00
	ora $FF40.w		; 0D 40 FF
	sbc $00F3.w,Y		; F9 F3 00
	asl $FF40.w		; 0E 40 FF
	sbc $00FB.w,Y		; F9 FB 00
	ora $FFF940.l		; 0F 40 F9 FF
	tyx		; BB
	brk $16.b		; 00 16
	rti		; 40

	ora $E60A.w		; 0D 0A E6
	cpy $08.b		; C4 08
	brk $48.b		; 00 48
	plx		; FA
	inc $BF.b,X		; F6 BF
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $CF.b,X		; F6 CF
	php		; 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $DF.b,X		; F6 DF
	php		; 08
	asl $48.b		; 06 48
	asl A		; 0A
	inc $00BC.w		; EE BC 00
	php		; 08
	rti		; 40

	asl A		; 0A
	inc $00D4.w		; EE D4 00
	ora #$40.b		; 09 40
	ora ($E6.b)		; 12 E6
	pei ($00.b)		; D4 00
	asl A		; 0A
	rti		; 40

	sbc ($06.b)		; F2 06
	cpy $00.b		; C4 00
	phd		; 0B
	rti		; 40

	sbc ($06.b)		; F2 06
	cpy $0C00.w		; CC 00 0C
	rti		; 40

	sbc ($06.b)		; F2 06
	pei ($00.b)		; D4 00
	ora $FA40.w		; 0D 40 FA
	inc $00EF.w,X		; FE EF 00
	asl $0240.w		; 0E 40 02
	inc $EF.b,X		; F6 EF
	brk $0F.b		; 00 0F
	rti		; 40

	inc $F7FA.w,X		; FE FA F7
	brk $18.b		; 00 18
	rti		; 40

	ora $D9F7F9.l		; 0F F9 F7 D9
	php		; 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	cmp ($08.b,X)		; C1 08
	tsb $48.b		; 04 48
	pea $F904.w		; F4 04 F9
	brk $06.b		; 00 06
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $0700.w,Y		; F9 00 07
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($00.b),Y		; F1 00
	php		; 08
	rti		; 40

	sbc $E9FF.w,Y		; F9 FF E9
	brk $09.b		; 00 09
	rti		; 40

	cop $F6.b		; 02 F6
	sbc #$00.b		; E9 00
	asl A		; 0A
	rti		; 40

	nop		; EA
	asl $00CA.w		; 0E CA 00
	phd		; 0B
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc ($00.b),Y		; F1 00
	tsb $F140.w		; 0C 40 F1
	ora [$D1.b]		; 07 D1
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $D1FF.w,Y		; F9 FF D1
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b),Y		; D1 00
	ora $EF0940.l		; 0F 40 09 EF
	cmp ($00.b),Y		; D1 00
	asl $40.b,X		; 16 40
	sbc ($07.b),Y		; F1 07
	cmp $1700.w,Y		; D9 00 17
	rti		; 40

	ora ($FA.b)		; 12 FA
	inc $C1.b,X		; F6 C1
	php		; 08
	brk $48.b		; 00 48
	plx		; FA
	inc $D1.b,X		; F6 D1
	php		; 08
	cop $48.b		; 02 48
	cop $F6.b		; 02 F6
	sbc #$00.b		; E9 00
	tsb $40.b		; 04 40
	asl A		; 0A
	inc $00C2.w		; EE C2 00
	ora $40.b		; 05 40
	asl A		; 0A
	inc $00CA.w		; EE CA 00
	asl $40.b		; 06 40
	asl A		; 0A
	inc $00D2.w		; EE D2 00
	ora [$40.b]		; 07 40
	ora ($E6.b)		; 12 E6
	cmp ($00.b)		; D2 00
	php		; 08
	rti		; 40

	inc A		; 1A
	dec $00D2.w,X		; DE D2 00
	ora #$40.b		; 09 40
	sbc ($06.b)		; F2 06
	dec $00.b		; C6 00
	asl A		; 0A
	rti		; 40

	sbc ($06.b)		; F2 06
	dec $0B00.w		; CE 00 0B
	rti		; 40

	sbc ($06.b)		; F2 06
	dec $00.b,X		; D6 00
	tsb $0440.w		; 0C 40 04
	pea $00F0.w		; F4 F0 00
	ora $F540.w		; 0D 40 F5
	ora $F9.b,S		; 03 F9
	brk $0E.b		; 00 0E
	rti		; 40

	ora $F3.b		; 05 F3
	sed		; F8
	brk $0F.b		; 00 0F
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($00.b),Y		; F1 00
	trb $40.b		; 14 40
	sbc $E1FF.w,Y		; F9 FF E1
	brk $15.b		; 00 15
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b,X)		; E1 00
	asl $40.b,X		; 16 40
	sbc $E9FF.w,Y		; F9 FF E9
	brk $17.b		; 00 17
	rti		; 40

	asl $FEF2.w		; 0E F2 FE
	wai		; CB
	php		; 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	wai		; CB
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $DB.b,X		; F6 DB
	php		; 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $00EB.w,X		; FE EB 00
	asl $40.b		; 06 40
	sbc ($06.b)		; F2 06
	stp		; DB
	brk $07.b		; 00 07
	rti		; 40

	asl A		; 0A
	inc $00DB.w		; EE DB 00
	php		; 08
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$00.b		; E9 00
	ora #$40.b		; 09 40
	pea $F904.w		; F4 04 F9
	brk $0A.b		; 00 0A
	rti		; 40

	pea $C304.w		; F4 04 C3
	brk $0B.b		; 00 0B
	rti		; 40

	jsr ($C3FC.w,X)		; FC FC C3
	brk $0C.b		; 00 0C
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $00.b,S		; C3 00
	ora $0540.w		; 0D 40 05
	sbc ($F0.b,S),Y		; F3 F0
	brk $0E.b		; 00 0E
	rti		; 40

	ora $F3.b		; 05 F3
	sed		; F8
	brk $0F.b		; 00 0F
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($00.b),Y		; F1 00
	asl $40.b,X		; 16 40
	ora $F0.b,X		; 15 F0
	brk $C9.b		; 00 C9
	php		; 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	cmp #$08.b		; C9 08
	cop $48.b		; 02 48
	xce		; FB
	sbc $00E9.w,X		; FD E9 00
	tsb $40.b		; 04 40
	ora $F5.b,S		; 03 F5
	sbc #$00.b		; E9 00
	ora $40.b		; 05 40
	sbc ($05.b,S),Y		; F3 05
	sbc $0600.w,Y		; F9 00 06
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b),Y		; F1 00
	ora [$40.b]		; 07 40
	ora $F3.b		; 05 F3
	sbc $0800.w,Y		; F9 00 08
	rti		; 40

	inc $02.b,X		; F6 02
	cmp $0900.w,Y		; D9 00 09
	rti		; 40

	inc $D9FA.w,X		; FE FA D9
	brk $0A.b		; 00 0A
	rti		; 40

	asl $F2.b		; 06 F2
	cmp $0B00.w,Y		; D9 00 0B
	rti		; 40

	asl $D8EA.w		; 0E EA D8
	brk $0C.b		; 00 0C
	rti		; 40

	sbc [$01.b],Y		; F7 01
	inc $00.b,X		; F6 00
	ora $3040.w		; 0D 40 30
	iny		; C8
	sta ($00.b),Y		; 91 00
	asl $FA40.w		; 0E 40 FA
	inc $00E1.w,X		; FE E1 00
	ora $F60240.l		; 0F 40 02 F6
	sbc ($00.b,X)		; E1 00
	trb $40.b		; 14 40
	sed		; F8
	brk $C1.b		; 00 C1
	brk $15.b		; 00 15
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b,X)		; C1 00
	asl $40.b,X		; 16 40
	php		; 08
	beq -63.b		; F0 C1
	brk $17.b		; 00 17
	rti		; 40

	bpl -24.b		; 10 E8
	iny		; C8
	brk $18.b		; 00 18
	rti		; 40

	bpl -24.b		; 10 E8
	bne   0.b		; D0 00
	ora $F940.w,Y		; 19 40 F9
	sbc $1A00F1.l,X		; FF F1 00 1A
	rti		; 40

	tsb $F5FB.w		; 0C FB F5
	cmp $08.b,S		; C3 08
	brk $48.b		; 00 48
	xce		; FB
	sbc $D3.b,X		; F5 D3
	php		; 08
	cop $48.b		; 02 48
	xce		; FB
	sbc $E3.b,X		; F5 E3
	php		; 08
	tsb $48.b		; 04 48
	phd		; 0B
	sbc $00EB.w		; ED EB 00
	asl $40.b		; 06 40
	sbc ($05.b,S),Y		; F3 05
	cpy $00.b		; C4 00
	ora [$40.b]		; 07 40
	sbc ($05.b,S),Y		; F3 05
	cpy $0800.w		; CC 00 08
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	pei ($00.b)		; D4 00
	ora #$40.b		; 09 40
	sbc ($05.b,S),Y		; F3 05
	jmp.w [$0A00]		; DC 00 0A
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b),Y		; F1 00
	phd		; 0B
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc $0C00.w,Y		; F9 00 0C
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $0D00.w,Y		; F9 00 0D
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($00.b),Y		; F1 00
	asl $1040.w		; 0E 40 10
	ora $EB.b		; 05 EB
	cmp ($08.b,X)		; C1 08
	brk $48.b		; 00 48
	ora $EB.b		; 05 EB
	cmp ($08.b),Y		; D1 08
	cop $48.b		; 02 48
	plx		; FA
	inc $00F1.w,X		; FE F1 00
	tsb $40.b		; 04 40
	ora $E3.b,X		; 15 E3
	cmp $0500.w,Y		; D9 00 05
	rti		; 40

	sbc $C9FB.w,X		; FD FB C9
	brk $06.b		; 00 06
	rti		; 40

	sbc $D1FB.w,X		; FD FB D1
	brk $07.b		; 00 07
	rti		; 40

	sbc $D9FB.w,X		; FD FB D9
	brk $08.b		; 00 08
	rti		; 40

	ora $E3.b,X		; 15 E3
	wai		; CB
	brk $09.b		; 00 09
	rti		; 40

	inc $E1FA.w,X		; FE FA E1
	brk $0A.b		; 00 0A
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b,X)		; E1 00
	phd		; 0B
	rti		; 40

	inc $02.b,X		; F6 02
	sbc $0C00.w,Y		; F9 00 0C
	rti		; 40

	inc $EDFA.w,X		; FE FA ED
	brk $0D.b		; 00 0D
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc #$00.b		; E9 00
	asl $0940.w		; 0E 40 09
	sbc $0F00E9.l		; EF E9 00 0F
	rti		; 40

	ora #$EF.b		; 09 EF
	sbc ($00.b),Y		; F1 00
	trb $40.b		; 14 40
	ora #$EF.b		; 09 EF
	sbc $1500.w,Y		; F9 00 15
	rti		; 40

	ora ($02.b),Y		; 11 02
	inc $08C7.w		; EE C7 08
	brk $48.b		; 00 48
	ora $ED.b,S		; 03 ED
	cmp [$08.b],Y		; D7 08
	cop $48.b		; 02 48
	ora ($E6.b)		; 12 E6
	cmp $0400.w,Y		; D9 00 04
	rti		; 40

	jsl $00D2D6.l		; 22 D6 D2 00
	ora $40.b		; 05 40
	inc A		; 1A
	dec $00CD.w,X		; DE CD 00
	asl $40.b		; 06 40
	inc A		; 1A
	dec $00D5.w,X		; DE D5 00
	ora [$40.b]		; 07 40
	ora ($E6.b)		; 12 E6
	cmp #$00.b		; C9 00
	php		; 08
	rti		; 40

	xce		; FB
	sbc $00F2.w,X		; FD F2 00
	ora #$40.b		; 09 40
	ora ($E6.b)		; 12 E6
	cmp ($00.b),Y		; D1 00
	asl A		; 0A
	rti		; 40

	ora $F9EB.w		; 0D EB F9
	brk $0B.b		; 00 0B
	rti		; 40

	ora $F3.b		; 05 F3
	sbc [$00.b]		; E7 00
	tsb $0D40.w		; 0C 40 0D
	xba		; EB
	sbc [$00.b]		; E7 00
	ora $F640.w		; 0D 40 F6
	cop $F9.b		; 02 F9
	brk $0E.b		; 00 0E
	rti		; 40

	asl $F3EA.w		; 0E EA F3
	brk $0F.b		; 00 0F
	rti		; 40

	asl $C4EA.w		; 0E EA C4
	brk $14.b		; 00 14
	rti		; 40

	ora $00ECE9.l		; 0F E9 EC 00
	ora $40.b,X		; 15 40
	ora ($F7.b,X)		; 01 F7
	inc $1600.w		; EE 00 16
	rti		; 40

	ora ($E8.b,S),Y		; 13 E8
	php		; 08
	cmp ($08.b),Y		; D1 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	cmp ($08.b),Y		; D1 08
	cop $48.b		; 02 48
	sbc $C1FB.w,X		; FD FB C1
	brk $04.b		; 00 04
	rti		; 40

	ora $F3.b		; 05 F3
	cmp ($00.b,X)		; C1 00
	ora $40.b		; 05 40
	sbc $03.b,X		; F5 03
	sbc ($00.b),Y		; F1 00
	asl $40.b		; 06 40
	sbc $03.b,X		; F5 03
	sbc $0700.w,Y		; F9 00 07
	rti		; 40

	sbc [$11.b]		; E7 11
	cmp #$00.b		; C9 00
	php		; 08
	rti		; 40

	sbc $00C909.l		; EF 09 C9 00
	ora #$40.b		; 09 40
	sbc [$01.b],Y		; F7 01
	cmp #$00.b		; C9 00
	asl A		; 0A
	rti		; 40

	sbc $00C9F9.l,X		; FF F9 C9 00
	phd		; 0B
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp #$00.b		; C9 00
	tsb $F740.w		; 0C 40 F7
	ora ($E9.b,X)		; 01 E9
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $C10B.w		; ED 0B C1
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp ($00.b,X)		; C1 00
	ora $08F040.l		; 0F 40 F0 08
	sbc ($00.b,X)		; E1 00
	trb $40.b		; 14 40
	sed		; F8
	brk $E1.b		; 00 E1
	brk $15.b		; 00 15
	rti		; 40

	brk $F8.b		; 00 F8
	sbc ($00.b,X)		; E1 00
	asl $40.b,X		; 16 40
	php		; 08
	beq -30.b		; F0 E2
	brk $17.b		; 00 17
	rti		; 40

	bpl -24.b		; 10 E8
	sbc $00.b		; E5 00
	clc		; 18
	rti		; 40

	ora $D102EE.l		; 0F EE 02 D1
	php		; 08
	brk $48.b		; 00 48
	inx		; E8
	php		; 08
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	sed		; F8
	sed		; F8
	cmp ($08.b,X)		; C1 08
	tsb $48.b		; 04 48
	inc $12.b		; E6 12
	cmp ($00.b),Y		; D1 00
	asl $40.b		; 06 40
	inc $02.b,X		; F6 02
	sbc ($00.b),Y		; F1 00
	ora [$40.b]		; 07 40
	inc $02.b,X		; F6 02
	sbc $0800.w,Y		; F9 00 08
	rti		; 40

	ora $F3.b		; 05 F3
	stp		; DB
	brk $09.b		; 00 09
	rti		; 40

	inc $D1FA.w,X		; FE FA D1
	brk $0A.b		; 00 0A
	rti		; 40

	inc $D9FA.w,X		; FE FA D9
	brk $0B.b		; 00 0B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($00.b,X)		; E1 00
	tsb $FF40.w		; 0C 40 FF
	sbc $00E1.w,Y		; F9 E1 00
	ora $F840.w		; 0D 40 F8
	brk $E9.b		; 00 E9
	brk $0E.b		; 00 0E
	rti		; 40

	ora $DBEB.w		; 0D EB DB
	brk $0F.b		; 00 0F
	rti		; 40

	ora $E3.b,X		; 15 E3
	stp		; DB
	brk $16.b		; 00 16
	rti		; 40

	php		; 08
	beq -58.b		; F0 C6
	brk $17.b		; 00 17
	rti		; 40

	ora ($E4.b,S),Y		; 13 E4
	tsb $08C1.w		; 0C C1 08
	brk $48.b		; 00 48
	sbc ($0F.b,X)		; E1 0F
	cmp ($08.b),Y		; D1 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	cmp ($08.b),Y		; D1 08
	tsb $48.b		; 04 48
	pea $C904.w		; F4 04 C9
	brk $06.b		; 00 06
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc $0700.w,Y		; F9 00 07
	rti		; 40

	ora $D1DF.w,Y		; 19 DF D1
	brk $08.b		; 00 08
	rti		; 40

	sbc $E9FF.w,Y		; F9 FF E9
	brk $09.b		; 00 09
	rti		; 40

	sbc $F1FF.w,Y		; F9 FF F1
	brk $0A.b		; 00 0A
	rti		; 40

	jsr ($C9FC.w,X)		; FC FC C9
	brk $0B.b		; 00 0B
	rti		; 40

	pea $C104.w		; F4 04 C1
	brk $0C.b		; 00 0C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b),Y		; D1 00
	ora $0140.w		; 0D 40 01
	sbc [$D9.b],Y		; F7 D9
	brk $0E.b		; 00 0E
	rti		; 40

	sbc ($17.b,X)		; E1 17
	sbc ($00.b,X)		; E1 00
	ora $0FE940.l		; 0F 40 E9 0F
	sbc ($00.b,X)		; E1 00
	asl $40.b,X		; 16 40
	sbc ($07.b),Y		; F1 07
	sbc ($00.b,X)		; E1 00
	ora [$40.b],Y		; 17 40
	sbc $E1FF.w,Y		; F9 FF E1
	brk $18.b		; 00 18
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b,X)		; E1 00
	ora $1140.w,Y		; 19 40 11
	sbc [$D3.b]		; E7 D3
	brk $1A.b		; 00 1A
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp $00.b,X		; D5 00
	tas		; 1B
	rti		; 40

	asl $F2FE.w		; 0E FE F2
	cmp $08.b,S		; C3 08
	brk $48.b		; 00 48
	inc $D3F2.w,X		; FE F2 D3
	php		; 08
	cop $48.b		; 02 48
	ora $F5.b,S		; 03 F5
	tyx		; BB
	brk $04.b		; 00 04
	rti		; 40

	phd		; 0B
	sbc $00BB.w		; ED BB 00
	ora $40.b		; 05 40
	asl $F2.b		; 06 F2
	sbc ($00.b,S),Y		; F3 00
	asl $40.b		; 06 40
	asl $F2.b		; 06 F2
	xce		; FB
	brk $07.b		; 00 07
	rti		; 40

	cop $F6.b		; 02 F6
	xba		; EB
	brk $08.b		; 00 08
	rti		; 40

	asl A		; 0A
	inc $00EB.w		; EE EB 00
	ora #$40.b		; 09 40
	asl $C3EA.w		; 0E EA C3
	brk $0A.b		; 00 0A
	rti		; 40

	asl $CBEA.w		; 0E EA CB
	brk $0B.b		; 00 0B
	rti		; 40

	asl $D3EA.w		; 0E EA D3
	brk $0C.b		; 00 0C
	rti		; 40

	asl $DBEA.w		; 0E EA DB
	brk $0D.b		; 00 0D
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc $00.b,S		; E3 00
	asl $0F40.w		; 0E 40 0F
	sbc #$E3.b		; E9 E3
	brk $0F.b		; 00 0F
	rti		; 40

	ora $C0EB05.l		; 0F 05 EB C0
	php		; 08
	brk $48.b		; 00 48
	ora [$E9.b]		; 07 E9
	cld		; D8
	php		; 08
	cop $48.b		; 02 48
	sbc $CCFB.w,X		; FD FB CC
	brk $04.b		; 00 04
	rti		; 40

	ora $D5DB.w,X		; 1D DB D5
	brk $05.b		; 00 05
	rti		; 40

	ora $E3.b,X		; 15 E3
	cmp [$00.b]		; C7 00
	asl $40.b		; 06 40
	ora $E3.b,X		; 15 E3
	cmp $400700.l		; CF 00 07 40
	ora $E3.b,X		; 15 E3
	cmp [$00.b],Y		; D7 00
	php		; 08
	rti		; 40

	ora $F3.b		; 05 F3
	sed		; F8
	brk $09.b		; 00 09
	rti		; 40

	and $D3.b		; 25 D3
	cmp ($00.b),Y		; D1 00
	asl A		; 0A
	rti		; 40

	ora $F3.b		; 05 F3
	bne   0.b		; D0 00
	phd		; 0B
	rti		; 40

	ora $D0EB.w		; 0D EB D0
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $00D4F9.l,X		; FF F9 D4 00
	ora $0740.w		; 0D 40 07
	sbc ($E8.b),Y		; F1 E8
	brk $0E.b		; 00 0E
	rti		; 40

	ora [$F1.b]		; 07 F1
	beq   0.b		; F0 00
	ora $FBFD40.l		; 0F 40 FD FB
	cpy $00.b		; C4 00
	trb $40.b		; 14 40
	ora $E1F5FB.l		; 0F FB F5 E1
	php		; 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b),Y		; D1 08
	tsb $48.b		; 04 48
	ora $F5.b,S		; 03 F5
	sbc ($00.b),Y		; F1 00
	asl $40.b		; 06 40
	ora $F5.b,S		; 03 F5
	lda $0700.w,Y		; B9 00 07
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b,X)		; C1 00
	php		; 08
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp #$00.b		; C9 00
	ora #$40.b		; 09 40
	ora $F5.b,S		; 03 F5
	cmp ($00.b),Y		; D1 00
	asl A		; 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp $0B00.w,Y		; D9 00 0B
	rti		; 40

	phd		; 0B
	sbc $00BD.w		; ED BD 00
	tsb $0B40.w		; 0C 40 0B
	sbc $00C5.w		; ED C5 00
	ora $0B40.w		; 0D 40 0B
	sbc $00CD.w		; ED CD 00
	asl $0540.w		; 0E 40 05
	sbc ($F9.b,S),Y		; F3 F9
	brk $0F.b		; 00 0F
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc $1600.w,Y		; F9 00 16
	rti		; 40

	sed		; F8
	brk $F1.b		; 00 F1
	brk $17.b		; 00 17
	rti		; 40

	tsb $FBF5.w		; 0C F5 FB
	cmp ($08.b,S),Y		; D3 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	cmp $08.b,S		; C3 08
	cop $48.b		; 02 48
	ora [$E9.b]		; 07 E9
	cmp $08.b,S		; C3 08
	tsb $48.b		; 04 48
	ora $D3EB.w		; 0D EB D3
	brk $06.b		; 00 06
	rti		; 40

	xce		; FB
	sbc $00E3.w,X		; FD E3 00
	ora [$40.b]		; 07 40
	ora $F3.b		; 05 F3
	cmp ($00.b,S),Y		; D3 00
	php		; 08
	rti		; 40

	ora $F3.b		; 05 F3
	stp		; DB
	brk $09.b		; 00 09
	rti		; 40

	asl $F2.b		; 06 F2
	inc $00.b		; E6 00
	asl A		; 0A
	rti		; 40

	sbc $00BBF9.l,X		; FF F9 BB 00
	phd		; 0B
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc $00.b,S		; E3 00
	tsb $F540.w		; 0C 40 F5
	ora $F2.b,S		; 03 F2
	brk $0D.b		; 00 0D
	rti		; 40

	sed		; F8
	brk $EA.b		; 00 EA
	brk $0E.b		; 00 0E
	rti		; 40

	ora $F6FA.w		; 0D FA F6
	phx		; DA
	php		; 08
	brk $48.b		; 00 48
	ora #$E7.b		; 09 E7
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	ora #$E7.b		; 09 E7
	cmp ($08.b),Y		; D1 08
	tsb $48.b		; 04 48
	sbc $C2F7.w,Y		; F9 F7 C2
	php		; 08
	asl $48.b		; 06 48
	inc $02.b,X		; F6 02
	sbc ($00.b)		; F2 00
	php		; 08
	rti		; 40

	sed		; F8
	brk $EA.b		; 00 EA
	brk $09.b		; 00 09
	rti		; 40

	brk $F8.b		; 00 F8
	nop		; EA
	brk $0A.b		; 00 0A
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc ($00.b,X)		; E1 00
	phd		; 0B
	rti		; 40

	asl A		; 0A
	inc $00E1.w		; EE E1 00
	tsb $F540.w		; 0C 40 F5
	ora $FA.b,S		; 03 FA
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $D2FF.w,Y		; F9 FF D2
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b)		; D2 00
	ora $DF1940.l		; 0F 40 19 DF
	dec $1800.w		; CE 00 18
	rti		; 40

	ora $F6FA.w		; 0D FA F6
	lda $480008.l,X		; BF 08 00 48
	plx		; FA
	inc $CF.b,X		; F6 CF
	php		; 08
	cop $48.b		; 02 48
	asl A		; 0A
	inc $C0.b		; E6 C0
	php		; 08
	tsb $48.b		; 04 48
	sbc ($06.b)		; F2 06
	cmp $00.b		; C5 00
	asl $40.b		; 06 40
	sbc ($06.b)		; F2 06
	cmp $0700.w		; CD 00 07
	rti		; 40

	asl A		; 0A
	inc $00CF.w		; EE CF 00
	php		; 08
	rti		; 40

	asl A		; 0A
	inc $00D7.w		; EE D7 00
	ora #$40.b		; 09 40
	plx		; FA
	inc $00DF.w,X		; FE DF 00
	asl A		; 0A
	rti		; 40

	cop $F6.b		; 02 F6
	cmp $400B00.l,X		; DF 00 0B 40
	asl A		; 0A
	inc $00DF.w		; EE DF 00
	tsb $F240.w		; 0C 40 F2
	asl $D5.b		; 06 D5
	brk $0D.b		; 00 0D
	rti		; 40

	ora $F3.b		; 05 F3
	sbc [$00.b]		; E7 00
	asl $0D40.w		; 0E 40 0D
	xba		; EB
	sbc [$00.b]		; E7 00
	ora $F21140.l		; 0F 40 11 F2
	inc $08C5.w,X		; FE C5 08
	brk $48.b		; 00 48
	sbc ($FE.b)		; F2 FE
	cmp $08.b,X		; D5 08
	cop $48.b		; 02 48
	ora ($E6.b)		; 12 E6
	cmp ($00.b),Y		; D1 00
	tsb $40.b		; 04 40
	asl A		; 0A
	inc $00D3.w		; EE D3 00
	ora $40.b		; 05 40
	asl A		; 0A
	inc $00C5.w		; EE C5 00
	asl $40.b		; 06 40
	asl A		; 0A
	inc $00DD.w		; EE DD 00
	ora [$40.b]		; 07 40
	nop		; EA
	asl $00C9.w		; 0E C9 00
	php		; 08
	rti		; 40

	nop		; EA
	asl $00D1.w		; 0E D1 00
	ora #$40.b		; 09 40
	cop $F6.b		; 02 F6
	cmp $00.b		; C5 00
	asl A		; 0A
	rti		; 40

	cop $F6.b		; 02 F6
	cmp $0B00.w		; CD 00 0B
	rti		; 40

	cop $F6.b		; 02 F6
	cmp $00.b,X		; D5 00
	tsb $0240.w		; 0C 40 02
	inc $DD.b,X		; F6 DD
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $00.b		; E5 00
	asl $0C40.w		; 0E 40 0C
	cpx $00E5.w		; EC E5 00
	ora $01F740.l		; 0F 40 F7 01
	lda $1400.w,X		; BD 00 14
	rti		; 40

	sbc $00BDF9.l,X		; FF F9 BD 00
	ora $40.b,X		; 15 40
	ora [$F1.b]		; 07 F1
	lda $1600.w,X		; BD 00 16
	rti		; 40

	ora ($F3.b)		; 12 F3
	sbc $08C9.w,X		; FD C9 08
	brk $48.b		; 00 48
	ora $ED.b,S		; 03 ED
	cmp #$08.b		; C9 08
	cop $48.b		; 02 48
	sed		; F8
	sed		; F8
	lda $0408.w,Y		; B9 08 04
	pha		; 48
	xba		; EB
	ora $00CF.w		; 0D CF 00
	asl $40.b		; 06 40
	tsb $F4.b		; 04 F4
	sbc #$00.b		; E9 00
	ora [$40.b]		; 07 40
	tsb $E4EC.w		; 0C EC E4
	brk $08.b		; 00 08
	rti		; 40

	tsb $ECEC.w		; 0C EC EC
	brk $09.b		; 00 09
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp $0A00.w,Y		; D9 00 0A
	rti		; 40

	sbc $D9FB.w,X		; FD FB D9
	brk $0B.b		; 00 0B
	rti		; 40

	ora $F3.b		; 05 F3
	cmp $0C00.w,Y		; D9 00 0C
	rti		; 40

	inc $02.b,X		; F6 02
	sbc ($00.b,X)		; E1 00
	ora $FE40.w		; 0D 40 FE
	plx		; FA
	sbc ($00.b,X)		; E1 00
	asl $0640.w		; 0E 40 06
	sbc ($E1.b)		; F2 E1
	brk $0F.b		; 00 0F
	rti		; 40

	inc $12.b		; E6 12
	cpy $00.b		; C4 00
	asl $40.b,X		; 16 40
	inc $12.b		; E6 12
	cpy $1700.w		; CC 00 17
	rti		; 40

	inc $C70A.w		; EE 0A C7
	brk $18.b		; 00 18
	rti		; 40

	ora $00EFE9.l		; 0F E9 EF 00
	ora $1240.w,Y		; 19 40 12
	inc $F5.b		; E6 F5
	brk $1A.b		; 00 1A
	rti		; 40

	tsb $FBF5.w		; 0C F5 FB
	sbc ($08.b),Y		; F1 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	cmp $0208.w,Y		; D9 08 02
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cmp $0408.w,Y		; D9 08 04
	pha		; 48
	pea $D104.w		; F4 04 D1
	brk $06.b		; 00 06
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b),Y		; F1 00
	ora [$40.b]		; 07 40
	ora $F3.b		; 05 F3
	sbc $0800.w,Y		; F9 00 08
	rti		; 40

	jsr ($D1FC.w,X)		; FC FC D1
	brk $09.b		; 00 09
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b),Y		; D1 00
	asl A		; 0A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc #$00.b		; E9 00
	phd		; 0B
	rti		; 40

	sbc $E9FF.w,Y		; F9 FF E9
	brk $0C.b		; 00 0C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc #$00.b		; E9 00
	ora $0940.w		; 0D 40 09
	sbc $0E00E9.l		; EF E9 00 0E
	rti		; 40

	ora ($F3.b),Y		; 11 F3
	sbc $08D2.w,X		; FD D2 08
	brk $48.b		; 00 48
	sbc $FB.b,X		; F5 FB
	nop		; EA
	php		; 08
	cop $48.b		; 02 48
	ora $F5.b,S		; 03 F5
	cmp ($00.b)		; D2 00
	tsb $40.b		; 04 40
	ora $F5.b,S		; 03 F5
	phx		; DA
	brk $05.b		; 00 05
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sep #$00		; E2 00
	asl $40.b		; 06 40
	xce		; FB
	sbc $00E2.w,X		; FD E2 00
	ora [$40.b]		; 07 40
	ora $F5.b,S		; 03 F5
	sep #$00		; E2 00
	php		; 08
	rti		; 40

	phd		; 0B
	sbc $00D5.w		; ED D5 00
	ora #$40.b		; 09 40
	phd		; 0B
	sbc $00DD.w		; ED DD 00
	asl A		; 0A
	rti		; 40

	phd		; 0B
	sbc $00E5.w		; ED E5 00
	phd		; 0B
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	sbc $00.b		; E5 00
	tsb $EB40.w		; 0C 40 EB
	ora $00DA.w		; 0D DA 00
	ora $0540.w		; 0D 40 05
	sbc ($EA.b,S),Y		; F3 EA
	brk $0E.b		; 00 0E
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b)		; F2 00
	ora $03F540.l		; 0F 40 F5 03
	plx		; FA
	brk $14.b		; 00 14
	rti		; 40

	sbc $FAFB.w,X		; FD FB FA
	brk $15.b		; 00 15
	rti		; 40

	ora $F3.b		; 05 F3
	plx		; FA
	brk $16.b		; 00 16
	rti		; 40

	tsb $FBF5.w		; 0C F5 FB
	cmp ($08.b)		; D2 08
	brk $48.b		; 00 48
	sbc $0B.b		; E5 0B
	phx		; DA
	php		; 08
	cop $48.b		; 02 48
	sbc $E2F3.w,X		; FD F3 E2
	php		; 08
	tsb $48.b		; 04 48
	sbc $FB.b,X		; F5 FB
	sbc ($08.b)		; F2 08
	asl $48.b		; 06 48
	asl A		; 0A
	inc $00F7.w		; EE F7 00
	php		; 08
	rti		; 40

	sbc $D20B.w		; ED 0B D2
	brk $09.b		; 00 09
	rti		; 40

	sbc $03.b,X		; F5 03
	sep #$00		; E2 00
	asl A		; 0A
	rti		; 40

	sbc $13.b		; E5 13
	nop		; EA
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $EA0B.w		; ED 0B EA
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $03.b,X		; F5 03
	nop		; EA
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $F20B.w		; ED 0B F2
	brk $0E.b		; 00 0E
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b)		; F2 00
	ora $E40E40.l		; 0F 40 0E E4
	tsb $08DA.w		; 0C DA 08
	brk $48.b		; 00 48
	pea $DAFC.w		; F4 FC DA
	php		; 08
	cop $48.b		; 02 48
	sbc $08EA01.l		; EF 01 EA 08
	tsb $48.b		; 04 48
	ora $E3.b,X		; 15 E3
	sed		; F8
	brk $06.b		; 00 06
	rti		; 40

	ora $FADB.w,X		; 1D DB FA
	brk $07.b		; 00 07
	rti		; 40

	sbc $00EAF9.l,X		; FF F9 EA 00
	php		; 08
	rti		; 40

	sbc $00F2F9.l,X		; FF F9 F2 00
	ora #$40.b		; 09 40
	sbc $00FA09.l		; EF 09 FA 00
	asl A		; 0A
	rti		; 40

	sbc [$01.b],Y		; F7 01
	plx		; FA
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $00FAF9.l,X		; FF F9 FA 00
	tsb $0740.w		; 0C 40 07
	sbc ($F5.b),Y		; F1 F5
	brk $0D.b		; 00 0D
	rti		; 40

	ora $00F7E9.l		; 0F E9 F7 00
	asl $F040.w		; 0E 40 F0
	php		; 08
	cmp ($00.b)		; D2 00
	ora $00F840.l		; 0F 40 F8 00
	cmp ($00.b)		; D2 00
	asl $40.b,X		; 16 40
	tsb $FEF2.w		; 0C F2 FE
	sbc ($08.b),Y		; F1 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	sbc ($08.b),Y		; F1 08
	cop $48.b		; 02 48
	sbc [$F9.b],Y		; F7 F9
	sbc ($08.b,X)		; E1 08
	tsb $48.b		; 04 48
	sbc ($06.b)		; F2 06
	cmp $0600.w,Y		; D9 00 06
	rti		; 40

	plx		; FA
	inc $00D9.w,X		; FE D9 00
	ora [$40.b]		; 07 40
	ora $FDEB.w		; 0D EB FD
	brk $08.b		; 00 08
	rti		; 40

	cop $F6.b		; 02 F6
	cmp $0900.w,Y		; D9 00 09
	rti		; 40

	sbc $00DE09.l		; EF 09 DE 00
	asl A		; 0A
	rti		; 40

	sbc $00E609.l		; EF 09 E6 00
	phd		; 0B
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp $400C00.l,X		; DF 00 0C 40
	ora [$F1.b]		; 07 F1
	sbc [$00.b]		; E7 00
	ora $0F40.w		; 0D 40 0F
	sbc #$E7.b		; E9 E7
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($F2.b),Y		; 11 F2
	inc $08E0.w,X		; FE E0 08
	brk $48.b		; 00 48
	nop		; EA
	asl $00EA.w		; 0E EA 00
	cop $40.b		; 02 40
	asl A		; 0A
	inc $00FA.w		; EE FA 00
	ora $40.b,S		; 03 40
	asl A		; 0A
	inc $00ED.w		; EE ED 00
	tsb $40.b		; 04 40
	cop $F6.b		; 02 F6
	cpx #$00.b		; E0 00
	ora $40.b		; 05 40
	asl A		; 0A
	inc $00E0.w		; EE E0 00
	asl $40.b		; 06 40
	cop $F6.b		; 02 F6
	beq   0.b		; F0 00
	ora [$40.b]		; 07 40
	nop		; EA
	asl $00E2.w		; 0E E2 00
	php		; 08
	rti		; 40

	sbc ($06.b)		; F2 06
	beq   0.b		; F0 00
	ora #$40.b		; 09 40
	plx		; FA
	inc $00F0.w,X		; FE F0 00
	asl A		; 0A
	rti		; 40

	cpx $DA0C.w		; EC 0C DA
	brk $0B.b		; 00 0B
	rti		; 40

	pea $D804.w		; F4 04 D8
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($D8FC.w,X)		; FC FC D8
	brk $0D.b		; 00 0D
	rti		; 40

	ora $FDEB.w		; 0D EB FD
	brk $0E.b		; 00 0E
	rti		; 40

	ora $F3.b		; 05 F3
	inc $00.b,X		; F6 00
	ora $03F540.l		; 0F 40 F5 03
	sed		; F8
	brk $12.b		; 00 12
	rti		; 40

	sbc $F8FB.w,X		; FD FB F8
	brk $13.b		; 00 13
	rti		; 40

	bpl  -6.b		; 10 FA
	inc $D9.b,X		; F6 D9
	php		; 08
	brk $48.b		; 00 48
	plx		; FA
	inc $E9.b,X		; F6 E9
	php		; 08
	cop $48.b		; 02 48
	jsr ($C9F4.w,X)		; FC F4 C9
	php		; 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $00B9.w,X		; FE B9 00
	asl $40.b		; 06 40
	plx		; FA
	inc $00F9.w,X		; FE F9 00
	ora [$40.b]		; 07 40
	cop $F6.b		; 02 F6
	sbc $0800.w,Y		; F9 00 08
	rti		; 40

	asl A		; 0A
	inc $00D3.w		; EE D3 00
	ora #$40.b		; 09 40
	ora ($E6.b)		; 12 E6
	cmp ($00.b,S),Y		; D3 00
	asl A		; 0A
	rti		; 40

	plx		; FA
	inc $00B1.w,X		; FE B1 00
	phd		; 0B
	rti		; 40

	tsb $C3EC.w		; 0C EC C3
	brk $0C.b		; 00 0C
	rti		; 40

	tsb $CBEC.w		; 0C EC CB
	brk $0D.b		; 00 0D
	rti		; 40

	pea $C804.w		; F4 04 C8
	brk $0E.b		; 00 0E
	rti		; 40

	pea $D004.w		; F4 04 D0
	brk $0F.b		; 00 0F
	rti		; 40

	inc $02.b,X		; F6 02
	cmp ($00.b,X)		; C1 00
	asl $40.b,X		; 16 40
	inc $C1FA.w,X		; FE FA C1
	brk $17.b		; 00 17
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b,X)		; C1 00
	clc		; 18
	rti		; 40

	ora $F8.b,X		; 15 F8
	sed		; F8
	cpy #$08.b		; C0 08
	brk $48.b		; 00 48
	cop $F6.b		; 02 F6
	inx		; E8
	brk $02.b		; 00 02
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cld		; D8
	brk $03.b		; 00 03
	rti		; 40

	xce		; FB
	sbc $00D8.w,X		; FD D8 00
	tsb $40.b		; 04 40
	ora $F5.b,S		; 03 F5
	cld		; D8
	brk $05.b		; 00 05
	rti		; 40

	phd		; 0B
	sbc $00D8.w		; ED D8 00
	asl $40.b		; 06 40
	inc $E0FA.w,X		; FE FA E0
	brk $07.b		; 00 07
	rti		; 40

	asl $F2.b		; 06 F2
	cpx #$00.b		; E0 00
	php		; 08
	rti		; 40

	sbc $00F8F9.l,X		; FF F9 F8 00
	ora #$40.b		; 09 40
	bpl -24.b		; 10 E8
	cmp ($00.b,X)		; C1 00
	asl A		; 0A
	rti		; 40

	bpl -24.b		; 10 E8
	cmp #$00.b		; C9 00
	phd		; 0B
	rti		; 40

	bpl -24.b		; 10 E8
	cmp ($00.b),Y		; D1 00
	tsb $1840.w		; 0C 40 18
	cpx #$D1.b		; E0 D1
	brk $0D.b		; 00 0D
	rti		; 40

	brk $F8.b		; 00 F8
	jsr ($0E00.w,X)		; FC 00 0E
	rti		; 40

	brk $F8.b		; 00 F8
	beq   0.b		; F0 00
	ora $DE1A40.l		; 0F 40 1A DE
	cmp #$00.b		; C9 00
	ora ($40.b)		; 12 40
	php		; 08
	beq -64.b		; F0 C0
	brk $13.b		; 00 13
	rti		; 40

	php		; 08
	beq -56.b		; F0 C8
	brk $14.b		; 00 14
	rti		; 40

	sed		; F8
	brk $D0.b		; 00 D0
	brk $15.b		; 00 15
	rti		; 40

	brk $F8.b		; 00 F8
	bne   0.b		; D0 00
	asl $40.b,X		; 16 40
	php		; 08
	beq -48.b		; F0 D0
	brk $17.b		; 00 17
	rti		; 40

	ora #$02.b		; 09 02
	inc $08E0.w		; EE E0 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	beq   8.b		; F0 08
	cop $48.b		; 02 48
	brk $F0.b		; 00 F0
	cpy #$08.b		; C0 08
	tsb $48.b		; 04 48
	brk $F0.b		; 00 F0
	bne   8.b		; D0 08
	asl $48.b		; 06 48
	sed		; F8
	brk $D9.b		; 00 D9
	brk $08.b		; 00 08
	rti		; 40

	bpl -24.b		; 10 E8
	cpy #$00.b		; C0 00
	ora #$40.b		; 09 40
	bpl -24.b		; 10 E8
	iny		; C8
	brk $0A.b		; 00 0A
	rti		; 40

	bpl -24.b		; 10 E8
	bne   0.b		; D0 00
	phd		; 0B
	rti		; 40

	bpl -24.b		; 10 E8
	cld		; D8
	brk $0C.b		; 00 0C
	rti		; 40

	bpl  -5.b		; 10 FB
	sbc $E1.b,X		; F5 E1
	php		; 08
	brk $48.b		; 00 48
	xce		; FB
	sbc $F1.b,X		; F5 F1
	php		; 08
	cop $48.b		; 02 48
	jsr ($C1F4.w,X)		; FC F4 C1
	php		; 08
	tsb $48.b		; 04 48
	jsr ($D1F4.w,X)		; FC F4 D1
	php		; 08
	asl $48.b		; 06 48
	jsr ($B9FC.w,X)		; FC FC B9
	brk $08.b		; 00 08
	rti		; 40

	trb $E4.b		; 14 E4
	cmp $0900.w,Y		; D9 00 09
	rti		; 40

	tsb $C1EC.w		; 0C EC C1
	brk $0A.b		; 00 0A
	rti		; 40

	tsb $C9EC.w		; 0C EC C9
	brk $0B.b		; 00 0B
	rti		; 40

	tsb $D1EC.w		; 0C EC D1
	brk $0C.b		; 00 0C
	rti		; 40

	tsb $D9EC.w		; 0C EC D9
	brk $0D.b		; 00 0D
	rti		; 40

	pea $C404.w		; F4 04 C4
	brk $0E.b		; 00 0E
	rti		; 40

	pea $CC04.w		; F4 04 CC
	brk $0F.b		; 00 0F
	rti		; 40

	trb $E4.b		; 14 E4
	cpy $1800.w		; CC 00 18
	rti		; 40

	cpx $D40C.w		; EC 0C D4
	brk $19.b		; 00 19
	rti		; 40

	pea $D404.w		; F4 04 D4
	brk $1A.b		; 00 1A
	rti		; 40

	sbc #$0F.b		; E9 0F
	dec $1B00.w		; CE 00 1B
	rti		; 40

	tsb $EE02.w		; 0C 02 EE
	beq   8.b		; F0 08
	brk $48.b		; 00 48
	php		; 08
	inx		; E8
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	php		; 08
	inx		; E8
	cmp ($08.b),Y		; D1 08
	tsb $48.b		; 04 48
	sed		; F8
	sed		; F8
	cpy #$08.b		; C0 08
	asl $48.b		; 06 48
	php		; 08
	beq -31.b		; F0 E1
	brk $08.b		; 00 08
	rti		; 40

	clc		; 18
	cpx #$CC.b		; E0 CC
	brk $09.b		; 00 09
	rti		; 40

	brk $F8.b		; 00 F8
	cld		; D8
	brk $0A.b		; 00 0A
	rti		; 40

	clc		; 18
	cpx #$D8.b		; E0 D8
	brk $0B.b		; 00 0B
	rti		; 40

	brk $F8.b		; 00 F8
	cpx #$00.b		; E0 00
	tsb $0340.w		; 0C 40 03
	sbc $E8.b,X		; F5 E8
	brk $0D.b		; 00 0D
	rti		; 40

	sed		; F8
	brk $D0.b		; 00 D0
	brk $0E.b		; 00 0E
	rti		; 40

	brk $F8.b		; 00 F8
	bne   0.b		; D0 00
	ora $0E1240.l		; 0F 40 12 0E
	sep #$C0		; E2 C0
	php		; 08
	brk $48.b		; 00 48
	asl $D0E2.w		; 0E E2 D0
	php		; 08
	cop $48.b		; 02 48
	ora $F5.b,S		; 03 F5
	sed		; F8
	brk $04.b		; 00 04
	rti		; 40

	ora $E3.b,X		; 15 E3
	sed		; F8
	brk $05.b		; 00 05
	rti		; 40

	rol $D2.b		; 26 D2
	cmp #$00.b		; C9 00
	asl $40.b		; 06 40
	asl $F2.b		; 06 F2
	cmp $00.b,S		; C3 00
	ora [$40.b]		; 07 40
	asl $C3DA.w,X		; 1E DA C3
	brk $08.b		; 00 08
	rti		; 40

	asl $F2.b		; 06 F2
	wai		; CB
	brk $09.b		; 00 09
	rti		; 40

	asl $CBDA.w,X		; 1E DA CB
	brk $0A.b		; 00 0A
	rti		; 40

	asl $D3DA.w,X		; 1E DA D3
	brk $0B.b		; 00 0B
	rti		; 40

	rol $D2.b		; 26 D2
	cmp ($00.b,S),Y		; D3 00
	tsb $0640.w		; 0C 40 06
	sbc ($F0.b)		; F2 F0
	brk $0D.b		; 00 0D
	rti		; 40

	phd		; 0B
	sbc $00E0.w		; ED E0 00
	asl $1340.w		; 0E 40 13
	sbc $E0.b		; E5 E0
	brk $0F.b		; 00 0F
	rti		; 40

	ora $00F0E9.l		; 0F E9 F0 00
	trb $40.b		; 14 40
	ora [$E1.b],Y		; 17 E1
	beq   0.b		; F0 00
	ora $40.b,X		; 15 40
	ora #$EF.b		; 09 EF
	inx		; E8
	brk $16.b		; 00 16
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	inx		; E8
	brk $17.b		; 00 17
	rti		; 40

	phd		; 0B
	sbc $FB.b,X		; F5 FB
	bne   8.b		; D0 08
	brk $48.b		; 00 48
	ora $EB.b		; 05 EB
	bne   8.b		; D0 08
	cop $48.b		; 02 48
	sbc $E0F7.w,Y		; F9 F7 E0
	php		; 08
	tsb $48.b		; 04 48
	cop $F6.b		; 02 F6
	iny		; C8
	brk $06.b		; 00 06
	rti		; 40

	asl A		; 0A
	inc $00C8.w		; EE C8 00
	ora [$40.b]		; 07 40
	ora ($E6.b)		; 12 E6
	cmp $0800.w		; CD 00 08
	rti		; 40

	ora ($E6.b)		; 12 E6
	cmp $00.b,X		; D5 00
	ora #$40.b		; 09 40
	sbc ($07.b),Y		; F1 07
	inx		; E8
	brk $0A.b		; 00 0A
	rti		; 40

	plx		; FA
	inc $00C8.w,X		; FE C8 00
	phd		; 0B
	rti		; 40

	ora #$EF.b		; 09 EF
	cpx #$00.b		; E0 00
	tsb $0940.w		; 0C 40 09
	sbc $0D00E8.l		; EF E8 00 0D
	rti		; 40

	ora $00F0.w		; 0D F0 00
	dex		; CA
	php		; 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	cpx #$08.b		; E0 08
	cop $48.b		; 02 48
	php		; 08
	inx		; E8
	iny		; C8
	php		; 08
	tsb $48.b		; 04 48
	beq   8.b		; F0 08
	phx		; DA
	brk $06.b		; 00 06
	rti		; 40

	sed		; F8
	brk $DA.b		; 00 DA
	brk $07.b		; 00 07
	rti		; 40

	beq   8.b		; F0 08
	xba		; EB
	brk $08.b		; 00 08
	rti		; 40

	bpl -24.b		; 10 E8
	cpx $00.b		; E4 00
	ora #$40.b		; 09 40
	sed		; F8
	brk $EA.b		; 00 EA
	brk $0A.b		; 00 0A
	rti		; 40

	sed		; F8
	brk $E2.b		; 00 E2
	brk $0B.b		; 00 0B
	rti		; 40

	brk $F8.b		; 00 F8
	iny		; C8
	brk $0C.b		; 00 0C
	rti		; 40

	brk $F8.b		; 00 F8
	bne   0.b		; D0 00
	ora $0040.w		; 0D 40 00
	sed		; F8
	cld		; D8
	brk $0E.b		; 00 0E
	rti		; 40

	php		; 08
	beq -40.b		; F0 D8
	brk $0F.b		; 00 0F
	rti		; 40

	tsb $05EB.w		; 0C EB 05
	sbc [$08.b]		; E7 08
	brk $48.b		; 00 48
	sbc $CB03.w		; ED 03 CB
	php		; 08
	cop $48.b		; 02 48
	sbc $C7F3.w,X		; FD F3 C7
	php		; 08
	tsb $48.b		; 04 48
	sbc $DFF7.w,Y		; F9 F7 DF
	php		; 08
	asl $48.b		; 06 48
	ora $CCEB.w		; 0D EB CC
	brk $08.b		; 00 08
	rti		; 40

	ora $F3.b		; 05 F3
	lda $400900.l,X		; BF 00 09 40
	sbc $03.b,X		; F5 03
	stp		; DB
	brk $0A.b		; 00 0A
	rti		; 40

	sbc $D7FB.w,X		; FD FB D7
	brk $0B.b		; 00 0B
	rti		; 40

	ora $F3.b		; 05 F3
	cmp [$00.b],Y		; D7 00
	tsb $0D40.w		; 0C 40 0D
	xba		; EB
	cpy $00.b		; C4 00
	ora $0940.w		; 0D 40 09
	sbc $0E00DF.l		; EF DF 00 0E
	rti		; 40

	ora #$EF.b		; 09 EF
	sbc [$00.b]		; E7 00
	ora $F00B40.l		; 0F 40 0B F0
	brk $B8.b		; 00 B8
	php		; 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	cld		; D8
	php		; 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	iny		; C8
	php		; 08
	tsb $48.b		; 04 48
	beq   8.b		; F0 08
	bcs   0.b		; B0 00
	asl $40.b		; 06 40
	brk $F8.b		; 00 F8
	cpy #$00.b		; C0 00
	ora [$40.b]		; 07 40
	sbc $00E809.l		; EF 09 E8 00
	php		; 08
	rti		; 40

	sbc [$01.b],Y		; F7 01
	inx		; E8
	brk $09.b		; 00 09
	rti		; 40

	sbc #$0F.b		; E9 0F
	sbc $0A00.w		; ED 00 0A
	rti		; 40

	sbc $00E8F9.l,X		; FF F9 E8 00
	phd		; 0B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	iny		; C8
	brk $0C.b		; 00 0C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	bne   0.b		; D0 00
	ora $1540.w		; 0D 40 15
	ora $ED.b,S		; 03 ED
	rep #$08		; C2 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp $08.b,S		; C3 08
	cop $48.b		; 02 48
	ora $F5.b,S		; 03 F5
	nop		; EA
	brk $04.b		; 00 04
	rti		; 40

	ora $F5.b,S		; 03 F5
	phx		; DA
	brk $05.b		; 00 05
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b)		; D2 00
	asl $40.b		; 06 40
	phd		; 0B
	sbc $00D2.w		; ED D2 00
	ora [$40.b]		; 07 40
	xce		; FB
	sbc $00D3.w,X		; FD D3 00
	php		; 08
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cmp ($00.b,S),Y		; D3 00
	ora #$40.b		; 09 40
	tas		; 1B
	cmp $00D3.w,X		; DD D3 00
	asl A		; 0A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	stp		; DB
	brk $0B.b		; 00 0B
	rti		; 40

	xce		; FB
	sbc $00DB.w,X		; FD DB 00
	tsb $FB40.w		; 0C 40 FB
	sbc $00E3.w,X		; FD E3 00
	ora $FB40.w		; 0D 40 FB
	sbc $00EB.w,X		; FD EB 00
	asl $0B40.w		; 0E 40 0B
	sbc $00F3.w		; ED F3 00
	ora $F50340.l		; 0F 40 03 F5
	sep #$00		; E2 00
	trb $40.b		; 14 40
	tsb $F4.b		; 04 F4
	sbc ($00.b),Y		; F1 00
	ora $40.b,X		; 15 40
	jsr ($F3FC.w,X)		; FC FC F3
	brk $16.b		; 00 16
	rti		; 40

	ora $E3.b,X		; 15 E3
	wai		; CB
	brk $17.b		; 00 17
	rti		; 40

	ora $CBDB.w,X		; 1D DB CB
	brk $18.b		; 00 18
	rti		; 40

	brk $F8.b		; 00 F8
	sbc [$00.b],Y		; F7 00
	ora $1940.w,Y		; 19 40 19
	cmp $1A00C3.l,X		; DF C3 00 1A
	rti		; 40

	ora ($FD.b)		; 12 FD
	sbc ($DE.b,S),Y		; F3 DE
	php		; 08
	brk $48.b		; 00 48
	sbc $08C6F1.l,X		; FF F1 C6 08
	cop $48.b		; 02 48
	sbc $03.b,X		; F5 03
	dec $0400.w,X		; DE 00 04
	rti		; 40

	ora $F3.b		; 05 F3
	inc $00.b,X		; F6 00
	ora $40.b		; 05 40
	ora $F6EB.w		; 0D EB F6
	brk $06.b		; 00 06
	rti		; 40

	plx		; FA
	inc $00BE.w,X		; FE BE 00
	ora [$40.b]		; 07 40
	ora $DEEB.w		; 0D EB DE
	brk $08.b		; 00 08
	rti		; 40

	ora $E6EB.w		; 0D EB E6
	brk $09.b		; 00 09
	rti		; 40

	inc $EEFA.w,X		; FE FA EE
	brk $0A.b		; 00 0A
	rti		; 40

	asl $F2.b		; 06 F2
	inc $0B00.w		; EE 00 0B
	rti		; 40

	asl $EEEA.w		; 0E EA EE
	brk $0C.b		; 00 0C
	rti		; 40

	ora $00CAE9.l		; 0F E9 CA 00
	ora $0F40.w		; 0D 40 0F
	sbc #$D2.b		; E9 D2
	brk $0E.b		; 00 0E
	rti		; 40

	sbc [$01.b],Y		; F7 01
	dec $00.b		; C6 00
	ora $01F740.l		; 0F 40 F7 01
	dec $00.b,X		; D6 00
	trb $40.b		; 14 40
	cop $F6.b		; 02 F6
	ldx $1500.w,Y		; BE 00 15
	rti		; 40

	sbc $00D6F9.l,X		; FF F9 D6 00
	asl $40.b,X		; 16 40
	ora [$F1.b]		; 07 F1
	dec $00.b,X		; D6 00
	ora [$40.b],Y		; 17 40
	ora ($F2.b)		; 12 F2
	inc $08C9.w,X		; FE C9 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	cmp #$08.b		; C9 08
	cop $48.b		; 02 48
	plx		; FA
	inc $D9.b,X		; F6 D9
	php		; 08
	tsb $48.b		; 04 48
	ora ($E6.b)		; 12 E6
	cmp $0600.w,Y		; D9 00 06
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp $0700.w,Y		; D9 00 07
	rti		; 40

	asl A		; 0A
	inc $00D9.w		; EE D9 00
	php		; 08
	rti		; 40

	ora ($E6.b)		; 12 E6
	cmp $400900.l		; CF 00 09 40
	sbc $03.b,X		; F5 03
	cmp ($00.b,X)		; C1 00
	asl A		; 0A
	rti		; 40

	sbc $C1FB.w,X		; FD FB C1
	brk $0B.b		; 00 0B
	rti		; 40

	ora $F3.b		; 05 F3
	cmp ($00.b,X)		; C1 00
	tsb $F540.w		; 0C 40 F5
	ora $F9.b,S		; 03 F9
	brk $0D.b		; 00 0D
	rti		; 40

	ora $C7EB.w		; 0D EB C7
	brk $0E.b		; 00 0E
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b),Y		; F1 00
	ora $01F740.l		; 0F 40 F7 01
	sbc #$00.b		; E9 00
	asl $40.b,X		; 16 40
	sbc $00E9F9.l,X		; FF F9 E9 00
	ora [$40.b],Y		; 17 40
	ora [$F1.b]		; 07 F1
	sbc #$00.b		; E9 00
	clc		; 18
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc ($40.b),Y		; F1 40
	ora $F00800.l		; 0F 00 08 F0
	sbc $0D40.w,Y		; F9 40 0D
	brk $0D.b		; 00 0D
	sbc ($FE.b)		; F2 FE
	cmp $0008.w,Y		; D9 08 00
	pha		; 48
	cop $EE.b		; 02 EE
	cmp $0208.w,Y		; D9 08 02
	pha		; 48
	xce		; FB
	sbc $E9.b,X		; F5 E9
	php		; 08
	tsb $48.b		; 04 48
	ora ($E6.b)		; 12 E6
	sbc ($00.b,X)		; E1 00
	asl $40.b		; 06 40
	sbc ($05.b,S),Y		; F3 05
	sbc #$00.b		; E9 00
	ora [$40.b]		; 07 40
	phd		; 0B
	sbc $00E9.w		; ED E9 00
	php		; 08
	rti		; 40

	phd		; 0B
	sbc $00F9.w		; ED F9 00
	ora #$40.b		; 09 40
	ora ($E6.b)		; 12 E6
	cmp $0A00.w,Y		; D9 00 0A
	rti		; 40

	xce		; FB
	sbc $00F9.w,X		; FD F9 00
	phd		; 0B
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc $0C00.w,Y		; F9 00 0C
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cmp ($00.b),Y		; D1 00
	ora $FF40.w		; 0D 40 FF
	sbc $00D1.w,Y		; F9 D1 00
	asl $0740.w		; 0E 40 07
	sbc ($D1.b),Y		; F1 D1
	rti		; 40

	ora $1600.w		; 0D 00 16
	jsr ($C1F4.w,X)		; FC F4 C1
	php		; 08
	brk $48.b		; 00 48
	tsb $C1E4.w		; 0C E4 C1
	php		; 08
	cop $48.b		; 02 48
	ora $F5.b,S		; 03 F5
	sbc #$00.b		; E9 00
	tsb $40.b		; 04 40
	ora $F5.b,S		; 03 F5
	sbc ($00.b),Y		; F1 00
	ora $40.b		; 05 40
	ora $F5.b,S		; 03 F5
	sbc $0600.w,Y		; F9 00 06
	rti		; 40

	phd		; 0B
	sbc $00EF.w		; ED EF 00
	ora [$40.b]		; 07 40
	phd		; 0B
	sbc $00F7.w		; ED F7 00
	php		; 08
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	ora #$40.b		; 09 40
	phd		; 0B
	sbc $00E1.w		; ED E1 00
	asl A		; 0A
	rti		; 40

	jsr ($D1FC.w,X)		; FC FC D1
	brk $0B.b		; 00 0B
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b),Y		; D1 00
	tsb $0C40.w		; 0C 40 0C
	cpx $00D1.w		; EC D1 00
	ora $1440.w		; 0D 40 14
	cpx $D1.b		; E4 D1
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $0F00.w,Y		; D9 00 0F
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp $1400.w,Y		; D9 00 14
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp $1500.w,Y		; D9 00 15
	rti		; 40

	ora [$D9.b],Y		; 17 D9
	pei ($08.b)		; D4 08
	asl $48.b,X		; 16 48
	and [$C9.b]		; 27 C9
	pei ($08.b)		; D4 08
	clc		; 18
	pha		; 48
	and [$C1.b],Y		; 37 C1
	pei ($00.b)		; D4 00
	inc A		; 1A
	rti		; 40

	and [$C1.b],Y		; 37 C1
	jmp.w [$1B00]		; DC 00 1B
	rti		; 40

	and $00E4C9.l		; 2F C9 E4 00
	trb $3740.w		; 1C 40 37
	cmp ($E4.b,X)		; C1 E4
	brk $1D.b		; 00 1D
	rti		; 40

	ora $C1F4FC.l,X		; 1F FC F4 C1
	php		; 08
	brk $48.b		; 00 48
	tsb $C1E4.w		; 0C E4 C1
	php		; 08
	cop $48.b		; 02 48
	ora $F5.b,S		; 03 F5
	sbc #$00.b		; E9 00
	tsb $40.b		; 04 40
	ora $F5.b,S		; 03 F5
	sbc ($00.b),Y		; F1 00
	ora $40.b		; 05 40
	ora $F5.b,S		; 03 F5
	sbc $0600.w,Y		; F9 00 06
	rti		; 40

	phd		; 0B
	sbc $00EF.w		; ED EF 00
	ora [$40.b]		; 07 40
	phd		; 0B
	sbc $00F7.w		; ED F7 00
	php		; 08
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	ora #$40.b		; 09 40
	phd		; 0B
	sbc $00E1.w		; ED E1 00
	asl A		; 0A
	rti		; 40

	jsr ($D1FC.w,X)		; FC FC D1
	brk $0B.b		; 00 0B
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b),Y		; D1 00
	tsb $0C40.w		; 0C 40 0C
	cpx $00D1.w		; EC D1 00
	ora $1440.w		; 0D 40 14
	cpx $D1.b		; E4 D1
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $0F00.w,Y		; D9 00 0F
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp $1400.w,Y		; D9 00 14
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp $1500.w,Y		; D9 00 15
	rti		; 40

	dec A		; 3A
	ldx $EF.b,Y		; B6 EF
	php		; 08
	asl $48.b,X		; 16 48
	and $D5.b,S		; 23 D5
	cpx #$00.b		; E0 00
	clc		; 18
	rti		; 40

	pld		; 2B
	cmp $00E0.w		; CD E0 00
	ora $3340.w,Y		; 19 40 33
	cmp $E0.b		; C5 E0
	brk $1A.b		; 00 1A
	rti		; 40

	tsa		; 3B
	lda $00E0.w,X		; BD E0 00
	tas		; 1B
	rti		; 40

	ora $E3.b,X		; 15 E3
	cmp $1C00.w,Y		; D9 00 1C
	rti		; 40

	ora $D9DB.w,X		; 1D DB D9
	brk $1D.b		; 00 1D
	rti		; 40

	and $D3.b		; 25 D3
	cmp $1E00.w,Y		; D9 00 1E
	rti		; 40

	and $D9CB.w		; 2D CB D9
	brk $1F.b		; 00 1F
	rti		; 40

	and $C3.b,X		; 35 C3
	cmp $2000.w,Y		; D9 00 20
	rti		; 40

	and [$C1.b],Y		; 37 C1
	sbc [$00.b]		; E7 00
	and ($40.b,X)		; 21 40
	and $00E7B9.l,X		; 3F B9 E7 00
	jsl $D82040.l		; 22 40 20 D8
	cmp ($00.b),Y		; D1 00
	and $40.b,S		; 23 40
	plp		; 28
	bne -47.b		; D0 D1
	brk $24.b		; 00 24
	rti		; 40

	bmi -56.b		; 30 C8
	cmp ($00.b),Y		; D1 00
	and $40.b		; 25 40
	ora ($FA.b)		; 12 FA
	inc $D9.b,X		; F6 D9
	php		; 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	cop $F6.b		; 02 F6
	sbc #$00.b		; E9 00
	tsb $40.b		; 04 40
	sbc $03.b,X		; F5 03
	sbc $0500.w,Y		; F9 00 05
	rti		; 40

	inc $02.b,X		; F6 02
	sbc ($00.b),Y		; F1 00
	asl $40.b		; 06 40
	inc $F1FA.w,X		; FE FA F1
	brk $07.b		; 00 07
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b),Y		; F1 00
	php		; 08
	rti		; 40

	plx		; FA
	inc $00E9.w,X		; FE E9 00
	ora #$40.b		; 09 40
	ora [$F1.b]		; 07 F1
	cmp ($40.b,X)		; C1 40
	cop $00.b		; 02 00
	ora [$F1.b]		; 07 F1
	cmp #$40.b		; C9 40
	ora ($00.b)		; 12 00
	sbc [$01.b],Y		; F7 01
	cmp ($00.b),Y		; D1 00
	asl A		; 0A
	rti		; 40

	sbc $00D1F9.l,X		; FF F9 D1 00
	phd		; 0B
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp ($00.b),Y		; D1 00
	tsb $EF40.w		; 0C 40 EF
	ora #$C7.b		; 09 C7
	brk $0D.b		; 00 0D
	rti		; 40

	ora $40C7E9.l		; 0F E9 C7 40
	ora $EF00.w		; 0D 00 EF
	ora #$CF.b		; 09 CF
	brk $0E.b		; 00 0E
	rti		; 40

	ora $40CFE9.l		; 0F E9 CF 40
	asl $0800.w		; 0E 00 08
	beq  -7.b		; F0 F9
	rti		; 40

	ora $00.b		; 05 00
	ora ($FA.b),Y		; 11 FA
	inc $DF.b,X		; F6 DF
	php		; 08
	brk $48.b		; 00 48
	plx		; FA
	inc $CF.b,X		; F6 CF
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $BF.b,X		; F6 BF
	php		; 08
	tsb $48.b		; 04 48
	ora ($E6.b)		; 12 E6
	cpy $0600.w		; CC 00 06
	rti		; 40

	sbc ($06.b)		; F2 06
	pei ($00.b)		; D4 00
	ora [$40.b]		; 07 40
	sbc ($06.b)		; F2 06
	cpx $0800.w		; EC 00 08
	rti		; 40

	asl A		; 0A
	inc $00EC.w		; EE EC 00
	ora #$40.b		; 09 40
	sbc ($06.b)		; F2 06
	pea $0A00.w		; F4 00 0A
	rti		; 40

	plx		; FA
	inc $00EF.w,X		; FE EF 00
	phd		; 0B
	rti		; 40

	sbc ($06.b)		; F2 06
	cpy $00.b		; C4 00
	tsb $1240.w		; 0C 40 12
	inc $C4.b		; E6 C4
	brk $0D.b		; 00 0D
	rti		; 40

	sbc ($06.b)		; F2 06
	cpy $0E00.w		; CC 00 0E
	rti		; 40

	asl A		; 0A
	inc $00BF.w		; EE BF 00
	ora $EE0A40.l		; 0F 40 0A EE
	cmp [$00.b]		; C7 00
	asl $40.b,X		; 16 40
	asl A		; 0A
	inc $00CF.w		; EE CF 00
	ora [$40.b],Y		; 17 40
	phd		; 0B
	sbc $40F4.w		; ED F4 40
	asl A		; 0A
	brk $03.b		; 00 03
	sbc $EF.b,X		; F5 EF
	rti		; 40

	phd		; 0B
	brk $0F.b		; 00 0F
	plx		; FA
	inc $D3.b,X		; F6 D3
	php		; 08
	brk $48.b		; 00 48
	sbc ($FE.b)		; F2 FE
	tyx		; BB
	php		; 08
	cop $48.b		; 02 48
	cop $EE.b		; 02 EE
	tyx		; BB
	php		; 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $00E3.w,X		; FE E3 00
	asl $40.b		; 06 40
	ora ($E6.b)		; 12 E6
	cmp $00.b,S		; C3 00
	ora [$40.b]		; 07 40
	sbc ($06.b)		; F2 06
	cpx $00.b		; E4 00
	php		; 08
	rti		; 40

	asl A		; 0A
	inc $00D7.w		; EE D7 00
	ora #$40.b		; 09 40
	ora $F5.b,S		; 03 F5
	sep #$00		; E2 00
	asl A		; 0A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	wai		; CB
	brk $0B.b		; 00 0B
	rti		; 40

	xce		; FB
	sbc $00CB.w,X		; FD CB 00
	tsb $0340.w		; 0C 40 03
	sbc $CB.b,X		; F5 CB
	brk $0D.b		; 00 0D
	rti		; 40

	phd		; 0B
	sbc $00CB.w		; ED CB 00
	asl $0B40.w		; 0E 40 0B
	sbc $40E4.w		; ED E4 40
	php		; 08
	brk $0E.b		; 00 0E
	nop		; EA
	xba		; EB
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $40EB09.l		; EF 09 EB 40
	ora $F21100.l		; 0F 00 11 F2
	inc $08C1.w,X		; FE C1 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	ora ($DE.b)		; 12 DE
	cmp ($08.b,X)		; C1 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $E1.b,X		; F6 E1
	php		; 08
	asl $48.b		; 06 48
	asl A		; 0A
	inc $E1.b		; E6 E1
	php		; 08
	php		; 08
	pha		; 48
	plx		; FA
	inc $D1.b,X		; F6 D1
	php		; 08
	asl A		; 0A
	pha		; 48
	asl A		; 0A
	inc $D1.b		; E6 D1
	php		; 08
	tsb $FE48.w		; 0C 48 FE
	sbc ($F1.b)		; F2 F1
	php		; 08
	asl $1A48.w		; 0E 48 1A
	dec $00D1.w,X		; DE D1 00
	jsr $2240.w		; 20 40 22
	dec $CD.b,X		; D6 CD
	brk $21.b		; 00 21
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp ($00.b),Y		; D1 00
	jsl $EA0E40.l		; 22 40 0E EA
	sbc ($00.b),Y		; F1 00
	and $40.b,S		; 23 40
	asl $F9EA.w		; 0E EA F9
	brk $24.b		; 00 24
	rti		; 40

	sbc $B9FF.w,Y		; F9 FF B9
	brk $25.b		; 00 25
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda $2600.w,Y		; B9 00 26
	rti		; 40

	ora #$EF.b		; 09 EF
	lda $2700.w,Y		; B9 00 27
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	lda $2800.w,Y		; B9 00 28
	rti		; 40

	trb $F6FA.w		; 1C FA F6
	ldx $0008.w,Y		; BE 08 00
	pha		; 48
	asl A		; 0A
	inc $BE.b		; E6 BE
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $CE.b,X		; F6 CE
	php		; 08
	tsb $48.b		; 04 48
	asl A		; 0A
	inc $CE.b		; E6 CE
	php		; 08
	asl $48.b		; 06 48
	plx		; FA
	inc $DE.b,X		; F6 DE
	php		; 08
	php		; 08
	pha		; 48
	asl A		; 0A
	inc $DE.b		; E6 DE
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc ($06.b)		; F2 06
	cmp ($00.b,S),Y		; D3 00
	tsb $2240.w		; 0C 40 22
	dec $D3.b,X		; D6 D3
	brk $0D.b		; 00 0D
	rti		; 40

	asl A		; 0A
	inc $00F6.w		; EE F6 00
	asl $2A40.w		; 0E 40 2A
	dec $00C9.w		; CE C9 00
	ora $CE2A40.l		; 0F 40 2A CE
	cmp ($00.b),Y		; D1 00
	trb $F240.w		; 1C 40 F2
	asl $C3.b		; 06 C3
	brk $1D.b		; 00 1D
	rti		; 40

	jsl $00C3D6.l		; 22 D6 C3 00
	asl $F240.w,X		; 1E 40 F2
	asl $CB.b		; 06 CB
	brk $1F.b		; 00 1F
	rti		; 40

	jsl $00CBD6.l		; 22 D6 CB 00
	jsr $1A40.w		; 20 40 1A
	dec $00BE.w,X		; DE BE 00
	and ($40.b,X)		; 21 40
	inc A		; 1A
	dec $00C6.w,X		; DE C6 00
	jsl $DE1A40.l		; 22 40 1A DE
	dec $2300.w		; CE 00 23
	rti		; 40

	inc A		; 1A
	dec $00D6.w,X		; DE D6 00
	bit $40.b		; 24 40
	inc A		; 1A
	dec $00DE.w,X		; DE DE 00
	and $40.b		; 25 40
	inc A		; 1A
	dec $00E6.w,X		; DE E6 00
	rol $40.b		; 26 40
	plx		; FA
	inc $00EE.w,X		; FE EE 00
	and [$40.b]		; 27 40
	cop $F6.b		; 02 F6
	inc $2800.w		; EE 00 28
	rti		; 40

	asl A		; 0A
	inc $00EE.w		; EE EE 00
	and #$40.b		; 29 40
	ora ($E6.b)		; 12 E6
	inc $2A00.w		; EE 00 2A
	rti		; 40

	inc A		; 1A
	dec $00EE.w,X		; DE EE 00
	pld		; 2B
	rti		; 40

	asl $E2.b,X		; 16 E2
	inc $00.b,X		; F6 00
	bit $0040.w		; 2C 40 00
	sed		; F8
	inc $00.b,X		; F6 00
	and $1240.w		; 2D 40 12
	inc $F002.w		; EE 02 F0
	dey		; 88
	brk $C8.b		; 00 C8
	sed		; F8
	sed		; F8
	cld		; D8
	dey		; 88
	cop $C8.b		; 02 C8
	ora $F3.b		; 05 F3
	cmp ($80.b,X)		; C1 80
	tsb $C0.b		; 04 C0
	inc $12.b		; E6 12
	beq -128.b		; F0 80
	ora $C0.b		; 05 C0
	inc $02.b,X		; F6 02
	iny		; C8
	bra   6.b		; 80 06
	cpy #$03.b		; C0 03
	sbc $C8.b,X		; F5 C8
	bra   7.b		; 80 07
	cpy #$FE.b		; C0 FE
	plx		; FA
	sed		; F8
	bra   8.b		; 80 08
	cpy #$FE.b		; C0 FE
	plx		; FA
	beq -128.b		; F0 80
	ora #$C0.b		; 09 C0
	inc $E80A.w		; EE 0A E8
	bra  10.b		; 80 0A
	cpy #$F6.b		; C0 F6
	cop $E8.b		; 02 E8
	bra  11.b		; 80 0B
	cpy #$FE.b		; C0 FE
	plx		; FA
	inx		; E8
	bra  12.b		; 80 0C
	cpy #$06.b		; C0 06
	sbc ($F4.b)		; F2 F4
	bra  13.b		; 80 0D
	cpy #$06.b		; C0 06
	sbc ($EC.b)		; F2 EC
	bra  14.b		; 80 0E
	cpy #$F0.b		; C0 F0
	php		; 08
	cpx #$80.b		; E0 80
	ora $F008C0.l		; 0F C0 08 F0
	cpx #$80.b		; E0 80
	trb $C0.b		; 14 C0
	sed		; F8
	brk $D0.b		; 00 D0
	bra  21.b		; 80 15
	cpy #$F4.b		; C0 F4
	tsb $C0.b		; 04 C0
	bra  22.b		; 80 16
	cpy #$01.b		; C0 01
	sbc [$D0.b],Y		; F7 D0
	bra  23.b		; 80 17
	cpy #$0C.b		; C0 0C
	sbc [$F9.b],Y		; F7 F9
	inc $88.b,X		; F6 88
	brk $C8.b		; 00 C8
	sbc [$F9.b],Y		; F7 F9
	inc $88.b		; E6 88
	cop $C8.b		; 02 C8
	ora [$E9.b]		; 07 E9
	sbc $88.b,X		; F5 88
	tsb $C8.b		; 04 C8
	ora [$E9.b]		; 07 E9
	sbc $88.b		; E5 88
	asl $C8.b		; 06 C8
	ora $F5.b,S		; 03 F5
	dec $0880.w		; CE 80 08
	cpy #$F5.b		; C0 F5
	ora $C6.b,S		; 03 C6
	bra   9.b		; 80 09
	cpy #$05.b		; C0 05
	sbc ($C6.b,S),Y		; F3 C6
	bra  10.b		; 80 0A
	cpy #$F7.b		; C0 F7
	ora ($CE.b,X)		; 01 CE
	bra  11.b		; 80 0B
	cpy #$F8.b		; C0 F8
	brk $DE.b		; 00 DE
	bra  12.b		; 80 0C
	cpy #$00.b		; C0 00
	sed		; F8
	dec $0D80.w,X		; DE 80 0D
	cpy #$F8.b		; C0 F8
	brk $D6.b		; 00 D6
	bra  14.b		; 80 0E
	cpy #$01.b		; C0 01
	sbc [$D6.b],Y		; F7 D6
	bra  15.b		; 80 0F
	cpy #$0F.b		; C0 0F
	sbc $FB.b,X		; F5 FB
	dec $0088.w,X		; DE 88 00
	iny		; C8
	ora $EB.b		; 05 EB
	inc $88.b		; E6 88
	cop $C8.b		; 02 C8
	sbc $FB.b,X		; F5 FB
	inc $0488.w		; EE 88 04
	iny		; C8
	sbc ($05.b,S),Y		; F3 05
	cmp [$80.b]		; C7 80
	asl $C0.b		; 06 C0
	sbc $03.b,X		; F5 03
	cmp $C00780.l		; CF 80 07 C0
	sbc $E60B.w		; ED 0B E6
	bra   8.b		; 80 08
	cpy #$F5.b		; C0 F5
	ora $FE.b,S		; 03 FE
	bra   9.b		; 80 09
	cpy #$FD.b		; C0 FD
	xce		; FB
	inc $0A80.w,X		; FE 80 0A
	cpy #$05.b		; C0 05
	sbc ($FE.b,S),Y		; F3 FE
	bra  11.b		; 80 0B
	cpy #$05.b		; C0 05
	sbc ($F6.b,S),Y		; F3 F6
	bra  12.b		; 80 0C
	cpy #$0D.b		; C0 0D
	xba		; EB
	inc $80.b,X		; F6 80
	ora $05C0.w		; 0D C0 05
	sbc ($C9.b,S),Y		; F3 C9
	bra  14.b		; 80 0E
	cpy #$F6.b		; C0 F6
	cop $D7.b		; 02 D7
	bra  15.b		; 80 0F
	cpy #$FF.b		; C0 FF
	sbc $80D7.w,Y		; F9 D7 80
	asl $C0.b,X		; 16 C0
	brk $F8.b		; 00 F8
	cmp $C01780.l		; CF 80 17 C0
	asl $FEF2.w		; 0E F2 FE
	sbc #$88.b		; E9 88
	brk $C8.b		; 00 C8
	cop $EE.b		; 02 EE
	sbc #$88.b		; E9 88
	cop $C8.b		; 02 C8
	sbc ($FE.b)		; F2 FE
	cmp $0488.w,Y		; D9 88 04
	iny		; C8
	sep #$0E		; E2 0E
	beq -120.b		; F0 88
	asl $C8.b		; 06 C8
	sbc ($06.b)		; F2 06
	sbc $0880.w,Y		; F9 80 08
	cpy #$02.b		; C0 02
	inc $E1.b,X		; F6 E1
	bra   9.b		; 80 09
	cpy #$0A.b		; C0 0A
	inc $80E1.w		; EE E1 80
	asl A		; 0A
	cpy #$02.b		; C0 02
	inc $D9.b,X		; F6 D9
	bra  11.b		; 80 0B
	cpy #$0A.b		; C0 0A
	inc $80F9.w		; EE F9 80
	tsb $E2C0.w		; 0C C0 E2
	asl $E8.b,X		; 16 E8
	bra  13.b		; 80 0D
	cpy #$EA.b		; C0 EA
	asl $80E8.w		; 0E E8 80
	asl $1AC0.w		; 0E C0 1A
	dec $80F4.w,X		; DE F4 80
	ora $E612C0.l		; 0F C0 12 E6
	cpx $1880.w		; EC 80 18
	cpy #$1A.b		; C0 1A
	dec $80EC.w,X		; DE EC 80
	ora $12C0.w,Y		; 19 C0 12
	cop $EE.b		; 02 EE
	cmp ($48.b,X)		; C1 48
	brk $08.b		; 00 08
	sed		; F8
	sed		; F8
	cmp $0248.w,Y		; D9 48 02
	php		; 08
	sbc ($05.b,S),Y		; F3 05
	sed		; F8
	rti		; 40

	tsb $00.b		; 04 00
	ora ($E6.b)		; 12 E6
	cmp #$40.b		; C9 40
	ora $00.b		; 05 00
	cop $F6.b		; 02 F6
	sbc ($40.b),Y		; F1 40
	asl $00.b		; 06 00
	sbc $03.b,X		; F5 03
	sbc ($40.b),Y		; F1 40
	ora [$00.b]		; 07 00
	plx		; FA
	inc $40C1.w,X		; FE C1 40
	php		; 08
	brk $FA.b		; 00 FA
	inc $40C9.w,X		; FE C9 40
	ora #$00.b		; 09 00
	asl A		; 0A
	inc $40D1.w		; EE D1 40
	asl A		; 0A
	brk $02.b		; 00 02
	inc $D1.b,X		; F6 D1
	rti		; 40

	phd		; 0B
	brk $FA.b		; 00 FA
	inc $40D1.w,X		; FE D1 40
	tsb $F200.w		; 0C 00 F2
	asl $C5.b		; 06 C5
	rti		; 40

	ora $F200.w		; 0D 00 F2
	asl $CD.b		; 06 CD
	rti		; 40

	asl $0800.w		; 0E 00 08
	beq -39.b		; F0 D9
	rti		; 40

	ora $08F000.l		; 0F 00 F0 08
	cmp $1440.w,Y		; D9 40 14
	brk $00.b		; 00 00
	sed		; F8
	sbc #$40.b		; E9 40
	ora $00.b,X		; 15 00
	tsb $F4.b		; 04 F4
	sbc $1640.w,Y		; F9 40 16
	brk $F7.b		; 00 F7
	ora ($E9.b,X)		; 01 E9
	rti		; 40

	ora [$00.b],Y		; 17 00
	tsb $F7F9.w		; 0C F9 F7
	cmp ($48.b,X)		; C1 48
	brk $08.b		; 00 08
	sbc $D1F7.w,Y		; F9 F7 D1
	pha		; 48
	cop $08.b		; 02 08
	sbc #$07.b		; E9 07
	rep #$48		; C2 48
	tsb $08.b		; 04 08
	sbc #$07.b		; E9 07
	cmp ($48.b)		; D2 48
	asl $08.b		; 06 08
	sbc $03.b,X		; F5 03
	sbc ($40.b),Y		; F1 40
	php		; 08
	brk $03.b		; 00 03
	sbc $F9.b,X		; F5 F9
	rti		; 40

	ora #$00.b		; 09 00
	sbc ($05.b,S),Y		; F3 05
	sbc $0A40.w,Y		; F9 40 0A
	brk $01.b		; 00 01
	sbc [$F1.b],Y		; F7 F1
	rti		; 40

	phd		; 0B
	brk $00.b		; 00 00
	sed		; F8
	sbc ($40.b,X)		; E1 40
	tsb $F800.w		; 0C 00 F8
	brk $E1.b		; 00 E1
	rti		; 40

	ora $0000.w		; 0D 00 00
	sed		; F8
	sbc #$40.b		; E9 40
	asl $F700.w		; 0E 00 F7
	ora ($E9.b,X)		; 01 E9
	rti		; 40

	ora $FB0F00.l		; 0F 00 0F FB
	sbc $DB.b,X		; F5 DB
	pha		; 48
	brk $08.b		; 00 08
	xba		; EB
	ora $D3.b		; 05 D3
	pha		; 48
	cop $08.b		; 02 08
	xce		; FB
	sbc $CB.b,X		; F5 CB
	pha		; 48
	tsb $08.b		; 04 08
	ora $F3.b		; 05 F3
	plx		; FA
	rti		; 40

	asl $00.b		; 06 00
	ora $F5.b,S		; 03 F5
	sbc ($40.b)		; F2 40
	ora [$00.b]		; 07 00
	phd		; 0B
	sbc $40DB.w		; ED DB 40
	php		; 08
	brk $03.b		; 00 03
	sbc $C3.b,X		; F5 C3
	rti		; 40

	ora #$00.b		; 09 00
	xce		; FB
	sbc $40C3.w,X		; FD C3 40
	asl A		; 0A
	brk $F3.b		; 00 F3
	ora $C3.b		; 05 C3
	rti		; 40

	phd		; 0B
	brk $F3.b		; 00 F3
	ora $CB.b		; 05 CB
	rti		; 40

	tsb $EB00.w		; 0C 00 EB
	ora $40CB.w		; 0D CB 40
	ora $F300.w		; 0D 00 F3
	ora $F8.b		; 05 F8
	rti		; 40

	asl $0200.w		; 0E 00 02
	inc $EA.b,X		; F6 EA
	rti		; 40

	ora $FFF900.l		; 0F 00 F9 FF
	nop		; EA
	rti		; 40

	asl $00.b,X		; 16 00
	sed		; F8
	brk $F2.b		; 00 F2
	rti		; 40

	ora [$00.b],Y		; 17 00
	asl $F2FE.w		; 0E FE F2
	sbc ($48.b,X)		; E1 48
	brk $08.b		; 00 08
	inc $E102.w		; EE 02 E1
	pha		; 48
	cop $08.b		; 02 08
	inc $F1F2.w,X		; FE F2 F1
	pha		; 48
	tsb $08.b		; 04 08
	asl $DAE2.w		; 0E E2 DA
	pha		; 48
	asl $08.b		; 06 08
	asl $F2.b		; 06 F2
	cmp $0840.w,Y		; D9 40 08
	brk $F6.b		; 00 F6
	cop $F1.b		; 02 F1
	rti		; 40

	ora #$00.b		; 09 00
	inc $F10A.w		; EE 0A F1
	rti		; 40

	asl A		; 0A
	brk $F6.b		; 00 F6
	cop $F9.b		; 02 F9
	rti		; 40

	phd		; 0B
	brk $EE.b		; 00 EE
	asl A		; 0A
	cmp $0C40.w,Y		; D9 40 0C
	brk $16.b		; 00 16
.ACCU 8
	sep #$EA		; E2 EA
	rti		; 40

	ora $0E00.w		; 0D 00 0E
	nop		; EA
	nop		; EA
	rti		; 40

	asl $DE00.w		; 0E 00 DE
	inc A		; 1A
	dec $0F40.w,X		; DE 40 0F
	brk $E6.b		; 00 E6
	ora ($E6.b)		; 12 E6
	rti		; 40

	clc		; 18
	brk $DE.b		; 00 DE
	inc A		; 1A
	inc $40.b		; E6 40
	ora $0C00.w,Y		; 19 00 0C
	ora $F0E3.w		; 0D E3 F0
	pha		; 48
	brk $08.b		; 00 08
	sbc $F0F3.w,X		; FD F3 F0
	pha		; 48
	cop $08.b		; 02 08
	sbc $F003.w		; ED 03 F0
	pha		; 48
	tsb $08.b		; 04 08
	cmp $23.b,X		; D5 23
	sed		; F8
	rti		; 40

	asl $00.b		; 06 00
	cmp $F81B.w,X		; DD 1B F8
	rti		; 40

	ora [$00.b]		; 07 00
	sbc $13.b		; E5 13
	beq  64.b		; F0 40
	php		; 08
	brk $E5.b		; 00 E5
	ora ($F8.b,S),Y		; 13 F8
	rti		; 40

	ora #$00.b		; 09 00
	ora ($E5.b,S),Y		; 13 E5
	brk $40.b		; 00 40
	asl A		; 0A
	brk $0B.b		; 00 0B
	sbc $4000.w		; ED 00 40
	phd		; 0B
	brk $03.b		; 00 03
	sbc $00.b,X		; F5 00
	rti		; 40

	tsb $FB00.w		; 0C 00 FB
	sbc $4000.w,X		; FD 00 40
	ora $F300.w		; 0D 00 F3
	ora $00.b		; 05 00
	rti		; 40

	asl $1200.w		; 0E 00 12
	cop $EE.b		; 02 EE
	beq -56.b		; F0 C8
	brk $88.b		; 00 88
	sed		; F8
	sed		; F8
	cld		; D8
	iny		; C8
	cop $88.b		; 02 88
	sbc ($05.b,S),Y		; F3 05
	cmp ($C0.b,X)		; C1 C0
	tsb $80.b		; 04 80
	ora ($E6.b)		; 12 E6
	beq -64.b		; F0 C0
	ora $80.b		; 05 80
	cop $F6.b		; 02 F6
	iny		; C8
	cpy #$06.b		; C0 06
	bra -11.b		; 80 F5
	ora $C8.b,S		; 03 C8
	cpy #$07.b		; C0 07
	bra  -6.b		; 80 FA
	inc $C0F8.w,X		; FE F8 C0
	php		; 08
	bra  -6.b		; 80 FA
	inc $C0F0.w,X		; FE F0 C0
	ora #$80.b		; 09 80
	asl A		; 0A
	inc $C0E8.w		; EE E8 C0
	asl A		; 0A
	bra   2.b		; 80 02
	inc $E8.b,X		; F6 E8
	cpy #$0B.b		; C0 0B
	bra  -6.b		; 80 FA
	inc $C0E8.w,X		; FE E8 C0
	tsb $F280.w		; 0C 80 F2
	asl $F4.b		; 06 F4
	cpy #$0D.b		; C0 0D
	bra -14.b		; 80 F2
	asl $EC.b		; 06 EC
	cpy #$0E.b		; C0 0E
	bra   8.b		; 80 08
	beq -32.b		; F0 E0
	cpy #$0F.b		; C0 0F
	bra -16.b		; 80 F0
	php		; 08
	cpx #$C0.b		; E0 C0
	trb $80.b		; 14 80
	brk $F8.b		; 00 F8
	bne -64.b		; D0 C0
	ora $80.b,X		; 15 80
	tsb $F4.b		; 04 F4
	cpy #$C0.b		; C0 C0
	asl $80.b,X		; 16 80
	sbc [$01.b],Y		; F7 01
	bne -64.b		; D0 C0
	ora [$80.b],Y		; 17 80
	tsb $F7F9.w		; 0C F9 F7
	inc $C8.b,X		; F6 C8
	brk $88.b		; 00 88
	sbc $E6F7.w,Y		; F9 F7 E6
	iny		; C8
	cop $88.b		; 02 88
	sbc #$07.b		; E9 07
	sbc $C8.b,X		; F5 C8
	tsb $88.b		; 04 88
	sbc #$07.b		; E9 07
	sbc $C8.b		; E5 C8
	asl $88.b		; 06 88
	sbc $03.b,X		; F5 03
	dec $08C0.w		; CE C0 08
	bra   3.b		; 80 03
	sbc $C6.b,X		; F5 C6
	cpy #$09.b		; C0 09
	bra -13.b		; 80 F3
	ora $C6.b		; 05 C6
	cpy #$0A.b		; C0 0A
	bra   1.b		; 80 01
	sbc [$CE.b],Y		; F7 CE
	cpy #$0B.b		; C0 0B
	bra   0.b		; 80 00
	sed		; F8
	dec $0CC0.w,X		; DE C0 0C
	bra  -8.b		; 80 F8
	brk $DE.b		; 00 DE
	cpy #$0D.b		; C0 0D
	bra   0.b		; 80 00
	sed		; F8
	dec $C0.b,X		; D6 C0
	asl $F780.w		; 0E 80 F7
	ora ($D6.b,X)		; 01 D6
	cpy #$0F.b		; C0 0F
	bra  15.b		; 80 0F
	xce		; FB
	sbc $DE.b,X		; F5 DE
	iny		; C8
	brk $88.b		; 00 88
	xba		; EB
	ora $E6.b		; 05 E6
	iny		; C8
	cop $88.b		; 02 88
	xce		; FB
	sbc $EE.b,X		; F5 EE
	iny		; C8
	tsb $88.b		; 04 88
	ora $F3.b		; 05 F3
	cmp [$C0.b]		; C7 C0
	asl $80.b		; 06 80
	ora $F5.b,S		; 03 F5
	cmp $8007C0.l		; CF C0 07 80
	phd		; 0B
	sbc $C0E6.w		; ED E6 C0
	php		; 08
	bra   3.b		; 80 03
	sbc $FE.b,X		; F5 FE
	cpy #$09.b		; C0 09
	bra  -5.b		; 80 FB
	sbc $C0FE.w,X		; FD FE C0
	asl A		; 0A
	bra -13.b		; 80 F3
	ora $FE.b		; 05 FE
	cpy #$0B.b		; C0 0B
	bra -13.b		; 80 F3
	ora $F6.b		; 05 F6
	cpy #$0C.b		; C0 0C
	bra -21.b		; 80 EB
	ora $C0F6.w		; 0D F6 C0
	ora $F380.w		; 0D 80 F3
	ora $C9.b		; 05 C9
	cpy #$0E.b		; C0 0E
	bra   2.b		; 80 02
	inc $D7.b,X		; F6 D7
	cpy #$0F.b		; C0 0F
	bra  -7.b		; 80 F9
	sbc $16C0D7.l,X		; FF D7 C0 16
	bra  -8.b		; 80 F8
	brk $CF.b		; 00 CF
	cpy #$17.b		; C0 17
	bra  14.b		; 80 0E
	inc $E9F2.w,X		; FE F2 E9
	iny		; C8
	brk $88.b		; 00 88
	inc $E902.w		; EE 02 E9
	iny		; C8
	cop $88.b		; 02 88
	inc $D9F2.w,X		; FE F2 D9
	iny		; C8
	tsb $88.b		; 04 88
	asl $F0E2.w		; 0E E2 F0
	iny		; C8
	asl $88.b		; 06 88
	asl $F2.b		; 06 F2
	sbc $08C0.w,Y		; F9 C0 08
	bra -10.b		; 80 F6
	cop $E1.b		; 02 E1
	cpy #$09.b		; C0 09
	bra -18.b		; 80 EE
	asl A		; 0A
	sbc ($C0.b,X)		; E1 C0
	asl A		; 0A
	bra -10.b		; 80 F6
	cop $D9.b		; 02 D9
	cpy #$0B.b		; C0 0B
	bra -18.b		; 80 EE
	asl A		; 0A
	sbc $0CC0.w,Y		; F9 C0 0C
	bra  22.b		; 80 16
.ACCU 8
	sep #$E8		; E2 E8
	cpy #$0D.b		; C0 0D
	bra  14.b		; 80 0E
	nop		; EA
	inx		; E8
	cpy #$0E.b		; C0 0E
	bra -34.b		; 80 DE
	inc A		; 1A
	pea $0FC0.w		; F4 C0 0F
	bra -26.b		; 80 E6
	ora ($EC.b)		; 12 EC
	cpy #$18.b		; C0 18
	bra -34.b		; 80 DE
	inc A		; 1A
	cpx $19C0.w		; EC C0 19
	bra  12.b		; 80 0C
	ora $F1E3.w		; 0D E3 F1
	iny		; C8
	brk $88.b		; 00 88
	sbc $F1F3.w,X		; FD F3 F1
	iny		; C8
	cop $88.b		; 02 88
	sbc $F103.w		; ED 03 F1
	iny		; C8
	tsb $88.b		; 04 88
	cmp $23.b,X		; D5 23
	sbc ($C0.b),Y		; F1 C0
	asl $80.b		; 06 80
	cmp $F11B.w,X		; DD 1B F1
	cpy #$07.b		; C0 07
	bra -27.b		; 80 E5
	ora ($F9.b,S),Y		; 13 F9
	cpy #$08.b		; C0 08
	bra -27.b		; 80 E5
	ora ($F1.b,S),Y		; 13 F1
	cpy #$09.b		; C0 09
	bra  19.b		; 80 13
	sbc $E9.b		; E5 E9
	cpy #$0A.b		; C0 0A
	bra  11.b		; 80 0B
	sbc $C0E9.w		; ED E9 C0
	phd		; 0B
	bra   3.b		; 80 03
	sbc $E9.b,X		; F5 E9
	cpy #$0C.b		; C0 0C
	bra  -5.b		; 80 FB
	sbc $C0E9.w,X		; FD E9 C0
	ora $F380.w		; 0D 80 F3
	ora $E9.b		; 05 E9
	cpy #$0E.b		; C0 0E
	bra  11.b		; 80 0B
	inc $E6F2.w,X		; FE F2 E6
	iny		; C8
	brk $88.b		; 00 88
	inc $E602.w		; EE 02 E6
	iny		; C8
	cop $88.b		; 02 88
	sbc $C8F6F1.l,X		; FF F1 F6 C8
	tsb $88.b		; 04 88
	sbc $C8F601.l		; EF 01 F6 C8
	asl $88.b		; 06 88
	asl $F2.b		; 06 F2
	dec $08C0.w,X		; DE C0 08
	bra  -2.b		; 80 FE
	plx		; FA
	dec $09C0.w,X		; DE C0 09
	bra -10.b		; 80 F6
	cop $DE.b		; 02 DE
	cpy #$0A.b		; C0 0A
	bra -18.b		; 80 EE
	asl A		; 0A
	dec $0BC0.w,X		; DE C0 0B
	bra   1.b		; 80 01
	sbc [$D6.b],Y		; F7 D6
	cpy #$0C.b		; C0 0C
	bra  14.b		; 80 0E
	nop		; EA
	inc $0DC0.w		; EE C0 0D
	bra -26.b		; 80 E6
	ora ($DE.b)		; 12 DE
	cpy #$0E.b		; C0 0E
	bra  13.b		; 80 0D
	plx		; FA
	inc $DA.b,X		; F6 DA
	php		; 08
	brk $48.b		; 00 48
	ora #$E7.b		; 09 E7
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	ora #$E7.b		; 09 E7
	cmp ($08.b),Y		; D1 08
	tsb $48.b		; 04 48
	sbc $C2F7.w,Y		; F9 F7 C2
	php		; 08
	asl $48.b		; 06 48
	inc $02.b,X		; F6 02
	sbc ($00.b)		; F2 00
	php		; 08
	rti		; 40

	sed		; F8
	brk $EA.b		; 00 EA
	brk $09.b		; 00 09
	rti		; 40

	brk $F8.b		; 00 F8
	nop		; EA
	brk $0A.b		; 00 0A
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc ($00.b,X)		; E1 00
	phd		; 0B
	rti		; 40

	asl A		; 0A
	inc $00E1.w		; EE E1 00
	tsb $F540.w		; 0C 40 F5
	ora $FA.b,S		; 03 FA
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $D2FF.w,Y		; F9 FF D2
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b)		; D2 00
	ora $DF1940.l		; 0F 40 19 DF
	dec $1800.w		; CE 00 18
	rti		; 40

	ora ($F2.b),Y		; 11 F2
	inc $08C5.w,X		; FE C5 08
	brk $48.b		; 00 48
	sbc ($FE.b)		; F2 FE
	cmp $08.b,X		; D5 08
	cop $48.b		; 02 48
	ora ($E6.b)		; 12 E6
	cmp ($00.b),Y		; D1 00
	tsb $40.b		; 04 40
	asl A		; 0A
	inc $00D3.w		; EE D3 00
	ora $40.b		; 05 40
	asl A		; 0A
	inc $00C5.w		; EE C5 00
	asl $40.b		; 06 40
	asl A		; 0A
	inc $00DD.w		; EE DD 00
	ora [$40.b]		; 07 40
	nop		; EA
	asl $00C9.w		; 0E C9 00
	php		; 08
	rti		; 40

	nop		; EA
	asl $00D1.w		; 0E D1 00
	ora #$40.b		; 09 40
	cop $F6.b		; 02 F6
	cmp $00.b		; C5 00
	asl A		; 0A
	rti		; 40

	cop $F6.b		; 02 F6
	cmp $0B00.w		; CD 00 0B
	rti		; 40

	cop $F6.b		; 02 F6
	cmp $00.b,X		; D5 00
	tsb $0240.w		; 0C 40 02
	inc $DD.b,X		; F6 DD
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $00.b		; E5 00
	asl $0C40.w		; 0E 40 0C
	cpx $00E5.w		; EC E5 00
	ora $01F740.l		; 0F 40 F7 01
	lda $1400.w,X		; BD 00 14
	rti		; 40

	sbc $00BDF9.l,X		; FF F9 BD 00
	ora $40.b,X		; 15 40
	ora [$F1.b]		; 07 F1
	lda $1600.w,X		; BD 00 16
	rti		; 40

	tsb $FBF5.w		; 0C F5 FB
	sbc ($08.b),Y		; F1 08
	brk $48.b		; 00 48
	sbc $08D901.l		; EF 01 D9 08
	cop $48.b		; 02 48
	sbc $08D9F1.l,X		; FF F1 D9 08
	tsb $48.b		; 04 48
	sbc ($06.b)		; F2 06
	cmp ($00.b),Y		; D1 00
	asl $40.b		; 06 40
	ora $F3.b		; 05 F3
	sbc ($00.b),Y		; F1 00
	ora [$40.b]		; 07 40
	ora $F3.b		; 05 F3
	sbc $0800.w,Y		; F9 00 08
	rti		; 40

	plx		; FA
	inc $00D1.w,X		; FE D1 00
	ora #$40.b		; 09 40
	cop $F6.b		; 02 F6
	cmp ($00.b),Y		; D1 00
	asl A		; 0A
	rti		; 40

	sbc $00E909.l		; EF 09 E9 00
	phd		; 0B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc #$00.b		; E9 00
	tsb $FF40.w		; 0C 40 FF
	sbc $00E9.w,Y		; F9 E9 00
	ora $0740.w		; 0D 40 07
	sbc ($E9.b),Y		; F1 E9
	brk $0E.b		; 00 0E
	rti		; 40

	asl $0CE4.w		; 0E E4 0C
	phx		; DA
	php		; 08
	brk $48.b		; 00 48
	pea $DAFC.w		; F4 FC DA
	php		; 08
	cop $48.b		; 02 48
	sbc $08EA01.l		; EF 01 EA 08
	tsb $48.b		; 04 48
	ora $E3.b,X		; 15 E3
	sed		; F8
	brk $06.b		; 00 06
	rti		; 40

	ora $FADB.w,X		; 1D DB FA
	brk $07.b		; 00 07
	rti		; 40

	sbc $00EAF9.l,X		; FF F9 EA 00
	php		; 08
	rti		; 40

	sbc $00F2F9.l,X		; FF F9 F2 00
	ora #$40.b		; 09 40
	sbc $00FA09.l		; EF 09 FA 00
	asl A		; 0A
	rti		; 40

	sbc [$01.b],Y		; F7 01
	plx		; FA
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $00FAF9.l,X		; FF F9 FA 00
	tsb $0740.w		; 0C 40 07
	sbc ($F5.b),Y		; F1 F5
	brk $0D.b		; 00 0D
	rti		; 40

	ora $00F7E9.l		; 0F E9 F7 00
	asl $F040.w		; 0E 40 F0
	php		; 08
	cmp ($00.b)		; D2 00
	ora $00F840.l		; 0F 40 F8 00
	cmp ($00.b)		; D2 00
	asl $40.b,X		; 16 40
	ora ($F2.b),Y		; 11 F2
	inc $08C1.w,X		; FE C1 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	ora ($DE.b)		; 12 DE
	cmp ($08.b,X)		; C1 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $E1.b,X		; F6 E1
	php		; 08
	asl $48.b		; 06 48
	asl A		; 0A
	inc $E1.b		; E6 E1
	php		; 08
	php		; 08
	pha		; 48
	plx		; FA
	inc $D1.b,X		; F6 D1
	php		; 08
	asl A		; 0A
	pha		; 48
	asl A		; 0A
	inc $D1.b		; E6 D1
	php		; 08
	tsb $FE48.w		; 0C 48 FE
	sbc ($F1.b)		; F2 F1
	php		; 08
	asl $1A48.w		; 0E 48 1A
	dec $00D1.w,X		; DE D1 00
	jsr $2240.w		; 20 40 22
	dec $CD.b,X		; D6 CD
	brk $21.b		; 00 21
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp ($00.b),Y		; D1 00
	jsl $EA0E40.l		; 22 40 0E EA
	sbc ($00.b),Y		; F1 00
	and $40.b,S		; 23 40
	asl $F9EA.w		; 0E EA F9
	brk $24.b		; 00 24
	rti		; 40

	sbc $B9FF.w,Y		; F9 FF B9
	brk $25.b		; 00 25
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda $2600.w,Y		; B9 00 26
	rti		; 40

	ora #$EF.b		; 09 EF
	lda $2700.w,Y		; B9 00 27
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	lda $2800.w,Y		; B9 00 28
	rti		; 40

	trb $F6FA.w		; 1C FA F6
	ldx $0008.w,Y		; BE 08 00
	pha		; 48
	asl A		; 0A
	inc $BE.b		; E6 BE
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $CE.b,X		; F6 CE
	php		; 08
	tsb $48.b		; 04 48
	asl A		; 0A
	inc $CE.b		; E6 CE
	php		; 08
	asl $48.b		; 06 48
	plx		; FA
	inc $DE.b,X		; F6 DE
	php		; 08
	php		; 08
	pha		; 48
	asl A		; 0A
	inc $DE.b		; E6 DE
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc ($06.b)		; F2 06
	cmp ($00.b,S),Y		; D3 00
	tsb $2240.w		; 0C 40 22
	dec $D3.b,X		; D6 D3
	brk $0D.b		; 00 0D
	rti		; 40

	asl A		; 0A
	inc $00F6.w		; EE F6 00
	asl $2A40.w		; 0E 40 2A
	dec $00C9.w		; CE C9 00
	ora $CE2A40.l		; 0F 40 2A CE
	cmp ($00.b),Y		; D1 00
	trb $F240.w		; 1C 40 F2
	asl $C3.b		; 06 C3
	brk $1D.b		; 00 1D
	rti		; 40

	jsl $00C3D6.l		; 22 D6 C3 00
	asl $F240.w,X		; 1E 40 F2
	asl $CB.b		; 06 CB
	brk $1F.b		; 00 1F
	rti		; 40

	jsl $00CBD6.l		; 22 D6 CB 00
	jsr $1A40.w		; 20 40 1A
	dec $00BE.w,X		; DE BE 00
	and ($40.b,X)		; 21 40
	inc A		; 1A
	dec $00C6.w,X		; DE C6 00
	jsl $DE1A40.l		; 22 40 1A DE
	dec $2300.w		; CE 00 23
	rti		; 40

	inc A		; 1A
	dec $00D6.w,X		; DE D6 00
	bit $40.b		; 24 40
	inc A		; 1A
	dec $00DE.w,X		; DE DE 00
	and $40.b		; 25 40
	inc A		; 1A
	dec $00E6.w,X		; DE E6 00
	rol $40.b		; 26 40
	plx		; FA
	inc $00EE.w,X		; FE EE 00
	and [$40.b]		; 27 40
	cop $F6.b		; 02 F6
	inc $2800.w		; EE 00 28
	rti		; 40

	asl A		; 0A
	inc $00EE.w		; EE EE 00
	and #$40.b		; 29 40
	ora ($E6.b)		; 12 E6
	inc $2A00.w		; EE 00 2A
	rti		; 40

	inc A		; 1A
	dec $00EE.w,X		; DE EE 00
	pld		; 2B
	rti		; 40

	asl $E2.b,X		; 16 E2
	inc $00.b,X		; F6 00
	bit $0040.w		; 2C 40 00
	sed		; F8
	inc $00.b,X		; F6 00
	and $0D40.w		; 2D 40 0D
	sbc [$F9.b],Y		; F7 F9
	sbc #$08.b		; E9 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	cmp #$08.b		; C9 08
	cop $48.b		; 02 48
	sbc $D9F7.w,Y		; F9 F7 D9
	php		; 08
	tsb $48.b		; 04 48
	sbc [$01.b],Y		; F7 01
	sbc $0600.w,Y		; F9 00 06
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp ($00.b,X)		; C1 00
	ora [$40.b]		; 07 40
	xce		; FB
	sbc $00C1.w,X		; FD C1 00
	php		; 08
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp #$00.b		; C9 00
	ora #$40.b		; 09 40
	ora [$F1.b]		; 07 F1
	cmp ($00.b),Y		; D1 00
	asl A		; 0A
	rti		; 40

	sbc $00C709.l		; EF 09 C7 00
	phd		; 0B
	rti		; 40

	sbc $00CF09.l		; EF 09 CF 00
	tsb $0140.w		; 0C 40 01
	sbc [$F9.b],Y		; F7 F9
	brk $0D.b		; 00 0D
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b,X)		; C1 00
	asl $0940.w		; 0E 40 09
	sbc $0F00DF.l		; EF DF 00 0F
	rti		; 40

	phd		; 0B
	sbc [$F9.b],Y		; F7 F9
	sbc #$08.b		; E9 08
	brk $48.b		; 00 48
	sbc $08C901.l		; EF 01 C9 08
	cop $48.b		; 02 48
	sbc $08C9F1.l,X		; FF F1 C9 08
	tsb $48.b		; 04 48
	sbc $D9F7.w,Y		; F9 F7 D9
	php		; 08
	asl $48.b		; 06 48
	sbc [$01.b],Y		; F7 01
	sbc $0800.w,Y		; F9 00 08
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp ($00.b,X)		; C1 00
	ora #$40.b		; 09 40
	plx		; FA
	inc $00C1.w,X		; FE C1 00
	asl A		; 0A
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b,X)		; C1 00
	phd		; 0B
	rti		; 40

	sbc [$11.b]		; E7 11
	dex		; CA
	brk $0C.b		; 00 0C
	rti		; 40

	cop $F6.b		; 02 F6
	sbc $0D00.w,Y		; F9 00 0D
	rti		; 40

	ora #$EF.b		; 09 EF
	jmp.w [$0E00]		; DC 00 0E
	rti		; 40

	ora $FBF5.w		; 0D F5 FB
	cmp $0008.w,Y		; D9 08 00
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	sbc #$08.b		; E9 08
	cop $48.b		; 02 48
	ora $D9EB.w		; 0D EB D9
	brk $04.b		; 00 04
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc $0500.w,Y		; F9 00 05
	rti		; 40

	sbc $F9FB.w,X		; FD FB F9
	brk $06.b		; 00 06
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $0700.w,Y		; F9 00 07
	rti		; 40

	plx		; FA
	inc $00D1.w,X		; FE D1 00
	php		; 08
	rti		; 40

	ora $F3.b		; 05 F3
	cmp $0900.w,Y		; D9 00 09
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	asl A		; 0A
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b),Y		; D1 00
	phd		; 0B
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc #$00.b		; E9 00
	tsb $0740.w		; 0C 40 07
	sbc ($F1.b),Y		; F1 F1
	brk $0D.b		; 00 0D
	rti		; 40

	ora $00E7E9.l		; 0F E9 E7 00
	asl $0F40.w		; 0E 40 0F
	ora ($EF.b,X)		; 01 EF
	cmp ($08.b),Y		; D1 08
	brk $48.b		; 00 48
	ora ($EF.b,X)		; 01 EF
	sbc ($08.b,X)		; E1 08
	cop $48.b		; 02 48
	phd		; 0B
	sbc $00F1.w		; ED F1 00
	tsb $40.b		; 04 40
	sbc $03.b,X		; F5 03
	sbc $0500.w,Y		; F9 00 05
	rti		; 40

	sbc $F9FB.w,X		; FD FB F9
	brk $06.b		; 00 06
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $0700.w,Y		; F9 00 07
	rti		; 40

	xce		; FB
	sbc $00F1.w,X		; FD F1 00
	php		; 08
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b),Y		; F1 00
	ora #$40.b		; 09 40
	sbc $D9FF.w,Y		; F9 FF D9
	brk $0A.b		; 00 0A
	rti		; 40

	sbc $E1FF.w,Y		; F9 FF E1
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $E9FF.w,Y		; F9 FF E9
	brk $0C.b		; 00 0C
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	jmp.w [$0D00]		; DC 00 0D
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cpx $00.b		; E4 00
	asl $1940.w		; 0E 40 19
	cmp $0F00E5.l,X		; DF E5 00 0F
	rti		; 40

	and ($D7.b,X)		; 21 D7
	sbc $00.b		; E5 00
	trb $40.b		; 14 40
	ora $F6FA.w		; 0D FA F6
	cmp ($08.b),Y		; D1 08
	brk $48.b		; 00 48
	plx		; FA
	inc $E1.b,X		; F6 E1
	php		; 08
	cop $48.b		; 02 48
	sbc [$F9.b],Y		; F7 F9
	sbc ($08.b),Y		; F1 08
	tsb $48.b		; 04 48
	asl A		; 0A
	inc $00D9.w		; EE D9 00
	asl $40.b		; 06 40
	asl A		; 0A
	inc $00E1.w		; EE E1 00
	ora [$40.b]		; 07 40
	asl A		; 0A
	inc $00E9.w		; EE E9 00
	php		; 08
	rti		; 40

	ora ($E6.b)		; 12 E6
	stp		; DB
	brk $09.b		; 00 09
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc $00.b,S		; E3 00
	asl A		; 0A
	rti		; 40

	sbc ($06.b)		; F2 06
	cld		; D8
	brk $0B.b		; 00 0B
	rti		; 40

	sbc ($06.b)		; F2 06
	cpx #$00.b		; E0 00
	tsb $0A40.w		; 0C 40 0A
	inc $00D1.w		; EE D1 00
	ora $0740.w		; 0D 40 07
	sbc ($F1.b),Y		; F1 F1
	brk $0E.b		; 00 0E
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc $0F00.w,Y		; F9 00 0F
	rti		; 40

	ora ($EA.b,S),Y		; 13 EA
	asl $BE.b		; 06 BE
	php		; 08
	brk $48.b		; 00 48
	plx		; FA
	inc $BE.b,X		; F6 BE
	php		; 08
	cop $48.b		; 02 48
	asl A		; 0A
	inc $BE.b		; E6 BE
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FE.b)		; F2 FE
	dec $0608.w		; CE 08 06
	pha		; 48
	cop $EE.b		; 02 EE
	dec $0808.w		; CE 08 08
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	dec $0A08.w,X		; DE 08 0A
	pha		; 48
	ora $ED.b,S		; 03 ED
	dec $0C08.w,X		; DE 08 0C
	pha		; 48
	inc $EE02.w		; EE 02 EE
	php		; 08
	asl $0648.w		; 0E 48 06
	nop		; EA
	inc $2008.w		; EE 08 20
	pha		; 48
	inc $02.b,X		; F6 02
	ldx $2200.w		; AE 00 22
	rti		; 40

	asl $F2.b		; 06 F2
	ldx $2300.w		; AE 00 23
	rti		; 40

	inc $B60A.w		; EE 0A B6
	brk $24.b		; 00 24
	rti		; 40

	inc $02.b,X		; F6 02
	ldx $00.b,Y		; B6 00
	and $40.b		; 25 40
	inc $B6FA.w,X		; FE FA B6
	brk $26.b		; 00 26
	rti		; 40

	asl $F2.b		; 06 F2
	ldx $00.b,Y		; B6 00
	and [$40.b]		; 27 40
	asl $B6EA.w		; 0E EA B6
	brk $28.b		; 00 28
	rti		; 40

	inc $EEFA.w,X		; FE FA EE
	brk $29.b		; 00 29
	rti		; 40

	nop		; EA
	asl $00CE.w		; 0E CE 00
	rol A		; 2A
	rti		; 40

	ora ($E6.b)		; 12 E6
	dec $2B00.w		; CE 00 2B
	rti		; 40

	sec		; 38
	xba		; EB
	eor $EB.b		; 45 EB
	jmp $65EB.w		; 4C EB 65
	xba		; EB
	ror $8BEB.w,X		; 7E EB 8B
	xba		; EB
	pei ($EB.b)		; D4 EB
	sbc ($EB.b,X)		; E1 EB
	inc $FBEB.w		; EE EB FB
	xba		; EB
	cop $EC.b		; 02 EC
	cop $FC.b		; 02 FC
	jsr ($00F8.w,X)		; FC F8 00
	rol $40.b		; 26 40
	jsr ($00FC.w,X)		; FC FC 00
	brk $27.b		; 00 27
	rti		; 40

	ora ($F8.b,X)		; 01 F8
	sed		; F8
	sed		; F8
	php		; 08
	brk $48.b		; 00 48
	tsb $F0.b		; 04 F0
	brk $F0.b		; 00 F0
	php		; 08
	cop $48.b		; 02 48
	brk $F0.b		; 00 F0
	beq   8.b		; F0 08
	tsb $48.b		; 04 48
	beq   0.b		; F0 00
	brk $C8.b		; 00 C8
	tsb $88.b		; 04 88
	brk $F0.b		; 00 F0
	brk $C8.b		; 00 C8
	cop $88.b		; 02 88
	tsb $F8.b		; 04 F8
	brk $FB.b		; 00 FB
	brk $28.b		; 00 28
	rti		; 40

	brk $F8.b		; 00 F8
	xce		; FB
	rti		; 40

	plp		; 28
	brk $F1.b		; 00 F1
	ora [$FA.b]		; 07 FA
	brk $29.b		; 00 29
	rti		; 40

	ora [$F1.b]		; 07 F1
	plx		; FA
	rti		; 40

	and #$00.b		; 29 00
	cop $F0.b		; 02 F0
	brk $F3.b		; 00 F3
	php		; 08
	asl $48.b		; 06 48
	brk $F0.b		; 00 F0
	sbc ($48.b,S),Y		; F3 48
	asl $08.b		; 06 08
	tsb $10E0.w		; 0C E0 10
	xba		; EB
	php		; 08
	php		; 08
	pha		; 48
	bpl -32.b		; 10 E0
	xba		; EB
	pha		; 48
	php		; 08
	php		; 08
	beq   0.b		; F0 00
	xba		; EB
	php		; 08
	asl A		; 0A
	pha		; 48
	brk $F0.b		; 00 F0
	xba		; EB
	pha		; 48
	asl A		; 0A
	php		; 08
	inx		; E8
	bpl  -5.b		; 10 FB
	brk $2A.b		; 00 2A
	rti		; 40

	beq   8.b		; F0 08
	xce		; FB
	brk $2B.b		; 00 2B
	rti		; 40

	sed		; F8
	brk $FB.b		; 00 FB
	brk $2C.b		; 00 2C
	rti		; 40

	brk $F8.b		; 00 F8
	xce		; FB
	rti		; 40

	bit $0800.w		; 2C 00 08
	beq  -5.b		; F0 FB
	rti		; 40

	pld		; 2B
	brk $10.b		; 00 10
	inx		; E8
	xce		; FB
	rti		; 40

	rol A		; 2A
	brk $01.b		; 00 01
	sbc [$E3.b],Y		; F7 E3
	brk $2D.b		; 00 2D
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc $40.b,S		; E3 40
	and $0200.w		; 2D 00 02
	brk $F8.b		; 00 F8
	sed		; F8
	brk $2E.b		; 00 2E
	rti		; 40

	brk $F8.b		; 00 F8
	brk $80.b		; 00 80
	rol $02C0.w		; 2E C0 02
	brk $F8.b		; 00 F8
	sed		; F8
	brk $2F.b		; 00 2F
	rti		; 40

	brk $F8.b		; 00 F8
	brk $80.b		; 00 80
	and $0002C0.l		; 2F C0 02 00
	beq -16.b		; F0 F0
	php		; 08
	tsb $0048.w		; 0C 48 00
	beq   0.b		; F0 00
	dey		; 88
	tsb $01C8.w		; 0C C8 01
	sbc $F7F7.w,Y		; F9 F7 F7
	php		; 08
	jsl $F90148.l		; 22 48 01 F9
	sbc [$F7.b],Y		; F7 F7
	php		; 08
	bit $48.b		; 24 48
	lda [$49.b]		; A7 49
	stx $8596.w		; 8E 96 85
	jsl $400060.l		; 22 60 00 40
	cop $01.b		; 02 01
	dey		; 88
	ora $08.b,S		; 03 08
	rti		; 40

	rti		; 40

	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $22.b		; 00 22
	rts		; 60

	ldy #$00.b		; A0 00
	rti		; 40

	php		; 08
	bra   0.b		; 80 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	bmi -128.b		; 30 80
	ora $0200.w,Y		; 19 00 02
	brk $82.b		; 00 82
	brk $09.b		; 00 09
	pld		; 2B
	ora ($04.b,X)		; 01 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda ($CA.b)		; B2 CA
	eor ($14.b,S),Y		; 53 14
	tsb $B8.b		; 04 B8
	ora ($18.b)		; 12 18
	.db $42, $04		; 42 04
	sta ($F8.b)		; 92 F8
	bpl   0.b		; 10 00
	php		; 08
	sty $00.b		; 84 00
	rti		; 40

	asl A		; 0A
	rti		; 40

	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	php		; 08
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $04.b		; 00 04
	brk $A0.b		; 00 A0
	bpl   1.b		; 10 01
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
	brk $30.b		; 00 30
	ora $C522A2.l		; 0F A2 22 C5
	ror A		; 6A
	lda #$DC.b		; A9 DC
	cmp $302D.w,Y		; D9 2D 30
	ora $0403.w,X		; 1D 03 04
	rol $F0.b		; 26 F0
	php		; 08
	sta ($00.b,X)		; 81 00
	brk $02.b		; 00 02
	tya		; 98
	brk $02.b		; 00 02
	bra  49.b		; 80 31
	tsb $20.b		; 04 20
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($40.b,X)		; 01 40
	brk $00.b		; 00 00
	php		; 08
	cop $60.b		; 02 60
	bpl -128.b		; 10 80
	brk $00.b		; 00 00
	clc		; 18
	brk $00.b		; 00 00
	php		; 08
	rti		; 40

	trb $C00A.w		; 1C 0A C0
	jsr $0004.w		; 20 04 00
	jsr $0300.w		; 20 00 03
	brk $88.b		; 00 88
	brk $20.b		; 00 20
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
	lda #$84.b		; A9 84
	ora #$22.b		; 09 22
	bmi   2.b		; 30 02
	brk $50.b		; 00 50
	rts		; 60

	clc		; 18
	ora $0A.b,S		; 03 0A
	rti		; 40

	brk $00.b		; 00 00
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora ($00.b,X)		; 01 00
	jsr $8000.w		; 20 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora $41.b		; 05 41
	php		; 08
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	sta $D303.w		; 8D 03 D3
	adc ($82.b)		; 72 82
	lsr $C4.b		; 46 C4
	and $90174B.l		; 2F 4B 17 90
	and $011A5C.l,X		; 3F 5C 1A 01
	pla		; 68
	and ($08.b)		; 32 08
	brk $28.b		; 00 28
	brk $11.b		; 00 11
	brk $80.b		; 00 80
	bmi -128.b		; 30 80
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	cop $0C.b		; 02 0C
	cop $00.b		; 02 00
	bpl  21.b		; 10 15
	.db $42, $00		; 42 00
	sty $21.b,X		; 94 21
	brk $04.b		; 00 04
	jsr $8000.w		; 20 00 80
	brk $11.b		; 00 11
	brk $04.b		; 00 04
	brk $38.b		; 00 38
	bpl   0.b		; 10 00
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
	jsr $32B8.w		; 20 B8 32
	ldy #$06.b		; A0 06
	eor ($90.b,X)		; 41 90
	ora $E8.b,X		; 15 E8
	mvn $80,$B6		; 54 B6 80
	and ($03.b)		; 32 03
	ora #$30.b		; 09 30
	brk $00.b		; 00 00
	php		; 08
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0100.w		; 20 00 01
	brk $02.b		; 00 02
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	brk $2C.b		; 00 2C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	.db $82, $00, $00		; 82 00 00
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
	phy		; 5A
	lda [$98.b]		; A7 98
	cli		; 58
	sed		; F8
	ora $ED1422.l,X		; 1F 22 14 ED
	and $94.b		; 25 94
	ldy $0040.w		; AC 40 00
	plp		; 28
	lda [$00.b]		; A7 00
	php		; 08
	brk $00.b		; 00 00
	sty $69.b		; 84 69
	brk $40.b		; 00 40
	rti		; 40

	brk $04.b		; 00 04
	bpl  32.b		; 10 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($80.b,X)		; 61 80
	rti		; 40

	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora #$00.b		; 09 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  42.b		; 30 2A
	ora ($80.b,X)		; 01 80
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
	rti		; 40

	brk $0A.b		; 00 0A
	ora ($00.b,X)		; 01 00
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
	cop $92.b		; 02 92
	cmp [$B3.b]		; C7 B3
	bcc -58.b		; 90 C6
	rts		; 60

	sta ($01.b)		; 92 01
	sty $00.b		; 84 00
	ldx $05.b		; A6 05
	bpl  80.b		; 10 50
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	php		; 08
	jsr $0000.w		; 20 00 00
	brk $20.b		; 00 20
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $80.b		; 04 80
	eor $00.b		; 45 00
	brk $44.b		; 00 44
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	jmp ($FFEF.w)		; 6C EF FF
	xce		; FB
	sbc $FFEB.w		; ED EB FF
	sbc $FEFBFF.l,X		; FF FF FB FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDBDFD.l,X		; FF FD BD FD
	sbc $FEEDBF.l,X		; FF BF ED FE
	xba		; EB
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FF7F.w,X		; FD 7F FF
	adc $DFFF.w,Y		; 79 FF DF
	sbc $D7BF8F.l,X		; FF 8F BF D7
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFF7F7.l,X		; FF F7 F7 FF
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
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FBFFBF.l,X		; FF BF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FDBDF9.l,X		; FF F9 BD FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DEFFFF.l,X		; FF FF FF DE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEEBFB.l,X		; FF FB EB FE
	adc [$FF.b],Y		; 77 FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FF7FBF.l,X		; FF BF 7F FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFF7B.l,X		; FF 7B FF FF
	inc $BBFF.w,X		; FE FF BB
	cmp $DEDFFE.l,X		; DF FE DF DE
	adc $FFFFFF.l,X		; 7F FF FF FF
	cpx $BFF7.w		; EC F7 BF
	cmp $FDF7EF.l,X		; DF EF F7 FD
	sbc $FFFF7C.l,X		; FF 7C FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFBE.l,X		; FF BE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
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
	sbc $FFEFFB.l,X		; FF FB EF FF
	sbc $FF7DFF.l,X		; FF FF 7D FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFBF.l,X		; BF BF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7EF7FF.l,X		; FF FF F7 7E
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
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
	sbc $EFFDFF.l,X		; FF FF FD EF
	sbc [$37.b],Y		; F7 37
	sbc $6FEB.w,X		; FD EB 6F
	xce		; FB
	sbc $FE77FF.l,X		; FF FF 77 FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $AFEFFD.l,X		; FF FD EF AF
	adc $FFFDFC.l,X		; 7F FC FD FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFEFF.l,X		; FF FF FE 7F
	inc $7FFF.w,X		; FE FF 7F
	sbc $FFBFDE.l,X		; FF DE BF FF
	lda $7FFFFF.l,X		; BF FF FF 7F
	sbc $FFFFFE.l,X		; FF FE FF FF
	inc $FF7F.w,X		; FE 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $7FFFFB.l,X		; FF FB FF 7F
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	adc $FDFEFF.l,X		; 7F FF FE FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFC.l,X		; FF FC EF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
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
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc [$F7.b],Y		; F7 F7
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FDF3F7.l,X		; FF F7 F3 FD
	ror $F7FF.w,X		; 7E FF F7
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $EFFEFF.l,X		; FF FF FE EF
	xce		; FB
	sbc $7BF4FF.l,X		; FF FF F4 7B
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF9.w,X		; FD F9 FF
	inc $FFEF.w,X		; FE EF FF
	sbc $FFFD.w,X		; FD FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBF6F.l		; EF 6F BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFDFFF.l		; EF FF DF FF
	plx		; FA
	sbc $FD7FFF.l,X		; FF FF 7F FD
	cmp $FFFFEF.l,X		; DF EF FF FF
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
	sbc $7FFFFF.l,X		; FF FF FF 7F
	pei ($FF.b)		; D4 FF
	sbc $FF6FFF.l,X		; FF FF 6F FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FEEDFF.l,X		; FF FF ED FE
	xce		; FB
	eor $FFEFFF.l,X		; 5F FF EF FF
	xce		; FB
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	clv		; B8
	cmp $BEDDFD.l		; CF FD DD BE
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc [$FF.b],Y		; 77 FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFF.w,X		; FD FF FF
	xce		; FB
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7BFFAF.l,X		; FF AF FF 7B
	adc $FFFFBF.l,X		; 7F BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFBEF.l,X		; FF EF FB DF
	lda $FEF7FF.l,X		; BF FF F7 FE
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF9FFF.l,X		; FF FF 9F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FAFFFF.l,X		; FF FF FF FA
	sbc $FEFF.w,X		; FD FF FE
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $7FFDFB.l,X		; FF FB FD 7F
	sbc [$FF.b],Y		; F7 FF
	cmp $9FFF79.l,X		; DF 79 FF 9F
	sbc $FFFFDD.l,X		; FF DD FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	xce		; FB
	sbc $FFFF.w,X		; FD FF FF
	adc $DFFF.w		; 6D FF DF
	sbc $FFFF.w,X		; FD FF FF
	sbc ($FF.b,S),Y		; F3 FF
	sbc $FFBF.w,X		; FD BF FF
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
	sbc $EFF7FF.l,X		; FF FF F7 EF
	cmp $FFFBDF.l,X		; DF DF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $CFDF.w,X		; FD DF CF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $F7FFFD.l,X		; FF FD FF F7
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
	sbc $AFFFFF.l,X		; FF FF FF AF
	lda $FDBA.w,X		; BD BA FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFF.w,X		; FD FF FF
	sbc $8FBED7.l,X		; FF D7 BE 8F
	sbc $FFFFBE.l,X		; FF BE FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $AFBFF7.l,X		; FF F7 BF AF
	sbc [$FC.b],Y		; F7 FC
	adc $7FCFF7.l,X		; 7F F7 CF 7F
	sbc $FFDFBF.l,X		; FF BF DF FF
	sbc $FFFB.w,X		; FD FB FF
	sbc $DFFF.w,Y		; F9 FF DF
	sbc [$FB.b],Y		; F7 FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFF7.w,X		; 7D F7 FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFBFB.l,X		; FF FB FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FB7FFF.l,X		; FF FF 7F FB
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
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
	lda $DFDFFC.l,X		; BF FC DF DF
	xce		; FB
	sbc $FBFFFD.l,X		; FF FD FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $E9FFFF.l,X		; FF FF FF E9
	sbc $FFFFF0.l,X		; FF F0 FF FF
	sbc $DFFF.w,X		; FD FF DF
	sbc $BEDFFF.l,X		; FF FF DF BE
	lda $FFFFFF.l,X		; BF FF FF FF
	cmp $FDFBEE.l,X		; DF EE FB FD
	sbc $FDFF3E.l		; EF 3E FF FD
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	adc $FFFFFB.l,X		; 7F FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $3DFFFF.l,X		; FF FF FF 3D
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFF6F.l,X		; FF 6F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFBD.l,X		; FF BD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $1DFFFF.l,X		; FF FF FF 1D
	rti		; 40

	dec $9440.w,X		; DE 40 94
	sbc ($80.b,X)		; E1 80
	rol $DA.b		; 26 DA
	cld		; D8
	sty $DC.b,X		; 94 DC
	bit $8A.b		; 24 8A
	tsb $01.b		; 04 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	brk $89.b		; 00 89
	bra  32.b		; 80 20
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $02.b		; 00 02
	brk $00.b		; 00 00
	ora ($0A.b,X)		; 01 0A
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $18.b		; 00 18
	tay		; A8
	and ($14.b)		; 32 14
	sta ($04.b,X)		; 81 04
	php		; 08
	and [$04.b]		; 27 04
	bra  36.b		; 80 24
	brk $50.b		; 00 50
	cop $00.b		; 02 00
	rti		; 40

	jsr $0040.w		; 20 40 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
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
	ora ($00.b,X)		; 01 00
	tsb $20.b		; 04 20
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
	lda $9FB2.w,X		; BD B2 9F
	cpy #$B0.b		; C0 B0
	sbc ($A1.b,X)		; E1 A1
	and #$00.b		; 29 00
	tsb $7C.b		; 04 7C
	cmp ($CD.b)		; D2 CD
	sty $0880.w		; 8C 80 08
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $24.b		; 00 24
	cop $81.b		; 02 81
	brk $00.b		; 00 00
	jsr $00B8.w		; 20 B8 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	tsb $08.b		; 04 08
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora ($40.b,X)		; 01 40
	tsb $80.b		; 04 80
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	php		; 08
	adc [$00.b]		; 67 00
	mvn $10,$24		; 54 24 10
	pha		; 48
	brk $03.b		; 00 03
	.db $42, $06		; 42 06
	ldy #$82.b		; A0 82
	bpl  64.b		; 10 40
	bit $01.b		; 24 01
	tsb $00.b		; 04 00
	tsb $04.b		; 04 04
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ldx #$00.b		; A2 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	php		; 08
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	rti		; 40

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
	brk $35.b		; 00 35
	lda ($3A.b),Y		; B1 3A
	.db $82, $3C, $34		; 82 3C 34
	beq   4.b		; F0 04
	stz $20C2.w,X		; 9E C2 20
	sta ($20.b),Y		; 91 20
	rts		; 60

	tsb $00.b		; 04 00
	and ($00.b,X)		; 21 00
	brk $80.b		; 00 80
	rti		; 40

	brk $00.b		; 00 00
	brk $02.b		; 00 02
	php		; 08
	brk $02.b		; 00 02
	php		; 08
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	php		; 08
	ora ($00.b,X)		; 01 00
	sty $00.b		; 84 00
	tsb $00.b		; 04 00
	ora ($80.b,X)		; 01 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	php		; 08
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora ($05.b,X)		; 01 05
	brk $00.b		; 00 00
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
	sta ($AC.b,X)		; 81 AC
	sbc ($00.b,X)		; E1 00
	sty $7C.b		; 84 7C
	lsr $28.b		; 46 28
	php		; 08
	jsr $0428.w		; 20 28 04
	jsl $80000A.l		; 22 0A 00 80
	brk $00.b		; 00 00
	bpl   4.b		; 10 04
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $00.b		; 00 00
	brk $02.b		; 00 02
	php		; 08
	brk $00.b		; 00 00
	jsr $1800.w		; 20 00 18
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	adc [$23.b],Y		; 77 23
	dex		; CA
	eor ($22.b,S),Y		; 53 22
	sta ($84.b,S),Y		; 93 84
	sec		; 38
	sty $38.b		; 84 38
	stx $C054.w		; 8E 54 C0
	cop $40.b		; 02 40
	cop $41.b		; 02 41
	brk $10.b		; 00 10
	brk $80.b		; 00 80
	tsb $C6.b		; 04 C6
	ora #$00.b		; 09 00
	jsr $2000.w		; 20 00 20
	php		; 08
	brk $80.b		; 00 80
	brk $82.b		; 00 82
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $08.b		; 00 08
	brk $40.b		; 00 40
	ora ($02.b,X)		; 01 02
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $02.b		; A4 02
	adc $82.b		; 65 82
	asl $89.b,X		; 16 89
	sta $00.b		; 85 00
	mvp $81,$62		; 44 62 81
	bra  33.b		; 80 21
	php		; 08
	bpl  32.b		; 10 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $B0.b		; 46 B0
	adc ($B6.b)		; 72 B6
	brk $7B.b		; 00 7B
	bvc -14.b		; 50 F2
	.db $82, $86, $91		; 82 86 91
	bcs  50.b		; B0 32
	bcc  20.b		; 90 14
	.db $82, $00, $20		; 82 00 20
	brk $10.b		; 00 10
	jsr $0000.w		; 20 00 00
	brk $01.b		; 00 01
	ora ($81.b,X)		; 01 81
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	tsb $08.b		; 04 08
	jsr $0000.w		; 20 00 00
	brk $40.b		; 00 40
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ldy #$40.b		; A0 40
	brk $42.b		; 00 42
	bpl   8.b		; 10 08
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
	php		; 08
	.db $82, $44, $1A		; 82 44 1A
	ldy $C582.w		; AC 82 C5
	dey		; 88
	bit $2004.w		; 2C 04 20
	iny		; C8
	sty $70.b		; 84 70
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $20.b		; 00 20
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
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
	dec $064D.w		; CE 4D 06
	tax		; AA
	ldy $01.b,X		; B4 01
	rti		; 40

	jsr $A722.w		; 20 22 A7
	tyx		; BB
	ldx #$00.b		; A2 00
	bcs   4.b		; B0 04
	dey		; 88
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $68.b		; 00 68
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	ldy #$20.b		; A0 20
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	jsr $00A0.w		; 20 A0 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
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
	brk $22.b		; 00 22
	asl $8B.b,X		; 16 8B
	inc A		; 1A
	.db $82, $02, $08		; 82 02 08
	tsb $10.b		; 04 10
	trb $0081.w		; 1C 81 00
	php		; 08
	stx $0C.b		; 86 0C
	bpl   0.b		; 10 00
	ora $04.b,S		; 03 04
	brk $40.b		; 00 40
	bpl   0.b		; 10 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	rti		; 40

	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
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
	brk $D1.b		; 00 D1
	bit $94.b		; 24 94
	adc ($54.b,X)		; 61 54
	jsr $0822.w		; 20 22 08
	and ($18.b)		; 32 18
	stz $BF29.w,X		; 9E 29 BF
	ldy $3083.w		; AC 83 30
	and ($A4.b,X)		; 21 A4
	brk $81.b		; 00 81
	bpl -128.b		; 10 80
	tsb $80.b		; 04 80
	brk $08.b		; 00 08
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	rti		; 40

	bra   0.b		; 80 00
	brk $01.b		; 00 01
	brk $42.b		; 00 42
	brk $00.b		; 00 00
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	bpl   0.b		; 10 00
	php		; 08
	php		; 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $05.b		; 00 05
	jsl $1100D0.l		; 22 D0 00 11
	jsl $680228.l		; 22 28 02 68
	jsr $2258.w		; 20 58 22
	jsl $075A04.l		; 22 04 5A 07
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	brk $12.b		; 00 12
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	lsr A		; 4A
	rti		; 40

	.db $82, $B2, $32		; 82 B2 32
	jsr $5FDC.w		; 20 DC 5F
	php		; 08
	jsr $1005.w		; 20 05 10
	ora $82.b,S		; 03 82
	asl $80.b		; 06 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bpl -128.b		; 10 80
	brk $00.b		; 00 00
	bpl   8.b		; 10 08
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	php		; 08
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $01.b		; 00 01
	brk $A0.b		; 00 A0
	rti		; 40

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
	lsr $12.b		; 46 12
	brk $60.b		; 00 60
	bra   0.b		; 80 00
	tsb $F008.w		; 0C 08 F0
	ora $2C98.w		; 0D 98 2C
	brk $00.b		; 00 00
	brk $42.b		; 00 42
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pha		; 48
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	.db $00		; Opcode 00 overrunning bank boundry at 06FFFF. Skipping.
.ENDS
