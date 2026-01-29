.BANK 1 SLOT 0
.ORG $0000

.SECTION "Bank1" FORCE

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
.ACCU 8
	sep #$20		; E2 20
	phb		; 8B
	lda #$80.b		; A9 80
	pha		; 48
	plb		; AB
	ldx #$1000.w		; A2 00 10
.ACCU 8
	sep #$20		; E2 20
	stx $88.b		; 86 88
	lda $76.b,X		; B5 76
	bpl  10.b		; 10 0A
	jsl $828028.l		; 22 28 80 82
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	bra  20.b		; 80 14
	jsr $01E5.w		; 20 E5 01
	jsr $0273.w		; 20 73 02
.ACCU 8
	sep #$20		; E2 20
	lda $76.b,X		; B5 76
	bne   5.b		; D0 05
	jsr $122A.w		; 20 2A 12
	bra   3.b		; 80 03
	jsr $15BD.w		; 20 BD 15
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $4D.b,X		; B5 4D
	beq  19.b		; F0 13
	lda #$10.b		; A9 10
	ora $16.b,X		; 15 16
	sta $16.b,X		; 95 16
.ACCU 16
	rep #$20		; C2 20
	lda $50.b,X		; B5 50
	and #$0F00.w		; 29 00 0F
	beq  74.b		; F0 4A
	sta $4E.b,X		; 95 4E
	bra  70.b		; 80 46
.ACCU 16
	rep #$20		; C2 20
	lda $50.b,X		; B5 50
	and #$0F00.w		; 29 00 0F
	bne   6.b		; D0 06
	lda $4E.b,X		; B5 4E
	ora $50.b,X		; 15 50
	sta $50.b,X		; 95 50
	stz $4E.b,X		; 74 4E
.ACCU 8
	sep #$20		; E2 20
	lda $16.b,X		; B5 16
	and #$EF.b		; 29 EF
	sta $16.b,X		; 95 16
	lda $1E3D.w		; AD 3D 1E
	bne   5.b		; D0 05
	lda $1E04.w		; AD 04 1E
	beq   8.b		; F0 08
	stz $50.b,X		; 74 50
	stz $51.b,X		; 74 51
	stz $52.b,X		; 74 52
	stz $53.b,X		; 74 53
	lda $00.b,X		; B5 00
	beq  23.b		; F0 17
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	asl A		; 0A
	tax		; AA
	jsr ($00A6.w,X)		; FC A6 00
	jsr $01B0.w		; 20 B0 01
	jsr $022F.w		; 20 2F 02
	jsr $024B.w		; 20 4B 02
	jsr $0171.w		; 20 71 01
	jsl $80C745.l		; 22 45 C7 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $88.b		; A5 88
	clc		; 18
	adc #$0080.w		; 69 80 00
	tax		; AA
	cpx #$1100.w		; E0 00 11
	beq   3.b		; F0 03
	jmp $000C.w		; 4C 0C 00
	plb		; AB
	rtl		; 6B

	brk $00.b		; 00 00
	phd		; 0B
	and [$79.b]		; 27 79
	and [$A6.b],Y		; 37 A6
	eor [$86.b]		; 47 86
	cli		; 58
	asl A		; 0A
	rtl		; 6B

	sbc ($79.b)		; F2 79
	ldx #$0A8D.w		; A2 8D 0A
	stz $AE47.w,X		; 9E 47 AE
	and ($17.b,X)		; 21 17
	cld		; D8
	ora [$BB.b],Y		; 17 BB
	clc		; 18
	phb		; 8B
	ora $1A42.w,Y		; 19 42 1A
	asl $DA1B.w		; 0E 1B DA
	tas		; 1B
	sty $1C.b,X		; 94 1C
	eor $101D.w,Y		; 59 1D 10
	asl $1F3E.w,X		; 1E 3E 1F
	sbc $1F.b,X		; F5 1F
.ACCU 16
	rep #$20		; C2 20
	lsr $21.b		; 46 21
	sbc $C521.w,X		; FD 21 C5
	jsl $7523C3.l		; 22 C3 23 75
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BA.b		; 00 BA
	and $FB.b		; 25 FB
	and $38.b		; 25 38
	rol $B3.b		; 26 B3
	rol $C2.b		; 26 C2
	bpl -30.b		; 10 E2
	jsr $00E0.w		; 20 E0 00
	bpl -48.b		; 10 D0
	ora $A9.b		; 05 A9
	eor $7895.w,X		; 5D 95 78
	rts		; 60

	lda #$955E.w		; A9 5E 95
	sei		; 78
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	cpy #$1000.w		; C0 00 10
	bne   6.b		; D0 06
	lda #$5D.b		; A9 5D
	sta $0078.w,Y		; 99 78 00
	rts		; 60

	lda #$5E.b		; A9 5E
	sta $0078.w,Y		; 99 78 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	dec $58.b,X		; D6 58
	lda $58.b,X		; B5 58
	and #$01.b		; 29 01
	beq   9.b		; F0 09
.ACCU 16
	rep #$20		; C2 20
	lda #$FFFF.w		; A9 FF FF
	sta $2C.b,X		; 95 2C
	bra   7.b		; 80 07
.ACCU 16
	rep #$20		; C2 20
	lda #$0001.w		; A9 01 00
	sta $2C.b,X		; 95 2C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $30.b,X		; B5 30
	beq  23.b		; F0 17
	bmi  11.b		; 30 0B
	sec		; 38
	sbc $3A.b,X		; F5 3A
	bpl   3.b		; 10 03
	lda #$0000.w		; A9 00 00
	sta $30.b,X		; 95 30
	rts		; 60

	clc		; 18
	adc $3A.b,X		; 75 3A
	bmi  -8.b		; 30 F8
	lda #$0000.w		; A9 00 00
	sta $30.b,X		; 95 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $16.b,X		; B5 16
	and #$FFBF.w		; 29 BF FF
	sta $16.b,X		; 95 16
	lda $21.b,X		; B5 21
	sec		; 38
	sbc $0A00.w		; ED 00 0A
	cmp #$0018.w		; C9 18 00
	beq   2.b		; F0 02
	bpl  17.b		; 10 11
	lda $0A00.w		; AD 00 0A
	clc		; 18
	adc #$0018.w		; 69 18 00
	sta $21.b,X		; 95 21
	lda $16.b,X		; B5 16
	ora #$0040.w		; 09 40 00
	sta $16.b,X		; 95 16
	rts		; 60

	cmp #$00E8.w		; C9 E8 00
	bmi  16.b		; 30 10
	lda $0A00.w		; AD 00 0A
	clc		; 18
	adc #$00E8.w		; 69 E8 00
	sta $21.b,X		; 95 21
	lda $16.b,X		; B5 16
	ora #$0040.w		; 09 40 00
	sta $16.b,X		; 95 16
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	stz $00.b		; 64 00
	lda $30.b,X		; B5 30
	clc		; 18
	adc $36.b,X		; 75 36
	clc		; 18
	adc $38.b,X		; 75 38
	bpl   2.b		; 10 02
	dec $00.b		; C6 00
	clc		; 18
	adc $20.b,X		; 75 20
	sta $20.b,X		; 95 20
	lda $22.b,X		; B5 22
	adc $00.b		; 65 00
	sta $22.b,X		; 95 22
	stz $00.b		; 64 00
	lda $32.b,X		; B5 32
	bpl   2.b		; 10 02
	dec $00.b		; C6 00
	clc		; 18
	adc $24.b,X		; 75 24
	sta $24.b,X		; 95 24
	lda $26.b,X		; B5 26
	adc $00.b		; 65 00
	sta $26.b,X		; 95 26
	stz $36.b,X		; 74 36
	stz $38.b,X		; 74 38
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $68.b		; 64 68
	stz $6A.b		; 64 6A
	ldx $88.b		; A6 88
	cpx #$1000.w		; E0 00 10
	beq   9.b		; F0 09
	lda $A5.b		; A5 A5
	sta $68.b		; 85 68
	lda $A9.b		; A5 A9
	sta $6A.b		; 85 6A
	rts		; 60

	lda $A3.b		; A5 A3
	sta $68.b		; 85 68
	lda $A7.b		; A5 A7
	sta $6A.b		; 85 6A
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	lda $01.b,X		; B5 01
	sta $04.b,X		; 95 04
	stz $07.b,X		; 74 07
	stz $06.b,X		; 74 06
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	sta $04.b,X		; 95 04
	stz $07.b,X		; 74 07
	stz $06.b,X		; 74 06
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	sta $01.b,X		; 95 01
	stz $02.b,X		; 74 02
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $16.b,X		; B5 16
	bmi  17.b		; 30 11
.ACCU 16
	rep #$20		; C2 20
	lda $34.b,X		; B5 34
	clc		; 18
	adc $32.b,X		; 75 32
	cmp #$0C00.w		; C9 00 0C
	bmi   3.b		; 30 03
	lda #$0C00.w		; A9 00 0C
	sta $32.b,X		; 95 32
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $32.b,X		; B5 32
	bmi  23.b		; 30 17
	lda $25.b,X		; B5 25
	cmp #$00C0.w		; C9 C0 00
	bmi  16.b		; 30 10
	stz $32.b,X		; 74 32
	lda #$00C0.w		; A9 C0 00
	sta $25.b,X		; 95 25
.ACCU 8
	sep #$20		; E2 20
	lda $16.b,X		; B5 16
	ora #$80.b		; 09 80
	sta $16.b,X		; 95 16
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $16.b,X		; B5 16
	and #$7F.b		; 29 7F
	sta $16.b,X		; 95 16
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	jsr $03DC.w		; 20 DC 03
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $50.b,X		; B5 50
	sta $52.b,X		; 95 52
	stz $50.b,X		; 74 50
.ACCU 8
	sep #$20		; E2 20
	lda $69.b		; A5 69
	beq  78.b		; F0 4E
	and #$0F.b		; 29 0F
	beq  64.b		; F0 40
	ora $50.b,X		; 15 50
	sta $50.b,X		; 95 50
.ACCU 16
	rep #$20		; C2 20
	lda $21.b,X		; B5 21
	cmp $0021.w,Y		; D9 21 00
.ACCU 8
	sep #$20		; E2 20
	bmi  14.b		; 30 0E
	bne   4.b		; D0 04
	lda $09.b,X		; B5 09
	beq   8.b		; F0 08
	lda $69.b		; A5 69
	and #$01.b		; 29 01
	beq  37.b		; F0 25
	bra   6.b		; 80 06
	lda $69.b		; A5 69
	and #$02.b		; 29 02
	beq  29.b		; F0 1D
	lda $0018.w,Y		; B9 18 00
	and #$01.b		; 29 01
	bne  16.b		; D0 10
	ldy #$1100.w		; A0 00 11
	cpx #$1000.w		; E0 00 10
	bne   3.b		; D0 03
	ldy #$1180.w		; A0 80 11
	lda $0000.w,Y		; B9 00 00
	beq   6.b		; F0 06
	lda #$10.b		; A9 10
	ora $51.b,X		; 15 51
	sta $51.b,X		; 95 51
	lda $6B.b		; A5 6B
	and #$C0.b		; 29 C0
	lsr A		; 4A
	lsr A		; 4A
	ora $50.b,X		; 15 50
	sta $50.b,X		; 95 50
	lda $6A.b		; A5 6A
	and #$C0.b		; 29 C0
	ora $50.b,X		; 15 50
	sta $50.b,X		; 95 50
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $50.b,X		; B5 50
	and #$03.b		; 29 03
	beq  11.b		; F0 0B
	and #$01.b		; 29 01
	eor $09.b,X		; 55 09
	beq   5.b		; F0 05
	lda #$01.b		; A9 01
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $50.b,X		; B5 50
	and #$03.b		; 29 03
	beq  11.b		; F0 0B
	and #$01.b		; 29 01
	eor $09.b,X		; 55 09
	bne   5.b		; D0 05
	lda #$02.b		; A9 02
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda $50.b,X		; B5 50
	bne   3.b		; D0 03
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $50.b,X		; B5 50
	and #$04.b		; 29 04
	beq   5.b		; F0 05
	lda #$04.b		; A9 04
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $06.b,X		; B5 06
	bpl  16.b		; 10 10
	lda $50.b,X		; B5 50
	and #$04.b		; 29 04
	bne   5.b		; D0 05
	lda #$00.b		; A9 00
	jmp $0224.w		; 4C 24 02
	lda #$03.b		; A9 03
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $32.b,X		; B5 32
	bmi  11.b		; 30 0B
.ACCU 8
	sep #$20		; E2 20
	lda $16.b,X		; B5 16
	bpl   5.b		; 10 05
	lda #$09.b		; A9 09
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	sta $0E.b		; 85 0E
	lda $32.b,X		; B5 32
	bmi  11.b		; 30 0B
.ACCU 8
	sep #$20		; E2 20
	lda $16.b,X		; B5 16
	bpl   5.b		; 10 05
	lda $0E.b		; A5 0E
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $32.b,X		; B5 32
	bmi  11.b		; 30 0B
.ACCU 8
	sep #$20		; E2 20
	lda $16.b,X		; B5 16
	bpl   5.b		; 10 05
	lda #$1E.b		; A9 1E
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $32.b,X		; B5 32
	bmi  20.b		; 30 14
.ACCU 8
	sep #$20		; E2 20
	lda $16.b,X		; B5 16
	bpl  14.b		; 10 0E
	and #$20.b		; 29 20
	bne   5.b		; D0 05
	lda #$20.b		; A9 20
	jmp $0224.w		; 4C 24 02
	lda #$1F.b		; A9 1F
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	sta $0E.b		; 85 0E
.ACCU 8
	sep #$20		; E2 20
	lda $09.b,X		; B5 09
	beq  10.b		; F0 0A
.ACCU 16
	rep #$20		; C2 20
	lda $0E.b		; A5 0E
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	sta $0E.b		; 85 0E
.ACCU 16
	rep #$20		; C2 20
	lda $0E.b		; A5 0E
	sta $30.b,X		; 95 30
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $50.b,X		; B5 50
	and #$08.b		; 29 08
	beq   5.b		; F0 05
	lda #$05.b		; A9 05
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $06.b,X		; B5 06
	bpl  27.b		; 10 1B
	lda $54.b,X		; B5 54
	and #$03.b		; 29 03
	beq  16.b		; F0 10
	and #$01.b		; 29 01
	eor $09.b,X		; 55 09
	beq   5.b		; F0 05
	lda #$07.b		; A9 07
	jmp $0224.w		; 4C 24 02
	lda #$08.b		; A9 08
	jmp $0224.w		; 4C 24 02
	lda #$06.b		; A9 06
	jmp $0224.w		; 4C 24 02
	lda $50.b,X		; B5 50
	and #$03.b		; 29 03
	ora $54.b,X		; 15 54
	sta $54.b,X		; 95 54
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
	cpx #$1000.w		; E0 00 10
	beq   4.b		; F0 04
	ldy #$1000.w		; A0 00 10
	rts		; 60

	ldy #$1080.w		; A0 80 10
	rts		; 60

	jsr $03DC.w		; 20 DC 03
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $0E.b		; 64 0E
	lda $21.b,X		; B5 21
	cmp $0021.w,Y		; D9 21 00
	beq  28.b		; F0 1C
	bmi   2.b		; 30 02
	inc $0E.b		; E6 0E
.ACCU 8
	sep #$20		; E2 20
	lda $09.b,X		; B5 09
	eor $0E.b		; 45 0E
	beq  16.b		; F0 10
	lda $54.b,X		; B5 54
	and #$04.b		; 29 04
	bne   5.b		; D0 05
	lda #$0A.b		; A9 0A
	jmp $0224.w		; 4C 24 02
	lda #$0B.b		; A9 0B
	jmp $0224.w		; 4C 24 02
	rts		; 60

	jsr $03DC.w		; 20 DC 03
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $0E.b		; 64 0E
	lda $21.b,X		; B5 21
	cmp $0021.w,Y		; D9 21 00
	beq  20.b		; F0 14
	bmi   2.b		; 30 02
	inc $0E.b		; E6 0E
.ACCU 8
	sep #$20		; E2 20
	lda $09.b,X		; B5 09
	eor $0E.b		; 45 0E
	beq   8.b		; F0 08
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $09.b,X		; 95 09
	stz $02.b,X		; 74 02
	rts		; 60

	jsr $03DC.w		; 20 DC 03
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $0021.w,Y		; B9 21 00
	sec		; 38
	sbc $21.b,X		; F5 21
	bpl   4.b		; 10 04
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $50.b,X		; B5 50
	and #$04.b		; 29 04
	bne   5.b		; D0 05
	lda #$04.b		; A9 04
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $50.b,X		; B5 50
	and #$F0.b		; 29 F0
	bne   6.b		; D0 06
	lda $52.b,X		; B5 52
	and #$F0.b		; 29 F0
	beq 114.b		; F0 72
	phb		; 8B
	phk		; 4B
	plb		; AB
	bit #$30.b		; 89 30
	beq  38.b		; F0 26
	and #$10.b		; 29 10
	beq  17.b		; F0 11
	lda $0000.w,Y		; B9 00 00
	sta $00.b		; 85 00
	lda $0001.w,Y		; B9 01 00
	sta $01.b		; 85 01
	lda $0002.w,Y		; B9 02 00
	sta $02.b		; 85 02
	bra  55.b		; 80 37
	lda $0003.w,Y		; B9 03 00
	sta $00.b		; 85 00
	lda $0004.w,Y		; B9 04 00
	sta $01.b		; 85 01
	lda $0005.w,Y		; B9 05 00
	sta $02.b		; 85 02
	bra  38.b		; 80 26
	and #$40.b		; 29 40
	beq  17.b		; F0 11
	lda $0006.w,Y		; B9 06 00
	sta $00.b		; 85 00
	lda $0007.w,Y		; B9 07 00
	sta $01.b		; 85 01
	lda $0008.w,Y		; B9 08 00
	sta $02.b		; 85 02
	bra  17.b		; 80 11
	lda $0009.w,Y		; B9 09 00
	sta $00.b		; 85 00
	lda $000A.w,Y		; B9 0A 00
	sta $01.b		; 85 01
	lda $000B.w,Y		; B9 0B 00
	sta $02.b		; 85 02
	bra   0.b		; 80 00
	plb		; AB
	jsr $0439.w		; 20 39 04
.ACCU 16
	rep #$20		; C2 20
	sta $0E.b		; 85 0E
	lda $00.b		; A5 00
	and #$00FF.w		; 29 FF 00
	cmp $0E.b		; C5 0E
	bpl   7.b		; 10 07
.ACCU 8
	sep #$20		; E2 20
	lda $01.b		; A5 01
	jmp $0224.w		; 4C 24 02
.ACCU 8
	sep #$20		; E2 20
	lda $02.b		; A5 02
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	sta $0F.b		; 85 0F
	lda $06.b,X		; B5 06
	bpl   5.b		; 10 05
	lda $0F.b		; A5 0F
	jmp $0224.w		; 4C 24 02
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	cpx #$1000.w		; E0 00 10
	beq   5.b		; F0 05
	ldy #$1180.w		; A0 80 11
	bra   3.b		; 80 03
	ldy #$1100.w		; A0 00 11
	clc		; 18
	lda $0000.w,Y		; B9 00 00
	beq   1.b		; F0 01
	sec		; 38
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $51.b,X		; B5 51
	and #$10.b		; 29 10
	beq  16.b		; F0 10
	lda $50.b,X		; B5 50
	and #$04.b		; 29 04
	beq   5.b		; F0 05
	lda #$0D.b		; A9 0D
	jmp $0224.w		; 4C 24 02
	lda #$0C.b		; A9 0C
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $50.b,X		; B5 50
	and #$04.b		; 29 04
	beq   5.b		; F0 05
	lda #$0D.b		; A9 0D
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $50.b,X		; B5 50
	and #$04.b		; 29 04
	bne   5.b		; D0 05
	lda #$0C.b		; A9 0C
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $51.b,X		; B5 51
	and #$10.b		; 29 10
	bne  20.b		; D0 14
	lda $59.b,X		; B5 59
	bne  21.b		; D0 15
	lda $54.b,X		; B5 54
	and #$04.b		; 29 04
	bne   5.b		; D0 05
	lda #$00.b		; A9 00
	jmp $0224.w		; 4C 24 02
	lda #$03.b		; A9 03
	jmp $0224.w		; 4C 24 02
	lda #$06.b		; A9 06
	sta $59.b,X		; 95 59
	rts		; 60

	dec $59.b,X		; D6 59
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $1E04.w		; AD 04 1E
	beq   3.b		; F0 03
	jmp $0669.w		; 4C 69 06
	lda $50.b,X		; B5 50
	bit #$03.b		; 89 03
	bne   3.b		; D0 03
	jmp $0669.w		; 4C 69 06
	bit #$0C.b		; 89 0C
	beq   3.b		; F0 03
	jmp $0669.w		; 4C 69 06
	and #$F0.b		; 29 F0
	bne   3.b		; D0 03
	jmp $0669.w		; 4C 69 06
	stz $0F.b		; 64 0F
	bit #$10.b		; 89 10
	bne  14.b		; D0 0E
	inc $0F.b		; E6 0F
	bit #$20.b		; 89 20
	bne   8.b		; D0 08
	inc $0F.b		; E6 0F
	bit #$40.b		; 89 40
	bne   2.b		; D0 02
	inc $0F.b		; E6 0F
	lda $0F.b		; A5 0F
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	sty $10.b		; 84 10
	clc		; 18
	adc $10.b		; 65 10
	tay		; A8
	phb		; 8B
	phk		; 4B
	plb		; AB
	lda $0000.w,Y		; B9 00 00
	sta $00.b		; 85 00
	lda $0002.w,Y		; B9 02 00
	sta $02.b		; 85 02
	lda $0004.w,Y		; B9 04 00
	sta $04.b		; 85 04
	lda $0006.w,Y		; B9 06 00
	sta $06.b		; 85 06
	plb		; AB
	lda $00.b		; A5 00
	and #$00FF.w		; 29 FF 00
	cmp #$00FF.w		; C9 FF 00
	bne   3.b		; D0 03
	jmp $0669.w		; 4C 69 06
	lda $47.b,X		; B5 47
	and #$00FF.w		; 29 FF 00
	beq   3.b		; F0 03
	jmp $0669.w		; 4C 69 06
	jsr $03DC.w		; 20 DC 03
.ACCU 16
	rep #$20		; C2 20
	lda $0041.w,Y		; B9 41 00
	and #$00FF.w		; 29 FF 00
	bne   3.b		; D0 03
	jmp $0669.w		; 4C 69 06
	lda $0046.w,Y		; B9 46 00
	and #$0020.w		; 29 20 00
	beq   3.b		; F0 03
	jmp $0669.w		; 4C 69 06
	lda $0047.w,Y		; B9 47 00
	and #$00FF.w		; 29 FF 00
	bne 120.b		; D0 78
	lda $00.b		; A5 00
	and #$0003.w		; 29 03 00
	cmp #$0003.w		; C9 03 00
	beq  23.b		; F0 17
	bit #$0001.w		; 89 01 00
	bne  10.b		; D0 0A
	lda $0016.w,Y		; B9 16 00
	and #$0080.w		; 29 80 00
	bne  97.b		; D0 61
	bra   8.b		; 80 08
	lda $0016.w,Y		; B9 16 00
	and #$0080.w		; 29 80 00
	beq  87.b		; F0 57
	jsr $066A.w		; 20 6A 06
	bcc  82.b		; 90 52
.ACCU 8
	sep #$20		; E2 20
	lda $50.b,X		; B5 50
	and #$01.b		; 29 01
	eor #$01.b		; 49 01
	sta $09.b,X		; 95 09
	lda #$1C.b		; A9 1C
	sta $0001.w,Y		; 99 01 00
	lda #$E0.b		; A9 E0
	sta $46.b,X		; 95 46
	lda #$A0.b		; A9 A0
	sta $0046.w,Y		; 99 46 00
	lda #$80.b		; A9 80
	sta $0006.w,Y		; 99 06 00
	lda #$00.b		; A9 00
	sta $0034.w,Y		; 99 34 00
	sta $0035.w,Y		; 99 35 00
	sta $0030.w,Y		; 99 30 00
	sta $0031.w,Y		; 99 31 00
	sta $0032.w,Y		; 99 32 00
	sta $0033.w,Y		; 99 33 00
	sta $0002.w,Y		; 99 02 00
.ACCU 16
	rep #$20		; C2 20
	lda $0079.w,Y		; B9 79 00
	cmp #$03E7.w		; C9 E7 03
	bpl  10.b		; 10 0A
	lda #$0001.w		; A9 01 00
	clc		; 18
	adc $0079.w,Y		; 79 79 00
	sta $0079.w,Y		; 99 79 00
	jsr $0121.w		; 20 21 01
.ACCU 8
	sep #$20		; E2 20
	lda $07.b		; A5 07
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $09.b,X		; B5 09
	and #$00FF.w		; 29 FF 00
	bne  38.b		; D0 26
	lda $01.b		; A5 01
	and #$00FF.w		; 29 FF 00
	bit #$0080.w		; 89 80 00
	beq   3.b		; F0 03
	ora #$FF00.w		; 09 00 FF
	clc		; 18
	adc $21.b,X		; 75 21
	cmp $0021.w,Y		; D9 21 00
	bpl  91.b		; 10 5B
	sta $0E.b		; 85 0E
	lda $02.b		; A5 02
	and #$00FF.w		; 29 FF 00
	clc		; 18
	adc $0E.b		; 65 0E
	cmp $0021.w,Y		; D9 21 00
	bmi  76.b		; 30 4C
	bra  36.b		; 80 24
	lda $03.b		; A5 03
	and #$00FF.w		; 29 FF 00
	bit #$0080.w		; 89 80 00
	beq   3.b		; F0 03
	ora #$FF00.w		; 09 00 FF
	clc		; 18
	adc $21.b,X		; 75 21
	cmp $0021.w,Y		; D9 21 00
	bpl  53.b		; 10 35
	sta $0E.b		; 85 0E
	lda $04.b		; A5 04
	and #$00FF.w		; 29 FF 00
	clc		; 18
	adc $0E.b		; 65 0E
	cmp $0021.w,Y		; D9 21 00
	bmi  38.b		; 30 26
	lda $05.b		; A5 05
	and #$00FF.w		; 29 FF 00
	bit #$0080.w		; 89 80 00
	beq   3.b		; F0 03
	ora #$FF00.w		; 09 00 FF
	clc		; 18
	adc $25.b,X		; 75 25
	cmp $0025.w,Y		; D9 25 00
	bpl  17.b		; 10 11
	sta $0E.b		; 85 0E
	lda $06.b		; A5 06
	and #$00FF.w		; 29 FF 00
	clc		; 18
	adc $0E.b		; 65 0E
	cmp $0025.w,Y		; D9 25 00
	bmi   2.b		; 30 02
	sec		; 38
	rts		; 60

	clc		; 18
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $02.b,X		; B5 02
	and #$00FF.w		; 29 FF 00
	bne  17.b		; D0 11
	phb		; 8B
	phk		; 4B
	plb		; AB
	lda $0000.w,Y		; B9 00 00
	sta $00.b		; 85 00
	plb		; AB
	and #$00FF.w		; 29 FF 00
	beq   3.b		; F0 03
	jmp $07E5.w		; 4C E5 07
	sty $12.b		; 84 12
	jsr $03DC.w		; 20 DC 03
	sty $10.b		; 84 10
	lda $0000.w,Y		; B9 00 00
	sta $0E.b		; 85 0E
	lda $07.b,X		; B5 07
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	adc $12.b		; 65 12
	tay		; A8
	phb		; 8B
	phk		; 4B
	plb		; AB
	lda $0000.w,Y		; B9 00 00
	sta $00.b		; 85 00
	lda $0002.w,Y		; B9 02 00
	sta $02.b		; 85 02
	lda $0004.w,Y		; B9 04 00
	sta $04.b		; 85 04
	lda $0006.w,Y		; B9 06 00
	sta $06.b		; 85 06
.ACCU 16
	rep #$20		; C2 20
	lda $0E.b		; A5 0E
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
	lda $0881.w,Y		; B9 81 08
	sta $0C.b		; 85 0C
	lda $00.b		; A5 00
	and #$00FF.w		; 29 FF 00
	tay		; A8
	lda ($0C.b),Y		; B1 0C
	plb		; AB
.ACCU 8
	sep #$20		; E2 20
	ldy $10.b		; A4 10
	sta $0005.w,Y		; 99 05 00
.ACCU 16
	rep #$20		; C2 20
	lda $07.b		; A5 07
	and #$00FF.w		; 29 FF 00
	beq   3.b		; F0 03
	tya		; 98
	txy		; 9B
	tax		; AA
	lda $09.b,X		; B5 09
	and #$00FF.w		; 29 FF 00
	beq   8.b		; F0 08
	lda $01.b		; A5 01
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	sta $01.b		; 85 01
	lda $0A00.w		; AD 00 0A
	clc		; 18
	adc #$0018.w		; 69 18 00
	sta $0C.b		; 85 0C
	lda $0A00.w		; AD 00 0A
	clc		; 18
	adc #$00E8.w		; 69 E8 00
	sta $0E.b		; 85 0E
	lda $31.b,X		; B5 31
	and #$00FF.w		; 29 FF 00
	bit #$0080.w		; 89 80 00
	beq   3.b		; F0 03
	ora #$FF00.w		; 09 00 FF
	clc		; 18
	adc $01.b		; 65 01
	clc		; 18
	adc $21.b,X		; 75 21
	cmp $0C.b		; C5 0C
	bpl  16.b		; 10 10
	sec		; 38
	sbc $0C.b		; E5 0C
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	clc		; 18
	adc $21.b,X		; 75 21
	sta $21.b,X		; 95 21
	lda $0C.b		; A5 0C
	bra  18.b		; 80 12
	cmp $0E.b		; C5 0E
	bmi  14.b		; 30 0E
	sec		; 38
	sbc $0E.b		; E5 0E
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	clc		; 18
	adc $21.b,X		; 75 21
	sta $21.b,X		; 95 21
	lda $0E.b		; A5 0E
	sta $0021.w,Y		; 99 21 00
	lda $33.b,X		; B5 33
	and #$00FF.w		; 29 FF 00
	bit #$0080.w		; 89 80 00
	beq   3.b		; F0 03
	ora #$FF00.w		; 09 00 FF
	clc		; 18
	adc $03.b		; 65 03
	clc		; 18
	adc $25.b,X		; 75 25
	sta $0025.w,Y		; 99 25 00
	ldx $88.b		; A6 88
	ldy $10.b		; A4 10
.ACCU 8
	sep #$20		; E2 20
	lda $05.b		; A5 05
	beq   9.b		; F0 09
	lda $0050.w,Y		; B9 50 00
	and #$F0.b		; 29 F0
	beq   2.b		; F0 02
	inc $56.b,X		; F6 56
	lda $06.b,X		; B5 06
	bne   4.b		; D0 04
	lda $06.b		; A5 06
	sta $78.b,X		; 95 78
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	phb		; 8B
	phk		; 4B
	plb		; AB
	lda $0000.w,Y		; B9 00 00
	sta $00.b		; 85 00
	lda $0002.w,Y		; B9 02 00
	sta $02.b		; 85 02
	lda $0004.w,Y		; B9 04 00
	sta $04.b		; 85 04
	plb		; AB
	jsr $03DC.w		; 20 DC 03
	lda $09.b,X		; B5 09
	and #$00FF.w		; 29 FF 00
	beq   8.b		; F0 08
	lda $01.b		; A5 01
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	sta $01.b		; 85 01
	lda $01.b		; A5 01
	sta $0030.w,Y		; 99 30 00
	lda $03.b		; A5 03
	sta $0032.w,Y		; 99 32 00
	lda #$0060.w		; A9 60 00
	sta $0034.w,Y		; 99 34 00
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	sta $004C.w,Y		; 99 4C 00
	lda $56.b,X		; B5 56
	cmp #$02.b		; C9 02
	bpl  30.b		; 10 1E
	lda $8D.b		; A5 8D
	cmp #$04.b		; C9 04
	beq  13.b		; F0 0D
	lda $0049.w,Y		; B9 49 00
	sec		; 38
	sbc $05.b		; E5 05
	cmp #$90.b		; C9 90
	bcs  57.b		; B0 39
	sta $0049.w,Y		; 99 49 00
	lda #$1D.b		; A9 1D
	sta $0001.w,Y		; 99 01 00
	lda #$00.b		; A9 00
	sta $0002.w,Y		; 99 02 00
	rts		; 60

	lda $8D.b		; A5 8D
	cmp #$04.b		; C9 04
	beq  17.b		; F0 11
	lda $05.b		; A5 05
	lsr A		; 4A
	eor #$FF.b		; 49 FF
	inc A		; 1A
	clc		; 18
	adc $0049.w,Y		; 79 49 00
	cmp #$90.b		; C9 90
	bcs  23.b		; B0 17
	sta $0049.w,Y		; 99 49 00
	lda #$23.b		; A9 23
	sta $0001.w,Y		; 99 01 00
	sta $0004.w,Y		; 99 04 00
	lda #$00.b		; A9 00
	sta $0002.w,Y		; 99 02 00
	sta $0007.w,Y		; 99 07 00
	sta $0006.w,Y		; 99 06 00
	rts		; 60

	lda #$1D.b		; A9 1D
	sta $0001.w,Y		; 99 01 00
	lda #$00.b		; A9 00
	sta $0002.w,Y		; 99 02 00
	jsl $C10A4F.l		; 22 4F 0A C1
	rts		; 60

	brk $00.b		; 00 00
	sta $08.b,X		; 95 08
	tax		; AA
	php		; 08
	lda $08D408.l,X		; BF 08 D4 08
	sbc #$08.b		; E9 08
	inc $1308.w,X		; FE 08 13
	ora #$28.b		; 09 28
	ora #$3D.b		; 09 3D
	ora #$00.b		; 09 00
	ora ($02.b,X)		; 01 02
	ora $05.b,S		; 03 05
	asl $07.b		; 06 07
	eor $56.b,X		; 55 56
	eor [$58.b],Y		; 57 58
	eor $5B5A.w,Y		; 59 5A 5B
	jmp $5F5E5D.l		; 5C 5D 5E 5F
	rts		; 60

	.db $62, $63, $00		; 62 63 00
	ora ($02.b,X)		; 01 02
	ora $05.b,S		; 03 05
	asl $07.b		; 06 07
	lsr $605F.w,X		; 5E 5F 60
	adc ($62.b,X)		; 61 62
	adc $64.b,S		; 63 64
	adc $66.b		; 65 66
	adc [$68.b]		; 67 68
	adc #$71.b		; 69 71
	adc ($00.b)		; 72 00
	ora ($02.b,X)		; 01 02
	ora $05.b,S		; 03 05
	asl $07.b		; 06 07
	rts		; 60

	adc ($62.b,X)		; 61 62
	adc $64.b,S		; 63 64
	adc $66.b		; 65 66
	adc [$68.b]		; 67 68
	adc #$6A.b		; 69 6A
	rtl		; 6B

	jmp ($006D.w)		; 6C 6D 00
	ora ($02.b,X)		; 01 02
	ora $05.b,S		; 03 05
	asl $07.b		; 06 07
	cli		; 58
	ror $67.b		; 66 67
	pla		; 68
	adc #$6A.b		; 69 6A
	rtl		; 6B

	jmp ($6E6D.w)		; 6C 6D 6E
	adc $727170.l		; 6F 70 71 72
	brk $01.b		; 00 01
	cop $03.b		; 02 03
	ora $06.b		; 05 06
	ora [$61.b]		; 07 61
	.db $62, $63, $64		; 62 63 64
	adc $66.b		; 65 66
	adc [$68.b]		; 67 68
	adc #$6A.b		; 69 6A
	rtl		; 6B

	jmp ($6E6D.w)		; 6C 6D 6E
	brk $01.b		; 00 01
	cop $03.b		; 02 03
	ora $06.b		; 05 06
	ora [$57.b]		; 07 57
	cli		; 58
	eor $5B5A.w,Y		; 59 5A 5B
	jmp $5F5E5D.l		; 5C 5D 5E 5F
	rts		; 60

	adc ($62.b,X)		; 61 62
	adc $64.b,S		; 63 64
	brk $01.b		; 00 01
	cop $03.b		; 02 03
	ora $06.b		; 05 06
	ora [$66.b]		; 07 66
	adc [$68.b]		; 67 68
	adc #$6A.b		; 69 6A
	rtl		; 6B

	jmp ($6E6D.w)		; 6C 6D 6E
	adc $727170.l		; 6F 70 71 72
	adc ($00.b,S),Y		; 73 00
	ora ($02.b,X)		; 01 02
	ora $05.b,S		; 03 05
	asl $07.b		; 06 07
	bvc  81.b		; 50 51
	eor ($53.b)		; 52 53
	mvn $56,$55		; 54 55 56
	eor [$58.b],Y		; 57 58
	eor $5B5A.w,Y		; 59 5A 5B
	jmp $01005D.l		; 5C 5D 00 01
	cop $03.b		; 02 03
	ora $06.b		; 05 06
	ora [$4C.b]		; 07 4C
	eor $4F4E.w		; 4D 4E 4F
	bvc  81.b		; 50 51
	eor ($53.b)		; 52 53
	mvn $56,$55		; 54 55 56
	eor [$58.b],Y		; 57 58
	eor $20E2.w,Y		; 59 E2 20
	lda $43.b,X		; B5 43
	beq 122.b		; F0 7A
.ACCU 8
	sep #$20		; E2 20
	lda $51.b,X		; B5 51
	and #$0F.b		; 29 0F
	bne   6.b		; D0 06
	lda $53.b,X		; B5 53
	and #$0F.b		; 29 0F
	beq 108.b		; F0 6C
	sty $0E.b		; 84 0E
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	dec A		; 3A
	dec A		; 3A
	asl A		; 0A
	clc		; 18
	adc $0E.b		; 65 0E
	tay		; A8
	phb		; 8B
	phk		; 4B
	plb		; AB
	lda $0000.w,Y		; B9 00 00
	sta $00.b		; 85 00
	plb		; AB
.ACCU 8
	sep #$20		; E2 20
	lda $00.b		; A5 00
	and #$01.b		; 29 01
	beq  16.b		; F0 10
.ACCU 16
	rep #$20		; C2 20
	lda $32.b,X		; B5 32
	bmi  71.b		; 30 47
.ACCU 8
	sep #$20		; E2 20
	lda $16.b,X		; B5 16
	and #$80.b		; 29 80
	beq  63.b		; F0 3F
	bra  12.b		; 80 0C
	lda $00.b		; A5 00
	and #$02.b		; 29 02
	beq   6.b		; F0 06
	lda $16.b,X		; B5 16
	and #$80.b		; 29 80
	bne  49.b		; D0 31
	lda $00.b		; A5 00
	and #$04.b		; 29 04
	beq   5.b		; F0 05
	jsr $04E8.w		; 20 E8 04
	bcs  38.b		; B0 26
.ACCU 8
	sep #$20		; E2 20
	lda $00.b		; A5 00
	and #$08.b		; 29 08
	beq  22.b		; F0 16
	lda $8D.b		; A5 8D
	cmp #$04.b		; C9 04
	beq  16.b		; F0 10
	lda $1F5C.w		; AD 5C 1F
	bmi   5.b		; 30 05
	lda $0804.w		; AD 04 08
	beq   6.b		; F0 06
	lda #$18.b		; A9 18
	cmp $49.b,X		; D5 49
	bmi   8.b		; 30 08
	lda $01.b		; A5 01
	jsr $0224.w		; 20 24 02
	jmp $0416.w		; 4C 16 04
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $50.b,X		; B5 50
	and #$04.b		; 29 04
	beq   5.b		; F0 05
	lda #$0F.b		; A9 0F
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $50.b,X		; B5 50
	and #$04.b		; 29 04
	bne   5.b		; D0 05
	lda #$0E.b		; A9 0E
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda $30.b,X		; B5 30
	bne  19.b		; D0 13
	lda $54.b,X		; B5 54
	and #$0004.w		; 29 04 00
	bne   6.b		; D0 06
	lda #$000C.w		; A9 0C 00
	jmp $0224.w		; 4C 24 02
	lda #$000D.w		; A9 0D 00
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda $4C.b,X		; B5 4C
	and #$0001.w		; 29 01 00
	bne  32.b		; D0 20
	lda $16.b,X		; B5 16
	and #$0040.w		; 29 40 00
	beq  25.b		; F0 19
	lda $16.b,X		; B5 16
	and #$0080.w		; 29 80 00
	bne   4.b		; D0 04
	lda $32.b,X		; B5 32
	bpl  14.b		; 10 0E
	jsr $03DC.w		; 20 DC 03
.ACCU 16
	rep #$20		; C2 20
	lda $30.b,X		; B5 30
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	sta $0038.w,Y		; 99 38 00
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	sta $0E.b		; 85 0E
	lda $30.b,X		; B5 30
	bne   5.b		; D0 05
	lda $0E.b		; A5 0E
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	sta $0E.b		; 85 0E
	lda $32.b,X		; B5 32
	bne   5.b		; D0 05
	lda $0E.b		; A5 0E
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	and #$0F00.w		; 29 00 0F
	cmp $1E08.w		; CD 08 1E
	bmi   3.b		; 30 03
	sta $1E08.w		; 8D 08 1E
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	sta $0049.w,Y		; 99 49 00
	lda #$20.b		; A9 20
	ora $0016.w,Y		; 19 16 00
	sta $0016.w,Y		; 99 16 00
	cpy #$1000.w		; C0 00 10
	beq   9.b		; F0 09
	lda #$02.b		; A9 02
	ora $1E3D.w		; 0D 3D 1E
	sta $1E3D.w		; 8D 3D 1E
	rtl		; 6B

	lda #$01.b		; A9 01
	ora $1E3D.w		; 0D 3D 1E
	sta $1E3D.w		; 8D 3D 1E
	rtl		; 6B

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $16.b,X		; B5 16
	and #$0020.w		; 29 20 00
	beq  17.b		; F0 11
	lda $00.b,X		; B5 00
	and #$00FF.w		; 29 FF 00
	tay		; A8
.ACCU 8
	sep #$20		; E2 20
	phb		; 8B
	phk		; 4B
	plb		; AB
	lda $0A9F.w,Y		; B9 9F 0A
	plb		; AB
	sta $78.b,X		; 95 78
	rts		; 60

	brk $31.b		; 00 31
	rol $3B.b,X		; 36 3B
	rti		; 40

	eor $4A.b		; 45 4A
	eor $C25954.l		; 4F 54 59 C2
	bpl -30.b		; 10 E2
	jsr $18A9.w		; 20 A9 18
	cmp $49.b,X		; D5 49
	bmi   5.b		; 30 05
	lda #$21.b		; A9 21
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $32.b,X		; B5 32
	bmi  53.b		; 30 35
	lda $16.b,X		; B5 16
	bit #$0080.w		; 89 80 00
	beq  46.b		; F0 2E
	lda $75.b,X		; B5 75
	and #$00FF.w		; 29 FF 00
	beq  33.b		; F0 21
	sta $0E.b		; 85 0E
	lda $90.b		; A5 90
	and #$000F.w		; 29 0F 00
	tay		; A8
	phb		; 8B
	phk		; 4B
	plb		; AB
	lda $0AF5.w,Y		; B9 F5 0A
	plb		; AB
	and #$00FF.w		; 29 FF 00
	cmp $0E.b		; C5 0E
	bpl  11.b		; 10 0B
.ACCU 8
	sep #$20		; E2 20
	lda #$A0.b		; A9 A0
	sta $46.b,X		; 95 46
	lda #$27.b		; A9 27
	jmp $0224.w		; 4C 24 02
	lda #$09.b		; A9 09
	brk $4C.b		; 00 4C
	bit $02.b		; 24 02
	rts		; 60

	brk $01.b		; 00 01
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	tsb $04.b		; 04 04
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $06.b,X		; B5 06
	and #$00FF.w		; 29 FF 00
	bne  58.b		; D0 3A
	sty $10.b		; 84 10
	lda $07.b,X		; B5 07
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	adc $10.b		; 65 10
	tay		; A8
	phb		; 8B
	phk		; 4B
	plb		; AB
	lda $0000.w,Y		; B9 00 00
	sta $00.b		; 85 00
	lda $0002.w,Y		; B9 02 00
	sta $02.b		; 85 02
	plb		; AB
.ACCU 8
	sep #$20		; E2 20
	lda $00.b		; A5 00
	sta $44.b,X		; 95 44
	lda $01.b		; A5 01
	sta $45.b,X		; 95 45
	lda $02.b		; A5 02
	beq  13.b		; F0 0D
	bpl   9.b		; 10 09
	lda $43.b,X		; B5 43
	bne   7.b		; D0 07
	lda #$00.b		; A9 00
	jmp $0224.w		; 4C 24 02
	stz $43.b,X		; 74 43
	lda $03.b		; A5 03
	beq   2.b		; F0 02
	sta $77.b,X		; 95 77
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	phb		; 8B
	phk		; 4B
	plb		; AB
	lda $0000.w,Y		; B9 00 00
	sta $00.b		; 85 00
	lda $0002.w,Y		; B9 02 00
	sta $02.b		; 85 02
	lda $0004.w,Y		; B9 04 00
	sta $04.b		; 85 04
	lda $0006.w,Y		; B9 06 00
	sta $06.b		; 85 06
	and #$00FF.w		; 29 FF 00
	beq  40.b		; F0 28
	lda $75.b,X		; B5 75
	and #$00FF.w		; 29 FF 00
	beq  33.b		; F0 21
	sta $0E.b		; 85 0E
	lda $90.b		; A5 90
	and #$000F.w		; 29 0F 00
	tay		; A8
	lda $0AF5.w,Y		; B9 F5 0A
	and #$00FF.w		; 29 FF 00
	cmp $0E.b		; C5 0E
	bpl  15.b		; 10 0F
	lda $00.b		; A5 00
	ora #$FF00.w		; 09 00 FF
	sta $00.b		; 85 00
	lda $06.b		; A5 06
	jsr $0224.w		; 20 24 02
	jsr $010E.w		; 20 0E 01
	plb		; AB
	jsr $04E8.w		; 20 E8 04
	jsl $8083B9.l		; 22 B9 83 80
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $00.b		; A5 00
	sta $0000.w,Y		; 99 00 00
	lda $01.b		; A5 01
	sta $0017.w,Y		; 99 17 00
	lda $09.b,X		; B5 09
	sta $0009.w,Y		; 99 09 00
	stx $7E.b,Y		; 96 7E
.ACCU 16
	rep #$20		; C2 20
	lda $09.b,X		; B5 09
	and #$00FF.w		; 29 FF 00
	beq   8.b		; F0 08
	lda $02.b		; A5 02
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	sta $02.b		; 85 02
	lda $02.b		; A5 02
	clc		; 18
	adc $21.b,X		; 75 21
	sta $0021.w,Y		; 99 21 00
	lda $04.b		; A5 04
	clc		; 18
	adc $25.b,X		; 75 25
	sta $0025.w,Y		; 99 25 00
	lda $54.b,X		; B5 54
	sta $0054.w,Y		; 99 54 00
	lda $70.b,X		; B5 70
	sta $0070.w,Y		; 99 70 00
	lda $73.b,X		; B5 73
	sta $0073.w,Y		; 99 73 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	sta $0E.b		; 85 0E
	lda $16.b,X		; B5 16
	and #$40.b		; 29 40
	beq  37.b		; F0 25
	lda $28.b,X		; B5 28
	bmi  14.b		; 30 0E
	lda $50.b,X		; B5 50
	and #$01.b		; 29 01
	beq  27.b		; F0 1B
	lda $31.b,X		; B5 31
	bpl  23.b		; 10 17
	stz $09.b,X		; 74 09
	bra  14.b		; 80 0E
	lda $50.b,X		; B5 50
	and #$02.b		; 29 02
	beq  13.b		; F0 0D
	lda $31.b,X		; B5 31
	bmi   9.b		; 30 09
	lda #$01.b		; A9 01
	sta $09.b,X		; 95 09
	lda $0E.b		; A5 0E
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $06.b,X		; B5 06
	and #$0080.w		; 29 80 00
	beq   3.b		; F0 03
	jmp $0D77.w		; 4C 77 0D
	sty $12.b		; 84 12
	jsr $03DC.w		; 20 DC 03
	sty $10.b		; 84 10
	lda $0000.w,Y		; B9 00 00
	sta $0E.b		; 85 0E
	lda $07.b,X		; B5 07
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	adc $12.b		; 65 12
	tay		; A8
	phb		; 8B
	phk		; 4B
	plb		; AB
	lda $0000.w,Y		; B9 00 00
	sta $00.b		; 85 00
	lda $0002.w,Y		; B9 02 00
	sta $02.b		; 85 02
	lda $0004.w,Y		; B9 04 00
	sta $04.b		; 85 04
	lda $0006.w,Y		; B9 06 00
	sta $06.b		; 85 06
.ACCU 16
	rep #$20		; C2 20
	lda $0E.b		; A5 0E
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
	lda $0881.w,Y		; B9 81 08
	sta $0C.b		; 85 0C
	lda $00.b		; A5 00
	and #$00FF.w		; 29 FF 00
	tay		; A8
	lda ($0C.b),Y		; B1 0C
	plb		; AB
.ACCU 8
	sep #$20		; E2 20
	ldy $10.b		; A4 10
	sta $0005.w,Y		; 99 05 00
.ACCU 16
	rep #$20		; C2 20
	lda $07.b		; A5 07
	and #$00FF.w		; 29 FF 00
	beq   3.b		; F0 03
	tya		; 98
	txy		; 9B
	tax		; AA
	lda $09.b,X		; B5 09
	and #$00FF.w		; 29 FF 00
	beq   8.b		; F0 08
	lda $01.b		; A5 01
	eor #$00FF.w		; 49 FF 00
	inc A		; 1A
	sta $01.b		; 85 01
.ACCU 16
	rep #$20		; C2 20
	lda $31.b,X		; B5 31
	clc		; 18
	adc $01.b		; 65 01
	and #$00FF.w		; 29 FF 00
	bit #$0080.w		; 89 80 00
	beq   3.b		; F0 03
	ora #$FF00.w		; 09 00 FF
	sta $10.b		; 85 10
	lda $0A00.w		; AD 00 0A
	clc		; 18
	adc #$0018.w		; 69 18 00
	sta $0C.b		; 85 0C
	lda $0A00.w		; AD 00 0A
	clc		; 18
	adc #$00E8.w		; 69 E8 00
	sta $0E.b		; 85 0E
	lda $10.b		; A5 10
	clc		; 18
	adc $21.b,X		; 75 21
	cmp $0C.b		; C5 0C
	bpl  16.b		; 10 10
	sec		; 38
	sbc $0C.b		; E5 0C
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	clc		; 18
	adc $21.b,X		; 75 21
	sta $21.b,X		; 95 21
	lda $0C.b		; A5 0C
	bra  18.b		; 80 12
	cmp $0E.b		; C5 0E
	bmi  14.b		; 30 0E
	sec		; 38
	sbc $0E.b		; E5 0E
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	clc		; 18
	adc $21.b,X		; 75 21
	sta $21.b,X		; 95 21
	lda $0E.b		; A5 0E
	sta $0021.w,Y		; 99 21 00
	lda $33.b,X		; B5 33
	clc		; 18
	adc $02.b		; 65 02
	and #$00FF.w		; 29 FF 00
	bit #$0080.w		; 89 80 00
	beq   3.b		; F0 03
	ora #$FF00.w		; 09 00 FF
	clc		; 18
	adc $25.b,X		; 75 25
	sta $0025.w,Y		; 99 25 00
.ACCU 16
	rep #$20		; C2 20
	ldx $88.b		; A6 88
	ldy $10.b		; A4 10
	lda $06.b,X		; B5 06
	and #$00FF.w		; 29 FF 00
	bne 126.b		; D0 7E
	lda $03.b		; A5 03
	beq  69.b		; F0 45
	lda $03.b		; A5 03
	and #$00FF.w		; 29 FF 00
	bit #$0080.w		; 89 80 00
	beq   3.b		; F0 03
	ora #$FF00.w		; 09 00 FF
	sta $0E.b		; 85 0E
	lda $09.b,X		; B5 09
	and #$00FF.w		; 29 FF 00
	beq   8.b		; F0 08
	lda $0E.b		; A5 0E
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	sta $0E.b		; 85 0E
	lda $0E.b		; A5 0E
	clc		; 18
	adc $21.b,X		; 75 21
	sta $10.b		; 85 10
	lda $04.b		; A5 04
	and #$00FF.w		; 29 FF 00
	bit #$0080.w		; 89 80 00
	beq   3.b		; F0 03
	ora #$FF00.w		; 09 00 FF
	clc		; 18
	adc $25.b,X		; 75 25
	sta $12.b		; 85 12
	lda $09.b,X		; B5 09
	eor #$0001.w		; 49 01 00
	sta $0D.b		; 85 0D
	lda #$0002.w		; A9 02 00
	jsl $80CAAB.l		; 22 AB CA 80
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda $06.b,X		; B5 06
	bne  44.b		; D0 2C
	lda $05.b		; A5 05
	beq  34.b		; F0 22
	lda $8D.b		; A5 8D
	cmp #$04.b		; C9 04
	beq  28.b		; F0 1C
	lda $0049.w,Y		; B9 49 00
	sec		; 38
	sbc $05.b		; E5 05
	cmp #$90.b		; C9 90
	bcs   5.b		; B0 05
	sta $0049.w,Y		; 99 49 00
	bra  13.b		; 80 0D
	lda #$00.b		; A9 00
	sta $0049.w,Y		; 99 49 00
	lda #$20.b		; A9 20
	ora $0016.w,Y		; 19 16 00
	sta $0016.w,Y		; 99 16 00
	lda $06.b		; A5 06
	beq   2.b		; F0 02
	sta $78.b		; 85 78
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	phb		; 8B
	phk		; 4B
	plb		; AB
	lda $0000.w,Y		; B9 00 00
	sta $00.b		; 85 00
	lda $0002.w,Y		; B9 02 00
	sta $02.b		; 85 02
	lda $0004.w,Y		; B9 04 00
	sta $04.b		; 85 04
	lda $0006.w,Y		; B9 06 00
	sta $06.b		; 85 06
	plb		; AB
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	dec $56.b,X		; D6 56
	beq   7.b		; F0 07
	lda $05.b		; A5 05
	sta $07.b,X		; 95 07
	stz $06.b,X		; 74 06
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda $09.b,X		; B5 09
	and #$00FF.w		; 29 FF 00
	beq   8.b		; F0 08
	lda $01.b		; A5 01
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	sta $01.b		; 85 01
	lda $01.b		; A5 01
	sta $0030.w,Y		; 99 30 00
	lda $03.b		; A5 03
	sta $0032.w,Y		; 99 32 00
	lda #$0060.w		; A9 60 00
	sta $0034.w,Y		; 99 34 00
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	sta $004C.w,Y		; 99 4C 00
	lda $0016.w,Y		; B9 16 00
	and #$20.b		; 29 20
	bne  24.b		; D0 18
	lda $06.b		; A5 06
	sta $0001.w,Y		; 99 01 00
	sta $0004.w,Y		; 99 04 00
	lda #$00.b		; A9 00
	sta $0002.w,Y		; 99 02 00
	sta $0007.w,Y		; 99 07 00
	sta $0006.w,Y		; 99 06 00
	lda $00.b		; A5 00
	jmp $0224.w		; 4C 24 02
	lda $07.b		; A5 07
	sta $0001.w,Y		; 99 01 00
	sta $0004.w,Y		; 99 04 00
	lda #$00.b		; A9 00
	sta $0002.w,Y		; 99 02 00
	sta $0007.w,Y		; 99 07 00
	sta $0006.w,Y		; 99 06 00
	jsl $C10A4F.l		; 22 4F 0A C1
	lda $00.b		; A5 00
	jmp $0224.w		; 4C 24 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $28.b,X		; B5 28
	cmp #$0120.w		; C9 20 01
	bpl  18.b		; 10 12
	cmp #$FFE0.w		; C9 E0 FF
	bmi  13.b		; 30 0D
	lda $2A.b,X		; B5 2A
	cmp #$0120.w		; C9 20 01
	bpl   6.b		; 10 06
	cmp #$FFE0.w		; C9 E0 FF
	bmi   1.b		; 30 01
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	stz $00.b,X		; 74 00
	rts		; 60

	phb		; 8B
	phk		; 4B
	plb		; AB
.INDEX 16
	rep #$10		; C2 10
	ldx #$1000.w		; A2 00 10
	stx $88.b		; 86 88
.ACCU 8
	sep #$20		; E2 20
	lda $57.b,X		; B5 57
	beq   2.b		; F0 02
	dec $57.b,X		; D6 57
	sta $4D.b,X		; 95 4D
	lda $47.b,X		; B5 47
	beq  53.b		; F0 35
	lda $16.b,X		; B5 16
	and #$EF.b		; 29 EF
	sta $16.b,X		; 95 16
	lda $4B.b,X		; B5 4B
	sta $09.b,X		; 95 09
	jsr $010E.w		; 20 0E 01
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $47.b,X		; B5 47
	stz $47.b,X		; 74 47
	and #$00FF.w		; 29 FF 00
	tay		; A8
	lda $16.b,X		; B5 16
	and #$0080.w		; 29 80 00
	bne   6.b		; D0 06
	tyx		; BB
	jsr ($0EBB.w,X)		; FC BB 0E
	bra  17.b		; 80 11
	lda $54.b,X		; B5 54
	and #$0004.w		; 29 04 00
	beq   6.b		; F0 06
	tyx		; BB
	jsr ($0E9F.w,X)		; FC 9F 0E
	bra   4.b		; 80 04
	tyx		; BB
	jsr ($0E83.w,X)		; FC 83 0E
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $88.b		; A5 88
	clc		; 18
	adc #$0080.w		; 69 80 00
	tax		; AA
	cpx #$1100.w		; E0 00 11
	bne -83.b		; D0 AD
	plb		; AB
	rtl		; 6B

	brk $00.b		; 00 00
	cmp [$0E.b],Y		; D7 0E
	sbc ($0E.b),Y		; F1 0E
	phd		; 0B
	ora $3F0F25.l		; 0F 25 0F 3F
	ora $3F0F59.l		; 0F 59 0F 3F
	ora $730F59.l		; 0F 59 0F 73
	ora $B10F92.l		; 0F 92 0F B1
	ora $F90FD0.l		; 0F D0 0F F9
	ora $220000.l		; 0F 00 00 22
	bpl  60.b		; 10 3C
	bpl  86.b		; 10 56
	bpl  86.b		; 10 56
	bpl 112.b		; 10 70
	bpl 112.b		; 10 70
	bpl 112.b		; 10 70
	bpl 112.b		; 10 70
	bpl 115.b		; 10 73
	ora $B10F92.l		; 0F 92 0F B1
	ora $F90FD0.l		; 0F D0 0F F9
	ora $920000.l		; 0F 00 00 92
	ora $8A0F92.l		; 0F 92 0F 8A
	bpl -118.b		; 10 8A
	bpl -118.b		; 10 8A
	bpl -118.b		; 10 8A
	bpl -110.b		; 10 92
	ora $730FB1.l		; 0F B1 0F 73
	ora $B10F92.l		; 0F 92 0F B1
	ora $F90FD0.l		; 0F D0 0F F9
	ora $A630C2.l		; 0F C2 30 A6
	dey		; 88
	lda #$0029.w		; A9 29 00
	sta $3A.b,X		; 95 3A
	lda #$FDB7.w		; A9 B7 FD
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$20.b		; A9 20
	sta $46.b,X		; 95 46
	lda #$0E.b		; A9 0E
	jmp $10A9.w		; 4C A9 10
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda #$0024.w		; A9 24 00
	sta $3A.b,X		; 95 3A
	lda #$FC50.w		; A9 50 FC
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$20.b		; A9 20
	sta $46.b,X		; 95 46
	lda #$0E.b		; A9 0E
	jmp $10A9.w		; 4C A9 10
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda #$0029.w		; A9 29 00
	sta $3A.b,X		; 95 3A
	lda #$FDB7.w		; A9 B7 FD
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$20.b		; A9 20
	sta $46.b,X		; 95 46
	lda #$10.b		; A9 10
	jmp $10A9.w		; 4C A9 10
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda #$0029.w		; A9 29 00
	sta $3A.b,X		; 95 3A
	lda #$FDB7.w		; A9 B7 FD
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$20.b		; A9 20
	sta $46.b,X		; 95 46
	lda #$12.b		; A9 12
	jmp $10A9.w		; 4C A9 10
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda #$0024.w		; A9 24 00
	sta $3A.b,X		; 95 3A
	lda #$FC50.w		; A9 50 FC
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$20.b		; A9 20
	sta $46.b,X		; 95 46
	lda #$11.b		; A9 11
	jmp $10A9.w		; 4C A9 10
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda #$0024.w		; A9 24 00
	sta $3A.b,X		; 95 3A
	lda #$FC50.w		; A9 50 FC
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$20.b		; A9 20
	sta $46.b,X		; 95 46
	lda #$13.b		; A9 13
	jmp $10A9.w		; 4C A9 10
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	lda #$FA00.w		; A9 00 FA
	sta $32.b,X		; 95 32
	lda #$FE80.w		; A9 80 FE
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$A0.b		; A9 A0
	sta $46.b,X		; 95 46
	lda #$19.b		; A9 19
	jmp $10A9.w		; 4C A9 10
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda #$0060.w		; A9 60 00
	sta $34.b,X		; 95 34
	lda #$F900.w		; A9 00 F9
	sta $32.b,X		; 95 32
	lda #$FE00.w		; A9 00 FE
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$A0.b		; A9 A0
	sta $46.b,X		; 95 46
	lda #$1B.b		; A9 1B
	jmp $10A9.w		; 4C A9 10
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda #$0060.w		; A9 60 00
	sta $34.b,X		; 95 34
	lda #$F900.w		; A9 00 F9
	sta $32.b,X		; 95 32
	lda #$FE00.w		; A9 00 FE
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$A0.b		; A9 A0
	sta $46.b,X		; 95 46
	lda #$1A.b		; A9 1A
	jmp $10A9.w		; 4C A9 10
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda #$0060.w		; A9 60 00
	sta $34.b,X		; 95 34
	lda #$F900.w		; A9 00 F9
	sta $32.b,X		; 95 32
	lda #$FE00.w		; A9 00 FE
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$19.b		; A9 19
	sta $78.b		; 85 78
	lda $8F.b		; A5 8F
	ora #$05.b		; 09 05
	sta $08.b,X		; 95 08
	lda #$A0.b		; A9 A0
	sta $46.b,X		; 95 46
	lda #$18.b		; A9 18
	jmp $10A9.w		; 4C A9 10
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda #$0060.w		; A9 60 00
	sta $34.b,X		; 95 34
	lda #$F900.w		; A9 00 F9
	sta $32.b,X		; 95 32
	lda #$FE00.w		; A9 00 FE
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$21.b		; A9 21
	sta $78.b		; 85 78
	lda $8F.b		; A5 8F
	ora #$05.b		; 09 05
	sta $08.b,X		; 95 08
	lda #$A0.b		; A9 A0
	sta $46.b,X		; 95 46
	lda #$17.b		; A9 17
	jmp $10A9.w		; 4C A9 10
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda #$0029.w		; A9 29 00
	sta $3A.b,X		; 95 3A
	lda #$FDB7.w		; A9 B7 FD
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$20.b		; A9 20
	sta $46.b,X		; 95 46
	lda #$0F.b		; A9 0F
	jmp $10A9.w		; 4C A9 10
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda #$0024.w		; A9 24 00
	sta $3A.b,X		; 95 3A
	lda #$FC50.w		; A9 50 FC
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$20.b		; A9 20
	sta $46.b,X		; 95 46
	lda #$0F.b		; A9 0F
	jmp $10A9.w		; 4C A9 10
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda #$0029.w		; A9 29 00
	sta $3A.b,X		; 95 3A
	lda #$FDB7.w		; A9 B7 FD
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$20.b		; A9 20
	sta $46.b,X		; 95 46
	lda #$14.b		; A9 14
	jmp $10A9.w		; 4C A9 10
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda #$0024.w		; A9 24 00
	sta $3A.b,X		; 95 3A
	lda #$FC50.w		; A9 50 FC
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$20.b		; A9 20
	sta $46.b,X		; 95 46
	lda #$15.b		; A9 15
	jmp $10A9.w		; 4C A9 10
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda #$0060.w		; A9 60 00
	sta $34.b,X		; 95 34
	lda #$F900.w		; A9 00 F9
	sta $32.b,X		; 95 32
	lda #$FE00.w		; A9 00 FE
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$A0.b		; A9 A0
	sta $46.b,X		; 95 46
	lda #$16.b		; A9 16
	jmp $10A9.w		; 4C A9 10
.ACCU 8
	sep #$20		; E2 20
	sta $01.b,X		; 95 01
	sta $04.b,X		; 95 04
	stz $02.b,X		; 74 02
	stz $07.b,X		; 74 07
	stz $06.b,X		; 74 06
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	cpx #$1000.w		; E0 00 10
	bne   7.b		; D0 07
	lda $8F.b		; A5 8F
	ora #$00.b		; 09 00
	sta $08.b,X		; 95 08
	rts		; 60

	lda $8F.b		; A5 8F
	ora #$01.b		; 09 01
	sta $08.b,X		; 95 08
	rts		; 60

	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda $1E04.w		; AD 04 1E
	bne 100.b		; D0 64
	lda $0046.w,Y		; B9 46 00
	and #$20.b		; 29 20
	bne  93.b		; D0 5D
	lda $0041.w,Y		; B9 41 00
	beq  88.b		; F0 58
	lda $47.b,X		; B5 47
	bne  84.b		; D0 54
	lda $0047.w,Y		; B9 47 00
	bne  79.b		; D0 4F
	jsr $066A.w		; 20 6A 06
	bcc  74.b		; 90 4A
.ACCU 8
	sep #$20		; E2 20
	lda #$1C.b		; A9 1C
	sta $0001.w,Y		; 99 01 00
	lda #$E0.b		; A9 E0
	sta $46.b,X		; 95 46
	lda #$A0.b		; A9 A0
	sta $0046.w,Y		; 99 46 00
	lda #$80.b		; A9 80
	sta $0006.w,Y		; 99 06 00
	lda #$00.b		; A9 00
	sta $0034.w,Y		; 99 34 00
	sta $0035.w,Y		; 99 35 00
	sta $0030.w,Y		; 99 30 00
	sta $0031.w,Y		; 99 31 00
	sta $0032.w,Y		; 99 32 00
	sta $0033.w,Y		; 99 33 00
	sta $0002.w,Y		; 99 02 00
.ACCU 16
	rep #$20		; C2 20
	lda $0079.w,Y		; B9 79 00
	cmp #$03E7.w		; C9 E7 03
	bpl  10.b		; 10 0A
	lda #$0001.w		; A9 01 00
	clc		; 18
	adc $0079.w,Y		; 79 79 00
	sta $0079.w,Y		; 99 79 00
	jsr $0121.w		; 20 21 01
.ACCU 8
	sep #$20		; E2 20
	lda $07.b		; A5 07
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	phb		; 8B
	phk		; 4B
	plb		; AB
	lda $0000.w,Y		; B9 00 00
	sta $00.b		; 85 00
	lda $0002.w,Y		; B9 02 00
	sta $02.b		; 85 02
	lda $0004.w,Y		; B9 04 00
	sta $04.b		; 85 04
	plb		; AB
	jsl $80839D.l		; 22 9D 83 80
	bcs  56.b		; B0 38
	jsl $8083B9.l		; 22 B9 83 80
.ACCU 8
	sep #$20		; E2 20
	lda $00.b		; A5 00
	sta $0000.w,Y		; 99 00 00
	lda $01.b		; A5 01
	sta $0017.w,Y		; 99 17 00
	lda $09.b,X		; B5 09
	sta $0009.w,Y		; 99 09 00
	stx $7E.b,Y		; 96 7E
.ACCU 16
	rep #$20		; C2 20
	lda $09.b,X		; B5 09
	and #$00FF.w		; 29 FF 00
	beq   8.b		; F0 08
	lda $02.b		; A5 02
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	sta $02.b		; 85 02
	lda $02.b		; A5 02
	clc		; 18
	adc $21.b,X		; 75 21
	sta $0021.w,Y		; 99 21 00
	lda $04.b		; A5 04
	clc		; 18
	adc $25.b,X		; 75 25
	sta $0025.w,Y		; 99 25 00
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	sta $0F.b		; 85 0F
	lda $43.b,X		; B5 43
	beq  73.b		; F0 49
	bmi  71.b		; 30 47
	lda $0016.w,Y		; B9 16 00
	and #$20.b		; 29 20
	bne  64.b		; D0 40
	lda $47.b,X		; B5 47
	bne  60.b		; D0 3C
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda #$1C.b		; A9 1C
	sta $0001.w,Y		; 99 01 00
	lda #$E0.b		; A9 E0
	sta $46.b,X		; 95 46
	lda #$A0.b		; A9 A0
	sta $0046.w,Y		; 99 46 00
	lda #$80.b		; A9 80
	sta $0006.w,Y		; 99 06 00
	lda #$00.b		; A9 00
	sta $0034.w,Y		; 99 34 00
	sta $0035.w,Y		; 99 35 00
	sta $0030.w,Y		; 99 30 00
	sta $0031.w,Y		; 99 31 00
	sta $0032.w,Y		; 99 32 00
	sta $0033.w,Y		; 99 33 00
	sta $0002.w,Y		; 99 02 00
	sta $0047.w,Y		; 99 47 00
	jsr $0121.w		; 20 21 01
.ACCU 8
	sep #$20		; E2 20
	lda $0F.b		; A5 0F
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	sta $0E.b		; 85 0E
	lda $32.b,X		; B5 32
	bmi   6.b		; 30 06
	cmp #$0200.w		; C9 00 02
	bmi   7.b		; 30 07
	rts		; 60

	cmp #$FE00.w		; C9 00 FE
	bpl   1.b		; 10 01
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $50.b,X		; B5 50
	bit #$08.b		; 89 08
	beq  28.b		; F0 1C
	and #$03.b		; 29 03
	beq  19.b		; F0 13
	and #$01.b		; 29 01
	eor $09.b,X		; 55 09
	beq   6.b		; F0 06
	lda $0E.b		; A5 0E
	inc A		; 1A
	jmp $0224.w		; 4C 24 02
	lda $0E.b		; A5 0E
	inc A		; 1A
	inc A		; 1A
	jmp $0224.w		; 4C 24 02
	lda $0E.b		; A5 0E
	jmp $0224.w		; 4C 24 02
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	sta $0F.b		; 85 0F
	jsr $04E8.w		; 20 E8 04
	bcs   5.b		; B0 05
	lda $0F.b		; A5 0F
	jmp $0224.w		; 4C 24 02
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $50.b,X		; B5 50
	sta $00.b		; 85 00
	and #$03.b		; 29 03
	beq  26.b		; F0 1A
	jsr $03DC.w		; 20 DC 03
.ACCU 16
	rep #$20		; C2 20
	lda $21.b,X		; B5 21
	cmp $0021.w,Y		; D9 21 00
.ACCU 8
	sep #$20		; E2 20
	bmi  12.b		; 30 0C
	bne   4.b		; D0 04
	lda $09.b,X		; B5 09
	beq   6.b		; F0 06
	lda $00.b		; A5 00
	eor #$03.b		; 49 03
	sta $00.b		; 85 00
	lda $52.b,X		; B5 52
	and #$F0.b		; 29 F0
	ora $00.b		; 05 00
	sta $00.b		; 85 00
.ACCU 16
	rep #$20		; C2 20
	phb		; 8B
	phk		; 4B
	plb		; AB
	lda $00.b,X		; B5 00
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
	lda $13C7.w,Y		; B9 C7 13
	tay		; A8
	txa		; 8A
	clc		; 18
	adc #$005B.w		; 69 5B 00
	sta $10.b		; 85 10
	sty $12.b		; 84 12
	jsr $128B.w		; 20 8B 12
.ACCU 16
	rep #$20		; C2 20
	inc $10.b		; E6 10
	inc $10.b		; E6 10
	inc $12.b		; E6 12
	inc $12.b		; E6 12
	lda ($12.b)		; B2 12
	beq -14.b		; F0 F2
	cmp #$FFFF.w		; C9 FF FF
	bne -22.b		; D0 EA
	plb		; AB
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	ldx $12.b		; A6 12
	ldy $0000.w,X		; BC 00 00
	sty $1E.b		; 84 1E
	ldx $10.b		; A6 10
	lda ($1E.b)		; B2 1E
	cmp #$FE.b		; C9 FE
	bne   3.b		; D0 03
	jmp $135C.w		; 4C 5C 13
	lda $01.b,X		; B5 01
.ACCU 16
	rep #$20		; C2 20
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	clc		; 18
	adc $1E.b		; 65 1E
	tay		; A8
.ACCU 8
	sep #$20		; E2 20
	lda $0000.w,Y		; B9 00 00
	bmi  49.b		; 30 31
	bne  83.b		; D0 53
	lda $00.b,X		; B5 00
	cmp #$0F.b		; C9 0F
	bmi   6.b		; 30 06
	stz $01.b,X		; 74 01
	stz $00.b,X		; 74 00
	bra -33.b		; 80 DF
	inc $00.b,X		; F6 00
	lda $0001.w,Y		; B9 01 00
	beq   4.b		; F0 04
	and #$0F.b		; 29 0F
	beq  11.b		; F0 0B
	lda $00.b		; A5 00
	and #$0F.b		; 29 0F
	cmp $0001.w,Y		; D9 01 00
	beq  38.b		; F0 26
	bra  93.b		; 80 5D
	lda $00.b		; A5 00
	and #$F0.b		; 29 F0
	and $0001.w,Y		; 39 01 00
	beq  84.b		; F0 54
	sta $0F.b		; 85 0F
	bra  23.b		; 80 17
	lda $00.b,X		; B5 00
	cmp #$0F.b		; C9 0F
	bmi   6.b		; 30 06
	stz $01.b,X		; 74 01
	stz $00.b,X		; 74 00
	bra -80.b		; 80 B0
	inc $00.b,X		; F6 00
	lda $00.b		; A5 00
	and #$0F.b		; 29 0F
	and $0001.w,Y		; 39 01 00
	beq  57.b		; F0 39
	lda $0002.w,Y		; B9 02 00
	cmp #$FF.b		; C9 FF
	beq  51.b		; F0 33
	inc $01.b,X		; F6 01
	stz $00.b,X		; 74 00
	bra  44.b		; 80 2C
	lda $0001.w,Y		; B9 01 00
	and #$0F.b		; 29 0F
	sta $0F.b		; 85 0F
	lda $00.b		; A5 00
	and #$0F.b		; 29 0F
	and $0F.b		; 25 0F
	cmp $0F.b		; C5 0F
	bne   8.b		; D0 08
	inc $00.b,X		; F6 00
	bpl  23.b		; 10 17
	dec $00.b,X		; D6 00
	bra  19.b		; 80 13
	lda $00.b,X		; B5 00
	beq  15.b		; F0 0F
	cmp $0000.w,Y		; D9 00 00
	bmi   6.b		; 30 06
	inc $01.b,X		; F6 01
	stz $00.b,X		; 74 00
	bra   4.b		; 80 04
	stz $01.b,X		; 74 01
	stz $00.b,X		; 74 00
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	ldx $88.b		; A6 88
	lda $10.b		; A5 10
	sec		; 38
	sbc #$005B.w		; E9 5B 00
	sec		; 38
	sbc $88.b		; E5 88
	inc A		; 1A
	inc A		; 1A
.ACCU 8
	sep #$20		; E2 20
	sta $0C.b		; 85 0C
	lda $51.b,X		; B5 51
	and #$F0.b		; 29 F0
	ora $0C.b		; 05 0C
	sta $51.b,X		; 95 51
	lda $0F.b		; A5 0F
	and #$C0.b		; 29 C0
	beq   6.b		; F0 06
	lda #$01.b		; A9 01
	ora $51.b,X		; 15 51
	sta $51.b,X		; 95 51
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $69.b		; A5 69
	and #$0F.b		; 29 0F
	beq  38.b		; F0 26
	bit #$08.b		; 89 08
	bne  30.b		; D0 1E
	bit #$04.b		; 89 04
	bne  20.b		; D0 14
	bit #$02.b		; 89 02
	bne  10.b		; D0 0A
	bit #$01.b		; 89 01
	beq  22.b		; F0 16
	lda #$0F.b		; A9 0F
	sta $00.b,X		; 95 00
	bra  16.b		; 80 10
	lda #$0F.b		; A9 0F
	sta $01.b,X		; 95 01
	bra  10.b		; 80 0A
	lda #$0F.b		; A9 0F
	sta $02.b,X		; 95 02
	bra   4.b		; 80 04
	lda #$0F.b		; A9 0F
	sta $03.b,X		; 95 03
	lda $0001.w,Y		; B9 01 00
	and #$F0.b		; 29 F0
	sta $0F.b		; 85 0F
	lda $00.b		; A5 00
	and #$F0.b		; 29 F0
	and $0F.b		; 25 0F
	beq  21.b		; F0 15
	sta $0F.b		; 85 0F
	lda $00.b,X		; B5 00
	beq  15.b		; F0 0F
	lda $01.b,X		; B5 01
	beq  11.b		; F0 0B
	lda $02.b,X		; B5 02
	beq   7.b		; F0 07
	lda $03.b,X		; B5 03
	beq   3.b		; F0 03
	jmp $1334.w		; 4C 34 13
	lda $00.b,X		; B5 00
	beq   2.b		; F0 02
	dec $00.b,X		; D6 00
	lda $01.b,X		; B5 01
	beq   2.b		; F0 02
	dec $01.b,X		; D6 01
	lda $02.b,X		; B5 02
	beq   2.b		; F0 02
	dec $02.b,X		; D6 02
	lda $03.b,X		; B5 03
	beq   2.b		; F0 02
	dec $03.b,X		; D6 03
	rts		; 60

	brk $00.b		; 00 00
	stp		; DB
	ora ($E9.b,S),Y		; 13 E9
	ora ($F5.b,S),Y		; 13 F5
	ora ($01.b,S),Y		; 13 01
	trb $0F.b		; 14 0F
	trb $1B.b		; 14 1B
	trb $27.b		; 14 27
	trb $31.b		; 14 31
	trb $3B.b		; 14 3B
	trb $45.b		; 14 45
	trb $4E.b		; 14 4E
	trb $57.b		; 14 57
	trb $60.b		; 14 60
	trb $69.b		; 14 69
	trb $70.b		; 14 70
	trb $FF.b		; 14 FF
	sbc $811445.l,X		; FF 45 14 81
	trb $88.b		; 14 88
	trb $93.b		; 14 93
	trb $9C.b		; 14 9C
	trb $FF.b		; 14 FF
	sbc $AB1445.l,X		; FF 45 14 AB
	trb $B8.b		; 14 B8
	trb $C5.b		; 14 C5
	trb $CE.b		; 14 CE
	trb $FF.b		; 14 FF
	sbc $DF1445.l,X		; FF 45 14 DF
	trb $E6.b		; 14 E6
	trb $EF.b		; 14 EF
	trb $FA.b		; 14 FA
	trb $F8.b		; 14 F8
	trb $FF.b		; 14 FF
	sbc $0B1445.l,X		; FF 45 14 0B
	ora $14.b,X		; 15 14
	ora $1B.b,X		; 15 1B
	ora $24.b,X		; 15 24
	ora $FF.b,X		; 15 FF
	sbc $351445.l,X		; FF 45 14 35
	ora $3E.b,X		; 15 3E
	ora $49.b,X		; 15 49
	ora $47.b,X		; 15 47
	ora $FF.b,X		; 15 FF
	sbc $5E1445.l,X		; FF 45 14 5E
	ora $67.b,X		; 15 67
	ora $70.b,X		; 15 70
	ora $FF.b,X		; 15 FF
	sbc $811445.l,X		; FF 45 14 81
	ora $8E.b,X		; 15 8E
	ora $95.b,X		; 15 95
	ora $FF.b,X		; 15 FF
	sbc $A41445.l,X		; FF 45 14 A4
	ora $AB.b,X		; 15 AB
	ora $B0.b,X		; 15 B0
	ora $FF.b,X		; 15 FF
	sbc $000000.l,X		; FF 00 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	cop $FF.b		; 02 FF
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	sbc $000400.l,X		; FF 00 04 00
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	bvc  -1.b		; 50 FF
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $50.b		; 00 50
	sbc $80042D.l,X		; FF 2D 04 80
	php		; 08
	brk $50.b		; 00 50
	sbc $000400.l,X		; FF 00 04 00
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	bra  -1.b		; 80 FF
	asl $8002.w,X		; 1E 02 80
	ora ($00.b,X)		; 01 00
	bvc  -1.b		; 50 FF
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	brk $09.b		; 00 09
	brk $50.b		; 00 50
	sbc $000100.l,X		; FF 00 01 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ldy #$00FF.w		; A0 FF 00
	ora ($00.b,X)		; 01 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	bra  -1.b		; 80 FF
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	brk $50.b		; 00 50
	sbc $000200.l,X		; FF 00 02 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	ldy #$00FF.w		; A0 FF 00
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	ldy #$00FF.w		; A0 FF 00
	ora ($00.b,X)		; 01 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	bra  -1.b		; 80 FF
	and $8002.w		; 2D 02 80
	ora ($00.b,X)		; 01 00
	bvc  -1.b		; 50 FF
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $50.b		; 00 50
	sbc $000400.l,X		; FF 00 04 00
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	ldy #$FEFF.w		; A0 FF FE
	bvc   0.b		; 50 00
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	rti		; 40

	sbc $000400.l,X		; FF 00 04 00
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	bvc  -1.b		; 50 FF
	asl $8004.w,X		; 1E 04 80
	php		; 08
	brk $50.b		; 00 50
	sbc $000100.l,X		; FF 00 01 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	bvc  -1.b		; 50 FF
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $40.b		; 00 40
	sbc $000000.l,X		; FF 00 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($FF.b,X)		; 01 FF
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $50.b		; 00 50
	sbc $00A0FE.l,X		; FF FE A0 00
	ora ($00.b,X)		; 01 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	bra  -1.b		; 80 FF
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $50.b		; 00 50
	sbc $000100.l,X		; FF 00 01 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	bvc  -1.b		; 50 FF
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	brk $40.b		; 00 40
	sbc $000200.l,X		; FF 00 02 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	bvc  -1.b		; 50 FF
	and $8002.w		; 2D 02 80
	ora ($00.b,X)		; 01 00
	ldy #$00FF.w		; A0 FF 00
	ora ($00.b,X)		; 01 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	rti		; 40

	sbc $80022D.l,X		; FF 2D 02 80
	ora ($00.b,X)		; 01 00
	bvc  -1.b		; 50 FF
	brk $04.b		; 00 04
	brk $A0.b		; 00 A0
	sbc $000100.l,X		; FF 00 01 00
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	rti		; 40

	sbc $A630C2.l,X		; FF C2 30 A6
	dey		; 88
	phb		; 8B
	phk		; 4B
	plb		; AB
	lda $00.b,X		; B5 00
	and #$FF.b		; 29 FF
	brk $0A.b		; 00 0A
	tay		; A8
	lda $169B.w,Y		; B9 9B 16
	tay		; A8
	lda $0000.w,Y		; B9 00 00
	sta $08.b		; 85 08
	lda $0002.w,Y		; B9 02 00
	sta $0A.b		; 85 0A
	lda $0004.w,Y		; B9 04 00
	sta $0C.b		; 85 0C
	lda $0006.w,Y		; B9 06 00
	sta $0E.b		; 85 0E
	plb		; AB
.ACCU 8
	sep #$20		; E2 20
	lda $68.b		; A5 68
	and #$30.b		; 29 30
	beq  34.b		; F0 22
	and #$20.b		; 29 20
	beq   6.b		; F0 06
	lda $6A.b		; A5 6A
	bit #$10.b		; 89 10
	bne 107.b		; D0 6B
	lda $6A.b		; A5 6A
	beq   8.b		; F0 08
	bit #$40.b		; 89 40
	bne 107.b		; D0 6B
	bit #$80.b		; 89 80
	bne 111.b		; D0 6F
	lda $6B.b		; A5 6B
	beq   8.b		; F0 08
	bit #$40.b		; 89 40
	bne  91.b		; D0 5B
	bit #$80.b		; 89 80
	bne  95.b		; D0 5F
	lda $5B.b,X		; B5 5B
	cmp #$0F.b		; C9 0F
	bmi   4.b		; 30 04
	stz $5B.b,X		; 74 5B
	stz $5C.b,X		; 74 5C
	lda $5D.b,X		; B5 5D
	cmp #$0F.b		; C9 0F
	bmi   4.b		; 30 04
	stz $5D.b,X		; 74 5D
	stz $5E.b,X		; 74 5E
	inc $5B.b,X		; F6 5B
	inc $5D.b,X		; F6 5D
	lda $6B.b		; A5 6B
	and #$03.b		; 29 03
	beq  52.b		; F0 34
	sta $00.b		; 85 00
	jsr $03DC.w		; 20 DC 03
.ACCU 16
	rep #$20		; C2 20
	lda $21.b,X		; B5 21
	cmp $0021.w,Y		; D9 21 00
.ACCU 8
	sep #$20		; E2 20
	bmi  12.b		; 30 0C
	bne   4.b		; D0 04
	lda $09.b,X		; B5 09
	beq   6.b		; F0 06
	lda $00.b		; A5 00
	eor #$03.b		; 49 03
	sta $00.b		; 85 00
	lda $00.b		; A5 00
	and #$02.b		; 29 02
	beq  10.b		; F0 0A
	lda $5C.b,X		; B5 5C
	bne  35.b		; D0 23
	stz $5B.b,X		; 74 5B
	inc $5C.b,X		; F6 5C
	bra   8.b		; 80 08
	lda $5E.b,X		; B5 5E
	bne  29.b		; D0 1D
	stz $5D.b,X		; 74 5D
	inc $5E.b,X		; F6 5E
	rts		; 60

	lda $0E.b		; A5 0E
	bra  22.b		; 80 16
	lda $0A.b		; A5 0A
	bra  18.b		; 80 12
	lda $0B.b		; A5 0B
	bra  14.b		; 80 0E
	lda $0C.b		; A5 0C
	bra  10.b		; 80 0A
	lda $0D.b		; A5 0D
	bra   6.b		; 80 06
	lda $08.b		; A5 08
	bra   2.b		; 80 02
	lda $09.b		; A5 09
	beq -29.b		; F0 E3
	sta $07.b		; 85 07
	lda $68.b		; A5 68
	and #$10.b		; 29 10
	beq  12.b		; F0 0C
	lda $51.b,X		; B5 51
	and #$F0.b		; 29 F0
	ora $07.b		; 05 07
	ora #$01.b		; 09 01
	sta $51.b,X		; 95 51
	bra -49.b		; 80 CF
	lda $51.b,X		; B5 51
	and #$F0.b		; 29 F0
	ora $07.b		; 05 07
	sta $51.b,X		; 95 51
	bra -59.b		; 80 C5
	brk $00.b		; 00 00
	lda $16B616.l		; AF 16 B6 16
	lda $C416.w,X		; BD 16 C4
	asl $CB.b,X		; 16 CB
	asl $D2.b,X		; 16 D2
	asl $D9.b,X		; 16 D9
	asl $E0.b,X		; 16 E0
	asl $E7.b,X		; 16 E7
	asl $02.b,X		; 16 02
	tsb $06.b		; 04 06
	php		; 08
	asl A		; 0A
	brk $0C.b		; 00 0C
	cop $00.b		; 02 00
	tsb $06.b		; 04 06
	php		; 08
	brk $0A.b		; 00 0A
	cop $00.b		; 02 00
	tsb $06.b		; 04 06
	php		; 08
	brk $0A.b		; 00 0A
	cop $00.b		; 02 00
	tsb $06.b		; 04 06
	php		; 08
	tsb $020A.w		; 0C 0A 02
	brk $04.b		; 00 04
	asl $08.b		; 06 08
	brk $0A.b		; 00 0A
	cop $04.b		; 02 04
	asl $0A.b		; 06 0A
	brk $00.b		; 00 00
	php		; 08
	cop $00.b		; 02 00
	tsb $06.b		; 04 06
	brk $00.b		; 00 00
	php		; 08
	cop $00.b		; 02 00
	tsb $06.b		; 04 06
	brk $00.b		; 00 00
	php		; 08
	cop $00.b		; 02 00
	tsb $06.b		; 04 06
	brk $00.b		; 00 00
	php		; 08
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
.ACCU 8
	sep #$20		; E2 20
	phb		; 8B
	lda #$80.b		; A9 80
	pha		; 48
	plb		; AB
	ldx #$1100.w		; A2 00 11
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	stx $88.b		; 86 88
	lda $00.b,X		; B5 00
	beq  13.b		; F0 0D
.INDEX 8
	sep #$10		; E2 10
	asl A		; 0A
	tax		; AA
	jsr ($00A6.w,X)		; FC A6 00
	jsr $01B0.w		; 20 B0 01
	jsr $0E04.w		; 20 04 0E
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $88.b		; A5 88
	clc		; 18
	adc #$0080.w		; 69 80 00
	tax		; AA
	cpx #$1200.w		; E0 00 12
	bne -37.b		; D0 DB
	plb		; AB
	rtl		; 6B

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($1730.w,X)		; 7C 30 17
	rol $17.b,X		; 36 17
	adc [$17.b],Y		; 77 17
	cmp ($17.b,X)		; C1 17
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda #$02.b		; A9 02
	sta $08.b,X		; 95 08
	lda #$A0.b		; A9 A0
	sta $0A.b,X		; 95 0A
	lda #$00.b		; A9 00
	sta $0B.b,X		; 95 0B
	cpx #$1100.w		; E0 00 11
	beq  12.b		; F0 0C
	lda #$03.b		; A9 03
	sta $08.b,X		; 95 08
	lda #$30.b		; A9 30
	sta $0A.b,X		; 95 0A
	lda #$01.b		; A9 01
	sta $0B.b,X		; 95 0B
	lda $8F.b		; A5 8F
	ora $08.b,X		; 15 08
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda $17.b,X		; B5 17
	bpl   8.b		; 10 08
	lda #$02.b		; A9 02
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
	lda #$01.b		; A9 01
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  42.b		; D0 2A
	inc $02.b,X		; F6 02
	lda #$1C.b		; A9 1C
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$08.b		; A9 08
	sta $44.b,X		; 95 44
	lda $17.b,X		; B5 17
	bne  12.b		; D0 0C
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
.ACCU 16
	rep #$20		; C2 20
	lda #$0380.w		; A9 80 03
	jmp $0389.w		; 4C 89 03
	lda #$950C.w		; A9 0C 95
	eor $C2.b		; 45 C2
	jsr $80A9.w		; 20 A9 80
	ora $4C.b		; 05 4C
	bit #$2203.w		; 89 03 22
	eor ($C3.b)		; 52 C3
	bra -62.b		; 80 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda $43.b,X		; B5 43
	beq   5.b		; F0 05
	lda #$2002.w		; A9 02 20
	bit $02.b		; 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
	stz $30.b,X		; 74 30
	stz $31.b,X		; 74 31
	lda $06.b,X		; B5 06
	bpl   2.b		; 10 02
	stz $00.b,X		; 74 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($17E7.w,X)		; 7C E7 17
	sbc $184017.l		; EF 17 40 18
	adc ($18.b)		; 72 18
	ldy $18.b		; A4 18
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$02.b		; A9 02
	sta $08.b,X		; 95 08
	lda #$A0.b		; A9 A0
	sta $0A.b,X		; 95 0A
	lda #$00.b		; A9 00
	sta $0B.b,X		; 95 0B
	cpx #$1100.w		; E0 00 11
	beq  12.b		; F0 0C
	lda #$03.b		; A9 03
	sta $08.b,X		; 95 08
	lda #$30.b		; A9 30
	sta $0A.b,X		; 95 0A
	lda #$01.b		; A9 01
	sta $0B.b,X		; 95 0B
	lda $8F.b		; A5 8F
	ora $08.b,X		; 15 08
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda $17.b,X		; B5 17
	bpl   8.b		; 10 08
	lda #$03.b		; A9 03
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
	lda $17.b,X		; B5 17
	bne   8.b		; D0 08
	lda #$01.b		; A9 01
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
	lda #$02.b		; A9 02
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	inc $02.b,X		; F6 02
	lda #$08.b		; A9 08
	sta $44.b,X		; 95 44
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
.ACCU 16
	rep #$20		; C2 20
	lda #$0300.w		; A9 00 03
	jmp $0389.w		; 4C 89 03
	jsl $80C352.l		; 22 52 C3 80
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $43.b,X		; B5 43
	beq   5.b		; F0 05
	lda #$03.b		; A9 03
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	inc $02.b,X		; F6 02
	lda #$08.b		; A9 08
	sta $44.b,X		; 95 44
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
.ACCU 16
	rep #$20		; C2 20
	lda #$0500.w		; A9 00 05
	jmp $0389.w		; 4C 89 03
	jsl $80C352.l		; 22 52 C3 80
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $43.b,X		; B5 43
	beq   5.b		; F0 05
	lda #$03.b		; A9 03
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
	stz $30.b,X		; 74 30
	stz $31.b,X		; 74 31
	lda $06.b,X		; B5 06
	bpl   2.b		; 10 02
	stz $00.b,X		; 74 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($18CA.w,X)		; 7C CA 18
	cmp ($18.b)		; D2 18
	ora [$19.b]		; 07 19
	and $6919.w,X		; 3D 19 69
	ora $10C2.w,Y		; 19 C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda #$02.b		; A9 02
	sta $08.b,X		; 95 08
	lda #$A0.b		; A9 A0
	sta $0A.b,X		; 95 0A
	lda #$00.b		; A9 00
	sta $0B.b,X		; 95 0B
	cpx #$00.b		; E0 00
	ora ($F0.b),Y		; 11 F0
	tsb $03A9.w		; 0C A9 03
	sta $08.b,X		; 95 08
	lda #$30.b		; A9 30
	sta $0A.b,X		; 95 0A
	lda #$01.b		; A9 01
	sta $0B.b,X		; 95 0B
	lda $8F.b		; A5 8F
	ora $08.b,X		; 15 08
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda #$01.b		; A9 01
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  21.b		; D0 15
	inc $02.b,X		; F6 02
	stz $43.b,X		; 74 43
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$1E.b		; A9 1E
	sta $78.b		; 85 78
	lda #$1A.b		; A9 1A
	sta $44.b,X		; 95 44
	lda #$30.b		; A9 30
	sta $45.b,X		; 95 45
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	ldy $7E.b,X		; B4 7E
	lda $0021.w,Y		; B9 21 00
	sta $21.b,X		; 95 21
.ACCU 8
	sep #$20		; E2 20
	lda #$02.b		; A9 02
	jsr $04DA.w		; 20 DA 04
	jsl $80C352.l		; 22 52 C3 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	stz $43.b,X		; 74 43
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	ldy $7E.b,X		; B4 7E
	lda $0021.w,Y		; B9 21 00
	sta $21.b,X		; 95 21
.ACCU 8
	sep #$20		; E2 20
	lda $06.b,X		; B5 06
	bne   2.b		; D0 02
	stz $43.b,X		; 74 43
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jsl $80C352.l		; 22 52 C3 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
	lda #$01.b		; A9 01
	sta $43.b,X		; 95 43
.ACCU 16
	rep #$20		; C2 20
	ldy $7E.b,X		; B4 7E
	lda $0021.w,Y		; B9 21 00
	sta $21.b,X		; 95 21
.ACCU 8
	sep #$20		; E2 20
	lda $06.b,X		; B5 06
	bpl   2.b		; 10 02
	stz $00.b,X		; 74 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($199A.w,X)		; 7C 9A 19
	ldy #$19.b		; A0 19
	sbc ($19.b,X)		; E1 19
	pld		; 2B
	inc A		; 1A
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda #$02.b		; A9 02
	sta $08.b,X		; 95 08
	lda #$A0.b		; A9 A0
	sta $0A.b,X		; 95 0A
	lda #$00.b		; A9 00
	sta $0B.b,X		; 95 0B
	cpx #$1100.w		; E0 00 11
	beq  12.b		; F0 0C
	lda #$03.b		; A9 03
	sta $08.b,X		; 95 08
	lda #$30.b		; A9 30
	sta $0A.b,X		; 95 0A
	lda #$01.b		; A9 01
	sta $0B.b,X		; 95 0B
	lda $8F.b		; A5 8F
	ora $08.b,X		; 15 08
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda $17.b,X		; B5 17
	bpl   8.b		; 10 08
	lda #$02.b		; A9 02
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
	lda #$01.b		; A9 01
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  42.b		; D0 2A
	inc $02.b,X		; F6 02
	lda #$1F.b		; A9 1F
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$08.b		; A9 08
	sta $44.b,X		; 95 44
	lda $17.b,X		; B5 17
	bne  12.b		; D0 0C
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
.ACCU 16
	rep #$20		; C2 20
	lda #$0280.w		; A9 80 02
	jmp $0389.w		; 4C 89 03
	lda #$950A.w		; A9 0A 95
	eor $C2.b		; 45 C2
	jsr $80A9.w		; 20 A9 80
	tsb $4C.b		; 04 4C
	bit #$2203.w		; 89 03 22
	eor ($C3.b)		; 52 C3
	bra -62.b		; 80 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda $43.b,X		; B5 43
	beq   5.b		; F0 05
	lda #$2002.w		; A9 02 20
	bit $02.b		; 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
	stz $30.b,X		; 74 30
	stz $31.b,X		; 74 31
	lda $06.b,X		; B5 06
	bpl   2.b		; 10 02
	stz $00.b,X		; 74 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jsr ($1A54.w,X)		; FC 54 1A
	jmp $022F.w		; 4C 2F 02
	phy		; 5A
	inc A		; 1A
	txy		; 9B
	inc A		; 1A
	sbc $10C21A.l		; EF 1A C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda #$02.b		; A9 02
	sta $08.b,X		; 95 08
	lda #$A0.b		; A9 A0
	sta $0A.b,X		; 95 0A
	lda #$00.b		; A9 00
	sta $0B.b,X		; 95 0B
	cpx #$00.b		; E0 00
	ora ($F0.b),Y		; 11 F0
	tsb $03A9.w		; 0C A9 03
	sta $08.b,X		; 95 08
	lda #$30.b		; A9 30
	sta $0A.b,X		; 95 0A
	lda #$01.b		; A9 01
	sta $0B.b,X		; 95 0B
	lda $8F.b		; A5 8F
	ora $08.b,X		; 15 08
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda $17.b,X		; B5 17
	bpl   8.b		; 10 08
	lda #$02.b		; A9 02
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
	lda #$01.b		; A9 01
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  52.b		; D0 34
	inc $02.b,X		; F6 02
	lda #$20.b		; A9 20
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$08.b		; A9 08
	sta $44.b,X		; 95 44
	lda $17.b,X		; B5 17
	bne  17.b		; D0 11
	lda #$0C.b		; A9 0C
	sta $45.b,X		; 95 45
.ACCU 16
	rep #$20		; C2 20
	lda #$FFD8.w		; A9 D8 FF
	sta $34.b,X		; 95 34
	lda #$0100.w		; A9 00 01
	jmp $0389.w		; 4C 89 03
	lda #$950E.w		; A9 0E 95
	eor $C2.b		; 45 C2
	jsr $B0A9.w		; 20 A9 B0
	sbc $A93495.l,X		; FF 95 34 A9
	brk $02.b		; 00 02
	jmp $0389.w		; 4C 89 03
	jsl $80C352.l		; 22 52 C3 80
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $43.b,X		; B5 43
	beq   5.b		; F0 05
	lda #$02.b		; A9 02
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $30.b,X		; 74 30
	stz $31.b,X		; 74 31
	stz $32.b,X		; 74 32
	stz $33.b,X		; 74 33
	stz $34.b,X		; 74 34
	stz $35.b,X		; 74 35
	lda $06.b,X		; B5 06
	bpl   2.b		; 10 02
	stz $00.b,X		; 74 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jsr ($1B20.w,X)		; FC 20 1B
	jmp $022F.w		; 4C 2F 02
	rol $1B.b		; 26 1B
	adc [$1B.b]		; 67 1B
	tyx		; BB
	tas		; 1B
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda #$02.b		; A9 02
	sta $08.b,X		; 95 08
	lda #$A0.b		; A9 A0
	sta $0A.b,X		; 95 0A
	lda #$00.b		; A9 00
	sta $0B.b,X		; 95 0B
	cpx #$1100.w		; E0 00 11
	beq  12.b		; F0 0C
	lda #$03.b		; A9 03
	sta $08.b,X		; 95 08
	lda #$30.b		; A9 30
	sta $0A.b,X		; 95 0A
	lda #$01.b		; A9 01
	sta $0B.b,X		; 95 0B
	lda $8F.b		; A5 8F
	ora $08.b,X		; 15 08
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda $17.b,X		; B5 17
	bpl   8.b		; 10 08
	lda #$02.b		; A9 02
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
	lda #$01.b		; A9 01
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  52.b		; D0 34
	inc $02.b,X		; F6 02
	lda #$21.b		; A9 21
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$10.b		; A9 10
	sta $44.b,X		; 95 44
	lda $17.b,X		; B5 17
	bne  17.b		; D0 11
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
.ACCU 16
	rep #$20		; C2 20
	lda #$FFE8.w		; A9 E8 FF
	sta $34.b,X		; 95 34
	lda #$0300.w		; A9 00 03
	jmp $0389.w		; 4C 89 03
	lda #$950A.w		; A9 0A 95
	eor $C2.b		; 45 C2
	jsr $F4A9.w		; 20 A9 F4
	sbc $A93495.l,X		; FF 95 34 A9
	brk $05.b		; 00 05
	jmp $0389.w		; 4C 89 03
	jsl $80C352.l		; 22 52 C3 80
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $43.b,X		; B5 43
	beq   5.b		; F0 05
	lda #$02.b		; A9 02
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $30.b,X		; 74 30
	stz $31.b,X		; 74 31
	stz $32.b,X		; 74 32
	stz $33.b,X		; 74 33
	stz $34.b,X		; 74 34
	stz $35.b,X		; 74 35
	lda $06.b,X		; B5 06
	bpl   2.b		; 10 02
	stz $00.b,X		; 74 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jsr ($1BEC.w,X)		; FC EC 1B
	jmp $022F.w		; 4C 2F 02
	sbc ($1B.b)		; F2 1B
	and ($1C.b,S),Y		; 33 1C
	adc $C21C.w,X		; 7D 1C C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda #$02.b		; A9 02
	sta $08.b,X		; 95 08
	lda #$A0.b		; A9 A0
	sta $0A.b,X		; 95 0A
	lda #$00.b		; A9 00
	sta $0B.b,X		; 95 0B
	cpx #$00.b		; E0 00
	ora ($F0.b),Y		; 11 F0
	tsb $03A9.w		; 0C A9 03
	sta $08.b,X		; 95 08
	lda #$30.b		; A9 30
	sta $0A.b,X		; 95 0A
	lda #$01.b		; A9 01
	sta $0B.b,X		; 95 0B
	lda $8F.b		; A5 8F
	ora $08.b,X		; 15 08
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda $17.b,X		; B5 17
	bpl   8.b		; 10 08
	lda #$02.b		; A9 02
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
	lda #$01.b		; A9 01
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  42.b		; D0 2A
	inc $02.b,X		; F6 02
	lda #$22.b		; A9 22
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$10.b		; A9 10
	sta $44.b,X		; 95 44
	lda $17.b,X		; B5 17
	bne  12.b		; D0 0C
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
.ACCU 16
	rep #$20		; C2 20
	lda #$0300.w		; A9 00 03
	jmp $0389.w		; 4C 89 03
	lda #$950C.w		; A9 0C 95
	eor $C2.b		; 45 C2
	jsr $00A9.w		; 20 A9 00
	ora $4C.b		; 05 4C
	bit #$2203.w		; 89 03 22
	eor ($C3.b)		; 52 C3
	bra -62.b		; 80 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda $43.b,X		; B5 43
	beq   5.b		; F0 05
	lda #$2002.w		; A9 02 20
	bit $02.b		; 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
	stz $30.b,X		; 74 30
	stz $31.b,X		; 74 31
	lda $06.b,X		; B5 06
	bpl   2.b		; 10 02
	stz $00.b,X		; 74 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jsr ($1CA6.w,X)		; FC A6 1C
	jmp $022F.w		; 4C 2F 02
	ldy $E11C.w		; AC 1C E1
	trb $1D3A.w		; 1C 3A 1D
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda #$02.b		; A9 02
	sta $08.b,X		; 95 08
	lda #$A0.b		; A9 A0
	sta $0A.b,X		; 95 0A
	lda #$00.b		; A9 00
	sta $0B.b,X		; 95 0B
	cpx #$1100.w		; E0 00 11
	beq  12.b		; F0 0C
	lda #$03.b		; A9 03
	sta $08.b,X		; 95 08
	lda #$30.b		; A9 30
	sta $0A.b,X		; 95 0A
	lda #$01.b		; A9 01
	sta $0B.b,X		; 95 0B
	lda $8F.b		; A5 8F
	ora $08.b,X		; 15 08
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda #$01.b		; A9 01
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  37.b		; D0 25
	inc $02.b,X		; F6 02
	lda #$22.b		; A9 22
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$1E.b		; A9 1E
	sta $44.b,X		; 95 44
	lda #$04.b		; A9 04
	sta $5A.b,X		; 95 5A
	stz $5B.b,X		; 74 5B
	lda #$20.b		; A9 20
	sta $45.b,X		; 95 45
.ACCU 16
	rep #$20		; C2 20
	lda #$FFE8.w		; A9 E8 FF
	sta $34.b,X		; 95 34
	lda #$0380.w		; A9 80 03
	jmp $0389.w		; 4C 89 03
	jsl $80C352.l		; 22 52 C3 80
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $43.b,X		; B5 43
	beq  25.b		; F0 19
	bpl  12.b		; 10 0C
	lda $5B.b,X		; B5 5B
	bne  13.b		; D0 0D
	lda #$04.b		; A9 04
	sta $5B.b,X		; 95 5B
	dec $5A.b,X		; D6 5A
	bne   5.b		; D0 05
	lda #$02.b		; A9 02
	jsr $0224.w		; 20 24 02
	dec $5B.b,X		; D6 5B
	bne   2.b		; D0 02
	stz $43.b,X		; 74 43
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $30.b,X		; 74 30
	stz $31.b,X		; 74 31
	stz $32.b,X		; 74 32
	stz $33.b,X		; 74 33
	stz $34.b,X		; 74 34
	stz $35.b,X		; 74 35
	lda $06.b,X		; B5 06
	bpl   2.b		; 10 02
	stz $00.b,X		; 74 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($1D68.w,X)		; 7C 68 1D
	ror $AF1D.w		; 6E 1D AF
	ora $1DF9.w,X		; 1D F9 1D
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda #$02.b		; A9 02
	sta $08.b,X		; 95 08
	lda #$A0.b		; A9 A0
	sta $0A.b,X		; 95 0A
	lda #$00.b		; A9 00
	sta $0B.b,X		; 95 0B
	cpx #$1100.w		; E0 00 11
	beq  12.b		; F0 0C
	lda #$03.b		; A9 03
	sta $08.b,X		; 95 08
	lda #$30.b		; A9 30
	sta $0A.b,X		; 95 0A
	lda #$01.b		; A9 01
	sta $0B.b,X		; 95 0B
	lda $8F.b		; A5 8F
	ora $08.b,X		; 15 08
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda $17.b,X		; B5 17
	bpl   8.b		; 10 08
	lda #$02.b		; A9 02
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
	lda #$01.b		; A9 01
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  42.b		; D0 2A
	inc $02.b,X		; F6 02
	lda #$23.b		; A9 23
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$0E.b		; A9 0E
	sta $44.b,X		; 95 44
	lda $17.b,X		; B5 17
	bne  12.b		; D0 0C
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
.ACCU 16
	rep #$20		; C2 20
	lda #$0300.w		; A9 00 03
	jmp $0389.w		; 4C 89 03
	lda #$950C.w		; A9 0C 95
	eor $C2.b		; 45 C2
	jsr $00A9.w		; 20 A9 00
	ora $4C.b		; 05 4C
	bit #$2203.w		; 89 03 22
	eor ($C3.b)		; 52 C3
	bra -62.b		; 80 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda $43.b,X		; B5 43
	beq   5.b		; F0 05
	lda #$2002.w		; A9 02 20
	bit $02.b		; 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
	stz $30.b,X		; 74 30
	stz $31.b,X		; 74 31
	lda $06.b,X		; B5 06
	bpl   2.b		; 10 02
	stz $00.b,X		; 74 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jsr ($1E22.w,X)		; FC 22 1E
	jmp $024B.w		; 4C 4B 02
	rol $6F1E.w		; 2E 1E 6F
	asl $1EB8.w,X		; 1E B8 1E
	sbc [$1E.b],Y		; F7 1E
	sbc [$1E.b],Y		; F7 1E
	and $1F.b,S		; 23 1F
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda #$02.b		; A9 02
	sta $08.b,X		; 95 08
	lda #$A0.b		; A9 A0
	sta $0A.b,X		; 95 0A
	lda #$00.b		; A9 00
	sta $0B.b,X		; 95 0B
	cpx #$1100.w		; E0 00 11
	beq  12.b		; F0 0C
	lda #$03.b		; A9 03
	sta $08.b,X		; 95 08
	lda #$30.b		; A9 30
	sta $0A.b,X		; 95 0A
	lda #$01.b		; A9 01
	sta $0B.b,X		; 95 0B
	lda $8F.b		; A5 8F
	ora $08.b,X		; 15 08
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda $17.b,X		; B5 17
	bpl   8.b		; 10 08
	lda #$05.b		; A9 05
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
	lda #$01.b		; A9 01
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  44.b		; D0 2C
	inc $02.b,X		; F6 02
	stz $43.b,X		; 74 43
	lda #$23.b		; A9 23
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda $17.b,X		; B5 17
	bne  13.b		; D0 0D
.ACCU 16
	rep #$20		; C2 20
	lda #$0340.w		; A9 40 03
	sta $32.b,X		; 95 32
	lda #$0180.w		; A9 80 01
	jmp $0389.w		; 4C 89 03
.ACCU 16
	rep #$20		; C2 20
	lda #$03C0.w		; A9 C0 03
	sta $32.b,X		; 95 32
	lda #$0400.w		; A9 00 04
	jmp $0389.w		; 4C 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$02.b		; A9 02
	jsr $0348.w		; 20 48 03
.ACCU 8
	sep #$20		; E2 20
	lda $43.b,X		; B5 43
	beq   5.b		; F0 05
	lda #$05.b		; A9 05
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	inc $02.b,X		; F6 02
	stz $43.b,X		; 74 43
	lda #$24.b		; A9 24
	sta $78.b		; 85 78
	lda #$0E.b		; A9 0E
	sta $44.b,X		; 95 44
	stz $30.b,X		; 74 30
	stz $31.b,X		; 74 31
	lda $17.b,X		; B5 17
	bne   5.b		; D0 05
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
	rts		; 60

	lda #$0C.b		; A9 0C
	sta $45.b,X		; 95 45
	rts		; 60

	lda $17.b,X		; B5 17
	bne   7.b		; D0 07
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	bra   5.b		; 80 05
	lda #$04.b		; A9 04
	jsr $04DA.w		; 20 DA 04
	jsl $80C352.l		; 22 52 C3 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0080.w		; A9 80 00
	sta $25.b,X		; 95 25
	rts		; 60

	lda $06.b,X		; B5 06
	bpl   3.b		; 10 03
	stz $00.b,X		; 74 00
	rts		; 60

	bne   8.b		; D0 08
	lda $07.b,X		; B5 07
	and #$D004.w		; 29 04 D0
	cop $74.b		; 02 74
	eor $22.b,S		; 43 22
	eor ($C3.b)		; 52 C3
	bra  76.b		; 80 4C
	tsb $02.b		; 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	stz $30.b,X		; 74 30
	stz $31.b,X		; 74 31
	stz $32.b,X		; 74 32
	stz $33.b,X		; 74 33
	lda $06.b,X		; B5 06
	bpl   2.b		; 10 02
	stz $00.b,X		; 74 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($1F4D.w,X)		; 7C 4D 1F
	eor ($1F.b,S),Y		; 53 1F
	sty $1F.b,X		; 94 1F
	dec $C21F.w,X		; DE 1F C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda #$02.b		; A9 02
	sta $08.b,X		; 95 08
	lda #$A0.b		; A9 A0
	sta $0A.b,X		; 95 0A
	lda #$00.b		; A9 00
	sta $0B.b,X		; 95 0B
	cpx #$00.b		; E0 00
	ora ($F0.b),Y		; 11 F0
	tsb $03A9.w		; 0C A9 03
	sta $08.b,X		; 95 08
	lda #$30.b		; A9 30
	sta $0A.b,X		; 95 0A
	lda #$01.b		; A9 01
	sta $0B.b,X		; 95 0B
	lda $8F.b		; A5 8F
	ora $08.b,X		; 15 08
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda $17.b,X		; B5 17
	bpl   8.b		; 10 08
	lda #$02.b		; A9 02
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
	lda #$01.b		; A9 01
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  42.b		; D0 2A
	inc $02.b,X		; F6 02
	lda #$25.b		; A9 25
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$08.b		; A9 08
	sta $44.b,X		; 95 44
	lda $17.b,X		; B5 17
	bne  12.b		; D0 0C
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
.ACCU 16
	rep #$20		; C2 20
	lda #$0480.w		; A9 80 04
	jmp $0389.w		; 4C 89 03
	lda #$950A.w		; A9 0A 95
	eor $C2.b		; 45 C2
	jsr $80A9.w		; 20 A9 80
	asl $4C.b		; 06 4C
	bit #$2203.w		; 89 03 22
	eor ($C3.b)		; 52 C3
	bra -62.b		; 80 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda $43.b,X		; B5 43
	beq   5.b		; F0 05
	lda #$2002.w		; A9 02 20
	bit $02.b		; 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
	stz $30.b,X		; 74 30
	stz $31.b,X		; 74 31
	lda $06.b,X		; B5 06
	bpl   2.b		; 10 02
	stz $00.b,X		; 74 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($2004.w,X)		; 7C 04 20
	tsb $4D20.w		; 0C 20 4D
	jsr $2065.w		; 20 65 20
	plb		; AB
	jsr $10C2.w		; 20 C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda #$02.b		; A9 02
	sta $08.b,X		; 95 08
	lda #$A0.b		; A9 A0
	sta $0A.b,X		; 95 0A
	lda #$00.b		; A9 00
	sta $0B.b,X		; 95 0B
	cpx #$00.b		; E0 00
	ora ($F0.b),Y		; 11 F0
	tsb $03A9.w		; 0C A9 03
	sta $08.b,X		; 95 08
	lda #$30.b		; A9 30
	sta $0A.b,X		; 95 0A
	lda #$01.b		; A9 01
	sta $0B.b,X		; 95 0B
	lda $8F.b		; A5 8F
	ora $08.b,X		; 15 08
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda $17.b,X		; B5 17
	bpl   8.b		; 10 08
	lda #$03.b		; A9 03
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
	lda #$01.b		; A9 01
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
	lda #$0E.b		; A9 0E
	sta $78.b		; 85 78
	lda #$02.b		; A9 02
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  38.b		; D0 26
	inc $02.b,X		; F6 02
	lda #$08.b		; A9 08
	sta $44.b,X		; 95 44
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda $17.b,X		; B5 17
	bne  12.b		; D0 0C
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
.ACCU 16
	rep #$20		; C2 20
	lda #$FA00.w		; A9 00 FA
	sta $32.b,X		; 95 32
	rts		; 60

	lda #$950C.w		; A9 0C 95
	eor $C2.b		; 45 C2
	jsr $00A9.w		; 20 A9 00
	sed		; F8
	sta $32.b,X		; 95 32
	rts		; 60

	jsl $80C352.l		; 22 52 C3 80
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $43.b,X		; B5 43
	beq   5.b		; F0 05
	lda #$03.b		; A9 03
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
	stz $32.b,X		; 74 32
	stz $33.b,X		; 74 33
	lda $06.b,X		; B5 06
	bpl   2.b		; 10 02
	stz $00.b,X		; 74 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($20D1.w,X)		; 7C D1 20
	cmp $20.b,X		; D5 20
	asl A		; 0A
	and ($C2.b,X)		; 21 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda #$02.b		; A9 02
	sta $08.b,X		; 95 08
	lda #$A0.b		; A9 A0
	sta $0A.b,X		; 95 0A
	lda #$00.b		; A9 00
	sta $0B.b,X		; 95 0B
	cpx #$00.b		; E0 00
	ora ($F0.b),Y		; 11 F0
	tsb $03A9.w		; 0C A9 03
	sta $08.b,X		; 95 08
	lda #$30.b		; A9 30
	sta $0A.b,X		; 95 0A
	lda #$01.b		; A9 01
	sta $0B.b,X		; 95 0B
	lda $8F.b		; A5 8F
	ora $08.b,X		; 15 08
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda #$01.b		; A9 01
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  24.b		; D0 18
	inc $02.b,X		; F6 02
	lda #$28.b		; A9 28
	sta $0A70.w		; 8D 70 0A
	lda #$24.b		; A9 24
	sta $78.b		; 85 78
	lda #$12.b		; A9 12
	sta $44.b,X		; 95 44
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$30.b		; A9 30
	sta $45.b,X		; 95 45
	rts		; 60

	jsl $80C352.l		; 22 52 C3 80
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	bpl   3.b		; 10 03
	stz $00.b,X		; 74 00
	rts		; 60

	and #$1F.b		; 29 1F
	bne   2.b		; D0 02
	stz $43.b,X		; 74 43
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($2155.w,X)		; 7C 55 21
	tad		; 5B
	and ($9C.b,X)		; 21 9C
	and ($E6.b,X)		; 21 E6
	and ($C2.b,X)		; 21 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda #$02.b		; A9 02
	sta $08.b,X		; 95 08
	lda #$A0.b		; A9 A0
	sta $0A.b,X		; 95 0A
	lda #$00.b		; A9 00
	sta $0B.b,X		; 95 0B
	cpx #$00.b		; E0 00
	ora ($F0.b),Y		; 11 F0
	tsb $03A9.w		; 0C A9 03
	sta $08.b,X		; 95 08
	lda #$30.b		; A9 30
	sta $0A.b,X		; 95 0A
	lda #$01.b		; A9 01
	sta $0B.b,X		; 95 0B
	lda $8F.b		; A5 8F
	ora $08.b,X		; 15 08
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda $17.b,X		; B5 17
	bpl   8.b		; 10 08
	lda #$02.b		; A9 02
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
	lda #$01.b		; A9 01
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  42.b		; D0 2A
	inc $02.b,X		; F6 02
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$08.b		; A9 08
	sta $44.b,X		; 95 44
	lda #$22.b		; A9 22
	sta $78.b		; 85 78
	lda $17.b,X		; B5 17
	bne  12.b		; D0 0C
	lda #$0C.b		; A9 0C
	sta $45.b,X		; 95 45
.ACCU 16
	rep #$20		; C2 20
	lda #$0400.w		; A9 00 04
	jmp $0389.w		; 4C 89 03
	lda #$950E.w		; A9 0E 95
	eor $C2.b		; 45 C2
	jsr $00A9.w		; 20 A9 00
	asl $4C.b		; 06 4C
	bit #$2203.w		; 89 03 22
	eor ($C3.b)		; 52 C3
	bra -62.b		; 80 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda $43.b,X		; B5 43
	beq   5.b		; F0 05
	lda #$2002.w		; A9 02 20
	bit $02.b		; 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
	stz $30.b,X		; 74 30
	stz $31.b,X		; 74 31
	lda $06.b,X		; B5 06
	bpl   2.b		; 10 02
	stz $00.b,X		; 74 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jsr ($220F.w,X)		; FC 0F 22
	jmp $024B.w		; 4C 4B 02
	ora $22.b,X		; 15 22
	lsr $22.b,X		; 56 22
	tax		; AA
	jsl $E210C2.l		; 22 C2 10 E2
	jsr $88A6.w		; 20 A6 88
	lda #$02.b		; A9 02
	sta $08.b,X		; 95 08
	lda #$A0.b		; A9 A0
	sta $0A.b,X		; 95 0A
	lda #$00.b		; A9 00
	sta $0B.b,X		; 95 0B
	cpx #$00.b		; E0 00
	ora ($F0.b),Y		; 11 F0
	tsb $03A9.w		; 0C A9 03
	sta $08.b,X		; 95 08
	lda #$30.b		; A9 30
	sta $0A.b,X		; 95 0A
	lda #$01.b		; A9 01
	sta $0B.b,X		; 95 0B
	lda $8F.b		; A5 8F
	ora $08.b,X		; 15 08
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda $17.b,X		; B5 17
	bpl   8.b		; 10 08
	lda #$02.b		; A9 02
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
	lda #$01.b		; A9 01
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  52.b		; D0 34
	inc $02.b,X		; F6 02
	lda #$2C.b		; A9 2C
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$08.b		; A9 08
	sta $44.b,X		; 95 44
	lda $17.b,X		; B5 17
	bne  17.b		; D0 11
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
.ACCU 16
	rep #$20		; C2 20
	lda #$0200.w		; A9 00 02
	sta $32.b,X		; 95 32
	lda #$0340.w		; A9 40 03
	jmp $0389.w		; 4C 89 03
	lda #$950A.w		; A9 0A 95
	eor $C2.b		; 45 C2
	jsr $00A9.w		; 20 A9 00
	ora $95.b,S		; 03 95
	and ($A9.b)		; 32 A9
	rti		; 40

	ora $4C.b		; 05 4C
	bit #$2203.w		; 89 03 22
	eor ($C3.b)		; 52 C3
	bra -62.b		; 80 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda $43.b,X		; B5 43
	beq   5.b		; F0 05
	lda #$2002.w		; A9 02 20
	bit $02.b		; 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	stz $30.b,X		; 74 30
	stz $31.b,X		; 74 31
	stz $32.b,X		; 74 32
	stz $33.b,X		; 74 33
	lda $06.b,X		; B5 06
	bpl   2.b		; 10 02
	stz $00.b,X		; 74 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($22D4.w,X)		; 7C D4 22
	jmp.w [$2722]		; DC 22 27
	and $6C.b,S		; 23 6C
	and $A6.b,S		; 23 A6
	and $C2.b,S		; 23 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda #$02.b		; A9 02
	sta $08.b,X		; 95 08
	lda #$A0.b		; A9 A0
	sta $0A.b,X		; 95 0A
	lda #$00.b		; A9 00
	sta $0B.b,X		; 95 0B
	cpx #$00.b		; E0 00
	ora ($F0.b),Y		; 11 F0
	tsb $03A9.w		; 0C A9 03
	sta $08.b,X		; 95 08
	lda #$30.b		; A9 30
	sta $0A.b,X		; 95 0A
	lda #$01.b		; A9 01
	sta $0B.b,X		; 95 0B
	lda $8F.b		; A5 8F
	ora $08.b,X		; 15 08
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda $17.b,X		; B5 17
	bpl   8.b		; 10 08
	lda #$03.b		; A9 03
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
	bne   8.b		; D0 08
	lda #$01.b		; A9 01
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
	lda #$02.b		; A9 02
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	inc $02.b,X		; F6 02
	lda #$2A.b		; A9 2A
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$08.b		; A9 08
	sta $44.b,X		; 95 44
	lda #$0C.b		; A9 0C
	sta $45.b,X		; 95 45
.ACCU 16
	rep #$20		; C2 20
	lda #$0380.w		; A9 80 03
	jsr $0389.w		; 20 89 03
	ldy #$23BD.w		; A0 BD 23
	jmp $113C.w		; 4C 3C 11
	lda #$2003.w		; A9 03 20
	phx		; DA
	tsb $22.b		; 04 22
	eor ($C3.b)		; 52 C3
	bra -62.b		; 80 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda $43.b,X		; B5 43
	beq   5.b		; F0 05
	lda #$2003.w		; A9 03 20
	bit $02.b		; 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  24.b		; D0 18
	inc $02.b,X		; F6 02
	lda #$2A.b		; A9 2A
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$0C.b		; A9 0C
	sta $44.b,X		; 95 44
	lda #$0E.b		; A9 0E
	sta $45.b,X		; 95 45
	ldy #$23BD.w		; A0 BD 23
	jmp $113C.w		; 4C 3C 11
	lda $06.b,X		; B5 06
	bpl   3.b		; 10 03
	stz $00.b,X		; 74 00
	rts		; 60

	bne   8.b		; D0 08
	lda $07.b,X		; B5 07
	and #$06.b		; 29 06
	bne   2.b		; D0 02
	stz $43.b,X		; 74 43
	jsl $80C352.l		; 22 52 C3 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
	stz $30.b,X		; 74 30
	stz $31.b,X		; 74 31
	lda $06.b,X		; B5 06
	bpl   2.b		; 10 02
	stz $00.b,X		; 74 00
	rts		; 60

	and ($F8.b)		; 32 F8
	sed		; F8
	sbc $C20000.l,X		; FF 00 00 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($23D2.w,X)		; 7C D2 23
	cld		; D8
	and $14.b,S		; 23 14
	bit $5E.b		; 24 5E
	bit $C2.b		; 24 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda #$02.b		; A9 02
	sta $08.b,X		; 95 08
	lda #$A0.b		; A9 A0
	sta $0A.b,X		; 95 0A
	lda #$00.b		; A9 00
	sta $0B.b,X		; 95 0B
	cpx #$00.b		; E0 00
	ora ($F0.b),Y		; 11 F0
	tsb $03A9.w		; 0C A9 03
	sta $08.b,X		; 95 08
	lda #$30.b		; A9 30
	sta $0A.b,X		; 95 0A
	lda #$01.b		; A9 01
	sta $0B.b,X		; 95 0B
	lda $8F.b		; A5 8F
	ora $08.b,X		; 15 08
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda $17.b,X		; B5 17
	bpl   3.b		; 10 03
	stz $00.b,X		; 74 00
	rts		; 60

	lda #$01.b		; A9 01
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  42.b		; D0 2A
	inc $02.b,X		; F6 02
	lda #$1C.b		; A9 1C
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$08.b		; A9 08
	sta $44.b,X		; 95 44
	lda $17.b,X		; B5 17
	bne  12.b		; D0 0C
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
.ACCU 16
	rep #$20		; C2 20
	lda #$0380.w		; A9 80 03
	jmp $0389.w		; 4C 89 03
	lda #$950C.w		; A9 0C 95
	eor $C2.b		; 45 C2
	jsr $80A9.w		; 20 A9 80
	ora $4C.b		; 05 4C
	bit #$2203.w		; 89 03 22
	eor ($C3.b)		; 52 C3
	bra -62.b		; 80 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda $43.b,X		; B5 43
	beq   5.b		; F0 05
	lda #$2002.w		; A9 02 20
	bit $02.b		; 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
	stz $30.b,X		; 74 30
	stz $31.b,X		; 74 31
	lda $06.b,X		; B5 06
	bpl   2.b		; 10 02
	stz $00.b,X		; 74 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jsr ($2487.w,X)		; FC 87 24
	jmp $024B.w		; 4C 4B 02
	sta $C224.w		; 8D 24 C2
	bit $65.b		; 24 65
	and $C2.b		; 25 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda #$02.b		; A9 02
	sta $08.b,X		; 95 08
	lda #$A0.b		; A9 A0
	sta $0A.b,X		; 95 0A
	lda #$00.b		; A9 00
	sta $0B.b,X		; 95 0B
	cpx #$00.b		; E0 00
	ora ($F0.b),Y		; 11 F0
	tsb $03A9.w		; 0C A9 03
	sta $08.b,X		; 95 08
	lda #$30.b		; A9 30
	sta $0A.b,X		; 95 0A
	lda #$01.b		; A9 01
	sta $0B.b,X		; 95 0B
	lda $8F.b		; A5 8F
	ora $08.b,X		; 15 08
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda #$01.b		; A9 01
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  31.b		; D0 1F
	inc $02.b,X		; F6 02
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$1C.b		; A9 1C
	sta $44.b,X		; 95 44
	lda #$06.b		; A9 06
	sta $45.b,X		; 95 45
	lda #$14.b		; A9 14
	sta $5A.b,X		; 95 5A
.ACCU 16
	rep #$20		; C2 20
	lda #$1800.w		; A9 00 18
	sta $32.b,X		; 95 32
	lda #$1800.w		; A9 00 18
	jmp $0389.w		; 4C 89 03
.ACCU 16
	rep #$20		; C2 20
	lda $32.b,X		; B5 32
	bmi  24.b		; 30 18
	lda $16.b,X		; B5 16
	and #$0080.w		; 29 80 00
	beq  39.b		; F0 27
	lda #$E800.w		; A9 00 E8
	sta $32.b,X		; 95 32
.ACCU 8
	sep #$20		; E2 20
	dec $5A.b,X		; D6 5A
	stz $43.b,X		; 74 43
	lda #$0A.b		; A9 0A
	sta $78.b		; 85 78
	bra  22.b		; 80 16
	lda $2A.b,X		; B5 2A
	cmp #$28.b		; C9 28
	brk $10.b		; 00 10
	ora $1800A9.l		; 0F A9 00 18
	sta $32.b,X		; 95 32
.ACCU 8
	sep #$20		; E2 20
	dec $5A.b,X		; D6 5A
	stz $43.b,X		; 74 43
	lda #$0A.b		; A9 0A
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda $30.b,X		; B5 30
	bmi  24.b		; 30 18
	lda $28.b,X		; B5 28
	cmp #$00F8.w		; C9 F8 00
	bmi  39.b		; 30 27
	lda #$E800.w		; A9 00 E8
	sta $30.b,X		; 95 30
.ACCU 8
	sep #$20		; E2 20
	dec $5A.b,X		; D6 5A
	stz $43.b,X		; 74 43
	lda #$0A.b		; A9 0A
	sta $78.b		; 85 78
	bra  22.b		; 80 16
	lda $28.b,X		; B5 28
	cmp #$08.b		; C9 08
	brk $10.b		; 00 10
	ora $1800A9.l		; 0F A9 00 18
	sta $30.b,X		; 95 30
.ACCU 8
	sep #$20		; E2 20
	dec $5A.b,X		; D6 5A
	stz $43.b,X		; 74 43
	lda #$0A.b		; A9 0A
	sta $78.b		; 85 78
.ACCU 8
	sep #$20		; E2 20
	lda $5A.b,X		; B5 5A
	bpl   5.b		; 10 05
	lda #$02.b		; A9 02
	jsr $0224.w		; 20 24 02
	jsl $80C352.l		; 22 52 C3 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $30.b,X		; 74 30
	stz $31.b,X		; 74 31
	stz $32.b,X		; 74 32
	stz $33.b,X		; 74 33
	stz $34.b,X		; 74 34
	stz $35.b,X		; 74 35
	lda $06.b,X		; B5 06
	bpl   2.b		; 10 02
	stz $00.b,X		; 74 00
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
.ACCU 8
	sep #$20		; E2 20
	phb		; 8B
	lda #$80.b		; A9 80
	pha		; 48
	plb		; AB
	ldx #$1200.w		; A2 00 12
.INDEX 16
	rep #$10		; C2 10
	stx $88.b		; 86 88
.ACCU 8
	sep #$20		; E2 20
	lda $00.b,X		; B5 00
	beq  16.b		; F0 10
.INDEX 8
	sep #$10		; E2 10
	asl A		; 0A
	tax		; AA
	jsr ($00A6.w,X)		; FC A6 00
	jsr $01B0.w		; 20 B0 01
	jsr $024B.w		; 20 4B 02
	jsr $022F.w		; 20 2F 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $88.b		; A5 88
	clc		; 18
	adc #$0080.w		; 69 80 00
	tax		; AA
	cpx #$1800.w		; E0 00 18
	bne -40.b		; D0 D8
	plb		; AB
	rtl		; 6B

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($25C9.w,X)		; 7C C9 25
	cmp ($25.b,S),Y		; D3 25
	inc $EE25.w		; EE 25 EE
	and $EE.b		; 25 EE
	and $EE.b		; 25 EE
	and $C2.b		; 25 C2
	bmi -90.b		; 30 A6
	dey		; 88
	lda #$C0.b		; A9 C0
	ora ($95.b,X)		; 01 95
	asl A		; 0A
.ACCU 8
	sep #$20		; E2 20
	lda #$1E.b		; A9 1E
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda $17.b,X		; B5 17
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	bpl   2.b		; 10 02
	stz $00.b,X		; 74 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($260A.w,X)		; 7C 0A 26
	asl $2B26.w		; 0E 26 2B
	rol $C2.b		; 26 C2
	bmi -90.b		; 30 A6
	dey		; 88
	lda #$C0.b		; A9 C0
	ora ($95.b,X)		; 01 95
	asl A		; 0A
.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	ora $8F.b		; 05 8F
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda #$01.b		; A9 01
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	bpl   2.b		; 10 02
	stz $00.b,X		; 74 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($2647.w,X)		; 7C 47 26
	phk		; 4B
	rol $68.b		; 26 68
	rol $C2.b		; 26 C2
	bmi -90.b		; 30 A6
	dey		; 88
	lda #$C0.b		; A9 C0
	ora ($95.b,X)		; 01 95
	asl A		; 0A
.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	ora $8F.b		; 05 8F
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda #$01.b		; A9 01
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $90.b		; A5 90
	and #$0007.w		; 29 07 00
	sec		; 38
	sbc #$0004.w		; E9 04 00
	sta $2C.b,X		; 95 2C
	lda $92.b		; A5 92
	and #$0007.w		; 29 07 00
	sec		; 38
	sbc #$0004.w		; E9 04 00
	sta $2E.b,X		; 95 2E
	ldy $7E.b,X		; B4 7E
	lda $17.b,X		; B5 17
	and #$00FF.w		; 29 FF 00
	bit #$0080.w		; 89 80 00
	beq   3.b		; F0 03
	ora #$FF00.w		; 09 00 FF
	sta $00.b		; 85 00
	lda $09.b,X		; B5 09
	and #$00FF.w		; 29 FF 00
	beq   8.b		; F0 08
	lda $00.b		; A5 00
	eor #$FFFF.w		; 49 FF FF
	inc A		; 1A
	sta $00.b		; 85 00
	lda $00.b		; A5 00
	clc		; 18
	adc $0021.w,Y		; 79 21 00
	sta $21.b,X		; 95 21
.ACCU 8
	sep #$20		; E2 20
	lda $06.b,X		; B5 06
	bpl   2.b		; 10 02
	stz $00.b,X		; 74 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($26C2.w,X)		; 7C C2 26
	dec $26.b		; C6 26
	inx		; E8
	rol $C2.b		; 26 C2
	bmi -90.b		; 30 A6
	dey		; 88
	lda #$C0.b		; A9 C0
	ora ($95.b,X)		; 01 95
	asl A		; 0A
	lda #$00.b		; A9 00
	sbc $E23295.l,X		; FF 95 32 E2
	jsr $04A9.w		; 20 A9 04
	ora $8F.b		; 05 8F
	sta $08.b,X		; 95 08
	lda #$01.b		; A9 01
	sta $03.b,X		; 95 03
	lda #$01.b		; A9 01
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	lda $90.b		; A5 90
	and #$001F.w		; 29 1F 00
	sec		; 38
	sbc #$0010.w		; E9 10 00
	sta $2C.b,X		; 95 2C
	lda $92.b		; A5 92
	and #$000F.w		; 29 0F 00
	sec		; 38
	sbc #$0008.w		; E9 08 00
	sta $2E.b,X		; 95 2E
.ACCU 8
	sep #$20		; E2 20
	lda $06.b,X		; B5 06
	bpl   2.b		; 10 02
	stz $00.b,X		; 74 00
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($271A.w,X)		; 7C 1A 27
	cpx $2A28.w		; EC 28 2A
	and #$6A.b		; 29 6A
	and #$AA.b		; 29 AA
	and #$E2.b		; 29 E2
	and #$20.b		; 29 20
	rol A		; 2A
	mvp $7D,$2A		; 44 2A 7D
	rol A		; 2A
	ldy $FB2A.w,X		; BC 2A FB
	rol A		; 2A
	tsa		; 3B
	pld		; 2B
	adc ($2B.b)		; 72 2B
	rol $31.b,X		; 36 31
	ror $A631.w		; 6E 31 A6
	and ($D7.b),Y		; 31 D7
	and ($08.b),Y		; 31 08
	and ($08.b)		; 32 08
	and ($08.b)		; 32 08
	and ($08.b)		; 32 08
	and ($1E.b)		; 32 1E
	and ($1E.b,S),Y		; 33 1E
	and ($D2.b,S),Y		; 33 D2
	and ($BA.b)		; 32 BA
	and ($BA.b)		; 32 BA
	and ($BA.b)		; 32 BA
	and ($06.b)		; 32 06
	and ($06.b,S),Y		; 33 06
	and ($0E.b,S),Y		; 33 0E
	and ($87.b),Y		; 31 87
	bmi -100.b		; 30 9C
	bmi  76.b		; 30 4C
	and ($CD.b)		; 32 CD
	bmi 107.b		; 30 6B
	and ($A6.b)		; 32 A6
	and ($22.b)		; 32 22
	and ($28.b),Y		; 31 28
	and [$3D.b],Y		; 37 3D
	and [$B0.b],Y		; 37 B0
	and ($44.b,S),Y		; 33 44
	rol $12.b,X		; 36 12
	rol $F0.b,X		; 36 F0
	and $D2.b,X		; 35 D2
	and $00.b,X		; 35 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AC.b		; 00 AC
	pld		; 2B
	inx		; E8
	pld		; 2B
	bit $2C.b		; 24 2C
	eor ($2C.b,S),Y		; 53 2C
	wai		; CB
	bit $2C8F.w		; 2C 8F 2C
	wai		; CB
	bit $2CE5.w		; 2C E5 2C
	bit $2C.b		; 24 2C
	and ($2D.b,X)		; 21 2D
	wai		; CB
	bit $2D5D.w		; 2C 5D 2D
	cmp $2D.b		; C5 2D
	and $952E.w		; 2D 2E 95
	rol $2D91.w		; 2E 91 2D
	sbc $612D.w,Y		; F9 2D 61
	rol $2EC9.w		; 2E C9 2E
	sbc $372E.w,X		; FD 2E 37
	and $A32F69.l		; 2F 69 2F A3
	and $372FC0.l		; 2F C0 2F 37
	and $A32FFA.l		; 2F FA 2F A3
	and $6D3034.l		; 2F 34 30 6D
	bmi  98.b		; 30 62
	and ($9C.b,S),Y		; 33 9C
	and ($E3.b,S),Y		; 33 E3
	and ($19.b,S),Y		; 33 19
	bit $4E.b,X		; 34 4E
	bit $7F.b,X		; 34 7F
	bit $B0.b,X		; 34 B0
	bit $B0.b,X		; 34 B0
	bit $CA.b,X		; 34 CA
	bit $0D.b,X		; 34 0D
	and $50.b,X		; 35 50
	and $66.b,X		; 35 66
	and $9C.b,X		; 35 9C
	and $6C.b,X		; 35 6C
	rol $6C.b,X		; 36 6C
	rol $86.b,X		; 36 86
	rol $A0.b,X		; 36 A0
	rol $BF.b,X		; 36 BF
	rol $ED.b,X		; 36 ED
	rol $0B.b,X		; 36 0B
	and [$1C.b],Y		; 37 1C
	rti		; 40

	eor ($FF.b,X)		; 41 FF
	eor [$47.b]		; 47 47
	jsr $4543.w		; 20 43 45
	sbc $FF4949.l,X		; FF 49 49 FF
	eor ($53.b,S),Y		; 53 53
	sbc $FF5757.l,X		; FF 57 57 FF
	eor $55.b,X		; 55 55
	sbc $FF5959.l,X		; FF 59 59 FF
	phk		; 4B
	phk		; 4B
	sbc $FF4D4D.l,X		; FF 4D 4D FF
	jmp $FF4C.w		; 4C 4C FF
	lsr $FF4E.w		; 4E 4E FF
	eor $51FF4F.l		; 4F 4F FF 51
	eor ($FF.b),Y		; 51 FF
	bvc  80.b		; 50 50
	sbc $015252.l,X		; FF 52 52 01
	rol $01.b		; 26 01
	rol $01.b		; 26 01
	rts		; 60

	ora ($60.b,X)		; 01 60
	ora $61.b		; 05 61
	ora $62.b		; 05 62
	asl $65.b		; 06 65
	asl $66.b		; 06 66
	ora ($68.b,X)		; 01 68
	ora ($69.b,X)		; 01 69
	ora $0D6D.w		; 0D 6D 0D
	adc $00FF.w		; 6D FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	plp		; 28
	cld		; D8
	plp		; 28
	sed		; F8
	php		; 08
	eor $300003.l,X		; 5F 03 00 30
	bne  48.b		; D0 30
	cld		; D8
	plp		; 28
	tad		; 5B
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	bmi -48.b		; 30 D0
	bmi -48.b		; 30 D0
	sec		; 38
	eor $80FF.w,X		; 5D FF 80
	ora $00.b		; 05 00
	jsr ($0014.w,X)		; FC 14 00
	brk $02.b		; 00 02
	pea $00FF.w		; F4 FF 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($F0.b,S),Y		; 13 F0
	sbc $01FFD8.l,X		; FF D8 FF 01
	brk $00.b		; 00 00
	ora ($10.b),Y		; 11 10
	brk $F0.b		; 00 F0
	sbc $003301.l,X		; FF 01 33 00
	ora ($38.b)		; 12 38
	brk $F0.b		; 00 F0
	sbc $000000.l,X		; FF 00 00 00
	sbc $000580.l,X		; FF 80 05 00
	jsr ($0018.w,X)		; FC 18 00
	brk $02.b		; 00 02
	pea $00FF.w		; F4 FF 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($F0.b,S),Y		; 13 F0
	sbc $01FFD8.l,X		; FF D8 FF 01
	brk $00.b		; 00 00
	ora ($10.b),Y		; 11 10
	brk $F0.b		; 00 F0
	sbc $003301.l,X		; FF 01 33 00
	ora ($38.b)		; 12 38
	brk $F0.b		; 00 F0
	sbc $000000.l,X		; FF 00 00 00
	brk $80.b		; 00 80
	cop $00.b		; 02 00
	sbc $1600.w,Y		; F9 00 16
	tas		; 1B
	cop $08.b		; 02 08
	brk $10.b		; 00 10
	clv		; B8
	ora $08.b		; 05 08
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
	jsr $0AA9.w		; 20 A9 0A
	ldy #$27FC.w		; A0 FC 27
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $02DF.w		; 20 DF 02
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	ldy #$2844.w		; A0 44 28
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0001.w		; A9 01 00
	sta $54.b,X		; 95 54
	lda #$01E0.w		; A9 E0 01
	jsr $0389.w		; 20 89 03
	jsr $0416.w		; 20 16 04
	ldy #$27FC.w		; A0 FC 27
	jsr $0459.w		; 20 59 04
	jsr $0307.w		; 20 07 03
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	ldy #$2844.w		; A0 44 28
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0002.w		; A9 02 00
	sta $54.b,X		; 95 54
	lda #$FEA0.w		; A9 A0 FE
	jsr $0389.w		; 20 89 03
	jsr $0416.w		; 20 16 04
	ldy #$27FC.w		; A0 FC 27
	jsr $0459.w		; 20 59 04
	jsr $0307.w		; 20 07 03
	jsr $02DF.w		; 20 DF 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	ldy #$2844.w		; A0 44 28
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	ldy #$2808.w		; A0 08 28
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $044B.w		; 20 4B 04
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	ldy #$2844.w		; A0 44 28
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	jsr $0416.w		; 20 16 04
	jsr $031F.w		; 20 1F 03
.ACCU 8
	sep #$20		; E2 20
	ldy #$27FC.w		; A0 FC 27
	lda $54.b,X		; B5 54
	and #$04.b		; 29 04
	bne   3.b		; D0 03
	ldy #$2808.w		; A0 08 28
	jsr $0459.w		; 20 59 04
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	ldy #$2844.w		; A0 44 28
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	jsr $0416.w		; 20 16 04
	jsr $03B2.w		; 20 B2 03
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  23.b		; D0 17
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	lda #$F800.w		; A9 00 F8
	sta $32.b,X		; 95 32
	lda #$0070.w		; A9 70 00
	sta $34.b,X		; 95 34
	ldy #$2814.w		; A0 14 28
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	ldy #$2864.w		; A0 64 28
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0009.w		; A9 09 00
	sta $54.b,X		; 95 54
	lda #$F800.w		; A9 00 F8
	sta $32.b,X		; 95 32
	lda #$0070.w		; A9 70 00
	sta $34.b,X		; 95 34
	lda #$0200.w		; A9 00 02
	jsr $0389.w		; 20 89 03
	ldy #$2820.w		; A0 20 28
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	ldy #$2864.w		; A0 64 28
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $54.b,X		; 95 54
	lda #$F800.w		; A9 00 F8
	sta $32.b,X		; 95 32
	lda #$0070.w		; A9 70 00
	sta $34.b,X		; 95 34
	lda #$FE00.w		; A9 00 FE
	jsr $0389.w		; 20 89 03
	ldy #$2820.w		; A0 20 28
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	ldy #$2864.w		; A0 64 28
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda #$0D.b		; A9 0D
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jsr $0416.w		; 20 16 04
	ldy #$27FC.w		; A0 FC 27
	jsr $0459.w		; 20 59 04
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	ldy #$2844.w		; A0 44 28
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $09.b,X		; 95 09
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	ldy #$27FC.w		; A0 FC 27
	jsr $0459.w		; 20 59 04
	jsr $0501.w		; 20 01 05
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	ldy #$2844.w		; A0 44 28
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $09.b,X		; 95 09
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	ldy #$2808.w		; A0 08 28
	jsr $0459.w		; 20 59 04
	jsr $0501.w		; 20 01 05
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	ldy #$2844.w		; A0 44 28
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$02.b		; A9 02
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0010.w		; A9 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2042.w		; A9 42 20
	phx		; DA
	tsb $A0.b		; 04 A0
	bit $2028.w		; 2C 28 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0010.w		; A9 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2042.w		; A9 42 20
	phx		; DA
	tsb $A0.b		; 04 A0
	bit $2028.w		; 2C 28 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
	ldy #$27FC.w		; A0 FC 27
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$06.b		; A9 06
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0040.w		; A9 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2044.w		; A9 44 20
	phx		; DA
	tsb $A0.b		; 04 A0
	bit $2028.w		; 2C 28 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$07.b		; A9 07
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0040.w		; A9 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2046.w		; A9 46 20
	phx		; DA
	tsb $A0.b		; 04 A0
	bit $2028.w		; 2C 28 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0020.w		; A9 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2048.w		; A9 48 20
	phx		; DA
	tsb $A0.b		; 04 A0
	bit $2028.w		; 2C 28 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0080.w		; A9 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$204A.w		; A9 4A 20
	phx		; DA
	tsb $A0.b		; 04 A0
	bit $2028.w		; 2C 28 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0010.w		; 09 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0010.w		; 09 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$05.b		; A9 05
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0040.w		; 09 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$06.b		; A9 06
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0040.w		; 09 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0020.w		; 09 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0020.w		; 09 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$06.b		; A9 06
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0080.w		; 09 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0080.w		; 09 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$02.b		; A9 02
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0014.w		; A9 14 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2054.w		; A9 54 20
	phx		; DA
	tsb $A0.b		; 04 A0
	bit $2028.w		; 2C 28 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
	ldy #$2808.w		; A0 08 28
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jsr $044B.w		; 20 4B 04
	jsr $03A4.w		; 20 A4 03
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$06.b		; A9 06
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0044.w		; A9 44 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2056.w		; A9 56 20
	phx		; DA
	tsb $A0.b		; 04 A0
	bit $2028.w		; 2C 28 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0024.w		; A9 24 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2058.w		; A9 58 20
	phx		; DA
	tsb $A0.b		; 04 A0
	bit $2028.w		; 2C 28 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$0A.b		; A9 0A
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0084.w		; A9 84 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$205A.w		; A9 5A 20
	phx		; DA
	tsb $A0.b		; 04 A0
	bit $2028.w		; 2C 28 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  31.b		; D0 1F
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	sta $0009.w,Y		; 99 09 00
	stz $56.b,X		; 74 56
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$5C.b		; A9 5C
	jsr $04DA.w		; 20 DA 04
	ldy #$2884.w		; A0 84 28
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  33.b		; D0 21
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	ldy #$376D.w		; A0 6D 37
	jsr $113C.w		; 20 3C 11
	ldy #$3773.w		; A0 73 37
	jsr $113C.w		; 20 3C 11
	jsr $10B6.w		; 20 B6 10
	jsr $036E.w		; 20 6E 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	lda #$2000.w		; A9 00 20
	sta $54.b,X		; 95 54
	jsr $0153.w		; 20 53 01
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	ldy #$2844.w		; A0 44 28
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$4000.w		; A9 00 40
	sta $54.b,X		; 95 54
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   4.b		; D0 04
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$1000.w		; A9 00 10
	sta $54.b,X		; 95 54
	jsr $0416.w		; 20 16 04
	jsr $051A.w		; 20 1A 05
	ldy #$27FC.w		; A0 FC 27
	jsr $0459.w		; 20 59 04
	jsr $0536.w		; 20 36 05
	jsr $03A4.w		; 20 A4 03
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	ldy #$2844.w		; A0 44 28
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$1004.w		; A9 04 10
	sta $54.b,X		; 95 54
	jsr $0416.w		; 20 16 04
	jsr $0528.w		; 20 28 05
	ldy #$2808.w		; A0 08 28
	jsr $0459.w		; 20 59 04
	jsr $0536.w		; 20 36 05
	jsr $03A4.w		; 20 A4 03
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	ldy #$2844.w		; A0 44 28
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1000.w		; A9 00 10
	sta $54.b,X		; 95 54
	ldy #$3767.w		; A0 67 37
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
	jsr $09D3.w		; 20 D3 09
	jsr $09EF.w		; 20 EF 09
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1004.w		; A9 04 10
	sta $54.b,X		; 95 54
	ldy #$3767.w		; A0 67 37
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
	jsr $09E1.w		; 20 E1 09
	jsr $09EF.w		; 20 EF 09
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8000.w		; A9 00 80
	sta $54.b,X		; 95 54
	ldy #$3767.w		; A0 67 37
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $0A33.w		; 20 33 0A
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	ldy #$2844.w		; A0 44 28
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	stz $54.b,X		; 74 54
	jsr $0153.w		; 20 53 01
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
	ldy #$27FC.w		; A0 FC 27
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $02DF.w		; 20 DF 02
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	ldy #$2844.w		; A0 44 28
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   2.b		; D0 02
	inc $02.b,X		; F6 02
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $0A09.w		; 20 09 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8008.w		; A9 08 80
	sta $54.b,X		; 95 54
	jsr $0A09.w		; 20 09 0A
	jsr $0336.w		; 20 36 03
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	ldy #$2844.w		; A0 44 28
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $0A09.w		; 20 09 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8004.w		; A9 04 80
	sta $54.b,X		; 95 54
	ldy #$3767.w		; A0 67 37
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $0A33.w		; 20 33 0A
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	ldy #$2844.w		; A0 44 28
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	sta $0009.w,Y		; 99 09 00
	stz $56.b,X		; 74 56
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$5E.b		; A9 5E
	jsr $04DA.w		; 20 DA 04
	ldy #$28AC.w		; A0 AC 28
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   2.b		; D0 02
	inc $02.b,X		; F6 02
	lda #$5C.b		; A9 5C
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$2D.b		; A9 2D
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $54.b,X		; 95 54
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	lda #$FA00.w		; A9 00 FA
	jsr $0389.w		; 20 89 03
	jsr $0AB9.w		; 20 B9 0A
	ldy #$282C.w		; A0 2C 28
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  35.b		; D0 23
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $0009.w,Y		; 99 09 00
	lda #$04.b		; A9 04
	sta $56.b,X		; 95 56
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	stz $54.b,X		; 74 54
	ldy #$28D4.w		; A0 D4 28
	jsr $0C0F.w		; 20 0F 0C
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  37.b		; D0 25
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda #$0E.b		; A9 0E
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0009.w		; A9 09 00
	sta $54.b,X		; 95 54
	lda #$F800.w		; A9 00 F8
	sta $32.b,X		; 95 32
	lda #$0070.w		; A9 70 00
	sta $34.b,X		; 95 34
	lda #$0700.w		; A9 00 07
	jsr $0389.w		; 20 89 03
	ldy #$3761.w		; A0 61 37
	jsr $113C.w		; 20 3C 11
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$33.b		; A9 33
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0200.w		; A9 00 02
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$63.b		; A9 63
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$373E.w		; A0 3E 37
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$33.b		; A9 33
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0300.w		; A9 00 03
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$64.b		; A9 64
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$3745.w		; A0 45 37
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  37.b		; D0 25
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$32.b		; A9 32
	sta $78.b,X		; 95 78
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0408.w		; A9 08 04
	sta $54.b,X		; 95 54
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0040.w		; A9 40 00
	sta $34.b,X		; 95 34
	lda #$FF00.w		; A9 00 FF
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$67.b		; A9 67
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$374C.w		; A0 4C 37
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  37.b		; D0 25
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$32.b		; A9 32
	sta $78.b,X		; 95 78
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0508.w		; A9 08 05
	sta $54.b,X		; 95 54
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0020.w		; A9 20 00
	sta $34.b,X		; 95 34
	lda #$FE00.w		; A9 00 FE
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$67.b		; A9 67
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$3753.w		; A0 53 37
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $45.b,X		; 95 45
	lda #$08.b		; A9 08
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$1D.b		; A9 1D
	sta $78.b,X		; 95 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0600.w		; A9 00 06
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	rts		; 60

	stz $43.b,X		; 74 43
	lda #$2000.w		; A9 00 20
	phx		; DA
	tsb $22.b		; 04 22
	tyx		; BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	stz $46.b,X		; 74 46
	lda #$0C.b		; A9 0C
	sta $45.b,X		; 95 45
	lda #$0C.b		; A9 0C
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$1D.b		; A9 1D
	sta $78.b,X		; 95 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0700.w		; A9 00 07
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	rts		; 60

	stz $43.b,X		; 74 43
	lda #$2000.w		; A9 00 20
	phx		; DA
	tsb $22.b		; 04 22
	tyx		; BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  12.b		; D0 0C
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
	rep #$20		; C2 20
	stz $30.b,X		; 74 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	stz $54.b,X		; 74 54
	jsr $0153.w		; 20 53 01
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	ldy #$376D.w		; A0 6D 37
	jsr $113C.w		; 20 3C 11
	ldy #$3773.w		; A0 73 37
	jsr $113C.w		; 20 3C 11
.ACCU 8
	sep #$20		; E2 20
	lda #$29.b		; A9 29
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  22.b		; D0 16
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$FA00.w		; A9 00 FA
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	lda #$FE80.w		; A9 80 FE
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$28.b		; A9 28
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0C08.w		; A9 08 0C
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$6E.b		; A9 6E
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  28.b		; D0 1C
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0010.w		; A9 10 00
	sta $34.b,X		; 95 34
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	jsr $0389.w		; 20 89 03
	ldy #$375A.w		; A0 5A 37
	jsr $0B49.w		; 20 49 0B
.ACCU 8
	sep #$20		; E2 20
	lda #$6F.b		; A9 6F
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  12.b		; D0 0C
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	stz $34.b,X		; 74 34
	stz $32.b,X		; 74 32
.ACCU 8
	sep #$20		; E2 20
	lda #$70.b		; A9 70
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0060.w		; A9 60 00
	sta $34.b,X		; 95 34
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	bne  10.b		; D0 0A
	lda $07.b,X		; B5 07
	cmp #$04.b		; C9 04
	bne   4.b		; D0 04
	lda #$34.b		; A9 34
	sta $78.b,X		; 95 78
	rts		; 60

	rts		; 60

	asl A		; 0A
	brk $18.b		; 00 18
	brk $C8.b		; 00 C8
	sbc $010A6A.l,X		; FF 6A 0A 01
	clc		; 18
	brk $C8.b		; 00 C8
	sbc $000B6B.l,X		; FF 6B 0B 00
	clc		; 18
	brk $D0.b		; 00 D0
	sbc $010B6C.l,X		; FF 6C 0B 01
	clc		; 18
	brk $D0.b		; 00 D0
	sbc $000C6C.l,X		; FF 6C 0C 00
	brk $00.b		; 00 00
	cpy #$00FF.w		; C0 FF 00
	and ($00.b),Y		; 31 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($FC.b)		; 32 FC
	jsr ($00FF.w,X)		; FC FF 00
	brk $33.b		; 00 33
	brk $F0.b		; 00 F0
	sbc $330000.l,X		; FF 00 00 33
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $C2.b		; 00 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($3788.w,X)		; 7C 88 37
	rol $39.b,X		; 36 39
	stz $39.b,X		; 74 39
	ldy $39.b,X		; B4 39
	pea $2C39.w		; F4 39 2C
	dec A		; 3A
	ror A		; 6A
	dec A		; 3A
	stx $C13A.w		; 8E 3A C1
	dec A		; 3A
	ora ($3B.b,X)		; 01 3B
	eor ($3B.b,X)		; 41 3B
	sta ($3B.b,X)		; 81 3B
	clv		; B8
	tsa		; 3B
	ldy $3C.b		; A4 3C
	jmp.w [$143C]		; DC 3C 14
	and $3D45.w,X		; 3D 45 3D
	ror $3D.b,X		; 76 3D
	ror $3D.b,X		; 76 3D
	ror $3D.b,X		; 76 3D
	ror $3D.b,X		; 76 3D
	bit #$3E.b		; 89 3E
	bit #$3E.b		; 89 3E
	and $283E.w,X		; 3D 3E 28
	rol $3E28.w,X		; 3E 28 3E
	plp		; 28
	rol $3E71.w,X		; 3E 71 3E
	adc ($3E.b),Y		; 71 3E
	jmp ($F53C.w,X)		; 7C 3C F5
	tsa		; 3B
	asl A		; 0A
	bit $3DBA.w,X		; 3C BA 3D
	tsa		; 3B
	bit $3DD9.w,X		; 3C D9 3D
	trb $3E.b		; 14 3E
	bcc  60.b		; 90 3C
	ror A		; 6A
	eor [$77.b]		; 47 77
	eor [$CD.b]		; 47 CD
	rol $3F70.w,X		; 3E 70 3F
	rol $1C3F.w,X		; 3E 3F 1C
	and $003EFC.l,X		; 3F FC 3E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $98.b		; 00 98
	and $033FD4.l,X		; 3F D4 3F 03
	rti		; 40

	and $405940.l,X		; 3F 40 59 40
	sta $40.b,X		; 95 40
	pei ($3F.b)		; D4 3F
	cmp ($40.b),Y		; D1 40
	ora $3F41.w		; 0D 41 3F
	rti		; 40

	bit $41.b,X		; 34 41
	stz $0441.w		; 9C 41 04
	.db $42, $6C		; 42 6C
	.db $42, $68		; 42 68
	eor ($D0.b,X)		; 41 D0
	eor ($38.b,X)		; 41 38
	.db $42, $A0		; 42 A0
	.db $42, $D4		; 42 D4
	.db $42, $0E		; 42 0E
	eor $40.b,S		; 43 40
	eor $7A.b,S		; 43 7A
	eor $97.b,S		; 43 97
	eor $0E.b,S		; 43 0E
	eor $D1.b,S		; 43 D1
	eor $7A.b,S		; 43 7A
	eor $0B.b,S		; 43 0B
	mvp $44,$56		; 44 56 44
	adc $449344.l,X		; 7F 44 93 44
	cmp ($44.b,S),Y		; D3 44
	jsr ($3E44.w,X)		; FC 44 3E
	eor $80.b		; 45 80
	eor $B1.b		; 45 B1
	eor $E2.b		; 45 E2
	eor $E2.b		; 45 E2
	eor $FC.b		; 45 FC
	eor $FC.b		; 45 FC
	eor $16.b		; 45 16
	lsr $47.b		; 46 47
	lsr $78.b		; 46 78
	lsr $78.b		; 46 78
	lsr $92.b		; 46 92
	lsr $92.b		; 46 92
	lsr $AC.b		; 46 AC
	lsr $E5.b		; 46 E5
	lsr $0E.b		; 46 0E
	eor [$4D.b]		; 47 4D
	eor [$FF.b]		; 47 FF
	rti		; 40

	rti		; 40

	sec		; 38
	mvp $FF,$45		; 44 45 FF
	.db $42, $42		; 42 42
	sbc $FF4747.l,X		; FF 47 47 FF
	eor ($52.b)		; 52 52
	sbc $FF5656.l,X		; FF 56 56 FF
	mvn $FF,$54		; 54 54 FF
	cli		; 58
	cli		; 58
	sbc $FF4A4A.l,X		; FF 4A 4A FF
	jmp $FF4C.w		; 4C 4C FF
	phk		; 4B
	phk		; 4B
	sbc $FF4D4D.l,X		; FF 4D 4D FF
	lsr $FF4E.w		; 4E 4E FF
	bvc  80.b		; 50 50
	sbc $FF4F4F.l,X		; FF 4F 4F FF
	eor ($51.b),Y		; 51 51
	ora ($26.b,X)		; 01 26
	ora ($26.b,X)		; 01 26
	ora $61.b		; 05 61
	ora $62.b		; 05 62
	ora $67.b		; 05 67
	ora $68.b		; 05 68
	ora ($5F.b,X)		; 01 5F
	ora ($60.b,X)		; 01 60
	ora #$6E.b		; 09 6E
	ora #$6E.b		; 09 6E
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	plp		; 28
	cld		; D8
	plp		; 28
	cpx #$20.b		; E0 20
	phy		; 5A
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	plp		; 28
	cld		; D8
	plp		; 28
	cpx $5D28.w		; EC 28 5D
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $F0.b,S		; 03 F0
	sbc $010000.l,X		; FF 00 00 01
	brk $00.b		; 00 00
	ora ($F0.b,S),Y		; 13 F0
	sbc $01FFE0.l,X		; FF E0 FF 01
	sec		; 38
	brk $12.b		; 00 12
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	bra   1.b		; 80 01
	brk $FB.b		; 00 FB
	clc		; 18
	brk $00.b		; 00 00
	ora ($24.b)		; 12 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000180.l,X		; FF 80 01 00
	xce		; FB
	trb $0000.w		; 1C 00 00
	ora ($24.b)		; 12 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
	jsr $0AA9.w		; 20 A9 0A
	ldy #$386A.w		; A0 6A 38
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $02DF.w		; 20 DF 02
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$389A.w		; A0 9A 38
	jsr $0958.w		; 20 58 09
	ldy #$38AE.w		; A0 AE 38
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0001.w		; A9 01 00
	sta $54.b,X		; 95 54
	lda #$0300.w		; A9 00 03
	jsr $0389.w		; 20 89 03
	jsr $0416.w		; 20 16 04
	ldy #$386A.w		; A0 6A 38
	jsr $0459.w		; 20 59 04
	jsr $0307.w		; 20 07 03
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$389A.w		; A0 9A 38
	jsr $0958.w		; 20 58 09
	ldy #$38AE.w		; A0 AE 38
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0002.w		; A9 02 00
	sta $54.b,X		; 95 54
	lda #$FD80.w		; A9 80 FD
	jsr $0389.w		; 20 89 03
	jsr $0416.w		; 20 16 04
	ldy #$386A.w		; A0 6A 38
	jsr $0459.w		; 20 59 04
	jsr $0307.w		; 20 07 03
	jsr $02DF.w		; 20 DF 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$389A.w		; A0 9A 38
	jsr $0958.w		; 20 58 09
	ldy #$38AE.w		; A0 AE 38
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	ldy #$3876.w		; A0 76 38
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $044B.w		; 20 4B 04
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$389A.w		; A0 9A 38
	jsr $0958.w		; 20 58 09
	ldy #$38AE.w		; A0 AE 38
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	jsr $0416.w		; 20 16 04
	jsr $031F.w		; 20 1F 03
.ACCU 8
	sep #$20		; E2 20
	ldy #$386A.w		; A0 6A 38
	lda $54.b,X		; B5 54
	and #$04.b		; 29 04
	bne   3.b		; D0 03
	ldy #$3876.w		; A0 76 38
	jsr $0459.w		; 20 59 04
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$389A.w		; A0 9A 38
	jsr $0958.w		; 20 58 09
	ldy #$38AE.w		; A0 AE 38
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	jsr $0416.w		; 20 16 04
	jsr $03B2.w		; 20 B2 03
	ldy #$389A.w		; A0 9A 38
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  23.b		; D0 17
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	lda #$F700.w		; A9 00 F7
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	ldy #$3882.w		; A0 82 38
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	ldy #$38CE.w		; A0 CE 38
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0009.w		; A9 09 00
	sta $54.b,X		; 95 54
	lda #$F700.w		; A9 00 F7
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	lda #$02E0.w		; A9 E0 02
	jsr $0389.w		; 20 89 03
	ldy #$388E.w		; A0 8E 38
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
.ACCU 8
	sep #$20		; E2 20
	lda #$6D.b		; A9 6D
	jsr $0BDD.w		; 20 DD 0B
	ldy #$38CE.w		; A0 CE 38
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $54.b,X		; 95 54
	lda #$F700.w		; A9 00 F7
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	lda #$FD20.w		; A9 20 FD
	jsr $0389.w		; 20 89 03
	ldy #$388E.w		; A0 8E 38
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
.ACCU 8
	sep #$20		; E2 20
	lda #$6D.b		; A9 6D
	jsr $0BDD.w		; 20 DD 0B
	ldy #$38CE.w		; A0 CE 38
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda #$0D.b		; A9 0D
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jsr $0416.w		; 20 16 04
	ldy #$386A.w		; A0 6A 38
	jsr $0459.w		; 20 59 04
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$389A.w		; A0 9A 38
	jsr $0958.w		; 20 58 09
	ldy #$38AE.w		; A0 AE 38
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $09.b,X		; 95 09
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	ldy #$386A.w		; A0 6A 38
	jsr $0459.w		; 20 59 04
	jsr $0501.w		; 20 01 05
	ldy #$389A.w		; A0 9A 38
	jsr $0958.w		; 20 58 09
	ldy #$38AE.w		; A0 AE 38
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $09.b,X		; 95 09
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	ldy #$3876.w		; A0 76 38
	jsr $0459.w		; 20 59 04
	jsr $0501.w		; 20 01 05
	ldy #$389A.w		; A0 9A 38
	jsr $0958.w		; 20 58 09
	ldy #$38AE.w		; A0 AE 38
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
	jsr $0A84.w		; 20 84 0A
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  33.b		; D0 21
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	ldy #$479A.w		; A0 9A 47
	jsr $113C.w		; 20 3C 11
	ldy #$47A0.w		; A0 A0 47
	jsr $113C.w		; 20 3C 11
	jsr $10B6.w		; 20 B6 10
	jsr $036E.w		; 20 6E 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	lda #$2000.w		; A9 00 20
	sta $54.b,X		; 95 54
	jsr $0153.w		; 20 53 01
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$389A.w		; A0 9A 38
	jsr $0958.w		; 20 58 09
	ldy #$38AE.w		; A0 AE 38
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$4000.w		; A9 00 40
	sta $54.b,X		; 95 54
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   4.b		; D0 04
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$1000.w		; A9 00 10
	sta $54.b,X		; 95 54
	jsr $0416.w		; 20 16 04
	jsr $051A.w		; 20 1A 05
	ldy #$386A.w		; A0 6A 38
	jsr $0459.w		; 20 59 04
	jsr $0536.w		; 20 36 05
	jsr $03A4.w		; 20 A4 03
	ldy #$389A.w		; A0 9A 38
	jsr $0958.w		; 20 58 09
	ldy #$38AE.w		; A0 AE 38
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$1004.w		; A9 04 10
	sta $54.b,X		; 95 54
	jsr $0416.w		; 20 16 04
	jsr $0528.w		; 20 28 05
	ldy #$3876.w		; A0 76 38
	jsr $0459.w		; 20 59 04
	jsr $0536.w		; 20 36 05
	jsr $03A4.w		; 20 A4 03
	ldy #$389A.w		; A0 9A 38
	jsr $0958.w		; 20 58 09
	ldy #$38AE.w		; A0 AE 38
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1000.w		; A9 00 10
	sta $54.b,X		; 95 54
	ldy #$4794.w		; A0 94 47
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
	jsr $09D3.w		; 20 D3 09
	jsr $09EF.w		; 20 EF 09
	ldy #$389A.w		; A0 9A 38
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1004.w		; A9 04 10
	sta $54.b,X		; 95 54
	ldy #$4794.w		; A0 94 47
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
	jsr $09E1.w		; 20 E1 09
	jsr $09EF.w		; 20 EF 09
	ldy #$389A.w		; A0 9A 38
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8000.w		; A9 00 80
	sta $54.b,X		; 95 54
	ldy #$4794.w		; A0 94 47
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $0A33.w		; 20 33 0A
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$389A.w		; A0 9A 38
	jsr $0958.w		; 20 58 09
	ldy #$38AE.w		; A0 AE 38
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	stz $54.b,X		; 74 54
	jsr $0153.w		; 20 53 01
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
	ldy #$386A.w		; A0 6A 38
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $02DF.w		; 20 DF 02
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$389A.w		; A0 9A 38
	jsr $0958.w		; 20 58 09
	ldy #$38AE.w		; A0 AE 38
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   2.b		; D0 02
	inc $02.b,X		; F6 02
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8008.w		; A9 08 80
	sta $54.b,X		; 95 54
	jsr $0A09.w		; 20 09 0A
	jsr $0336.w		; 20 36 03
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$389A.w		; A0 9A 38
	jsr $0958.w		; 20 58 09
	ldy #$38AE.w		; A0 AE 38
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $0A09.w		; 20 09 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8004.w		; A9 04 80
	sta $54.b,X		; 95 54
	ldy #$4794.w		; A0 94 47
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $0A33.w		; 20 33 0A
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$389A.w		; A0 9A 38
	jsr $0958.w		; 20 58 09
	ldy #$38AE.w		; A0 AE 38
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  31.b		; D0 1F
	inc $02.b,X		; F6 02
	lda #$2D.b		; A9 2D
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $54.b,X		; 95 54
	lda #$FC00.w		; A9 00 FC
	sta $32.b,X		; 95 32
	lda #$00A0.w		; A9 A0 00
	sta $34.b,X		; 95 34
	lda #$F800.w		; A9 00 F8
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	jsr $0AB9.w		; 20 B9 0A
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  12.b		; D0 0C
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
	rep #$20		; C2 20
	stz $30.b,X		; 74 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	stz $54.b,X		; 74 54
	jsr $0153.w		; 20 53 01
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	ldy #$479A.w		; A0 9A 47
	jsr $113C.w		; 20 3C 11
	ldy #$47A0.w		; A0 A0 47
	jsr $113C.w		; 20 3C 11
.ACCU 8
	sep #$20		; E2 20
	lda #$29.b		; A9 29
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  22.b		; D0 16
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$FA00.w		; A9 00 FA
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	lda #$FE80.w		; A9 80 FE
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$28.b		; A9 28
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$02.b		; A9 02
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0010.w		; A9 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2041.w		; A9 41 20
	phx		; DA
	tsb $A0.b		; 04 A0
	txs		; 9A
	sec		; 38
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
	ldy #$386A.w		; A0 6A 38
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	ldy #$389A.w		; A0 9A 38
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$07.b		; A9 07
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0040.w		; A9 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2043.w		; A9 43 20
	phx		; DA
	tsb $A0.b		; 04 A0
	txs		; 9A
	sec		; 38
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$02.b		; A9 02
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0020.w		; A9 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2046.w		; A9 46 20
	phx		; DA
	tsb $A0.b		; 04 A0
	txs		; 9A
	sec		; 38
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0020.w		; A9 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2046.w		; A9 46 20
	phx		; DA
	tsb $A0.b		; 04 A0
	txs		; 9A
	sec		; 38
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0080.w		; A9 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2048.w		; A9 48 20
	phx		; DA
	tsb $A0.b		; 04 A0
	txs		; 9A
	sec		; 38
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	rts		; 60

	lda #$49.b		; A9 49
	jsr $04DA.w		; 20 DA 04
	ldy #$389A.w		; A0 9A 38
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$02.b		; A9 02
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0010.w		; 09 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0010.w		; 09 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$05.b		; A9 05
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0040.w		; 09 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$05.b		; A9 05
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0040.w		; 09 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0020.w		; 09 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0020.w		; 09 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$06.b		; A9 06
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0080.w		; 09 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$07.b		; A9 07
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0080.w		; 09 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$02.b		; A9 02
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0014.w		; A9 14 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2053.w		; A9 53 20
	phx		; DA
	tsb $A0.b		; 04 A0
	txs		; 9A
	sec		; 38
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
	ldy #$3876.w		; A0 76 38
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jsr $044B.w		; 20 4B 04
	jsr $03A4.w		; 20 A4 03
	ldy #$389A.w		; A0 9A 38
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$05.b		; A9 05
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0044.w		; A9 44 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2055.w		; A9 55 20
	phx		; DA
	tsb $A0.b		; 04 A0
	txs		; 9A
	sec		; 38
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$02.b		; A9 02
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0024.w		; A9 24 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2057.w		; A9 57 20
	phx		; DA
	tsb $A0.b		; 04 A0
	txs		; 9A
	sec		; 38
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$07.b		; A9 07
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$0A.b		; A9 0A
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0084.w		; A9 84 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2059.w		; A9 59 20
	phx		; DA
	tsb $A0.b		; 04 A0
	txs		; 9A
	sec		; 38
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  45.b		; D0 2D
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	sta $0009.w,Y		; 99 09 00
	stz $56.b,X		; 74 56
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$FA00.w		; A9 00 FA
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	stz $54.b,X		; 74 54
	lda #$0200.w		; A9 00 02
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda $06.b,X		; B5 06
	bpl   5.b		; 10 05
	lda #$5B.b		; A9 5B
	jsr $0348.w		; 20 48 03
	ldy #$38EE.w		; A0 EE 38
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	inc $02.b,X		; F6 02
	lda #$14.b		; A9 14
	sta $0A70.w		; 8D 70 0A
	lda #$18.b		; A9 18
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$5C.b		; A9 5C
	jsr $04DA.w		; 20 DA 04
	ldy #$3916.w		; A0 16 39
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   2.b		; D0 02
	inc $02.b,X		; F6 02
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  34.b		; D0 22
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	sta $0009.w,Y		; 99 09 00
	stz $56.b,X		; 74 56
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda $06.b,X		; B5 06
	bpl   5.b		; 10 05
	lda #$5E.b		; A9 5E
	jsr $0348.w		; 20 48 03
	ldy #$38EE.w		; A0 EE 38
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	inc $02.b,X		; F6 02
	lda #$14.b		; A9 14
	sta $0A70.w		; 8D 70 0A
	lda #$18.b		; A9 18
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$5C.b		; A9 5C
	jsr $04DA.w		; 20 DA 04
	ldy #$3926.w		; A0 26 39
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  34.b		; D0 22
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	lda #$08.b		; A9 08
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
	lda #$38.b		; A9 38
	sta $78.b,X		; 95 78
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0600.w		; A9 00 06
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	rts		; 60

	lda #$2004.w		; A9 04 20
	phx		; DA
	tsb $22.b		; 04 22
	tyx		; BB
	lda $20E280.l,X		; BF 80 E2 20
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	bne   2.b		; D0 02
	stz $43.b,X		; 74 43
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  34.b		; D0 22
	stz $46.b,X		; 74 46
	lda #$0C.b		; A9 0C
	sta $45.b,X		; 95 45
	lda #$0C.b		; A9 0C
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
	lda #$38.b		; A9 38
	sta $78.b,X		; 95 78
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0600.w		; A9 00 06
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	rts		; 60

	lda #$2004.w		; A9 04 20
	phx		; DA
	tsb $22.b		; 04 22
	tyx		; BB
	lda $20E280.l,X		; BF 80 E2 20
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	bne   2.b		; D0 02
	stz $43.b,X		; 74 43
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$37.b		; A9 37
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0200.w		; A9 00 02
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$63.b		; A9 63
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$4786.w		; A0 86 47
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$37.b		; A9 37
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0300.w		; A9 00 03
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$64.b		; A9 64
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$478D.w		; A0 8D 47
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$38.b		; A9 38
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0400.w		; A9 00 04
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$69.b		; A9 69
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$4778.w		; A0 78 47
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$38.b		; A9 38
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0500.w		; A9 00 05
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$6A.b		; A9 6A
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$477F.w		; A0 7F 47
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $30.b,X		; 74 30
	stz $32.b,X		; 74 32
	stz $34.b,X		; 74 34
.ACCU 16
	rep #$20		; C2 20
	lda $09.b,X		; B5 09
	and #$00FF.w		; 29 FF 00
	beq   9.b		; F0 09
	lda $0A00.w		; AD 00 0A
	clc		; 18
	adc #$00E8.w		; 69 E8 00
	bra   7.b		; 80 07
	lda $0A00.w		; AD 00 0A
	clc		; 18
	adc #$0018.w		; 69 18 00
	sta $21.b,X		; 95 21
.ACCU 8
	sep #$20		; E2 20
	lda #$07.b		; A9 07
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  21.b		; D0 15
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
	lda #$38.b		; A9 38
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0C04.w		; A9 04 0C
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$6F.b		; A9 6F
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  39.b		; D0 27
	stz $43.b,X		; 74 43
	lda #$30.b		; A9 30
	sta $45.b,X		; 95 45
	lda #$12.b		; A9 12
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$2B.b		; A9 2B
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0C08.w		; A9 08 0C
	sta $54.b,X		; 95 54
	lda #$F600.w		; A9 00 F6
	sta $32.b,X		; 95 32
	lda #$0040.w		; A9 40 00
	sta $34.b,X		; 95 34
	lda #$0600.w		; A9 00 06
	jmp $0389.w		; 4C 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$70.b		; A9 70
	jsr $0A41.w		; 20 41 0A
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   2.b		; D0 02
	inc $02.b,X		; F6 02
	rts		; 60

	rts		; 60

	asl $2000.w		; 0E 00 20
	brk $00.b		; 00 00
	brk $6B.b		; 00 6B
	asl $2001.w		; 0E 01 20
	brk $00.b		; 00 00
	brk $6C.b		; 00 6C
	ora $1800.w		; 0D 00 18
	brk $C8.b		; 00 C8
	sbc $010D65.l,X		; FF 65 0D 01
	clc		; 18
	brk $C8.b		; 00 C8
	sbc $F83266.l,X		; FF 66 32 F8
	sed		; F8
	sbc $330000.l,X		; FF 00 00 33
	brk $F0.b		; 00 F0
	sbc $330000.l,X		; FF 00 00 33
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $C2.b		; 00 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($47B5.w,X)		; 7C B5 47
	lda $EB49.w		; AD 49 EB
	eor #$2B.b		; 49 2B
	lsr A		; 4A
	rtl		; 6B

	lsr A		; 4A
	lda $4A.b,S		; A3 4A
	sbc ($4A.b,X)		; E1 4A
	ora $4B.b		; 05 4B
	sec		; 38
	phk		; 4B
	adc ($4B.b),Y		; 71 4B
	tax		; AA
	phk		; 4B
	nop		; EA
	phk		; 4B
	and ($4C.b,X)		; 21 4C
	asl A		; 0A
	eor $4D42.w		; 4D 42 4D
	ply		; 7A
	eor $4DAB.w		; 4D AB 4D
	jmp.w [$DC4D]		; DC 4D DC
	eor $4DDC.w		; 4D DC 4D
	jmp.w [$F24D]		; DC 4D F2
	lsr $4EF2.w		; 4E F2 4E
	ldx $4E.b		; A6 4E
	stx $8E4E.w		; 8E 4E 8E
	lsr $4E8E.w		; 4E 8E 4E
	phx		; DA
	lsr $4EDA.w		; 4E DA 4E
	sep #$4C		; E2 4C
	tad		; 5B
	jmp $4C70.w		; 4C 70 4C
	jsr $A14E.w		; 20 4E A1
	jmp $4E3F.w		; 4C 3F 4E
	ply		; 7A
	lsr $4CF6.w		; 4E F6 4C
	asl $5058.w		; 0E 58 50
	cli		; 58
	rol $4F.b,X		; 36 4F
	cmp [$4F.b],Y		; D7 4F
	lda $4F.b		; A5 4F
	sta $4F.b,S		; 83 4F
	adc $4F.b		; 65 4F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $503B4F.l,X		; FF 4F 3B 50
	adc [$50.b],Y		; 77 50
	ldx $50.b		; A6 50
.INDEX 8
	sep #$50		; E2 50
	jsr ($E250.w,X)		; FC 50 E2
	bvc  56.b		; 50 38
	eor ($74.b),Y		; 51 74
	eor ($77.b),Y		; 51 77
	bvc -80.b		; 50 B0
	eor ($E2.b),Y		; 51 E2
	bvc -20.b		; 50 EC
	eor ($20.b),Y		; 51 20
	eor ($54.b)		; 52 54
	eor ($88.b)		; 52 88
	eor ($BC.b)		; 52 BC
	eor ($24.b)		; 52 24
	eor ($F0.b,S),Y		; 53 F0
	eor ($58.b)		; 52 58
	eor ($8C.b,S),Y		; 53 8C
	eor ($C6.b,S),Y		; 53 C6
	eor ($F8.b,S),Y		; 53 F8
	eor ($32.b,S),Y		; 53 32
	mvn $54,$4F		; 54 4F 54
	dec $53.b		; C6 53
	bit #$54.b		; 89 54
	and ($54.b)		; 32 54
	cmp $54.b,S		; C3 54
	jsr ($3954.w,X)		; FC 54 39
	eor $79.b,X		; 55 79
	eor $25.b,X		; 55 25
	eor $A2.b,X		; 55 A2
	eor $D8.b,X		; 55 D8
	eor $09.b,X		; 55 09
	lsr $3A.b,X		; 56 3A
	lsr $3A.b,X		; 56 3A
	lsr $54.b,X		; 56 54
	lsr $54.b,X		; 56 54
	lsr $6E.b,X		; 56 6E
	lsr $9F.b,X		; 56 9F
	lsr $D0.b,X		; 56 D0
	lsr $D0.b,X		; 56 D0
	lsr $EA.b,X		; 56 EA
	lsr $EA.b,X		; 56 EA
	lsr $04.b,X		; 56 04
	eor [$29.b],Y		; 57 29
	eor [$4A.b],Y		; 57 4A
	eor [$86.b],Y		; 57 86
	eor [$C2.b],Y		; 57 C2
	eor [$EA.b],Y		; 57 EA
	eor [$1F.b],Y		; 57 1F
	cli		; 58
	bne  86.b		; D0 56
	plp		; 28
	rti		; 40

	eor ($38.b,X)		; 41 38
	eor [$48.b]		; 47 48
	bmi  67.b		; 30 43
	eor $FF.b		; 45 FF
	lsr A		; 4A
	lsr A		; 4A
	sbc $FF5454.l,X		; FF 54 54 FF
	cli		; 58
	cli		; 58
	sbc $FF5656.l,X		; FF 56 56 FF
	phy		; 5A
	phy		; 5A
	sbc $FF4C4C.l,X		; FF 4C 4C FF
	bvc  80.b		; 50 50
	sbc $FF4E4E.l,X		; FF 4E 4E FF
	eor ($51.b),Y		; 51 51
	sbc $FF4D4D.l,X		; FF 4D 4D FF
	eor ($52.b)		; 52 52
	sbc $FF4F4F.l,X		; FF 4F 4F FF
	eor ($53.b,S),Y		; 53 53
	ora ($26.b,X)		; 01 26
	ora ($26.b,X)		; 01 26
	ora $62.b		; 05 62
	ora $63.b		; 05 63
	ora $68.b		; 05 68
	ora $69.b		; 05 69
	ora ($6E.b,X)		; 01 6E
	ora ($6F.b,X)		; 01 6F
	ora #$74.b		; 09 74
	ora #$74.b		; 09 74
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	plp		; 28
	cld		; D8
	plp		; 28
	sed		; F8
	php		; 08
	adc ($03.b,X)		; 61 03
	brk $30.b		; 00 30
	bne  48.b		; D0 30
	cld		; D8
	plp		; 28
	jmp $0000FF.l		; 5C FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $30.b		; 00 30
	bne  48.b		; D0 30
	cpy #$40.b		; C0 40
	lsr $0000.w,X		; 5E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	sbc $010000.l,X		; FF 00 00 01
	brk $00.b		; 00 00
	cop $EC.b		; 02 EC
	sbc $01FFF8.l,X		; FF F8 FF 01
	and $1300.w,X		; 3D 00 13
	inx		; E8
	sbc $01FFC0.l,X		; FF C0 FF 01
	brk $00.b		; 00 00
	ora ($18.b),Y		; 11 18
	brk $E0.b		; 00 E0
	sbc $000000.l,X		; FF 00 00 00
	ora ($20.b)		; 12 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($20.b)		; 12 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $800280.l,X		; FF 80 02 80
	plx		; FA
	clc		; 18
	brk $00.b		; 00 00
	ora ($20.b)		; 12 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $800280.l,X		; FF 80 02 80
	plx		; FA
	trb $0000.w		; 1C 00 00
	ora ($20.b)		; 12 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cop $00.b		; 02 00
	sbc $1B02.w,Y		; F9 02 1B
	tas		; 1B
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $1C.b		; 00 1C
	bcs   2.b		; B0 02
	php		; 08
	brk $01.b		; 00 01
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	trb $02B0.w		; 1C B0 02
	php		; 08
	brk $01.b		; 00 01
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C2.b		; 00 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
	jsr $0AA9.w		; 20 A9 0A
	ldy #$48A1.w		; A0 A1 48
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $02DF.w		; 20 DF 02
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$48D1.w		; A0 D1 48
	jsr $0958.w		; 20 58 09
	ldy #$48E5.w		; A0 E5 48
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0001.w		; A9 01 00
	sta $54.b,X		; 95 54
	lda #$0220.w		; A9 20 02
	jsr $0389.w		; 20 89 03
	jsr $0416.w		; 20 16 04
	ldy #$48A1.w		; A0 A1 48
	jsr $0459.w		; 20 59 04
	jsr $0307.w		; 20 07 03
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$48D1.w		; A0 D1 48
	jsr $0958.w		; 20 58 09
	ldy #$48E5.w		; A0 E5 48
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0002.w		; A9 02 00
	sta $54.b,X		; 95 54
	lda #$FE60.w		; A9 60 FE
	jsr $0389.w		; 20 89 03
	jsr $0416.w		; 20 16 04
	ldy #$48A1.w		; A0 A1 48
	jsr $0459.w		; 20 59 04
	jsr $0307.w		; 20 07 03
	jsr $02DF.w		; 20 DF 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$48D1.w		; A0 D1 48
	jsr $0958.w		; 20 58 09
	ldy #$48E5.w		; A0 E5 48
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	ldy #$48AD.w		; A0 AD 48
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $044B.w		; 20 4B 04
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$48D1.w		; A0 D1 48
	jsr $0958.w		; 20 58 09
	ldy #$48E5.w		; A0 E5 48
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	jsr $0416.w		; 20 16 04
	jsr $031F.w		; 20 1F 03
.ACCU 8
	sep #$20		; E2 20
	ldy #$48A1.w		; A0 A1 48
	lda $54.b,X		; B5 54
	and #$04.b		; 29 04
	bne   3.b		; D0 03
	ldy #$48AD.w		; A0 AD 48
	jsr $0459.w		; 20 59 04
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$48D1.w		; A0 D1 48
	jsr $0958.w		; 20 58 09
	ldy #$48E5.w		; A0 E5 48
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	jsr $0416.w		; 20 16 04
	jsr $03B2.w		; 20 B2 03
	ldy #$48D1.w		; A0 D1 48
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  23.b		; D0 17
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	lda #$F800.w		; A9 00 F8
	sta $32.b,X		; 95 32
	lda #$0070.w		; A9 70 00
	sta $34.b,X		; 95 34
	ldy #$48B9.w		; A0 B9 48
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	ldy #$4905.w		; A0 05 49
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0009.w		; A9 09 00
	sta $54.b,X		; 95 54
	lda #$F800.w		; A9 00 F8
	sta $32.b,X		; 95 32
	lda #$0070.w		; A9 70 00
	sta $34.b,X		; 95 34
	lda #$0280.w		; A9 80 02
	jsr $0389.w		; 20 89 03
	ldy #$48C5.w		; A0 C5 48
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	ldy #$4905.w		; A0 05 49
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $54.b,X		; 95 54
	lda #$F800.w		; A9 00 F8
	sta $32.b,X		; 95 32
	lda #$0070.w		; A9 70 00
	sta $34.b,X		; 95 34
	lda #$FD80.w		; A9 80 FD
	jsr $0389.w		; 20 89 03
	ldy #$48C5.w		; A0 C5 48
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	ldy #$4905.w		; A0 05 49
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda #$0D.b		; A9 0D
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jsr $0416.w		; 20 16 04
	ldy #$48A1.w		; A0 A1 48
	jsr $0459.w		; 20 59 04
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$48D1.w		; A0 D1 48
	jsr $0958.w		; 20 58 09
	ldy #$48E5.w		; A0 E5 48
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $09.b,X		; 95 09
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	ldy #$48A1.w		; A0 A1 48
	jsr $0459.w		; 20 59 04
	jsr $0501.w		; 20 01 05
	ldy #$48D1.w		; A0 D1 48
	jsr $0958.w		; 20 58 09
	ldy #$48E5.w		; A0 E5 48
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $09.b,X		; 95 09
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	ldy #$48AD.w		; A0 AD 48
	jsr $0459.w		; 20 59 04
	jsr $0501.w		; 20 01 05
	ldy #$48D1.w		; A0 D1 48
	jsr $0958.w		; 20 58 09
	ldy #$48E5.w		; A0 E5 48
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  33.b		; D0 21
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	ldy #$587A.w		; A0 7A 58
	jsr $113C.w		; 20 3C 11
	ldy #$5880.w		; A0 80 58
	jsr $113C.w		; 20 3C 11
	jsr $10B6.w		; 20 B6 10
	jsr $036E.w		; 20 6E 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	lda #$2000.w		; A9 00 20
	sta $54.b,X		; 95 54
	jsr $0153.w		; 20 53 01
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$48D1.w		; A0 D1 48
	jsr $0958.w		; 20 58 09
	ldy #$48E5.w		; A0 E5 48
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$4000.w		; A9 00 40
	sta $54.b,X		; 95 54
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   4.b		; D0 04
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$1000.w		; A9 00 10
	sta $54.b,X		; 95 54
	jsr $0416.w		; 20 16 04
	jsr $051A.w		; 20 1A 05
	ldy #$48A1.w		; A0 A1 48
	jsr $0459.w		; 20 59 04
	jsr $0536.w		; 20 36 05
	jsr $03A4.w		; 20 A4 03
	ldy #$48D1.w		; A0 D1 48
	jsr $0958.w		; 20 58 09
	ldy #$48E5.w		; A0 E5 48
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$1004.w		; A9 04 10
	sta $54.b,X		; 95 54
	jsr $0416.w		; 20 16 04
	jsr $0528.w		; 20 28 05
	ldy #$48AD.w		; A0 AD 48
	jsr $0459.w		; 20 59 04
	jsr $0536.w		; 20 36 05
	jsr $03A4.w		; 20 A4 03
	ldy #$48D1.w		; A0 D1 48
	jsr $0958.w		; 20 58 09
	ldy #$48E5.w		; A0 E5 48
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1000.w		; A9 00 10
	sta $54.b,X		; 95 54
	ldy #$5874.w		; A0 74 58
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
	jsr $09D3.w		; 20 D3 09
	jsr $09EF.w		; 20 EF 09
	ldy #$48D1.w		; A0 D1 48
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1004.w		; A9 04 10
	sta $54.b,X		; 95 54
	ldy #$5874.w		; A0 74 58
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
	jsr $09E1.w		; 20 E1 09
	jsr $09EF.w		; 20 EF 09
	ldy #$48D1.w		; A0 D1 48
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8000.w		; A9 00 80
	sta $54.b,X		; 95 54
	ldy #$5874.w		; A0 74 58
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $0A33.w		; 20 33 0A
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$48D1.w		; A0 D1 48
	jsr $0958.w		; 20 58 09
	ldy #$48E5.w		; A0 E5 48
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	stz $54.b,X		; 74 54
	jsr $0153.w		; 20 53 01
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
	ldy #$48A1.w		; A0 A1 48
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $02DF.w		; 20 DF 02
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$48D1.w		; A0 D1 48
	jsr $0958.w		; 20 58 09
	ldy #$48E5.w		; A0 E5 48
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   2.b		; D0 02
	inc $02.b,X		; F6 02
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $0A09.w		; 20 09 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8008.w		; A9 08 80
	sta $54.b,X		; 95 54
	jsr $0A09.w		; 20 09 0A
	jsr $0336.w		; 20 36 03
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$48D1.w		; A0 D1 48
	jsr $0958.w		; 20 58 09
	ldy #$48E5.w		; A0 E5 48
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $0A09.w		; 20 09 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8004.w		; A9 04 80
	sta $54.b,X		; 95 54
	ldy #$5874.w		; A0 74 58
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $0A33.w		; 20 33 0A
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$48D1.w		; A0 D1 48
	jsr $0958.w		; 20 58 09
	ldy #$48E5.w		; A0 E5 48
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  31.b		; D0 1F
	inc $02.b,X		; F6 02
	lda #$2D.b		; A9 2D
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $54.b,X		; 95 54
	lda #$FC00.w		; A9 00 FC
	sta $32.b,X		; 95 32
	lda #$0070.w		; A9 70 00
	sta $34.b,X		; 95 34
	lda #$FB00.w		; A9 00 FB
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	jsr $0AB9.w		; 20 B9 0A
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  12.b		; D0 0C
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
	rep #$20		; C2 20
	stz $30.b,X		; 74 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	stz $54.b,X		; 74 54
	jsr $0153.w		; 20 53 01
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	ldy #$587A.w		; A0 7A 58
	jsr $113C.w		; 20 3C 11
	ldy #$5880.w		; A0 80 58
	jsr $113C.w		; 20 3C 11
.ACCU 8
	sep #$20		; E2 20
	lda #$29.b		; A9 29
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  22.b		; D0 16
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$FA00.w		; A9 00 FA
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	lda #$FE80.w		; A9 80 FE
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$28.b		; A9 28
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$02.b		; A9 02
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0010.w		; A9 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2042.w		; A9 42 20
	phx		; DA
	tsb $A0.b		; 04 A0
	cmp ($48.b),Y		; D1 48
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0010.w		; A9 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2042.w		; A9 42 20
	phx		; DA
	tsb $A0.b		; 04 A0
	cmp ($48.b),Y		; D1 48
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
	ldy #$48A1.w		; A0 A1 48
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	ldy #$48D1.w		; A0 D1 48
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$07.b		; A9 07
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0040.w		; A9 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2044.w		; A9 44 20
	phx		; DA
	tsb $A0.b		; 04 A0
	cmp ($48.b),Y		; D1 48
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$07.b		; A9 07
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0040.w		; A9 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2046.w		; A9 46 20
	phx		; DA
	tsb $A0.b		; 04 A0
	cmp ($48.b),Y		; D1 48
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0020.w		; A9 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2049.w		; A9 49 20
	phx		; DA
	tsb $A0.b		; 04 A0
	cmp ($48.b),Y		; D1 48
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0020.w		; A9 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2049.w		; A9 49 20
	phx		; DA
	tsb $A0.b		; 04 A0
	cmp ($48.b),Y		; D1 48
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$09.b		; A9 09
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0080.w		; A9 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$204B.w		; A9 4B 20
	phx		; DA
	tsb $A0.b		; 04 A0
	cmp ($48.b),Y		; D1 48
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0010.w		; 09 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0010.w		; 09 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$05.b		; A9 05
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0040.w		; 09 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$06.b		; A9 06
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0040.w		; 09 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0020.w		; 09 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0020.w		; 09 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$07.b		; A9 07
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0080.w		; 09 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$09.b		; A9 09
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0080.w		; 09 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$02.b		; A9 02
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0014.w		; A9 14 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2055.w		; A9 55 20
	phx		; DA
	tsb $A0.b		; 04 A0
	cmp ($48.b),Y		; D1 48
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
	ldy #$48AD.w		; A0 AD 48
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jsr $044B.w		; 20 4B 04
	jsr $03A4.w		; 20 A4 03
	ldy #$48D1.w		; A0 D1 48
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$06.b		; A9 06
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0044.w		; A9 44 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2057.w		; A9 57 20
	phx		; DA
	tsb $A0.b		; 04 A0
	cmp ($48.b),Y		; D1 48
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0024.w		; A9 24 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2059.w		; A9 59 20
	phx		; DA
	tsb $A0.b		; 04 A0
	cmp ($48.b),Y		; D1 48
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$0A.b		; A9 0A
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0084.w		; A9 84 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$205B.w		; A9 5B 20
	phx		; DA
	tsb $A0.b		; 04 A0
	cmp ($48.b),Y		; D1 48
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  31.b		; D0 1F
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	sta $0009.w,Y		; 99 09 00
	stz $56.b,X		; 74 56
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$5D.b		; A9 5D
	jsr $04DA.w		; 20 DA 04
	ldy #$4925.w		; A0 25 49
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	inc $02.b,X		; F6 02
	lda #$14.b		; A9 14
	sta $0A70.w		; 8D 70 0A
	lda #$18.b		; A9 18
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$60.b		; A9 60
	jsr $04DA.w		; 20 DA 04
	ldy #$495D.w		; A0 5D 49
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   2.b		; D0 02
	inc $02.b,X		; F6 02
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  34.b		; D0 22
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	sta $0009.w,Y		; 99 09 00
	stz $56.b,X		; 74 56
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda $06.b,X		; B5 06
	bpl   5.b		; 10 05
	lda #$5F.b		; A9 5F
	jsr $0348.w		; 20 48 03
	ldy #$4925.w		; A0 25 49
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	inc $02.b,X		; F6 02
	lda #$14.b		; A9 14
	sta $0A70.w		; 8D 70 0A
	lda #$18.b		; A9 18
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$60.b		; A9 60
	jsr $04DA.w		; 20 DA 04
	ldy #$496D.w		; A0 6D 49
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  35.b		; D0 23
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $0009.w,Y		; 99 09 00
	lda #$06.b		; A9 06
	sta $56.b,X		; 95 56
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	stz $54.b,X		; 74 54
	ldy #$497D.w		; A0 7D 49
	jsr $0C0F.w		; 20 0F 0C
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$3C.b		; A9 3C
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0200.w		; A9 00 02
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$64.b		; A9 64
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$5851.w		; A0 51 58
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$3C.b		; A9 3C
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0300.w		; A9 00 03
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$65.b		; A9 65
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$5858.w		; A0 58 58
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$3D.b		; A9 3D
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0400.w		; A9 00 04
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$6A.b		; A9 6A
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$585F.w		; A0 5F 58
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$3D.b		; A9 3D
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0500.w		; A9 00 05
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$6B.b		; A9 6B
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$5866.w		; A0 66 58
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0604.w		; A9 04 06
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$70.b		; A9 70
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0704.w		; A9 04 07
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$71.b		; A9 71
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  38.b		; D0 26
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
	lda #$08.b		; A9 08
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	stz $43.b,X		; 74 43
	lda #$3D.b		; A9 3D
	sta $78.b,X		; 95 78
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$FC00.w		; A9 00 FC
	sta $32.b,X		; 95 32
	lda #$0100.w		; A9 00 01
	sta $34.b,X		; 95 34
	lda #$0180.w		; A9 80 01
	jmp $0389.w		; 4C 89 03
	lda #$2072.w		; A9 72 20
	pha		; 48
	ora $22.b,S		; 03 22
	tyx		; BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  38.b		; D0 26
	lda #$0E.b		; A9 0E
	sta $45.b,X		; 95 45
	lda #$10.b		; A9 10
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	stz $43.b,X		; 74 43
	lda #$3D.b		; A9 3D
	sta $78.b,X		; 95 78
	lda #$22.b		; A9 22
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$FB80.w		; A9 80 FB
	sta $32.b,X		; 95 32
	lda #$00C0.w		; A9 C0 00
	sta $34.b,X		; 95 34
	lda #$0500.w		; A9 00 05
	jmp $0389.w		; 4C 89 03
	lda #$2073.w		; A9 73 20
	pha		; 48
	ora $22.b,S		; 03 22
	tyx		; BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	inc $02.b,X		; F6 02
	stz $43.b,X		; 74 43
	lda #$0C.b		; A9 0C
	sta $45.b,X		; 95 45
	lda #$0C.b		; A9 0C
	sta $44.b,X		; 95 44
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $43.b,X		; 74 43
	lda #$10.b		; A9 10
	sta $45.b,X		; 95 45
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
	lda #$3E.b		; A9 3E
	sta $78.b,X		; 95 78
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$3D.b		; A9 3D
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0C00.w		; A9 00 0C
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$75.b		; A9 75
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$586D.w		; A0 6D 58
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
	rts		; 60

	ora $001800.l		; 0F 00 18 00
	cpy #$66FF.w		; C0 FF 66
	ora $001801.l		; 0F 01 18 00
	cpy #$67FF.w		; C0 FF 67
	bpl   0.b		; 10 00
	clc		; 18
	brk $00.b		; 00 00
	brk $6C.b		; 00 6C
	bpl   1.b		; 10 01
	clc		; 18
	brk $00.b		; 00 00
	brk $6D.b		; 00 6D
	ora ($01.b),Y		; 11 01
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($F8.b)		; 32 F8
	sed		; F8
	sbc $330000.l,X		; FF 00 00 33
	brk $F0.b		; 00 F0
	sbc $330000.l,X		; FF 00 00 33
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $C2.b		; 00 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($5895.w,X)		; 7C 95 58
	cmp [$5A.b]		; C7 5A
	ora $5B.b		; 05 5B
	eor $5B.b		; 45 5B
	sta $5B.b		; 85 5B
	lda $FB5B.w,X		; BD 5B FB
	tad		; 5B
	ora $5C585C.l,X		; 1F 5C 58 5C
	sta [$5C.b],Y		; 97 5C
	dec $5C.b,X		; D6 5C
	asl $5D.b,X		; 16 5D
	eor $365D.w		; 4D 5D 36
	lsr $5E6E.w,X		; 5E 6E 5E
	ldx $5E.b		; A6 5E
	cmp [$5E.b],Y		; D7 5E
	php		; 08
	eor $085F08.l,X		; 5F 08 5F 08
	eor $1E5F08.l,X		; 5F 08 5F 1E
	rts		; 60

	asl $D260.w,X		; 1E 60 D2
	eor $BA5FBA.l,X		; 5F BA 5F BA
	eor $065FBA.l,X		; 5F BA 5F 06
	rts		; 60

	asl $60.b		; 06 60
	asl $875E.w		; 0E 5E 87
	eor $5D9C.w,X		; 5D 9C 5D
	jmp $CD5F.w		; 4C 5F CD
	eor $5F6B.w,X		; 5D 6B 5F
	ldx $5F.b		; A6 5F
	jsl $6ABA5E.l		; 22 5E BA 6A
	cmp $60626A.l		; CF 6A 62 60
	ora #$61.b		; 09 61
	cmp [$60.b],Y		; D7 60
	lda $60.b,X		; B5 60
	sta $60.b,X		; 95 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($61.b),Y		; 31 61
	adc $A961.w		; 6D 61 A9
	adc ($D8.b,X)		; 61 D8
	adc ($14.b,X)		; 61 14
	.db $62, $2E, $62		; 62 2E 62
	ror A		; 6A
	.db $62, $A9, $61		; 62 A9 61
	ldx $62.b		; A6 62
	trb $62.b		; 14 62
.ACCU 8
	sep #$62		; E2 62
	asl $63.b,X		; 16 63
	lsr A		; 4A
	adc $7E.b,S		; 63 7E
	adc $B2.b,S		; 63 B2
	adc $E6.b,S		; 63 E6
	adc $1A.b,S		; 63 1A
	stz $4E.b		; 64 4E
	stz $82.b		; 64 82
	stz $BC.b		; 64 BC
	stz $EE.b		; 64 EE
	stz $28.b		; 64 28
	adc $45.b		; 65 45
	adc $BC.b		; 65 BC
	stz $7F.b		; 64 7F
	adc $28.b		; 65 28
	adc $B9.b		; 65 B9
	adc $F2.b		; 65 F2
	adc $2F.b		; 65 2F
	ror $6F.b		; 66 6F
	ror $1B.b		; 66 1B
	ror $98.b		; 66 98
	ror $C9.b		; 66 C9
	ror $FA.b		; 66 FA
	ror $FA.b		; 66 FA
	ror $14.b		; 66 14
	adc [$14.b]		; 67 14
	adc [$2E.b]		; 67 2E
	adc [$63.b]		; 67 63
	adc [$98.b]		; 67 98
	adc [$C3.b]		; 67 C3
	adc [$EE.b]		; 67 EE
	adc [$1B.b]		; 67 1B
	pla		; 68
	pha		; 48
	pla		; 68
	lda [$68.b],Y		; B7 68
	rol $69.b		; 26 69
	pla		; 68
	adc #$AA.b		; 69 AA
	adc #$DA.b		; 69 DA
	adc #$0A.b		; 69 0A
	ror A		; 6A
	jsl $6A476A.l		; 22 6A 47 6A
	sta $40286A.l		; 8F 6A 28 40
	eor ($FF.b,X)		; 41 FF
	lsr $46.b		; 46 46
	plp		; 28
	eor $45.b,S		; 43 45
	sbc $FF4848.l,X		; FF 48 48 FF
	eor ($52.b)		; 52 52
	sbc $FF5656.l,X		; FF 56 56 FF
	mvn $FF,$54		; 54 54 FF
	cli		; 58
	cli		; 58
	sbc $FF4A4A.l,X		; FF 4A 4A FF
	lsr $FF4E.w		; 4E 4E FF
	jmp $FF4C.w		; 4C 4C FF
	bvc  80.b		; 50 50
	sbc $FF4B4B.l,X		; FF 4B 4B FF
	eor $4DFF4F.l		; 4F 4F FF 4D
	eor $51FF.w		; 4D FF 51
	eor ($01.b),Y		; 51 01
	rol $01.b		; 26 01
	rol $05.b		; 26 05
	eor $066005.l,X		; 5F 05 60 06
	adc $06.b		; 65 06
	ror $01.b		; 66 01
	rtl		; 6B

	ora ($6C.b,X)		; 01 6C
	ora #$72.b		; 09 72
	ora #$72.b		; 09 72
	ora ($6D.b,X)		; 01 6D
	ora ($6E.b,X)		; 01 6E
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	bmi -48.b		; 30 D0
	bmi -16.b		; 30 F0
	bpl  90.b		; 10 5A
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	bmi -48.b		; 30 D0
	bmi -80.b		; 30 B0
	bvc  92.b		; 50 5C
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0010.w		; 0C 10 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $0D.b		; 00 0D
	tsb $E000.w		; 0C 00 E0
	sbc $000001.l,X		; FF 01 00 00
	asl $0000.w		; 0E 00 00
	tay		; A8
	sbc $004200.l,X		; FF 00 42 00
	php		; 08
	clc		; 18
	brk $C0.b		; 00 C0
	sbc $000000.l,X		; FF 00 00 00
	ora #$28.b		; 09 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$28.b		; 09 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0000.w		; 0E 00 00
	tay		; A8
	sbc $004201.l,X		; FF 01 42 00
	php		; 08
	clc		; 18
	brk $C0.b		; 00 C0
	sbc $000001.l,X		; FF 01 00 00
	ora #$28.b		; 09 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$28.b		; 09 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $800280.l,X		; FF 80 02 80
	plx		; FA
	trb $0000.w		; 1C 00 00
	ora #$28.b		; 09 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $800280.l,X		; FF 80 02 80
	plx		; FA
	trb $0000.w		; 1C 00 00
	ora #$28.b		; 09 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($00.b),Y		; 71 00
	asl $80.b		; 06 80
	plx		; FA
	tsb $1D.b		; 04 1D
	ora $1802.w,X		; 1D 02 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($18.b,X)		; 01 18
	cld		; D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	jsr $00B0.w		; 20 B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $18.b		; 06 18
	tay		; A8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	cpx #$B0.b		; E0 B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	inx		; E8
	clv		; B8
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	brk $06.b		; 00 06
	jsr $00B0.w		; 20 B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
	jsr $0AA9.w		; 20 A9 0A
	ldy #$597F.w		; A0 7F 59
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $02DF.w		; 20 DF 02
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	ldy #$59C7.w		; A0 C7 59
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0001.w		; A9 01 00
	sta $54.b,X		; 95 54
	lda #$01A0.w		; A9 A0 01
	jsr $0389.w		; 20 89 03
	jsr $0416.w		; 20 16 04
	ldy #$597F.w		; A0 7F 59
	jsr $0459.w		; 20 59 04
	jsr $0307.w		; 20 07 03
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	ldy #$59C7.w		; A0 C7 59
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0002.w		; A9 02 00
	sta $54.b,X		; 95 54
	lda #$FEE0.w		; A9 E0 FE
	jsr $0389.w		; 20 89 03
	jsr $0416.w		; 20 16 04
	ldy #$597F.w		; A0 7F 59
	jsr $0459.w		; 20 59 04
	jsr $0307.w		; 20 07 03
	jsr $02DF.w		; 20 DF 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	ldy #$59C7.w		; A0 C7 59
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	ldy #$598B.w		; A0 8B 59
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $044B.w		; 20 4B 04
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	ldy #$59C7.w		; A0 C7 59
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	jsr $0416.w		; 20 16 04
	jsr $031F.w		; 20 1F 03
.ACCU 8
	sep #$20		; E2 20
	ldy #$597F.w		; A0 7F 59
	lda $54.b,X		; B5 54
	and #$04.b		; 29 04
	bne   3.b		; D0 03
	ldy #$598B.w		; A0 8B 59
	jsr $0459.w		; 20 59 04
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	ldy #$59C7.w		; A0 C7 59
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	jsr $0416.w		; 20 16 04
	jsr $03B2.w		; 20 B2 03
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  23.b		; D0 17
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	lda #$F700.w		; A9 00 F7
	sta $32.b,X		; 95 32
	lda #$0070.w		; A9 70 00
	sta $34.b,X		; 95 34
	ldy #$5997.w		; A0 97 59
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	ldy #$59E7.w		; A0 E7 59
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0009.w		; A9 09 00
	sta $54.b,X		; 95 54
	lda #$F700.w		; A9 00 F7
	sta $32.b,X		; 95 32
	lda #$0070.w		; A9 70 00
	sta $34.b,X		; 95 34
	lda #$01C0.w		; A9 C0 01
	jsr $0389.w		; 20 89 03
	ldy #$59A3.w		; A0 A3 59
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	ldy #$59E7.w		; A0 E7 59
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $54.b,X		; 95 54
	lda #$F700.w		; A9 00 F7
	sta $32.b,X		; 95 32
	lda #$0070.w		; A9 70 00
	sta $34.b,X		; 95 34
	lda #$FE40.w		; A9 40 FE
	jsr $0389.w		; 20 89 03
	ldy #$59A3.w		; A0 A3 59
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	ldy #$59E7.w		; A0 E7 59
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda #$0D.b		; A9 0D
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jsr $0416.w		; 20 16 04
	ldy #$597F.w		; A0 7F 59
	jsr $0459.w		; 20 59 04
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	ldy #$59C7.w		; A0 C7 59
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $09.b,X		; 95 09
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	ldy #$597F.w		; A0 7F 59
	jsr $0459.w		; 20 59 04
	jsr $0501.w		; 20 01 05
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	ldy #$59C7.w		; A0 C7 59
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $09.b,X		; 95 09
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	ldy #$598B.w		; A0 8B 59
	jsr $0459.w		; 20 59 04
	jsr $0501.w		; 20 01 05
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	ldy #$59C7.w		; A0 C7 59
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  33.b		; D0 21
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	ldy #$6AF2.w		; A0 F2 6A
	jsr $113C.w		; 20 3C 11
	ldy #$6AF8.w		; A0 F8 6A
	jsr $113C.w		; 20 3C 11
	jsr $10B6.w		; 20 B6 10
	jsr $036E.w		; 20 6E 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	lda #$2000.w		; A9 00 20
	sta $54.b,X		; 95 54
	jsr $0153.w		; 20 53 01
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	ldy #$59C7.w		; A0 C7 59
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$4000.w		; A9 00 40
	sta $54.b,X		; 95 54
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   4.b		; D0 04
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$1000.w		; A9 00 10
	sta $54.b,X		; 95 54
	jsr $0416.w		; 20 16 04
	jsr $051A.w		; 20 1A 05
	ldy #$597F.w		; A0 7F 59
	jsr $0459.w		; 20 59 04
	jsr $0536.w		; 20 36 05
	jsr $03A4.w		; 20 A4 03
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	ldy #$59C7.w		; A0 C7 59
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$1004.w		; A9 04 10
	sta $54.b,X		; 95 54
	jsr $0416.w		; 20 16 04
	jsr $0528.w		; 20 28 05
	ldy #$598B.w		; A0 8B 59
	jsr $0459.w		; 20 59 04
	jsr $0536.w		; 20 36 05
	jsr $03A4.w		; 20 A4 03
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	ldy #$59C7.w		; A0 C7 59
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1000.w		; A9 00 10
	sta $54.b,X		; 95 54
	ldy #$6AEC.w		; A0 EC 6A
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
	jsr $09D3.w		; 20 D3 09
	jsr $09EF.w		; 20 EF 09
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1004.w		; A9 04 10
	sta $54.b,X		; 95 54
	ldy #$6AEC.w		; A0 EC 6A
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
	jsr $09E1.w		; 20 E1 09
	jsr $09EF.w		; 20 EF 09
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8000.w		; A9 00 80
	sta $54.b,X		; 95 54
	ldy #$6AEC.w		; A0 EC 6A
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $0A33.w		; 20 33 0A
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	ldy #$59C7.w		; A0 C7 59
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	stz $54.b,X		; 74 54
	jsr $0153.w		; 20 53 01
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
	ldy #$597F.w		; A0 7F 59
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $02DF.w		; 20 DF 02
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	ldy #$59C7.w		; A0 C7 59
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   2.b		; D0 02
	inc $02.b,X		; F6 02
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $0A09.w		; 20 09 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8008.w		; A9 08 80
	sta $54.b,X		; 95 54
	jsr $0A09.w		; 20 09 0A
	jsr $0336.w		; 20 36 03
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	ldy #$59C7.w		; A0 C7 59
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $0A09.w		; 20 09 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8004.w		; A9 04 80
	sta $54.b,X		; 95 54
	ldy #$6AEC.w		; A0 EC 6A
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $0A33.w		; 20 33 0A
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	ldy #$59C7.w		; A0 C7 59
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$2D.b		; A9 2D
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $54.b,X		; 95 54
	lda #$FC00.w		; A9 00 FC
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	lda #$FB80.w		; A9 80 FB
	jsr $0389.w		; 20 89 03
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	jsr $0AB9.w		; 20 B9 0A
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  12.b		; D0 0C
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
	rep #$20		; C2 20
	stz $30.b,X		; 74 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	stz $54.b,X		; 74 54
	jsr $0153.w		; 20 53 01
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	ldy #$6AF2.w		; A0 F2 6A
	jsr $113C.w		; 20 3C 11
	ldy #$6AF8.w		; A0 F8 6A
	jsr $113C.w		; 20 3C 11
.ACCU 8
	sep #$20		; E2 20
	lda #$29.b		; A9 29
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  22.b		; D0 16
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$FA00.w		; A9 00 FA
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	lda #$FE80.w		; A9 80 FE
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$28.b		; A9 28
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0010.w		; A9 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2042.w		; A9 42 20
	phx		; DA
	tsb $A0.b		; 04 A0
	lda $522059.l		; AF 59 20 52
	ora #$BB22.w		; 09 22 BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0010.w		; A9 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2042.w		; A9 42 20
	phx		; DA
	tsb $A0.b		; 04 A0
	lda $522059.l		; AF 59 20 52
	ora #$BB22.w		; 09 22 BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
	ldy #$597F.w		; A0 7F 59
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0040.w		; A9 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2044.w		; A9 44 20
	phx		; DA
	tsb $A0.b		; 04 A0
	lda $522059.l		; AF 59 20 52
	ora #$BB22.w		; 09 22 BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$09.b		; A9 09
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0040.w		; A9 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2044.w		; A9 44 20
	phx		; DA
	tsb $A0.b		; 04 A0
	lda $522059.l		; AF 59 20 52
	ora #$BB22.w		; 09 22 BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0020.w		; A9 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2047.w		; A9 47 20
	phx		; DA
	tsb $A0.b		; 04 A0
	lda $522059.l		; AF 59 20 52
	ora #$BB22.w		; 09 22 BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0080.w		; A9 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2049.w		; A9 49 20
	phx		; DA
	tsb $A0.b		; 04 A0
	lda $522059.l		; AF 59 20 52
	ora #$BB22.w		; 09 22 BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0010.w		; 09 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$07.b		; A9 07
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0010.w		; 09 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$06.b		; A9 06
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0040.w		; 09 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0040.w		; 09 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0020.w		; 09 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0020.w		; 09 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0080.w		; 09 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0080.w		; 09 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0014.w		; A9 14 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2053.w		; A9 53 20
	phx		; DA
	tsb $A0.b		; 04 A0
	lda $522059.l		; AF 59 20 52
	ora #$BB22.w		; 09 22 BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
	ldy #$598B.w		; A0 8B 59
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jsr $044B.w		; 20 4B 04
	jsr $03A4.w		; 20 A4 03
	ldy #$59AF.w		; A0 AF 59
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0044.w		; A9 44 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2055.w		; A9 55 20
	phx		; DA
	tsb $A0.b		; 04 A0
	lda $522059.l		; AF 59 20 52
	ora #$BB22.w		; 09 22 BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0024.w		; A9 24 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2057.w		; A9 57 20
	phx		; DA
	tsb $A0.b		; 04 A0
	lda $522059.l		; AF 59 20 52
	ora #$BB22.w		; 09 22 BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$09.b		; A9 09
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$0A.b		; A9 0A
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0084.w		; A9 84 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2059.w		; A9 59 20
	phx		; DA
	tsb $A0.b		; 04 A0
	lda $522059.l		; AF 59 20 52
	ora #$BB22.w		; 09 22 BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  31.b		; D0 1F
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	sta $0009.w,Y		; 99 09 00
	stz $56.b,X		; 74 56
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$5B.b		; A9 5B
	jsr $04DA.w		; 20 DA 04
	ldy #$5A07.w		; A0 07 5A
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	inc $02.b,X		; F6 02
	lda #$14.b		; A9 14
	sta $0A70.w		; 8D 70 0A
	lda #$18.b		; A9 18
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$5E.b		; A9 5E
	jsr $04DA.w		; 20 DA 04
	ldy #$5A67.w		; A0 67 5A
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   2.b		; D0 02
	inc $02.b,X		; F6 02
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  34.b		; D0 22
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	sta $0009.w,Y		; 99 09 00
	stz $56.b,X		; 74 56
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda $06.b,X		; B5 06
	bpl   5.b		; 10 05
	lda #$5B.b		; A9 5B
	jsr $0348.w		; 20 48 03
	ldy #$5A3F.w		; A0 3F 5A
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	inc $02.b,X		; F6 02
	lda #$14.b		; A9 14
	sta $0A70.w		; 8D 70 0A
	lda #$18.b		; A9 18
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$5E.b		; A9 5E
	jsr $04DA.w		; 20 DA 04
	ldy #$5A77.w		; A0 77 5A
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$41.b		; A9 41
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0200.w		; A9 00 02
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$61.b		; A9 61
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$6AD0.w		; A0 D0 6A
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$41.b		; A9 41
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0300.w		; A9 00 03
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$62.b		; A9 62
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$6AD7.w		; A0 D7 6A
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  23.b		; D0 17
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$42.b		; A9 42
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0408.w		; A9 08 04
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	stz $32.b,X		; 74 32
	stz $34.b,X		; 74 34
.ACCU 8
	sep #$20		; E2 20
	lda #$67.b		; A9 67
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$6ADE.w		; A0 DE 6A
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  23.b		; D0 17
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$42.b		; A9 42
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0508.w		; A9 08 05
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	stz $32.b,X		; 74 32
	stz $34.b,X		; 74 34
.ACCU 8
	sep #$20		; E2 20
	lda #$68.b		; A9 68
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$6AE5.w		; A0 E5 6A
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  27.b		; D0 1B
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	lda #$FD80.w		; A9 80 FD
	sta $32.b,X		; 95 32
	lda #$0040.w		; A9 40 00
	sta $34.b,X		; 95 34
	lda #$FF00.w		; A9 00 FF
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  27.b		; D0 1B
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0020.w		; A9 20 00
	sta $34.b,X		; 95 34
	lda #$FE80.w		; A9 80 FE
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  27.b		; D0 1B
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	lda #$FD80.w		; A9 80 FD
	sta $32.b,X		; 95 32
	lda #$0040.w		; A9 40 00
	sta $34.b,X		; 95 34
	lda #$FF00.w		; A9 00 FF
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  27.b		; D0 1B
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0020.w		; A9 20 00
	sta $34.b,X		; 95 34
	lda #$FE80.w		; A9 80 FE
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  39.b		; D0 27
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	lda #$08.b		; A9 08
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
	lda #$42.b		; A9 42
	sta $78.b,X		; 95 78
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0600.w		; A9 00 06
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	ldy #$6AFE.w		; A0 FE 6A
	jmp $113C.w		; 4C 3C 11
.ACCU 16
	rep #$20		; C2 20
	stz $30.b,X		; 74 30
	lda $50.b,X		; B5 50
	and #$0003.w		; 29 03 00
	beq  17.b		; F0 11
	and #$0001.w		; 29 01 00
	beq   7.b		; F0 07
	lda #$0180.w		; A9 80 01
	sta $30.b,X		; 95 30
	bra   5.b		; 80 05
	lda #$FE80.w		; A9 80 FE
	sta $30.b,X		; 95 30
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jsl $80BFBB.l		; 22 BB BF 80
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	bne  12.b		; D0 0C
	stz $43.b,X		; 74 43
	lda $07.b,X		; B5 07
	cmp #$10.b		; C9 10
	bne   4.b		; D0 04
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  39.b		; D0 27
	stz $46.b,X		; 74 46
	lda #$0C.b		; A9 0C
	sta $45.b,X		; 95 45
	lda #$0C.b		; A9 0C
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
	lda #$42.b		; A9 42
	sta $78.b,X		; 95 78
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0700.w		; A9 00 07
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	ldy #$6AFE.w		; A0 FE 6A
	jmp $113C.w		; 4C 3C 11
.ACCU 16
	rep #$20		; C2 20
	stz $30.b,X		; 74 30
	lda $50.b,X		; B5 50
	and #$0003.w		; 29 03 00
	beq  17.b		; F0 11
	and #$0001.w		; 29 01 00
	beq   7.b		; F0 07
	lda #$00C0.w		; A9 C0 00
	sta $30.b,X		; 95 30
	bra   5.b		; 80 05
	lda #$FF40.w		; A9 40 FF
	sta $30.b,X		; 95 30
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jsl $80BFBB.l		; 22 BB BF 80
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	bne  12.b		; D0 0C
	stz $43.b,X		; 74 43
	lda $07.b,X		; B5 07
	cmp #$10.b		; C9 10
	bne   4.b		; D0 04
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  46.b		; D0 2E
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0800.w		; A9 00 08
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	sta $01.b		; 85 01
	lda #$40.b		; A9 40
	sta $02.b		; 85 02
	lda #$C0.b		; A9 C0
	sta $03.b		; 85 03
	lda #$40.b		; A9 40
	sta $04.b		; 85 04
	lda #$F0.b		; A9 F0
	sta $05.b		; 85 05
	lda #$10.b		; A9 10
	sta $06.b		; 85 06
	lda #$6F.b		; A9 6F
	sta $07.b		; 85 07
	jsr $10CD.w		; 20 CD 10
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  46.b		; D0 2E
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0900.w		; A9 00 09
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	sta $01.b		; 85 01
	lda #$38.b		; A9 38
	sta $02.b		; 85 02
	lda #$C8.b		; A9 C8
	sta $03.b		; 85 03
	lda #$38.b		; A9 38
	sta $04.b		; 85 04
	lda #$F8.b		; A9 F8
	sta $05.b		; 85 05
	lda #$08.b		; A9 08
	sta $06.b		; 85 06
	lda #$70.b		; A9 70
	sta $07.b		; 85 07
	jsr $10CD.w		; 20 CD 10
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $0009.w,Y		; 99 09 00
	lda #$04.b		; A9 04
	sta $56.b,X		; 95 56
	ldy #$5A87.w		; A0 87 5A
	jsr $0C0F.w		; 20 0F 0C
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $0009.w,Y		; 99 09 00
	lda #$05.b		; A9 05
	sta $56.b,X		; 95 56
	ldy #$5A87.w		; A0 87 5A
	jsr $0C0F.w		; 20 0F 0C
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
	lda #$42.b		; A9 42
	sta $78.b,X		; 95 78
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0C00.w		; A9 00 0C
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$73.b		; A9 73
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  38.b		; D0 26
	stz $43.b,X		; 74 43
	lda #$30.b		; A9 30
	sta $45.b,X		; 95 45
	lda #$14.b		; A9 14
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$19.b		; A9 19
	sta $78.b		; 85 78
	lda #$42.b		; A9 42
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$FF00.w		; A9 00 FF
	sta $32.b,X		; 95 32
	lda #$0020.w		; A9 20 00
	sta $34.b,X		; 95 34
	lda #$0A00.w		; A9 00 0A
	jmp $0389.w		; 4C 89 03
	lda $06.b,X		; B5 06
	bne   8.b		; D0 08
	lda $07.b,X		; B5 07
	cmp #$D010.w		; C9 10 D0
	cop $74.b		; 02 74
	eor $A9.b,S		; 43 A9
	stz $20.b,X		; 74 20
	pha		; 48
	ora $22.b,S		; 03 22
	tyx		; BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	ldy #$6B04.w		; A0 04 6B
	jsr $113C.w		; 20 3C 11
	jsr $0153.w		; 20 53 01
	jsr $0136.w		; 20 36 01
.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	jsr $0A33.w		; 20 33 0A
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	bne  10.b		; D0 0A
	lda $07.b,X		; B5 07
	cmp #$08.b		; C9 08
	bne   4.b		; D0 04
	lda #$43.b		; A9 43
	sta $78.b,X		; 95 78
	rts		; 60

	rts		; 60

	ora ($00.b)		; 12 00
	clc		; 18
	brk $BC.b		; 00 BC
	sbc $011263.l,X		; FF 63 12 01
	clc		; 18
	brk $BC.b		; 00 BC
	sbc $001364.l,X		; FF 64 13 00
	jsr $EC00.w		; 20 00 EC
	sbc $011369.l,X		; FF 69 13 01
	jsr $EC00.w		; 20 00 EC
	sbc $F8326A.l,X		; FF 6A 32 F8
	sed		; F8
	sbc $330000.l,X		; FF 00 00 33
	brk $F0.b		; 00 F0
	sbc $330000.l,X		; FF 00 00 33
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $32.b		; 00 32
	php		; 08
	inx		; E8
	sbc $320000.l,X		; FF 00 00 32
	inx		; E8
	inx		; E8
	sbc $C20000.l,X		; FF 00 00 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($6B19.w,X)		; 7C 19 6B
	lda $6C.b,S		; A3 6C
	sbc ($6C.b,X)		; E1 6C
	and ($6D.b,X)		; 21 6D
	adc ($6D.b,X)		; 61 6D
	sta $D76D.w,Y		; 99 6D D7
	adc $6DFB.w		; 6D FB 6D
	rol $676E.w		; 2E 6E 67
	ror $6EA0.w		; 6E A0 6E
	cpx #$6E.b		; E0 6E
	ora [$6F.b],Y		; 17 6F
	brk $70.b		; 00 70
	sec		; 38
	bvs 112.b		; 70 70
	bvs -95.b		; 70 A1
	bvs -46.b		; 70 D2
	bvs -46.b		; 70 D2
	bvs -46.b		; 70 D2
	bvs -46.b		; 70 D2
	bvs -24.b		; 70 E8
	adc ($E8.b),Y		; 71 E8
	adc ($9C.b),Y		; 71 9C
	adc ($84.b),Y		; 71 84
	adc ($84.b),Y		; 71 84
	adc ($84.b),Y		; 71 84
	adc ($D0.b),Y		; 71 D0
	adc ($D0.b),Y		; 71 D0
	adc ($D8.b),Y		; 71 D8
	adc $666F51.l		; 6F 51 6F 66
	adc $977116.l		; 6F 16 71 97
	adc $707135.l		; 6F 35 71 70
	adc ($EC.b),Y		; 71 EC
	adc $BC79A7.l		; 6F A7 79 BC
	adc $722C.w,Y		; 79 2C 72
	cmp ($72.b,S),Y		; D3 72
	lda ($72.b,X)		; A1 72
	adc $725F72.l,X		; 7F 72 5F 72
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	adc ($37.b)		; 72 37
	adc ($66.b,S),Y		; 73 66
	adc ($A2.b,S),Y		; 73 A2
	adc ($BC.b,S),Y		; 73 BC
	adc ($37.b,S),Y		; 73 37
	adc ($F8.b,S),Y		; 73 F8
	adc ($A2.b,S),Y		; 73 A2
	adc ($34.b,S),Y		; 73 34
	stz $68.b,X		; 74 68
	stz $9C.b,X		; 74 9C
	stz $D0.b,X		; 74 D0
	stz $04.b,X		; 74 04
	adc $38.b,X		; 75 38
	adc $6C.b,X		; 75 6C
	adc $A0.b,X		; 75 A0
	adc $D4.b,X		; 75 D4
	adc $0E.b,X		; 75 0E
	ror $40.b,X		; 76 40
	ror $7A.b,X		; 76 7A
	ror $97.b,X		; 76 97
	ror $0E.b,X		; 76 0E
	ror $D1.b,X		; 76 D1
	ror $7A.b,X		; 76 7A
	ror $0B.b,X		; 76 0B
	adc [$44.b],Y		; 77 44
	adc [$5E.b],Y		; 77 5E
	adc [$94.b],Y		; 77 94
	adc [$C5.b],Y		; 77 C5
	adc [$F6.b],Y		; 77 F6
	adc [$F6.b],Y		; 77 F6
	adc [$10.b],Y		; 77 10
	sei		; 78
	bpl 120.b		; 10 78
	rol A		; 2A
	sei		; 78
	tad		; 5B
	sei		; 78
	sty $8C78.w		; 8C 78 8C
	sei		; 78
	ldx $78.b		; A6 78
	ldx $78.b		; A6 78
	cpy #$78.b		; C0 78
	tsb $79.b		; 04 79
	pha		; 48
	adc $7993.w,Y		; 79 93 79
	sbc $FF4040.l,X		; FF 40 40 FF
	mvp $FF,$44		; 44 44 FF
	.db $42, $42		; 42 42
	sbc $FF4646.l,X		; FF 46 46 FF
	bvc  80.b		; 50 50
	sbc $FF5454.l,X		; FF 54 54 FF
	eor ($52.b)		; 52 52
	sbc $FF5656.l,X		; FF 56 56 FF
	pha		; 48
	pha		; 48
	sbc $FF4C4C.l,X		; FF 4C 4C FF
	lsr A		; 4A
	lsr A		; 4A
	sbc $FF4E4E.l,X		; FF 4E 4E FF
	eor #$49.b		; 49 49
	sbc $FF4D4D.l,X		; FF 4D 4D FF
	phk		; 4B
	phk		; 4B
	sbc $014F4F.l,X		; FF 4F 4F 01
	rol $01.b		; 26 01
	rol $05.b		; 26 05
	tad		; 5B
	ora $5C.b		; 05 5C
	ora $61.b		; 05 61
	ora $62.b		; 05 62
	ora ($67.b,X)		; 01 67
	ora ($68.b,X)		; 01 68
	ora #$69.b		; 09 69
	ora #$69.b		; 09 69
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	bmi -48.b		; 30 D0
	bmi -24.b		; 30 E8
	clc		; 18
	cli		; 58
	ora ($00.b,X)		; 01 00
	plp		; 28
	cld		; D8
	plp		; 28
	sed		; F8
	php		; 08
	phy		; 5A
	sbc $800380.l,X		; FF 80 03 80
	plx		; FA
	asl $00.b,X		; 16 00
	brk $02.b		; 00 02
	jmp.w [$00FF]		; DC FF 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	cop $DC.b		; 02 DC
	sbc $010000.l,X		; FF 00 00 01
	brk $00.b		; 00 00
	ora $E4.b,S		; 03 E4
	sbc $000000.l,X		; FF 00 00 00
	eor [$00.b]		; 47 00
	bpl   0.b		; 10 00
	brk $C8.b		; 00 C8
	sbc $000000.l,X		; FF 00 00 00
	tsb $40.b		; 04 40
	brk $D8.b		; 00 D8
	sbc $000000.l,X		; FF 00 00 00
	tsb $40.b		; 04 40
	brk $D8.b		; 00 D8
	sbc $000000.l,X		; FF 00 00 00
	brk $80.b		; 00 80
	cop $00.b		; 02 00
	sbc $1600.w,Y		; F9 00 16
	inc A		; 1A
	cop $1C.b		; 02 1C
	brk $1C.b		; 00 1C
	cpy $04.b		; C4 04
	asl A		; 0A
	brk $03.b		; 00 03
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
	jsr $0AA9.w		; 20 A9 0A
	ldy #$6BEF.w		; A0 EF 6B
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $02DF.w		; 20 DF 02
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	ldy #$6C33.w		; A0 33 6C
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0001.w		; A9 01 00
	sta $54.b,X		; 95 54
	lda #$01C0.w		; A9 C0 01
	jsr $0389.w		; 20 89 03
	jsr $0416.w		; 20 16 04
	ldy #$6BEF.w		; A0 EF 6B
	jsr $0459.w		; 20 59 04
	jsr $0307.w		; 20 07 03
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	ldy #$6C33.w		; A0 33 6C
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0002.w		; A9 02 00
	sta $54.b,X		; 95 54
	lda #$FEC0.w		; A9 C0 FE
	jsr $0389.w		; 20 89 03
	jsr $0416.w		; 20 16 04
	ldy #$6BEF.w		; A0 EF 6B
	jsr $0459.w		; 20 59 04
	jsr $0307.w		; 20 07 03
	jsr $02DF.w		; 20 DF 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	ldy #$6C33.w		; A0 33 6C
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	ldy #$6BFB.w		; A0 FB 6B
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $044B.w		; 20 4B 04
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	ldy #$6C33.w		; A0 33 6C
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	jsr $0416.w		; 20 16 04
	jsr $031F.w		; 20 1F 03
.ACCU 8
	sep #$20		; E2 20
	ldy #$6BEF.w		; A0 EF 6B
	lda $54.b,X		; B5 54
	and #$04.b		; 29 04
	bne   3.b		; D0 03
	ldy #$6BFB.w		; A0 FB 6B
	jsr $0459.w		; 20 59 04
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	ldy #$6C33.w		; A0 33 6C
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	jsr $0416.w		; 20 16 04
	jsr $03B2.w		; 20 B2 03
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  23.b		; D0 17
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	lda #$F800.w		; A9 00 F8
	sta $32.b,X		; 95 32
	lda #$0060.w		; A9 60 00
	sta $34.b,X		; 95 34
	ldy #$6C07.w		; A0 07 6C
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0009.w		; A9 09 00
	sta $54.b,X		; 95 54
	lda #$F800.w		; A9 00 F8
	sta $32.b,X		; 95 32
	lda #$0060.w		; A9 60 00
	sta $34.b,X		; 95 34
	lda #$0200.w		; A9 00 02
	jsr $0389.w		; 20 89 03
	ldy #$6C13.w		; A0 13 6C
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $54.b,X		; 95 54
	lda #$F800.w		; A9 00 F8
	sta $32.b,X		; 95 32
	lda #$0060.w		; A9 60 00
	sta $34.b,X		; 95 34
	lda #$FE00.w		; A9 00 FE
	jsr $0389.w		; 20 89 03
	ldy #$6C13.w		; A0 13 6C
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda #$0D.b		; A9 0D
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jsr $0416.w		; 20 16 04
	ldy #$6BEF.w		; A0 EF 6B
	jsr $0459.w		; 20 59 04
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	ldy #$6C33.w		; A0 33 6C
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $09.b,X		; 95 09
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	ldy #$6BEF.w		; A0 EF 6B
	jsr $0459.w		; 20 59 04
	jsr $0501.w		; 20 01 05
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	ldy #$6C33.w		; A0 33 6C
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $09.b,X		; 95 09
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	ldy #$6BFB.w		; A0 FB 6B
	jsr $0459.w		; 20 59 04
	jsr $0501.w		; 20 01 05
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	ldy #$6C33.w		; A0 33 6C
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  33.b		; D0 21
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	ldy #$79E6.w		; A0 E6 79
	jsr $113C.w		; 20 3C 11
	ldy #$79EC.w		; A0 EC 79
	jsr $113C.w		; 20 3C 11
	jsr $10B6.w		; 20 B6 10
	jsr $036E.w		; 20 6E 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	lda #$2000.w		; A9 00 20
	sta $54.b,X		; 95 54
	jsr $0153.w		; 20 53 01
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	ldy #$6C33.w		; A0 33 6C
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$4000.w		; A9 00 40
	sta $54.b,X		; 95 54
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   4.b		; D0 04
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$1000.w		; A9 00 10
	sta $54.b,X		; 95 54
	jsr $0416.w		; 20 16 04
	jsr $051A.w		; 20 1A 05
	ldy #$6BEF.w		; A0 EF 6B
	jsr $0459.w		; 20 59 04
	jsr $0536.w		; 20 36 05
	jsr $03A4.w		; 20 A4 03
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	ldy #$6C33.w		; A0 33 6C
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$1004.w		; A9 04 10
	sta $54.b,X		; 95 54
	jsr $0416.w		; 20 16 04
	jsr $0528.w		; 20 28 05
	ldy #$6BFB.w		; A0 FB 6B
	jsr $0459.w		; 20 59 04
	jsr $0536.w		; 20 36 05
	jsr $03A4.w		; 20 A4 03
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	ldy #$6C33.w		; A0 33 6C
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1000.w		; A9 00 10
	sta $54.b,X		; 95 54
	ldy #$79E0.w		; A0 E0 79
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
	jsr $09D3.w		; 20 D3 09
	jsr $09EF.w		; 20 EF 09
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1004.w		; A9 04 10
	sta $54.b,X		; 95 54
	ldy #$79E0.w		; A0 E0 79
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
	jsr $09E1.w		; 20 E1 09
	jsr $09EF.w		; 20 EF 09
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8000.w		; A9 00 80
	sta $54.b,X		; 95 54
	ldy #$79E0.w		; A0 E0 79
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $0A33.w		; 20 33 0A
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	ldy #$6C33.w		; A0 33 6C
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	stz $54.b,X		; 74 54
	jsr $0153.w		; 20 53 01
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
	ldy #$6BEF.w		; A0 EF 6B
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $02DF.w		; 20 DF 02
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	ldy #$6C33.w		; A0 33 6C
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   2.b		; D0 02
	inc $02.b,X		; F6 02
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $0A09.w		; 20 09 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8008.w		; A9 08 80
	sta $54.b,X		; 95 54
	jsr $0A09.w		; 20 09 0A
	jsr $0336.w		; 20 36 03
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	ldy #$6C33.w		; A0 33 6C
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $0A09.w		; 20 09 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8004.w		; A9 04 80
	sta $54.b,X		; 95 54
	ldy #$79E0.w		; A0 E0 79
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $0A33.w		; 20 33 0A
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	ldy #$6C33.w		; A0 33 6C
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$2D.b		; A9 2D
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $54.b,X		; 95 54
	lda #$FE00.w		; A9 00 FE
	sta $32.b,X		; 95 32
	lda #$0060.w		; A9 60 00
	sta $34.b,X		; 95 34
	lda #$FA00.w		; A9 00 FA
	jsr $0389.w		; 20 89 03
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	jsr $0AB9.w		; 20 B9 0A
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  12.b		; D0 0C
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
	rep #$20		; C2 20
	stz $30.b,X		; 74 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	stz $54.b,X		; 74 54
	jsr $0153.w		; 20 53 01
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	ldy #$79E6.w		; A0 E6 79
	jsr $113C.w		; 20 3C 11
	ldy #$79EC.w		; A0 EC 79
	jsr $113C.w		; 20 3C 11
.ACCU 8
	sep #$20		; E2 20
	lda #$29.b		; A9 29
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  22.b		; D0 16
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$FA00.w		; A9 00 FA
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	lda #$FE80.w		; A9 80 FE
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$28.b		; A9 28
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$02.b		; A9 02
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0010.w		; A9 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2041.w		; A9 41 20
	phx		; DA
	tsb $A0.b		; 04 A0
	ora $52206C.l,X		; 1F 6C 20 52
	ora #$BB22.w		; 09 22 BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
	ldy #$6BEF.w		; A0 EF 6B
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$28.b		; A9 28
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0040.w		; A9 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2043.w		; A9 43 20
	phx		; DA
	tsb $A0.b		; 04 A0
	ora $52206C.l,X		; 1F 6C 20 52
	ora #$BB22.w		; 09 22 BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0020.w		; A9 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2045.w		; A9 45 20
	phx		; DA
	tsb $A0.b		; 04 A0
	ora $52206C.l,X		; 1F 6C 20 52
	ora #$BB22.w		; 09 22 BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0080.w		; A9 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2047.w		; A9 47 20
	phx		; DA
	tsb $A0.b		; 04 A0
	ora $52206C.l,X		; 1F 6C 20 52
	ora #$BB22.w		; 09 22 BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0010.w		; 09 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0010.w		; 09 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$09.b		; A9 09
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$28.b		; A9 28
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0040.w		; 09 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$28.b		; A9 28
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0040.w		; 09 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0020.w		; 09 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0020.w		; 09 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$07.b		; A9 07
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0080.w		; 09 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0080.w		; 09 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$02.b		; A9 02
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0014.w		; A9 14 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2051.w		; A9 51 20
	phx		; DA
	tsb $A0.b		; 04 A0
	ora $52206C.l,X		; 1F 6C 20 52
	ora #$BB22.w		; 09 22 BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
	ldy #$6BFB.w		; A0 FB 6B
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jsr $044B.w		; 20 4B 04
	jsr $03A4.w		; 20 A4 03
	ldy #$6C1F.w		; A0 1F 6C
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$28.b		; A9 28
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0044.w		; A9 44 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2053.w		; A9 53 20
	phx		; DA
	tsb $A0.b		; 04 A0
	ora $52206C.l,X		; 1F 6C 20 52
	ora #$BB22.w		; 09 22 BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0024.w		; A9 24 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2055.w		; A9 55 20
	phx		; DA
	tsb $A0.b		; 04 A0
	ora $52206C.l,X		; 1F 6C 20 52
	ora #$BB22.w		; 09 22 BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$07.b		; A9 07
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$0A.b		; A9 0A
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0084.w		; A9 84 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2057.w		; A9 57 20
	phx		; DA
	tsb $A0.b		; 04 A0
	ora $52206C.l,X		; 1F 6C 20 52
	ora #$BB22.w		; 09 22 BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  31.b		; D0 1F
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	sta $0009.w,Y		; 99 09 00
	stz $56.b,X		; 74 56
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$59.b		; A9 59
	jsr $04DA.w		; 20 DA 04
	ldy #$6C53.w		; A0 53 6C
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  35.b		; D0 23
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $0009.w,Y		; 99 09 00
	lda #$05.b		; A9 05
	sta $56.b,X		; 95 56
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	stz $54.b,X		; 74 54
	ldy #$6C8B.w		; A0 8B 6C
	jsr $0C0F.w		; 20 0F 0C
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$46.b		; A9 46
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0200.w		; A9 00 02
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$5D.b		; A9 5D
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$79BD.w		; A0 BD 79
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$46.b		; A9 46
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0300.w		; A9 00 03
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$5E.b		; A9 5E
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$79C4.w		; A0 C4 79
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  19.b		; D0 13
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$47.b		; A9 47
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0400.w		; A9 00 04
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$63.b		; A9 63
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$79CB.w		; A0 CB 79
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  19.b		; D0 13
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$47.b		; A9 47
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0500.w		; A9 00 05
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$64.b		; A9 64
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$79D2.w		; A0 D2 79
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  36.b		; D0 24
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $45.b,X		; 95 45
	lda #$08.b		; A9 08
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$29.b		; A9 29
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$47.b		; A9 47
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0600.w		; A9 00 06
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	rts		; 60

	lda #$2000.w		; A9 00 20
	phx		; DA
	tsb $22.b		; 04 22
	tyx		; BB
	lda $20E280.l,X		; BF 80 E2 20
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	bne   2.b		; D0 02
	stz $43.b,X		; 74 43
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  36.b		; D0 24
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
	lda #$08.b		; A9 08
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$29.b		; A9 29
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$47.b		; A9 47
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0700.w		; A9 00 07
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	rts		; 60

	lda #$2000.w		; A9 00 20
	phx		; DA
	tsb $22.b		; 04 22
	tyx		; BB
	lda $20E280.l,X		; BF 80 E2 20
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	bne   2.b		; D0 02
	stz $43.b,X		; 74 43
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  37.b		; D0 25
	stz $43.b,X		; 74 43
	lda #$30.b		; A9 30
	sta $45.b,X		; 95 45
	lda #$12.b		; A9 12
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda #$29.b		; A9 29
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$47.b		; A9 47
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0C00.w		; A9 00 0C
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$6A.b		; A9 6A
	jsr $04DA.w		; 20 DA 04
	jsl $80BFBB.l		; 22 BB BF 80
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$79D9.w		; A0 D9 79
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   2.b		; D0 02
	inc $02.b,X		; F6 02
	lda #$04.b		; A9 04
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	bne  10.b		; D0 0A
	lda $07.b,X		; B5 07
	cmp #$04.b		; C9 04
	bne   4.b		; D0 04
	lda #$48.b		; A9 48
	sta $78.b,X		; 95 78
	rts		; 60

	rts		; 60

	trb $00.b		; 14 00
	trb $BC00.w		; 1C 00 BC
	sbc $01145F.l,X		; FF 5F 14 01
	trb $BC00.w		; 1C 00 BC
	sbc $001560.l,X		; FF 60 15 00
	jsr $0000.w		; 20 00 00
	brk $65.b		; 00 65
	ora $01.b,X		; 15 01
	rti		; 40

	brk $00.b		; 00 00
	brk $66.b		; 00 66
	asl $00.b,X		; 16 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($F8.b)		; 32 F8
	sed		; F8
	sbc $330000.l,X		; FF 00 00 33
	brk $F0.b		; 00 F0
	sbc $330000.l,X		; FF 00 00 33
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $C2.b		; 00 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($7A01.w,X)		; 7C 01 7A
	and ($7D.b,X)		; 21 7D
	eor $7D9F7D.l,X		; 5F 7D 9F 7D
	cmp $7E177D.l,X		; DF 7D 17 7E
	eor $7E.b,X		; 55 7E
	adc $A67E.w,Y		; 79 7E A6
	ror $7ED9.w,X		; 7E D9 7E
	tsb $4C7F.w		; 0C 7F 4C
	adc $6C7F83.l,X		; 7F 83 7F 6C
	bra -92.b		; 80 A4
	bra -36.b		; 80 DC
	bra  13.b		; 80 0D
	sta ($3E.b,X)		; 81 3E
	sta ($3E.b,X)		; 81 3E
	sta ($3E.b,X)		; 81 3E
	sta ($3E.b,X)		; 81 3E
	sta ($54.b,X)		; 81 54
	.db $82, $54, $82		; 82 54 82
	php		; 08
	.db $82, $F0, $81		; 82 F0 81
	beq -127.b		; F0 81
	beq -127.b		; F0 81
	bit $3C82.w,X		; 3C 82 3C
	.db $82, $44, $80		; 82 44 80
	lda $D27F.w,X		; BD 7F D2
	adc $038182.l,X		; 7F 82 81 03
	bra -95.b		; 80 A1
	sta ($DC.b,X)		; 81 DC
	sta ($58.b,X)		; 81 58
	bra  84.b		; 80 54
	sta $8D69.w		; 8D 69 8D
	tya		; 98
	.db $82, $37, $83		; 82 37 83
	ora $83.b		; 05 83
	sbc $82.b,S		; E3 82
	cmp $82.b		; C5 82
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $839B83.l,X		; 5F 83 9B 83
	cmp [$83.b],Y		; D7 83
	asl $84.b		; 06 84
	.db $42, $84		; 42 84
	jmp $844284.l		; 5C 84 42 84
	tya		; 98
	sty $D7.b		; 84 D7
	sta $D4.b,S		; 83 D4
	sty $42.b		; 84 42
	sty $10.b		; 84 10
	sta $78.b		; 85 78
	sta $E0.b		; 85 E0
	sta $48.b		; 85 48
	stx $44.b		; 86 44
	sta $AC.b		; 85 AC
	sta $14.b		; 85 14
	stx $7C.b		; 86 7C
	stx $B0.b		; 86 B0
	stx $EA.b		; 86 EA
	stx $1C.b		; 86 1C
	sta [$56.b]		; 87 56
	sta [$73.b]		; 87 73
	sta [$EA.b]		; 87 EA
	stx $AD.b		; 86 AD
	sta [$56.b]		; 87 56
	sta [$FC.b]		; 87 FC
	sta [$35.b]		; 87 35
	dey		; 88
	cli		; 58
	dey		; 88
	jmp ($A488.w)		; 6C 88 A4
	dey		; 88
	iny		; C8
	dey		; 88
	sbc $88.b,X		; F5 88
	rol $89.b		; 26 89
	eor [$89.b],Y		; 57 89
	eor [$89.b],Y		; 57 89
	stz $89.b,X		; 74 89
	stz $89.b,X		; 74 89
	sta ($89.b),Y		; 91 89
	cmp ($89.b,S),Y		; D3 89
	lsr $8A.b,X		; 56 8A
	bit #$8A.b		; 89 8A
	sbc $8B218A.l		; EF 8A 21 8B
	sta $8B.b		; 85 8B
	lda $8C038B.l		; AF 8B 03 8C
	rol $848C.w		; 2E 8C 84
	sty $8CAA.w		; 8C AA 8C
	plx		; FA
	sty $8D22.w		; 8C 22 8D
	ora $8A.b,X		; 15 8A
	ldy $538A.w,X		; BC 8A 53
	phb		; 8B
	cmp $598B.w,Y		; D9 8B 59
	sty $4024.w		; 8C 24 40
	eor ($FF.b,X)		; 41 FF
	eor [$47.b]		; 47 47
	bit $43.b		; 24 43
	eor $FF.b		; 45 FF
	eor #$49.b		; 49 49
	sbc $FF5353.l,X		; FF 53 53 FF
	eor [$57.b],Y		; 57 57
	sbc $FF5555.l,X		; FF 55 55 FF
	eor $FF59.w,Y		; 59 59 FF
	phk		; 4B
	phk		; 4B
	sbc $FF4D4D.l,X		; FF 4D 4D FF
	jmp $FF4C.w		; 4C 4C FF
	lsr $FF4E.w		; 4E 4E FF
	eor $51FF4F.l		; 4F 4F FF 51
	eor ($FF.b),Y		; 51 FF
	bvc  80.b		; 50 50
	sbc $015252.l,X		; FF 52 52 01
	rol $01.b		; 26 01
	rol $01.b		; 26 01
	rts		; 60

	ora ($60.b,X)		; 01 60
	ora $61.b		; 05 61
	ora $62.b		; 05 62
	ora #$72.b		; 09 72
	ora #$72.b		; 09 72
	ora ($67.b,X)		; 01 67
	ora ($68.b,X)		; 01 68
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	plp		; 28
	cld		; D8
	plp		; 28
	bne  48.b		; D0 30
	tad		; 5B
	ora ($00.b,X)		; 01 00
	bmi -48.b		; 30 D0
	bmi  -8.b		; 30 F8
	php		; 08
	lsr $0000.w,X		; 5E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $F0.b		; 02 F0
	sbc $010000.l,X		; FF 00 00 01
	brk $00.b		; 00 00
	ora $FC.b,S		; 03 FC
	sbc $01FFE8.l,X		; FF E8 FF 01
	jmp $1100.w		; 4C 00 11
	clc		; 18
	brk $D8.b		; 00 D8
	sbc $000001.l,X		; FF 01 00 00
	ora ($18.b),Y		; 11 18
	brk $D8.b		; 00 D8
	sbc $000000.l,X		; FF 00 00 00
	sbc $800180.l,X		; FF 80 01 80
	plx		; FA
	clc		; 18
	brk $00.b		; 00 00
	asl $50.b		; 06 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $800280.l,X		; 5F 80 02 80
	sed		; F8
	brk $1B.b		; 00 1B
	tas		; 1B
	cop $18.b		; 02 18
	brk $20.b		; 00 20
	jmp.w [$0A06]		; DC 06 0A
	brk $02.b		; 00 02
	trb $E8.b		; 14 E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	jsr $30E0.w		; 20 E0 30
	pei ($10.b)		; D4 10
	asl A		; 0A
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
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
	brk $08.b		; 00 08
	brk $F0.b		; 00 F0
	sbc $000000.l,X		; FF 00 00 00
	ora $08.b,S		; 03 08
	brk $F0.b		; 00 F0
	sbc $000000.l,X		; FF 00 00 00
	ora ($00.b,S),Y		; 13 00
	brk $C0.b		; 00 C0
	sbc $000000.l,X		; FF 00 00 00
	ora ($00.b,S),Y		; 13 00
	brk $C0.b		; 00 C0
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $800200.l,X		; FF 00 02 80
	plx		; FA
	clc		; 18
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $800200.l,X		; FF 00 02 80
	plx		; FA
	jsr $0000.w		; 20 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $800200.l,X		; FF 00 02 80
	plx		; FA
	jsr $0000.w		; 20 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	cop $01.b		; 02 01
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	cop $01.b		; 02 01
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $011800.l,X		; FF 00 18 01
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	clc		; 18
	ora ($01.b,X)		; 01 01
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	cop $01.b		; 02 01
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	cop $01.b		; 02 01
	asl A		; 0A
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	ora ($01.b,X)		; 01 01
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	ora ($01.b,X)		; 01 01
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	ora ($01.b,X)		; 01 01
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $021800.l,X		; FF 00 18 02
	ora ($0A.b,X)		; 01 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	cop $01.b		; 02 01
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	ora ($01.b,X)		; 01 01
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	ora ($01.b,X)		; 01 01
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	cop $01.b		; 02 01
	asl A		; 0A
	clc		; 18
	cop $01.b		; 02 01
	asl A		; 0A
	clc		; 18
	php		; 08
	ora ($0A.b,X)		; 01 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
	jsr $0AA9.w		; 20 A9 0A
	ldy #$7AF5.w		; A0 F5 7A
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $02DF.w		; 20 DF 02
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$7B25.w		; A0 25 7B
	jsr $0958.w		; 20 58 09
	ldy #$7B39.w		; A0 39 7B
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0001.w		; A9 01 00
	sta $54.b,X		; 95 54
	lda #$0260.w		; A9 60 02
	jsr $0389.w		; 20 89 03
	jsr $0416.w		; 20 16 04
	ldy #$7AF5.w		; A0 F5 7A
	jsr $0459.w		; 20 59 04
	jsr $0307.w		; 20 07 03
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$7B25.w		; A0 25 7B
	jsr $0958.w		; 20 58 09
	ldy #$7B39.w		; A0 39 7B
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0002.w		; A9 02 00
	sta $54.b,X		; 95 54
	lda #$FE20.w		; A9 20 FE
	jsr $0389.w		; 20 89 03
	jsr $0416.w		; 20 16 04
	ldy #$7AF5.w		; A0 F5 7A
	jsr $0459.w		; 20 59 04
	jsr $0307.w		; 20 07 03
	jsr $02DF.w		; 20 DF 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$7B25.w		; A0 25 7B
	jsr $0958.w		; 20 58 09
	ldy #$7B39.w		; A0 39 7B
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	ldy #$7B01.w		; A0 01 7B
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $044B.w		; 20 4B 04
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$7B25.w		; A0 25 7B
	jsr $0958.w		; 20 58 09
	ldy #$7B39.w		; A0 39 7B
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	jsr $0416.w		; 20 16 04
	jsr $031F.w		; 20 1F 03
.ACCU 8
	sep #$20		; E2 20
	ldy #$7AF5.w		; A0 F5 7A
	lda $54.b,X		; B5 54
	and #$04.b		; 29 04
	bne   3.b		; D0 03
	ldy #$7B01.w		; A0 01 7B
	jsr $0459.w		; 20 59 04
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$7B25.w		; A0 25 7B
	jsr $0958.w		; 20 58 09
	ldy #$7B39.w		; A0 39 7B
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	jsr $0416.w		; 20 16 04
	jsr $03B2.w		; 20 B2 03
	ldy #$7B25.w		; A0 25 7B
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  23.b		; D0 17
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	lda #$F600.w		; A9 00 F6
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	ldy #$7B0D.w		; A0 0D 7B
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0009.w		; A9 09 00
	sta $54.b,X		; 95 54
	lda #$F600.w		; A9 00 F6
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	lda #$01E0.w		; A9 E0 01
	jsr $0389.w		; 20 89 03
	ldy #$7B19.w		; A0 19 7B
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $54.b,X		; 95 54
	lda #$F600.w		; A9 00 F6
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	lda #$FE20.w		; A9 20 FE
	jsr $0389.w		; 20 89 03
	ldy #$7B19.w		; A0 19 7B
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda #$0D.b		; A9 0D
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jsr $0416.w		; 20 16 04
	ldy #$7AF5.w		; A0 F5 7A
	jsr $0459.w		; 20 59 04
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$7B25.w		; A0 25 7B
	jsr $0958.w		; 20 58 09
	ldy #$7B39.w		; A0 39 7B
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $09.b,X		; 95 09
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	ldy #$7AF5.w		; A0 F5 7A
	jsr $0459.w		; 20 59 04
	jsr $0501.w		; 20 01 05
	ldy #$7B25.w		; A0 25 7B
	jsr $0958.w		; 20 58 09
	ldy #$7B39.w		; A0 39 7B
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $09.b,X		; 95 09
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	ldy #$7B01.w		; A0 01 7B
	jsr $0459.w		; 20 59 04
	jsr $0501.w		; 20 01 05
	ldy #$7B25.w		; A0 25 7B
	jsr $0958.w		; 20 58 09
	ldy #$7B39.w		; A0 39 7B
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  33.b		; D0 21
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	ldy #$8D8A.w		; A0 8A 8D
	jsr $113C.w		; 20 3C 11
	ldy #$8D90.w		; A0 90 8D
	jsr $113C.w		; 20 3C 11
	jsr $10B6.w		; 20 B6 10
	jsr $036E.w		; 20 6E 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	lda #$2000.w		; A9 00 20
	sta $54.b,X		; 95 54
	jsr $0153.w		; 20 53 01
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$7B25.w		; A0 25 7B
	jsr $0958.w		; 20 58 09
	ldy #$7B39.w		; A0 39 7B
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$4000.w		; A9 00 40
	sta $54.b,X		; 95 54
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   4.b		; D0 04
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$1000.w		; A9 00 10
	sta $54.b,X		; 95 54
	jsr $0416.w		; 20 16 04
	jsr $051A.w		; 20 1A 05
	ldy #$7AF5.w		; A0 F5 7A
	jsr $0459.w		; 20 59 04
	jsr $0536.w		; 20 36 05
	jsr $03A4.w		; 20 A4 03
	ldy #$7B25.w		; A0 25 7B
	jsr $0958.w		; 20 58 09
	ldy #$7B39.w		; A0 39 7B
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$1004.w		; A9 04 10
	sta $54.b,X		; 95 54
	jsr $0416.w		; 20 16 04
	jsr $0528.w		; 20 28 05
	ldy #$7B01.w		; A0 01 7B
	jsr $0459.w		; 20 59 04
	jsr $0536.w		; 20 36 05
	jsr $03A4.w		; 20 A4 03
	ldy #$7B25.w		; A0 25 7B
	jsr $0958.w		; 20 58 09
	ldy #$7B39.w		; A0 39 7B
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1000.w		; A9 00 10
	sta $54.b,X		; 95 54
	ldy #$8D84.w		; A0 84 8D
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
	jsr $09D3.w		; 20 D3 09
	jsr $09EF.w		; 20 EF 09
	ldy #$7B25.w		; A0 25 7B
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1004.w		; A9 04 10
	sta $54.b,X		; 95 54
	ldy #$8D84.w		; A0 84 8D
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
	jsr $09E1.w		; 20 E1 09
	jsr $09EF.w		; 20 EF 09
	ldy #$7B25.w		; A0 25 7B
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8000.w		; A9 00 80
	sta $54.b,X		; 95 54
	ldy #$8D84.w		; A0 84 8D
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $0A33.w		; 20 33 0A
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$7B25.w		; A0 25 7B
	jsr $0958.w		; 20 58 09
	ldy #$7B39.w		; A0 39 7B
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	stz $54.b,X		; 74 54
	jsr $0153.w		; 20 53 01
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
	ldy #$7AF5.w		; A0 F5 7A
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $02DF.w		; 20 DF 02
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$7B25.w		; A0 25 7B
	jsr $0958.w		; 20 58 09
	ldy #$7B39.w		; A0 39 7B
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   2.b		; D0 02
	inc $02.b,X		; F6 02
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $0A09.w		; 20 09 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8008.w		; A9 08 80
	sta $54.b,X		; 95 54
	jsr $0A09.w		; 20 09 0A
	jsr $0336.w		; 20 36 03
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$7B25.w		; A0 25 7B
	jsr $0958.w		; 20 58 09
	ldy #$7B39.w		; A0 39 7B
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $0A09.w		; 20 09 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8004.w		; A9 04 80
	sta $54.b,X		; 95 54
	ldy #$8D84.w		; A0 84 8D
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $0A33.w		; 20 33 0A
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$7B25.w		; A0 25 7B
	jsr $0958.w		; 20 58 09
	ldy #$7B39.w		; A0 39 7B
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$2D.b		; A9 2D
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $54.b,X		; 95 54
	lda #$FEC0.w		; A9 C0 FE
	sta $32.b,X		; 95 32
	lda #$0040.w		; A9 40 00
	sta $34.b,X		; 95 34
	lda #$F500.w		; A9 00 F5
	jsr $0389.w		; 20 89 03
	jsr $0AB9.w		; 20 B9 0A
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  12.b		; D0 0C
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
	rep #$20		; C2 20
	stz $30.b,X		; 74 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	stz $54.b,X		; 74 54
	jsr $0153.w		; 20 53 01
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	ldy #$8D8A.w		; A0 8A 8D
	jsr $113C.w		; 20 3C 11
	ldy #$8D90.w		; A0 90 8D
	jsr $113C.w		; 20 3C 11
.ACCU 8
	sep #$20		; E2 20
	lda #$29.b		; A9 29
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  22.b		; D0 16
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$FA00.w		; A9 00 FA
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	lda #$FE80.w		; A9 80 FE
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$28.b		; A9 28
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$02.b		; A9 02
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0010.w		; A9 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2042.w		; A9 42 20
	phx		; DA
	tsb $A0.b		; 04 A0
	and $7B.b		; 25 7B
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0010.w		; A9 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2042.w		; A9 42 20
	phx		; DA
	tsb $A0.b		; 04 A0
	and $7B.b		; 25 7B
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
	ldy #$7AF5.w		; A0 F5 7A
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	ldy #$7B25.w		; A0 25 7B
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0040.w		; A9 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2044.w		; A9 44 20
	phx		; DA
	tsb $A0.b		; 04 A0
	and $7B.b		; 25 7B
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$09.b		; A9 09
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0040.w		; A9 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2046.w		; A9 46 20
	phx		; DA
	tsb $A0.b		; 04 A0
	and $7B.b		; 25 7B
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0020.w		; A9 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2048.w		; A9 48 20
	phx		; DA
	tsb $A0.b		; 04 A0
	and $7B.b		; 25 7B
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$0B.b		; A9 0B
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0080.w		; A9 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$204A.w		; A9 4A 20
	phx		; DA
	tsb $A0.b		; 04 A0
	and $7B.b		; 25 7B
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0010.w		; 09 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0010.w		; 09 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$06.b		; A9 06
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0040.w		; 09 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$07.b		; A9 07
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0040.w		; 09 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$05.b		; A9 05
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0020.w		; 09 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$05.b		; A9 05
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0020.w		; 09 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0080.w		; 09 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$0B.b		; A9 0B
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0080.w		; 09 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0014.w		; A9 14 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2054.w		; A9 54 20
	phx		; DA
	tsb $A0.b		; 04 A0
	and $7B.b		; 25 7B
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
	ldy #$7B01.w		; A0 01 7B
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jsr $044B.w		; 20 4B 04
	jsr $03A4.w		; 20 A4 03
	ldy #$7B25.w		; A0 25 7B
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$07.b		; A9 07
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0044.w		; A9 44 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2056.w		; A9 56 20
	phx		; DA
	tsb $A0.b		; 04 A0
	and $7B.b		; 25 7B
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0024.w		; A9 24 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2058.w		; A9 58 20
	phx		; DA
	tsb $A0.b		; 04 A0
	and $7B.b		; 25 7B
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  46.b		; D0 2E
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$0A.b		; A9 0A
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0084.w		; A9 84 00
	sta $54.b,X		; 95 54
	lda #$0020.w		; A9 20 00
	sta $3A.b,X		; 95 3A
	lda #$0480.w		; A9 80 04
	jsr $0389.w		; 20 89 03
	ldy #$8D96.w		; A0 96 8D
	jmp $113C.w		; 4C 3C 11
	jsr $0153.w		; 20 53 01
.ACCU 8
	sep #$20		; E2 20
	lda #$5A.b		; A9 5A
	jsr $0A33.w		; 20 33 0A
	ldy #$7B25.w		; A0 25 7B
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  31.b		; D0 1F
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	sta $0009.w,Y		; 99 09 00
	stz $56.b,X		; 74 56
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$5C.b		; A9 5C
	jsr $04DA.w		; 20 DA 04
	ldy #$7B59.w		; A0 59 7B
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
	lda #$1E.b		; A9 1E
	sta $0A70.w		; 8D 70 0A
	lda #$18.b		; A9 18
	sta $78.b		; 85 78
	lda #$5D.b		; A9 5D
	jsr $04DA.w		; 20 DA 04
	ldy #$7B81.w		; A0 81 7B
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   2.b		; D0 02
	inc $02.b,X		; F6 02
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  37.b		; D0 25
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $0009.w,Y		; 99 09 00
	lda #$01.b		; A9 01
	sta $56.b,X		; 95 56
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	stz $34.b,X		; 74 34
	stz $54.b,X		; 74 54
	ldy #$7B91.w		; A0 91 7B
	jsr $0C0F.w		; 20 0F 0C
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  20.b		; D0 14
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$F900.w		; A9 00 F9
	sta $32.b,X		; 95 32
	lda #$0060.w		; A9 60 00
	sta $34.b,X		; 95 34
	lda #$FF20.w		; A9 20 FF
	jsr $0389.w		; 20 89 03
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$2D.b		; A9 2D
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0009.w		; A9 09 00
	sta $54.b,X		; 95 54
	lda #$FEC0.w		; A9 C0 FE
	sta $32.b,X		; 95 32
	lda #$0040.w		; A9 40 00
	sta $34.b,X		; 95 34
	lda #$0B00.w		; A9 00 0B
	jsr $0389.w		; 20 89 03
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$4B.b		; A9 4B
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0200.w		; A9 00 02
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$63.b		; A9 63
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$8D6A.w		; A0 6A 8D
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$4B.b		; A9 4B
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0300.w		; A9 00 03
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$64.b		; A9 64
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$8D71.w		; A0 71 8D
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  46.b		; D0 2E
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0400.w		; A9 00 04
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	sta $01.b		; 85 01
	lda #$38.b		; A9 38
	sta $02.b		; 85 02
	lda #$C8.b		; A9 C8
	sta $03.b		; 85 03
	lda #$38.b		; A9 38
	sta $04.b		; 85 04
	lda #$E8.b		; A9 E8
	sta $05.b		; 85 05
	lda #$18.b		; A9 18
	sta $06.b		; 85 06
	lda #$69.b		; A9 69
	sta $07.b		; 85 07
	jsr $10CD.w		; 20 CD 10
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  46.b		; D0 2E
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0500.w		; A9 00 05
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	sta $01.b		; 85 01
	lda #$30.b		; A9 30
	sta $02.b		; 85 02
	lda #$D0.b		; A9 D0
	sta $03.b		; 85 03
	lda #$30.b		; A9 30
	sta $04.b		; 85 04
	lda #$F0.b		; A9 F0
	sta $05.b		; 85 05
	lda #$10.b		; A9 10
	sta $06.b		; 85 06
	lda #$6A.b		; A9 6A
	sta $07.b		; 85 07
	jsr $10CD.w		; 20 CD 10
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	stz $43.b,X		; 74 43
	lda #$01.b		; A9 01
	sta $45.b,X		; 95 45
	lda #$18.b		; A9 18
	sta $44.b,X		; 95 44
	lda #$2D.b		; A9 2D
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0C00.w		; A9 00 0C
	jmp $0389.w		; 4C 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jsl $80BFBB.l		; 22 BB BF 80
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda #$76.b		; A9 76
	jsr $1190.w		; 20 90 11
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  27.b		; D0 1B
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	stz $56.b,X		; 74 56
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $0009.w,Y		; 99 09 00
	lda #$6B.b		; A9 6B
	jsr $04DA.w		; 20 DA 04
	ldy #$7BB1.w		; A0 B1 7B
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  27.b		; D0 1B
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	stz $56.b,X		; 74 56
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $0009.w,Y		; 99 09 00
	lda #$6C.b		; A9 6C
	jsr $04DA.w		; 20 DA 04
	ldy #$7BB1.w		; A0 B1 7B
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  27.b		; D0 1B
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	stz $56.b,X		; 74 56
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $0009.w,Y		; 99 09 00
	lda #$77.b		; A9 77
	jsr $04DA.w		; 20 DA 04
	ldy #$7BB1.w		; A0 B1 7B
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  26.b		; D0 1A
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$F700.w		; A9 00 F7
	sta $32.b,X		; 95 32
	lda #$0060.w		; A9 60 00
	sta $34.b,X		; 95 34
	lda #$FF00.w		; A9 00 FF
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$6D.b		; A9 6D
	jsr $04DA.w		; 20 DA 04
	ldy #$7BC9.w		; A0 C9 7B
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  26.b		; D0 1A
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$F000.w		; A9 00 F0
	sta $32.b,X		; 95 32
	lda #$0040.w		; A9 40 00
	sta $34.b,X		; 95 34
	lda #$FF00.w		; A9 00 FF
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$6E.b		; A9 6E
	jsr $04DA.w		; 20 DA 04
	ldy #$7BC9.w		; A0 C9 7B
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  26.b		; D0 1A
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$F000.w		; A9 00 F0
	sta $32.b,X		; 95 32
	lda #$0040.w		; A9 40 00
	sta $34.b,X		; 95 34
	lda #$FE80.w		; A9 80 FE
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$78.b		; A9 78
	jsr $04DA.w		; 20 DA 04
	ldy #$7BC9.w		; A0 C9 7B
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0800.w		; A9 00 08
	sta $32.b,X		; 95 32
	lda #$0060.w		; A9 60 00
	sta $34.b,X		; 95 34
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$6F.b		; A9 6F
	jsr $0348.w		; 20 48 03
	ldy #$7BF1.w		; A0 F1 7B
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1000.w		; A9 00 10
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$70.b		; A9 70
	jsr $0348.w		; 20 48 03
	ldy #$7BF1.w		; A0 F1 7B
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1000.w		; A9 00 10
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$79.b		; A9 79
	jsr $0348.w		; 20 48 03
	ldy #$7BF1.w		; A0 F1 7B
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  19.b		; D0 13
	inc $02.b,X		; F6 02
	lda #$1E.b		; A9 1E
	sta $0A70.w		; 8D 70 0A
	lda #$18.b		; A9 18
	sta $78.b		; 85 78
	ldy #$8D7E.w		; A0 7E 8D
	jsr $113C.w		; 20 3C 11
.ACCU 8
	sep #$20		; E2 20
	lda #$71.b		; A9 71
	jsr $04DA.w		; 20 DA 04
	ldy #$7C19.w		; A0 19 7C
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  19.b		; D0 13
	inc $02.b,X		; F6 02
	lda #$1E.b		; A9 1E
	sta $0A70.w		; 8D 70 0A
	lda #$18.b		; A9 18
	sta $78.b		; 85 78
	ldy #$8D7E.w		; A0 7E 8D
	jsr $113C.w		; 20 3C 11
.ACCU 8
	sep #$20		; E2 20
	lda #$71.b		; A9 71
	jsr $04DA.w		; 20 DA 04
	ldy #$7C29.w		; A0 29 7C
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  19.b		; D0 13
	inc $02.b,X		; F6 02
	lda #$1E.b		; A9 1E
	sta $0A70.w		; 8D 70 0A
	lda #$18.b		; A9 18
	sta $78.b		; 85 78
	ldy #$8D7E.w		; A0 7E 8D
	jsr $113C.w		; 20 3C 11
.ACCU 8
	sep #$20		; E2 20
	lda #$71.b		; A9 71
	jsr $04DA.w		; 20 DA 04
	ldy #$7C39.w		; A0 39 7C
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  22.b		; D0 16
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$F800.w		; A9 00 F8
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	lda #$FE00.w		; A9 00 FE
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  41.b		; D0 29
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	stz $43.b,X		; 74 43
	lda #$01.b		; A9 01
	sta $45.b,X		; 95 45
	lda #$18.b		; A9 18
	sta $44.b,X		; 95 44
	lda #$2D.b		; A9 2D
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0C00.w		; A9 00 0C
	sta $54.b,X		; 95 54
	lda #$0A00.w		; A9 00 0A
	jsr $0389.w		; 20 89 03
	ldy #$8D9C.w		; A0 9C 8D
	jmp $113C.w		; 4C 3C 11
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jsl $80BFBB.l		; 22 BB BF 80
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $43.b,X		; B5 43
	beq   5.b		; F0 05
	lda #$73.b		; A9 73
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$03B0.w		; A9 B0 03
	jsr $0389.w		; 20 89 03
	ldy #$7C49.w		; A0 49 7C
	jsr $0B05.w		; 20 05 0B
.ACCU 8
	sep #$20		; E2 20
	lda #$74.b		; A9 74
	jsr $04DA.w		; 20 DA 04
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  20.b		; D0 14
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$F700.w		; A9 00 F7
	sta $32.b,X		; 95 32
	lda #$00C0.w		; A9 C0 00
	sta $34.b,X		; 95 34
	lda #$FE00.w		; A9 00 FE
	jsr $0389.w		; 20 89 03
	ldy #$7D01.w		; A0 01 7D
	jsr $0B05.w		; 20 05 0B
.ACCU 8
	sep #$20		; E2 20
	lda #$75.b		; A9 75
	jsr $0348.w		; 20 48 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	bne  10.b		; D0 0A
	lda $07.b,X		; B5 07
	cmp #$08.b		; C9 08
	bne   4.b		; D0 04
	lda #$4D.b		; A9 4D
	sta $78.b,X		; 95 78
	rts		; 60

	rts		; 60

	ora [$00.b],Y		; 17 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $17.b		; 65 17
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $66.b		; 00 66
	and ($00.b),Y		; 31 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($00.b),Y		; 31 00
	sed		; F8
	sbc $320000.l,X		; FF 00 00 32
	sed		; F8
	sed		; F8
	sbc $330000.l,X		; FF 00 00 33
	brk $F0.b		; 00 F0
	sbc $330000.l,X		; FF 00 00 33
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $32.b		; 00 32
	cpx $FFEC.w		; EC EC FF
	brk $00.b		; 00 00
	and ($EC.b)		; 32 EC
	cpx $00FF.w		; EC FF 00
	brk $C2.b		; 00 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($8DB1.w,X)		; 7C B1 8D
	adc ($8F.b,X)		; 61 8F
	sta $8FDF8F.l,X		; 9F 8F DF 8F
	ora $905790.l,X		; 1F 90 57 90
	sta $90.b,X		; 95 90
	lda $EC90.w,Y		; B9 90 EC
	bcc  37.b		; 90 25
	sta ($5E.b),Y		; 91 5E
	sta ($9E.b),Y		; 91 9E
	sta ($D5.b),Y		; 91 D5
	sta ($BE.b),Y		; 91 BE
	sta ($F6.b)		; 92 F6
	sta ($2E.b)		; 92 2E
	sta ($5F.b,S),Y		; 93 5F
	sta ($90.b,S),Y		; 93 90
	sta ($90.b,S),Y		; 93 90
	sta ($90.b,S),Y		; 93 90
	sta ($90.b,S),Y		; 93 90
	sta ($A6.b,S),Y		; 93 A6
	sty $A6.b,X		; 94 A6
	sty $5A.b,X		; 94 5A
	sty $42.b,X		; 94 42
	sty $42.b,X		; 94 42
	sty $42.b,X		; 94 42
	sty $8E.b,X		; 94 8E
	sty $8E.b,X		; 94 8E
	sty $96.b,X		; 94 96
	sta ($0F.b)		; 92 0F
	sta ($24.b)		; 92 24
	sta ($D4.b)		; 92 D4
	sta ($55.b,S),Y		; 93 55
	sta ($F3.b)		; 92 F3
	sta ($2E.b,S),Y		; 93 2E
	sty $AA.b,X		; 94 AA
	sta ($CE.b)		; 92 CE
	sta $9DE3.w,X		; 9D E3 9D
	nop		; EA
	sty $8B.b,X		; 94 8B
	sta $59.b,X		; 95 59
	sta $37.b,X		; 95 37
	sta $17.b,X		; 95 17
	sta $00.b,X		; 95 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B3.b		; 00 B3
	sta $EF.b,X		; 95 EF
	sta $1E.b,X		; 95 1E
	stx $5A.b,Y		; 96 5A
	stx $74.b,Y		; 96 74
	stx $EF.b,Y		; 96 EF
	sta $B0.b,X		; 95 B0
	stx $EF.b,Y		; 96 EF
	sta $EC.b,X		; 95 EC
	stx $5A.b,Y		; 96 5A
	stx $28.b,Y		; 96 28
	sta [$64.b],Y		; 97 64
	sta [$5A.b],Y		; 97 5A
	stx $98.b,Y		; 96 98
	sta [$00.b],Y		; 97 00
	tya		; 98
	pla		; 68
	tya		; 98
	bne -104.b		; D0 98
	cpy $3497.w		; CC 97 34
	tya		; 98
	stz $0498.w		; 9C 98 04
	sta $9938.w,Y		; 99 38 99
	adc ($99.b)		; 72 99
	ldy $99.b		; A4 99
	dec $FB99.w,X		; DE 99 FB
	sta $9972.w,Y		; 99 72 99
	and $9A.b,X		; 35 9A
	dec $6E99.w,X		; DE 99 6E
	txs		; 9A
	lda [$9A.b]		; A7 9A
	bne -102.b		; D0 9A
	nop		; EA
	txs		; 9A
	and $9B.b		; 25 9B
	lsr $7F9B.w		; 4E 9B 7F
	txy		; 9B
	bcs -101.b		; B0 9B
	bcs -101.b		; B0 9B
	dex		; CA
	txy		; 9B
	dex		; CA
	txy		; 9B
	cpx $9B.b		; E4 9B
	inc A		; 1A
	stz $9C50.w		; 9C 50 9C
	sta ($9C.b)		; 92 9C
	pei ($9C.b)		; D4 9C
	pea $149C.w		; F4 9C 14
	sta $9D14.w,X		; 9D 14 9D
	bmi -99.b		; 30 9D
	ror $9D.b		; 66 9D
	ldx $149D.w		; AE 9D 14
	sta $40FF.w,X		; 9D FF 40
	rti		; 40

	bmi  68.b		; 30 44
	lsr $FF.b		; 46 FF
	.db $42, $42		; 42 42
	rti		; 40

	pha		; 48
	lsr A		; 4A
	sbc $FF5555.l,X		; FF 55 55 FF
	eor $FF59.w,Y		; 59 59 FF
	eor [$57.b],Y		; 57 57
	sbc $FF5B5B.l,X		; FF 5B 5B FF
	eor $FF4D.w		; 4D 4D FF
	eor $4EFF4F.l		; 4F 4F FF 4E
	lsr $50FF.w		; 4E FF 50
	bvc  -1.b		; 50 FF
	eor ($51.b),Y		; 51 51
	sbc $FF5353.l,X		; FF 53 53 FF
	eor ($52.b)		; 52 52
	sbc $015454.l,X		; FF 54 54 01
	rol $01.b		; 26 01
	rol $05.b		; 26 05
	.db $62, $05, $63		; 62 05 63
	ora ($68.b,X)		; 01 68
	ora ($69.b,X)		; 01 69
	ora #$70.b		; 09 70
	ora #$70.b		; 09 70
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	plp		; 28
	cld		; D8
	plp		; 28
	inx		; E8
	clc		; 18
	eor $00FF.w,X		; 5D FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	plp		; 28
	cld		; D8
	plp		; 28
	inx		; E8
	bmi  96.b		; 30 60
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $08.b,S		; 03 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($08.b,S),Y		; 13 08
	brk $D0.b		; 00 D0
	sbc $005101.l,X		; FF 01 51 00
	ora ($2C.b),Y		; 11 2C
	brk $D4.b		; 00 D4
	sbc $000000.l,X		; FF 00 00 00
	ora ($30.b),Y		; 11 30
	brk $D8.b		; 00 D8
	sbc $000000.l,X		; FF 00 00 00
	sbc $800180.l,X		; FF 80 01 80
	plx		; FA
	trb $00.b		; 14 00
	brk $05.b		; 00 05
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	bra   1.b		; 80 01
	bra  -6.b		; 80 FA
	trb $00.b		; 14 00
	brk $05.b		; 00 05
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C2.b		; 00 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
	jsr $0AA9.w		; 20 A9 0A
	ldy #$8E99.w		; A0 99 8E
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $02DF.w		; 20 DF 02
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$8EC9.w		; A0 C9 8E
	jsr $0958.w		; 20 58 09
	ldy #$8ED9.w		; A0 D9 8E
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0001.w		; A9 01 00
	sta $54.b,X		; 95 54
	lda #$0240.w		; A9 40 02
	jsr $0389.w		; 20 89 03
	jsr $0416.w		; 20 16 04
	ldy #$8E99.w		; A0 99 8E
	jsr $0459.w		; 20 59 04
	jsr $0307.w		; 20 07 03
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$8EC9.w		; A0 C9 8E
	jsr $0958.w		; 20 58 09
	ldy #$8ED9.w		; A0 D9 8E
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0002.w		; A9 02 00
	sta $54.b,X		; 95 54
	lda #$FE40.w		; A9 40 FE
	jsr $0389.w		; 20 89 03
	jsr $0416.w		; 20 16 04
	ldy #$8E99.w		; A0 99 8E
	jsr $0459.w		; 20 59 04
	jsr $0307.w		; 20 07 03
	jsr $02DF.w		; 20 DF 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$8EC9.w		; A0 C9 8E
	jsr $0958.w		; 20 58 09
	ldy #$8ED9.w		; A0 D9 8E
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	ldy #$8EA5.w		; A0 A5 8E
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $044B.w		; 20 4B 04
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$8EC9.w		; A0 C9 8E
	jsr $0958.w		; 20 58 09
	ldy #$8ED9.w		; A0 D9 8E
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	jsr $0416.w		; 20 16 04
	jsr $031F.w		; 20 1F 03
.ACCU 8
	sep #$20		; E2 20
	ldy #$8E99.w		; A0 99 8E
	lda $54.b,X		; B5 54
	and #$04.b		; 29 04
	bne   3.b		; D0 03
	ldy #$8EA5.w		; A0 A5 8E
	jsr $0459.w		; 20 59 04
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$8EC9.w		; A0 C9 8E
	jsr $0958.w		; 20 58 09
	ldy #$8ED9.w		; A0 D9 8E
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	jsr $0416.w		; 20 16 04
	jsr $03B2.w		; 20 B2 03
	ldy #$8EC9.w		; A0 C9 8E
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  23.b		; D0 17
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	lda #$F800.w		; A9 00 F8
	sta $32.b,X		; 95 32
	lda #$0068.w		; A9 68 00
	sta $34.b,X		; 95 34
	ldy #$8EB1.w		; A0 B1 8E
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	ldy #$8EF9.w		; A0 F9 8E
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0009.w		; A9 09 00
	sta $54.b,X		; 95 54
	lda #$F800.w		; A9 00 F8
	sta $32.b,X		; 95 32
	lda #$0068.w		; A9 68 00
	sta $34.b,X		; 95 34
	lda #$0240.w		; A9 40 02
	jsr $0389.w		; 20 89 03
	ldy #$8EBD.w		; A0 BD 8E
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	ldy #$8EF9.w		; A0 F9 8E
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $54.b,X		; 95 54
	lda #$F800.w		; A9 00 F8
	sta $32.b,X		; 95 32
	lda #$0068.w		; A9 68 00
	sta $34.b,X		; 95 34
	lda #$FDC0.w		; A9 C0 FD
	jsr $0389.w		; 20 89 03
	ldy #$8EBD.w		; A0 BD 8E
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	ldy #$8EF9.w		; A0 F9 8E
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda #$0D.b		; A9 0D
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jsr $0416.w		; 20 16 04
	ldy #$8E99.w		; A0 99 8E
	jsr $0459.w		; 20 59 04
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$8EC9.w		; A0 C9 8E
	jsr $0958.w		; 20 58 09
	ldy #$8ED9.w		; A0 D9 8E
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $09.b,X		; 95 09
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	ldy #$8E99.w		; A0 99 8E
	jsr $0459.w		; 20 59 04
	jsr $0501.w		; 20 01 05
	ldy #$8EC9.w		; A0 C9 8E
	jsr $0958.w		; 20 58 09
	ldy #$8ED9.w		; A0 D9 8E
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $09.b,X		; 95 09
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	ldy #$8EA5.w		; A0 A5 8E
	jsr $0459.w		; 20 59 04
	jsr $0501.w		; 20 01 05
	ldy #$8EC9.w		; A0 C9 8E
	jsr $0958.w		; 20 58 09
	ldy #$8ED9.w		; A0 D9 8E
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  33.b		; D0 21
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	ldy #$9DEA.w		; A0 EA 9D
	jsr $113C.w		; 20 3C 11
	ldy #$9DF0.w		; A0 F0 9D
	jsr $113C.w		; 20 3C 11
	jsr $10B6.w		; 20 B6 10
	jsr $036E.w		; 20 6E 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	lda #$2000.w		; A9 00 20
	sta $54.b,X		; 95 54
	jsr $0153.w		; 20 53 01
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$8EC9.w		; A0 C9 8E
	jsr $0958.w		; 20 58 09
	ldy #$8ED9.w		; A0 D9 8E
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$4000.w		; A9 00 40
	sta $54.b,X		; 95 54
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   4.b		; D0 04
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$1000.w		; A9 00 10
	sta $54.b,X		; 95 54
	jsr $0416.w		; 20 16 04
	jsr $051A.w		; 20 1A 05
	ldy #$8E99.w		; A0 99 8E
	jsr $0459.w		; 20 59 04
	jsr $0536.w		; 20 36 05
	jsr $03A4.w		; 20 A4 03
	ldy #$8EC9.w		; A0 C9 8E
	jsr $0958.w		; 20 58 09
	ldy #$8ED9.w		; A0 D9 8E
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$1004.w		; A9 04 10
	sta $54.b,X		; 95 54
	jsr $0416.w		; 20 16 04
	jsr $0528.w		; 20 28 05
	ldy #$8EA5.w		; A0 A5 8E
	jsr $0459.w		; 20 59 04
	jsr $0536.w		; 20 36 05
	jsr $03A4.w		; 20 A4 03
	ldy #$8EC9.w		; A0 C9 8E
	jsr $0958.w		; 20 58 09
	ldy #$8ED9.w		; A0 D9 8E
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1000.w		; A9 00 10
	sta $54.b,X		; 95 54
	ldy #$9DE4.w		; A0 E4 9D
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
	jsr $09D3.w		; 20 D3 09
	jsr $09EF.w		; 20 EF 09
	ldy #$8EC9.w		; A0 C9 8E
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1004.w		; A9 04 10
	sta $54.b,X		; 95 54
	ldy #$9DE4.w		; A0 E4 9D
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
	jsr $09E1.w		; 20 E1 09
	jsr $09EF.w		; 20 EF 09
	ldy #$8EC9.w		; A0 C9 8E
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8000.w		; A9 00 80
	sta $54.b,X		; 95 54
	ldy #$9DE4.w		; A0 E4 9D
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $0A33.w		; 20 33 0A
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$8EC9.w		; A0 C9 8E
	jsr $0958.w		; 20 58 09
	ldy #$8ED9.w		; A0 D9 8E
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	stz $54.b,X		; 74 54
	jsr $0153.w		; 20 53 01
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
	ldy #$8E99.w		; A0 99 8E
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $02DF.w		; 20 DF 02
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$8EC9.w		; A0 C9 8E
	jsr $0958.w		; 20 58 09
	ldy #$8ED9.w		; A0 D9 8E
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   2.b		; D0 02
	inc $02.b,X		; F6 02
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $0A09.w		; 20 09 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8008.w		; A9 08 80
	sta $54.b,X		; 95 54
	jsr $0A09.w		; 20 09 0A
	jsr $0336.w		; 20 36 03
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$8EC9.w		; A0 C9 8E
	jsr $0958.w		; 20 58 09
	ldy #$8ED9.w		; A0 D9 8E
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $0A09.w		; 20 09 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8004.w		; A9 04 80
	sta $54.b,X		; 95 54
	ldy #$9DE4.w		; A0 E4 9D
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $0A33.w		; 20 33 0A
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$8EC9.w		; A0 C9 8E
	jsr $0958.w		; 20 58 09
	ldy #$8ED9.w		; A0 D9 8E
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$2D.b		; A9 2D
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $54.b,X		; 95 54
	lda #$FF80.w		; A9 80 FF
	sta $32.b,X		; 95 32
	lda #$000C.w		; A9 0C 00
	sta $34.b,X		; 95 34
	lda #$FC00.w		; A9 00 FC
	jsr $0389.w		; 20 89 03
	jsr $0AB9.w		; 20 B9 0A
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  12.b		; D0 0C
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
	rep #$20		; C2 20
	stz $30.b,X		; 74 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	stz $54.b,X		; 74 54
	jsr $0153.w		; 20 53 01
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	ldy #$9DEA.w		; A0 EA 9D
	jsr $113C.w		; 20 3C 11
	ldy #$9DF0.w		; A0 F0 9D
	jsr $113C.w		; 20 3C 11
.ACCU 8
	sep #$20		; E2 20
	lda #$29.b		; A9 29
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  22.b		; D0 16
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$FA00.w		; A9 00 FA
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	lda #$FE80.w		; A9 80 FE
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$28.b		; A9 28
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$02.b		; A9 02
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0010.w		; A9 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2041.w		; A9 41 20
	phx		; DA
	tsb $A0.b		; 04 A0
	cmp #$208E.w		; C9 8E 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
	ldy #$8E99.w		; A0 99 8E
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	ldy #$8EC9.w		; A0 C9 8E
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$07.b		; A9 07
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0040.w		; A9 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2043.w		; A9 43 20
	phx		; DA
	tsb $A0.b		; 04 A0
	cmp #$208E.w		; C9 8E 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0020.w		; A9 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2045.w		; A9 45 20
	phx		; DA
	tsb $A0.b		; 04 A0
	cmp #$208E.w		; C9 8E 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0020.w		; A9 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2047.w		; A9 47 20
	phx		; DA
	tsb $A0.b		; 04 A0
	cmp #$208E.w		; C9 8E 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$09.b		; A9 09
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0080.w		; A9 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2049.w		; A9 49 20
	phx		; DA
	tsb $A0.b		; 04 A0
	cmp #$208E.w		; C9 8E 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0080.w		; A9 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$204B.w		; A9 4B 20
	phx		; DA
	tsb $A0.b		; 04 A0
	cmp #$208E.w		; C9 8E 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  24.b		; D0 18
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0080.w		; A9 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$204C.w		; A9 4C 20
	phx		; DA
	tsb $A0.b		; 04 A0
	cmp #$208E.w		; C9 8E 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0010.w		; 09 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0010.w		; 09 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$05.b		; A9 05
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0040.w		; 09 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$06.b		; A9 06
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0040.w		; 09 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0020.w		; 09 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0020.w		; 09 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0080.w		; 09 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$09.b		; A9 09
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0080.w		; 09 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$02.b		; A9 02
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0014.w		; A9 14 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2056.w		; A9 56 20
	phx		; DA
	tsb $A0.b		; 04 A0
	cmp #$208E.w		; C9 8E 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
	ldy #$8EA5.w		; A0 A5 8E
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jsr $044B.w		; 20 4B 04
	jsr $03A4.w		; 20 A4 03
	ldy #$8EC9.w		; A0 C9 8E
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$06.b		; A9 06
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0044.w		; A9 44 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2058.w		; A9 58 20
	phx		; DA
	tsb $A0.b		; 04 A0
	cmp #$208E.w		; C9 8E 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0024.w		; A9 24 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$205A.w		; A9 5A 20
	phx		; DA
	tsb $A0.b		; 04 A0
	cmp #$208E.w		; C9 8E 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  27.b		; D0 1B
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$0A.b		; A9 0A
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda #$5C.b		; A9 5C
	jsr $04DA.w		; 20 DA 04
	ldy #$8EC9.w		; A0 C9 8E
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  31.b		; D0 1F
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	sta $0009.w,Y		; 99 09 00
	stz $56.b,X		; 74 56
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$5E.b		; A9 5E
	jsr $04DA.w		; 20 DA 04
	ldy #$8F19.w		; A0 19 8F
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	inc $02.b,X		; F6 02
	lda #$14.b		; A9 14
	sta $0A70.w		; 8D 70 0A
	lda #$18.b		; A9 18
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$5F.b		; A9 5F
	jsr $04DA.w		; 20 DA 04
	ldy #$8F41.w		; A0 41 8F
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	sta $0009.w,Y		; 99 09 00
	stz $56.b,X		; 74 56
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda $06.b,X		; B5 06
	bpl   5.b		; 10 05
	lda #$61.b		; A9 61
	jsr $0348.w		; 20 48 03
	ldy #$8F19.w		; A0 19 8F
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	inc $02.b,X		; F6 02
	lda #$14.b		; A9 14
	sta $0A70.w		; 8D 70 0A
	lda #$18.b		; A9 18
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$5F.b		; A9 5F
	jsr $04DA.w		; 20 DA 04
	ldy #$8F41.w		; A0 41 8F
	jsr $06E5.w		; 20 E5 06
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$50.b		; A9 50
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0200.w		; A9 00 02
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$64.b		; A9 64
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$9DF6.w		; A0 F6 9D
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$50.b		; A9 50
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0300.w		; A9 00 03
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$65.b		; A9 65
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$9DFD.w		; A0 FD 9D
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$0C.b		; A9 0C
	sta $45.b,X		; 95 45
	lda #$0C.b		; A9 0C
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$51.b		; A9 51
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0400.w		; A9 00 04
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	rts		; 60

	lda #$206A.w		; A9 6A 20
	phx		; DA
	tsb $22.b		; 04 22
	tyx		; BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$0E.b		; A9 0E
	sta $45.b,X		; 95 45
	lda #$08.b		; A9 08
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$51.b		; A9 51
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0500.w		; A9 00 05
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	rts		; 60

	lda #$206B.w		; A9 6B 20
	phx		; DA
	tsb $22.b		; 04 22
	tyx		; BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  39.b		; D0 27
	stz $43.b,X		; 74 43
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
	lda #$0C.b		; A9 0C
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$2B.b		; A9 2B
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$FC40.w		; A9 40 FC
	sta $32.b,X		; 95 32
	lda #$0050.w		; A9 50 00
	sta $34.b,X		; 95 34
	lda #$000C.w		; A9 0C 00
	sta $3A.b,X		; 95 3A
	lda #$0120.w		; A9 20 01
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$6C.b		; A9 6C
	jsr $0A41.w		; 20 41 0A
	jsr $0153.w		; 20 53 01
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  39.b		; D0 27
	stz $43.b,X		; 74 43
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
	lda #$0C.b		; A9 0C
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$2B.b		; A9 2B
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$F880.w		; A9 80 F8
	sta $32.b,X		; 95 32
	lda #$0060.w		; A9 60 00
	sta $34.b,X		; 95 34
	lda #$000C.w		; A9 0C 00
	sta $3A.b,X		; 95 3A
	lda #$01E0.w		; A9 E0 01
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$6D.b		; A9 6D
	jsr $0A41.w		; 20 41 0A
	jsr $0153.w		; 20 53 01
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$6E.b		; A9 6E
	jsr $0348.w		; 20 48 03
	jsr $0153.w		; 20 53 01
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$6F.b		; A9 6F
	jsr $0348.w		; 20 48 03
	jsr $0153.w		; 20 53 01
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	stz $30.b,X		; 74 30
	stz $31.b,X		; 74 31
	stz $54.b,X		; 74 54
	stz $55.b,X		; 74 55
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$30.b		; A9 30
	sta $45.b,X		; 95 45
	lda #$12.b		; A9 12
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$51.b		; A9 51
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0C00.w		; A9 00 0C
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	rts		; 60

	lda #$2071.w		; A9 71 20
	phx		; DA
	tsb $22.b		; 04 22
	tyx		; BB
	lda $044C80.l,X		; BF 80 4C 04
	cop $C2.b		; 02 C2
	bpl -90.b		; 10 A6
	dey		; 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  45.b		; D0 2D
	stz $43.b,X		; 74 43
	lda #$30.b		; A9 30
	sta $45.b,X		; 95 45
	lda #$12.b		; A9 12
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$2B.b		; A9 2B
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$F600.w		; A9 00 F6
	sta $32.b,X		; 95 32
	lda #$0050.w		; A9 50 00
	sta $34.b,X		; 95 34
	lda #$000C.w		; A9 0C 00
	sta $3A.b,X		; 95 3A
	lda #$0300.w		; A9 00 03
	jsr $0389.w		; 20 89 03
	ldy #$9E04.w		; A0 04 9E
	jsr $113C.w		; 20 3C 11
.ACCU 8
	sep #$20		; E2 20
	lda #$72.b		; A9 72
	jsr $0A41.w		; 20 41 0A
	jsr $0153.w		; 20 53 01
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$73.b		; A9 73
	jsr $0348.w		; 20 48 03
	jsr $0153.w		; 20 53 01
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	bne  10.b		; D0 0A
	lda $07.b,X		; B5 07
	cmp #$06.b		; C9 06
	bne   4.b		; D0 04
	lda #$4D.b		; A9 4D
	sta $78.b,X		; 95 78
	rts		; 60

	rts		; 60

	and ($08.b)		; 32 08
	php		; 08
	brk $00.b		; 00 00
	brk $33.b		; 00 33
	brk $F0.b		; 00 F0
	sbc $330000.l,X		; FF 00 00 33
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	brk $C0.b		; 00 C0
	sbc $011866.l,X		; FF 66 18 01
	bmi   0.b		; 30 00
	cpy #$67FF.w		; C0 FF 67
	and ($00.b),Y		; 31 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($9E19.w,X)		; 7C 19 9E
	cmp ($A0.b,S),Y		; D3 A0
	ora ($A1.b),Y		; 11 A1
	eor ($A1.b),Y		; 51 A1
	sta ($A1.b),Y		; 91 A1
	cmp #$A1.b		; C9 A1
	ora [$A2.b]		; 07 A2
	pld		; 2B
	ldx #$58.b		; A2 58
	ldx #$8B.b		; A2 8B
	ldx #$BE.b		; A2 BE
	ldx #$FE.b		; A2 FE
	ldx #$35.b		; A2 35
	lda $1E.b,S		; A3 1E
	ldy $56.b		; A4 56
	ldy $8E.b		; A4 8E
	ldy $BF.b		; A4 BF
	ldy $F0.b		; A4 F0
	ldy $F0.b		; A4 F0
	ldy $F0.b		; A4 F0
	ldy $F0.b		; A4 F0
	ldy $06.b		; A4 06
	ldx $06.b		; A6 06
	ldx $BA.b		; A6 BA
	lda $A2.b		; A5 A2
	lda $A2.b		; A5 A2
	lda $A2.b		; A5 A2
	lda $EE.b		; A5 EE
	lda $EE.b		; A5 EE
	lda $F6.b		; A5 F6
	lda $6F.b,S		; A3 6F
	lda $84.b,S		; A3 84
	lda $34.b,S		; A3 34
	lda $B5.b		; A5 B5
	lda $53.b,S		; A3 53
	lda $8E.b		; A5 8E
	lda $0A.b		; A5 0A
	ldy $0F.b		; A4 0F
	ldx $AE20.w		; AE 20 AE
	lsr A		; 4A
	ldx $EB.b		; A6 EB
	ldx $B9.b		; A6 B9
	ldx $97.b		; A6 97
	ldx $77.b		; A6 77
	ldx $00.b		; A6 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $13.b		; 00 13
	lda [$8B.b]		; A7 8B
	lda [$4F.b]		; A7 4F
	lda [$8B.b]		; A7 8B
	lda [$BA.b]		; A7 BA
	lda [$32.b]		; A7 32
	tay		; A8
	inc $A7.b,X		; F6 A7
	and ($A8.b)		; 32 A8
	jmp $8BA8.w		; 4C A8 8B
	lda [$88.b]		; A7 88
	tay		; A8
	and ($A8.b)		; 32 A8
	cpy $A8.b		; C4 A8
	bit $94A9.w		; 2C A9 94
	lda #$FC.b		; A9 FC
	lda #$F8.b		; A9 F8
	tay		; A8
	rts		; 60

	lda #$C8.b		; A9 C8
	lda #$30.b		; A9 30
	tax		; AA
	stz $AA.b		; 64 AA
	stz $D0AA.w,X		; 9E AA D0
	tax		; AA
	asl A		; 0A
	plb		; AB
	and [$AB.b]		; 27 AB
	stz $61AA.w,X		; 9E AA 61
	plb		; AB
	asl A		; 0A
	plb		; AB
	txs		; 9A
	plb		; AB
	bne -85.b		; D0 AB
	nop		; EA
	plb		; AB
	tas		; 1B
	ldy $AC4C.w		; AC 4C AC
	jmp $66AC.w		; 4C AC 66
	ldy $AC66.w		; AC 66 AC
	bra -84.b		; 80 AC
	lda [$AC.b],Y		; B7 AC
	inc $23AC.w		; EE AC 23
	lda $AD58.w		; AD 58 AD
	cli		; 58
	lda $AD74.w		; AD 74 AD
	cpy $F5AD.w		; CC AD F5
	lda $4028.w		; AD 28 40
	.db $42, $FF		; 42 FF
	pha		; 48
	pha		; 48
	bmi  68.b		; 30 44
	lsr $FF.b		; 46 FF
	lsr A		; 4A
	lsr A		; 4A
	sbc $FF5454.l,X		; FF 54 54 FF
	cli		; 58
	cli		; 58
	sbc $FF5656.l,X		; FF 56 56 FF
	phy		; 5A
	phy		; 5A
	sbc $FF4C4C.l,X		; FF 4C 4C FF
	lsr $FF4E.w		; 4E 4E FF
	eor $FF4D.w		; 4D 4D FF
	eor $50FF4F.l		; 4F 4F FF 50
	bvc  -1.b		; 50 FF
	eor ($52.b)		; 52 52
	sbc $FF5151.l,X		; FF 51 51 FF
	eor ($53.b,S),Y		; 53 53
	ora ($26.b,X)		; 01 26
	ora ($26.b,X)		; 01 26
	ora $5E.b		; 05 5E
	ora $5F.b		; 05 5F
	ora ($64.b,X)		; 01 64
	ora ($65.b,X)		; 01 65
	ora #$6A.b		; 09 6A
	ora #$6A.b		; 09 6A
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	bmi -48.b		; 30 D0
	bmi  -8.b		; 30 F8
	php		; 08
	jmp $02805D.l		; 5C 5D 80 02
	brk $F9.b		; 00 F9
	tsb $16.b		; 04 16
	inc A		; 1A
	cop $18.b		; 02 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $18.b		; 02 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $18.b		; 02 18
	brk $20.b		; 00 20
	bne   4.b		; D0 04
	asl A		; 0A
	brk $03.b		; 00 03
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($0280.w)		; 6C 80 02
	brk $F6.b		; 00 F6
	brk $1B.b		; 00 1B
	tas		; 1B
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	cpy #$04.b		; C0 04
	ora #$00.b		; 09 00
	cop $30.b		; 02 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $30.b		; 02 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $30.b,S		; 03 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $30.b,S		; 03 30
	brk $38.b		; 00 38
	cpx #$03.b		; E0 03
	ora [$00.b]		; 07 00
	cop $30.b		; 02 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $30.b		; 02 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $30.b,S		; 03 30
	brk $38.b		; 00 38
	beq   4.b		; F0 04
	ora #$00.b		; 09 00
	cop $30.b		; 02 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $30.b		; 02 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $30.b,S		; 03 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $30.b,S		; 03 30
	brk $28.b		; 00 28
	cpy #$03.b		; C0 03
	ora [$00.b]		; 07 00
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($30.b,X)		; 01 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($30.b,X)		; 01 30
	brk $40.b		; 00 40
	bcs   4.b		; B0 04
	asl A		; 0A
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bmi   0.b		; 30 00
	bmi -32.b		; 30 E0
	ora $07.b,S		; 03 07
	brk $02.b		; 00 02
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	bmi   0.b		; 30 00
	rti		; 40

	beq   4.b		; F0 04
	asl A		; 0A
	brk $02.b		; 00 02
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	bmi   0.b		; 30 00
	plp		; 28
	bcs   3.b		; B0 03
	php		; 08
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bmi   0.b		; 30 00
	sec		; 38
	iny		; C8
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bmi   0.b		; 30 00
	plp		; 28
	cpy #$03.b		; C0 03
	ora [$00.b]		; 07 00
	cop $30.b		; 02 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $30.b		; 02 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $30.b		; 02 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $30.b,S		; 03 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $30.b,S		; 03 30
	brk $30.b		; 00 30
	bcs  11.b		; B0 0B
	php		; 08
	brk $03.b		; 00 03
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C2.b		; 00 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
	jsr $0AA9.w		; 20 A9 0A
	ldy #$9EF3.w		; A0 F3 9E
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $02DF.w		; 20 DF 02
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$9F23.w		; A0 23 9F
	jsr $0958.w		; 20 58 09
	ldy #$9F33.w		; A0 33 9F
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0001.w		; A9 01 00
	sta $54.b,X		; 95 54
	lda #$01F0.w		; A9 F0 01
	jsr $0389.w		; 20 89 03
	jsr $0416.w		; 20 16 04
	ldy #$9EF3.w		; A0 F3 9E
	jsr $0459.w		; 20 59 04
	jsr $0307.w		; 20 07 03
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$9F23.w		; A0 23 9F
	jsr $0958.w		; 20 58 09
	ldy #$9F33.w		; A0 33 9F
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0002.w		; A9 02 00
	sta $54.b,X		; 95 54
	lda #$FE90.w		; A9 90 FE
	jsr $0389.w		; 20 89 03
	jsr $0416.w		; 20 16 04
	ldy #$9EF3.w		; A0 F3 9E
	jsr $0459.w		; 20 59 04
	jsr $0307.w		; 20 07 03
	jsr $02DF.w		; 20 DF 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$9F23.w		; A0 23 9F
	jsr $0958.w		; 20 58 09
	ldy #$9F33.w		; A0 33 9F
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	ldy #$9EFF.w		; A0 FF 9E
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $044B.w		; 20 4B 04
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$9F23.w		; A0 23 9F
	jsr $0958.w		; 20 58 09
	ldy #$9F33.w		; A0 33 9F
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	jsr $0416.w		; 20 16 04
	jsr $031F.w		; 20 1F 03
.ACCU 8
	sep #$20		; E2 20
	ldy #$9EF3.w		; A0 F3 9E
	lda $54.b,X		; B5 54
	and #$04.b		; 29 04
	bne   3.b		; D0 03
	ldy #$9EFF.w		; A0 FF 9E
	jsr $0459.w		; 20 59 04
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$9F23.w		; A0 23 9F
	jsr $0958.w		; 20 58 09
	ldy #$9F33.w		; A0 33 9F
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	jsr $0416.w		; 20 16 04
	jsr $03B2.w		; 20 B2 03
	ldy #$9F23.w		; A0 23 9F
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  23.b		; D0 17
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	lda #$F780.w		; A9 80 F7
	sta $32.b,X		; 95 32
	lda #$0070.w		; A9 70 00
	sta $34.b,X		; 95 34
	ldy #$9F0B.w		; A0 0B 9F
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0009.w		; A9 09 00
	sta $54.b,X		; 95 54
	lda #$F780.w		; A9 80 F7
	sta $32.b,X		; 95 32
	lda #$0070.w		; A9 70 00
	sta $34.b,X		; 95 34
	lda #$0220.w		; A9 20 02
	jsr $0389.w		; 20 89 03
	ldy #$9F17.w		; A0 17 9F
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $54.b,X		; 95 54
	lda #$F780.w		; A9 80 F7
	sta $32.b,X		; 95 32
	lda #$0070.w		; A9 70 00
	sta $34.b,X		; 95 34
	lda #$FDE0.w		; A9 E0 FD
	jsr $0389.w		; 20 89 03
	ldy #$9F17.w		; A0 17 9F
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda #$0D.b		; A9 0D
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jsr $0416.w		; 20 16 04
	ldy #$9EF3.w		; A0 F3 9E
	jsr $0459.w		; 20 59 04
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$9F23.w		; A0 23 9F
	jsr $0958.w		; 20 58 09
	ldy #$9F33.w		; A0 33 9F
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $09.b,X		; 95 09
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	ldy #$9EF3.w		; A0 F3 9E
	jsr $0459.w		; 20 59 04
	jsr $0501.w		; 20 01 05
	ldy #$9F23.w		; A0 23 9F
	jsr $0958.w		; 20 58 09
	ldy #$9F33.w		; A0 33 9F
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $09.b,X		; 95 09
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	ldy #$9EFF.w		; A0 FF 9E
	jsr $0459.w		; 20 59 04
	jsr $0501.w		; 20 01 05
	ldy #$9F23.w		; A0 23 9F
	jsr $0958.w		; 20 58 09
	ldy #$9F33.w		; A0 33 9F
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  33.b		; D0 21
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	ldy #$AE27.w		; A0 27 AE
	jsr $113C.w		; 20 3C 11
	ldy #$AE2D.w		; A0 2D AE
	jsr $113C.w		; 20 3C 11
	jsr $10B6.w		; 20 B6 10
	jsr $036E.w		; 20 6E 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	lda #$2000.w		; A9 00 20
	sta $54.b,X		; 95 54
	jsr $0153.w		; 20 53 01
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$9F23.w		; A0 23 9F
	jsr $0958.w		; 20 58 09
	ldy #$9F33.w		; A0 33 9F
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$4000.w		; A9 00 40
	sta $54.b,X		; 95 54
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   4.b		; D0 04
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$1000.w		; A9 00 10
	sta $54.b,X		; 95 54
	jsr $0416.w		; 20 16 04
	jsr $051A.w		; 20 1A 05
	ldy #$9EF3.w		; A0 F3 9E
	jsr $0459.w		; 20 59 04
	jsr $0536.w		; 20 36 05
	jsr $03A4.w		; 20 A4 03
	ldy #$9F23.w		; A0 23 9F
	jsr $0958.w		; 20 58 09
	ldy #$9F33.w		; A0 33 9F
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$1004.w		; A9 04 10
	sta $54.b,X		; 95 54
	jsr $0416.w		; 20 16 04
	jsr $0528.w		; 20 28 05
	ldy #$9EFF.w		; A0 FF 9E
	jsr $0459.w		; 20 59 04
	jsr $0536.w		; 20 36 05
	jsr $03A4.w		; 20 A4 03
	ldy #$9F23.w		; A0 23 9F
	jsr $0958.w		; 20 58 09
	ldy #$9F33.w		; A0 33 9F
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1000.w		; A9 00 10
	sta $54.b,X		; 95 54
	ldy #$AE21.w		; A0 21 AE
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
	jsr $09D3.w		; 20 D3 09
	jsr $09EF.w		; 20 EF 09
	ldy #$9F23.w		; A0 23 9F
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1004.w		; A9 04 10
	sta $54.b,X		; 95 54
	ldy #$AE21.w		; A0 21 AE
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
	jsr $09E1.w		; 20 E1 09
	jsr $09EF.w		; 20 EF 09
	ldy #$9F23.w		; A0 23 9F
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8000.w		; A9 00 80
	sta $54.b,X		; 95 54
	ldy #$AE21.w		; A0 21 AE
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $0A33.w		; 20 33 0A
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$9F23.w		; A0 23 9F
	jsr $0958.w		; 20 58 09
	ldy #$9F33.w		; A0 33 9F
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	stz $54.b,X		; 74 54
	jsr $0153.w		; 20 53 01
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
	ldy #$9EF3.w		; A0 F3 9E
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $02DF.w		; 20 DF 02
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$9F23.w		; A0 23 9F
	jsr $0958.w		; 20 58 09
	ldy #$9F33.w		; A0 33 9F
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   2.b		; D0 02
	inc $02.b,X		; F6 02
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $0A09.w		; 20 09 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8008.w		; A9 08 80
	sta $54.b,X		; 95 54
	jsr $0A09.w		; 20 09 0A
	jsr $0336.w		; 20 36 03
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$9F23.w		; A0 23 9F
	jsr $0958.w		; 20 58 09
	ldy #$9F33.w		; A0 33 9F
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $0A09.w		; 20 09 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8004.w		; A9 04 80
	sta $54.b,X		; 95 54
	ldy #$AE21.w		; A0 21 AE
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $0A33.w		; 20 33 0A
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$9F23.w		; A0 23 9F
	jsr $0958.w		; 20 58 09
	ldy #$9F33.w		; A0 33 9F
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$2D.b		; A9 2D
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $54.b,X		; 95 54
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0060.w		; A9 60 00
	sta $34.b,X		; 95 34
	lda #$FB00.w		; A9 00 FB
	jsr $0389.w		; 20 89 03
	jsr $0AB9.w		; 20 B9 0A
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  12.b		; D0 0C
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
	rep #$20		; C2 20
	stz $30.b,X		; 74 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	stz $54.b,X		; 74 54
	jsr $0153.w		; 20 53 01
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	ldy #$AE27.w		; A0 27 AE
	jsr $113C.w		; 20 3C 11
	ldy #$AE2D.w		; A0 2D AE
	jsr $113C.w		; 20 3C 11
.ACCU 8
	sep #$20		; E2 20
	lda #$29.b		; A9 29
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  22.b		; D0 16
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$FA00.w		; A9 00 FA
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	lda #$FE80.w		; A9 80 FE
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$28.b		; A9 28
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0010.w		; A9 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2041.w		; A9 41 20
	phx		; DA
	tsb $A0.b		; 04 A0
	and $9F.b,S		; 23 9F
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0010.w		; A9 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2043.w		; A9 43 20
	phx		; DA
	tsb $A0.b		; 04 A0
	and $9F.b,S		; 23 9F
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
	ldy #$9EF3.w		; A0 F3 9E
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	ldy #$9F23.w		; A0 23 9F
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0040.w		; A9 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2045.w		; A9 45 20
	phx		; DA
	tsb $A0.b		; 04 A0
	and $9F.b,S		; 23 9F
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$0B.b		; A9 0B
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0040.w		; A9 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2047.w		; A9 47 20
	phx		; DA
	tsb $A0.b		; 04 A0
	and $9F.b,S		; 23 9F
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0020.w		; A9 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2049.w		; A9 49 20
	phx		; DA
	tsb $A0.b		; 04 A0
	and $9F.b,S		; 23 9F
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0080.w		; A9 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$204B.w		; A9 4B 20
	phx		; DA
	tsb $A0.b		; 04 A0
	and $9F.b,S		; 23 9F
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0010.w		; 09 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0010.w		; 09 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$09.b		; A9 09
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0040.w		; 09 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0040.w		; 09 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0020.w		; 09 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0020.w		; 09 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$07.b		; A9 07
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0080.w		; 09 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0080.w		; 09 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0014.w		; A9 14 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2055.w		; A9 55 20
	phx		; DA
	tsb $A0.b		; 04 A0
	and $9F.b,S		; 23 9F
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
	ldy #$9EFF.w		; A0 FF 9E
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jsr $044B.w		; 20 4B 04
	jsr $03A4.w		; 20 A4 03
	ldy #$9F23.w		; A0 23 9F
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$0B.b		; A9 0B
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0044.w		; A9 44 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2057.w		; A9 57 20
	phx		; DA
	tsb $A0.b		; 04 A0
	and $9F.b,S		; 23 9F
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0024.w		; A9 24 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2059.w		; A9 59 20
	phx		; DA
	tsb $A0.b		; 04 A0
	and $9F.b,S		; 23 9F
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  27.b		; D0 1B
	lda #$09.b		; A9 09
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$0A.b		; A9 0A
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda #$5B.b		; A9 5B
	jsr $04DA.w		; 20 DA 04
	ldy #$9F23.w		; A0 23 9F
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  35.b		; D0 23
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $0009.w,Y		; 99 09 00
	lda #$05.b		; A9 05
	sta $56.b,X		; 95 56
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	stz $54.b,X		; 74 54
	ldy #$9F53.w		; A0 53 9F
	jsr $0C0F.w		; 20 0F 0C
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$55.b		; A9 55
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0200.w		; A9 00 02
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$60.b		; A9 60
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$AE33.w		; A0 33 AE
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$55.b		; A9 55
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0300.w		; A9 00 03
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$61.b		; A9 61
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$AE3A.w		; A0 3A AE
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  37.b		; D0 25
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda #$56.b		; A9 56
	sta $78.b,X		; 95 78
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0408.w		; A9 08 04
	sta $54.b,X		; 95 54
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	lda #$0180.w		; A9 80 01
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$66.b		; A9 66
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  37.b		; D0 25
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda #$56.b		; A9 56
	sta $78.b,X		; 95 78
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0508.w		; A9 08 05
	sta $54.b,X		; 95 54
	lda #$FC00.w		; A9 00 FC
	sta $32.b,X		; 95 32
	lda #$0070.w		; A9 70 00
	sta $34.b,X		; 95 34
	lda #$0300.w		; A9 00 03
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$67.b		; A9 67
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  21.b		; D0 15
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
	lda #$08.b		; A9 08
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	stz $43.b,X		; 74 43
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	rts		; 60

	lda #$68.b		; A9 68
	jsr $04DA.w		; 20 DA 04
	jsl $80BFBB.l		; 22 BB BF 80
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	bne   2.b		; D0 02
	stz $43.b,X		; 74 43
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  21.b		; D0 15
	lda #$0C.b		; A9 0C
	sta $45.b,X		; 95 45
	lda #$0C.b		; A9 0C
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	stz $43.b,X		; 74 43
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	rts		; 60

	lda #$69.b		; A9 69
	jsr $04DA.w		; 20 DA 04
	jsl $80BFBB.l		; 22 BB BF 80
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $06.b,X		; B5 06
	bne   2.b		; D0 02
	stz $43.b,X		; 74 43
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	lda #$0D.b		; A9 0D
	sta $78.b		; 85 78
	stz $30.b,X		; 74 30
	stz $31.b,X		; 74 31
	lda #$04.b		; A9 04
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  50.b		; D0 32
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	stz $43.b,X		; 74 43
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	lda #$18.b		; A9 18
	sta $44.b,X		; 95 44
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
	lda #$56.b		; A9 56
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0C00.w		; A9 00 0C
	sta $54.b,X		; 95 54
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	lda #$0600.w		; A9 00 06
	jsr $0389.w		; 20 89 03
	ldy #$AE41.w		; A0 41 AE
	jmp $113C.w		; 4C 3C 11
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jsr $0153.w		; 20 53 01
	jsl $80BFBB.l		; 22 BB BF 80
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda #$6B.b		; A9 6B
	jsr $1190.w		; 20 90 11
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  22.b		; D0 16
	inc $02.b,X		; F6 02
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $0009.w,Y		; 99 09 00
	lda #$01.b		; A9 01
	sta $56.b,X		; 95 56
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	ldy #$9F7B.w		; A0 7B 9F
	jsr $0C0F.w		; 20 0F 0C
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
	lda #$57.b		; A9 57
	sta $78.b,X		; 95 78
	rts		; 60

	rts		; 60

	and ($08.b)		; 32 08
	php		; 08
	brk $00.b		; 00 00
	brk $33.b		; 00 33
	brk $F0.b		; 00 F0
	sbc $330000.l,X		; FF 00 00 33
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $19.b		; 00 19
	brk $50.b		; 00 50
	brk $00.b		; 00 00
	brk $62.b		; 00 62
	ora $5001.w,Y		; 19 01 50
	brk $00.b		; 00 00
	brk $63.b		; 00 63
	and ($E8.b)		; 32 E8
	inx		; E8
	sbc $C20000.l,X		; FF 00 00 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda $01.b,X		; B5 01
	asl A		; 0A
.INDEX 8
	sep #$10		; E2 10
	tax		; AA
	jmp ($AE56.w,X)		; 7C 56 AE
	lda ($AF.b)		; B2 AF
	beq -81.b		; F0 AF
	bmi -80.b		; 30 B0
	bvs -80.b		; 70 B0
	tay		; A8
	bcs -26.b		; B0 E6
	bcs  10.b		; B0 0A
	lda ($44.b),Y		; B1 44
	lda ($84.b),Y		; B1 84
	lda ($C4.b),Y		; B1 C4
	lda ($04.b),Y		; B1 04
	lda ($3B.b)		; B2 3B
	lda ($24.b)		; B2 24
	lda ($5C.b,S),Y		; B3 5C
	lda ($94.b,S),Y		; B3 94
	lda ($C5.b,S),Y		; B3 C5
	lda ($F6.b,S),Y		; B3 F6
	lda ($F6.b,S),Y		; B3 F6
	lda ($F6.b,S),Y		; B3 F6
	lda ($F6.b,S),Y		; B3 F6
	lda ($0C.b,S),Y		; B3 0C
	lda $0C.b,X		; B5 0C
	lda $C0.b,X		; B5 C0
	ldy $A8.b,X		; B4 A8
	ldy $A8.b,X		; B4 A8
	ldy $A8.b,X		; B4 A8
	ldy $F4.b,X		; B4 F4
	ldy $F4.b,X		; B4 F4
	ldy $FC.b,X		; B4 FC
	lda ($75.b)		; B2 75
	lda ($8A.b)		; B2 8A
	lda ($3A.b)		; B2 3A
	ldy $BB.b,X		; B4 BB
	lda ($59.b)		; B2 59
	ldy $94.b,X		; B4 94
	ldy $10.b,X		; B4 10
	lda ($C6.b,S),Y		; B3 C6
	lda $BDD7.w,X		; BD D7 BD
	bvc -75.b		; 50 B5
	sbc $B5.b,X		; F5 B5
	cmp $B5.b,S		; C3 B5
	lda ($B5.b,X)		; A1 B5
	sta $B5.b,S		; 83 B5
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $59B6.w,X		; 1D B6 59
	ldx $88.b,Y		; B6 88
	ldx $C4.b,Y		; B6 C4
	ldx $DE.b,Y		; B6 DE
	ldx $C4.b,Y		; B6 C4
	ldx $1A.b,Y		; B6 1A
	lda [$59.b],Y		; B7 59
	ldx $56.b,Y		; B6 56
	lda [$C4.b],Y		; B7 C4
	ldx $92.b,Y		; B6 92
	lda [$FA.b],Y		; B7 FA
	lda [$62.b],Y		; B7 62
	clv		; B8
	dex		; CA
	clv		; B8
	dec $B7.b		; C6 B7
	rol $96B8.w		; 2E B8 96
	clv		; B8
	inc $32B8.w,X		; FE B8 32
	lda $B96C.w,Y		; B9 6C B9
	stz $D8B9.w,X		; 9E B9 D8
	lda $B9F5.w,Y		; B9 F5 B9
	jmp ($2FB9.w)		; 6C B9 2F
	tsx		; BA
	cld		; D8
	lda $BA7E.w,Y		; B9 7E BA
	ldx $BA.b,Y		; B6 BA
	phx		; DA
	tsx		; BA
	ora $BB48BB.l		; 0F BB 48 BB
	sta ($BB.b,X)		; 81 BB
	lda ($BB.b)		; B2 BB
	sbc $BB.b,S		; E3 BB
	sbc $BB.b,S		; E3 BB
	sbc $BB.b,S		; E3 BB
	sbc $BB.b,S		; E3 BB
	sbc $4EBB.w,X		; FD BB 4E
	ldy $BC9F.w,X		; BC 9F BC
	cmp $FBBC.w		; CD BC FB
	ldy $BD21.w,X		; BC 21 BD
	eor [$BD.b]		; 47 BD
	bra -67.b		; 80 BD
	tax		; AA
	lda $40FF.w,X		; BD FF 40
	rti		; 40

	sbc $204646.l,X		; FF 46 46 20
	.db $42, $44		; 42 44
	sbc $FF4848.l,X		; FF 48 48 FF
	eor ($52.b)		; 52 52
	sbc $FF5656.l,X		; FF 56 56 FF
	mvn $FF,$54		; 54 54 FF
	cli		; 58
	cli		; 58
	sbc $FF4A4A.l,X		; FF 4A 4A FF
	jmp $FF4C.w		; 4C 4C FF
	phk		; 4B
	phk		; 4B
	sbc $FF4D4D.l,X		; FF 4D 4D FF
	lsr $FF4E.w		; 4E 4E FF
	bvc  80.b		; 50 50
	sbc $FF4F4F.l,X		; FF 4F 4F FF
	eor ($51.b),Y		; 51 51
	ora ($26.b,X)		; 01 26
	ora ($26.b,X)		; 01 26
	ora $5F.b		; 05 5F
	ora $60.b		; 05 60
	cop $65.b		; 02 65
	cop $66.b		; 02 66
	asl $0E6B.w		; 0E 6B 0E
	rtl		; 6B

	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	plp		; 28
	cld		; D8
	plp		; 28
	beq  16.b		; F0 10
	phy		; 5A
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tad		; 5B
	bra   2.b		; 80 02
	brk $F9.b		; 00 F9
	cop $16.b		; 02 16
	tas		; 1B
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	iny		; C8
	php		; 08
	inx		; E8
	cop $08.b		; 02 08
	ora ($01.b,X)		; 01 01
	brk $C8.b		; 00 C8
	php		; 08
	inx		; E8
	cop $08.b		; 02 08
	ora ($C2.b,X)		; 01 C2
	bpl -30.b		; 10 E2
	jsr $88A6.w		; 20 A6 88
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
	jsr $0AA9.w		; 20 A9 0A
	ldy #$AF32.w		; A0 32 AF
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $02DF.w		; 20 DF 02
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	ldy #$AF72.w		; A0 72 AF
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0001.w		; A9 01 00
	sta $54.b,X		; 95 54
	lda #$0200.w		; A9 00 02
	jsr $0389.w		; 20 89 03
	jsr $0416.w		; 20 16 04
	ldy #$AF32.w		; A0 32 AF
	jsr $0459.w		; 20 59 04
	jsr $0307.w		; 20 07 03
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	ldy #$AF72.w		; A0 72 AF
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0002.w		; A9 02 00
	sta $54.b,X		; 95 54
	lda #$FE80.w		; A9 80 FE
	jsr $0389.w		; 20 89 03
	jsr $0416.w		; 20 16 04
	ldy #$AF32.w		; A0 32 AF
	jsr $0459.w		; 20 59 04
	jsr $0307.w		; 20 07 03
	jsr $02DF.w		; 20 DF 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	ldy #$AF72.w		; A0 72 AF
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	ldy #$AF3E.w		; A0 3E AF
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $044B.w		; 20 4B 04
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	ldy #$AF72.w		; A0 72 AF
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	jsr $0416.w		; 20 16 04
	jsr $031F.w		; 20 1F 03
.ACCU 8
	sep #$20		; E2 20
	ldy #$AF32.w		; A0 32 AF
	lda $54.b,X		; B5 54
	and #$04.b		; 29 04
	bne   3.b		; D0 03
	ldy #$AF3E.w		; A0 3E AF
	jsr $0459.w		; 20 59 04
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	ldy #$AF72.w		; A0 72 AF
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	jsr $0416.w		; 20 16 04
	jsr $03B2.w		; 20 B2 03
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  23.b		; D0 17
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	lda #$F600.w		; A9 00 F6
	sta $32.b,X		; 95 32
	lda #$00A0.w		; A9 A0 00
	sta $34.b,X		; 95 34
	ldy #$AF4A.w		; A0 4A AF
	jsr $0459.w		; 20 59 04
.ACCU 8
	sep #$20		; E2 20
	lda #$5C.b		; A9 5C
	jsr $11E2.w		; 20 E2 11
	jsr $0336.w		; 20 36 03
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0009.w		; A9 09 00
	sta $54.b,X		; 95 54
	lda #$F600.w		; A9 00 F6
	sta $32.b,X		; 95 32
	lda #$00A0.w		; A9 A0 00
	sta $34.b,X		; 95 34
	lda #$0200.w		; A9 00 02
	jsr $0389.w		; 20 89 03
	ldy #$AF56.w		; A0 56 AF
	jsr $0459.w		; 20 59 04
.ACCU 8
	sep #$20		; E2 20
	lda #$5C.b		; A9 5C
	jsr $11E2.w		; 20 E2 11
	jsr $0336.w		; 20 36 03
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $54.b,X		; 95 54
	lda #$F600.w		; A9 00 F6
	sta $32.b,X		; 95 32
	lda #$00A0.w		; A9 A0 00
	sta $34.b,X		; 95 34
	lda #$FE00.w		; A9 00 FE
	jsr $0389.w		; 20 89 03
	ldy #$AF56.w		; A0 56 AF
	jsr $0459.w		; 20 59 04
.ACCU 8
	sep #$20		; E2 20
	lda #$5C.b		; A9 5C
	jsr $11E2.w		; 20 E2 11
	jsr $0336.w		; 20 36 03
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda #$0D.b		; A9 0D
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jsr $0416.w		; 20 16 04
	ldy #$AF32.w		; A0 32 AF
	jsr $0459.w		; 20 59 04
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	ldy #$AF72.w		; A0 72 AF
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  14.b		; D0 0E
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $09.b,X		; 95 09
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	ldy #$AF32.w		; A0 32 AF
	jsr $0459.w		; 20 59 04
	jsr $0501.w		; 20 01 05
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	ldy #$AF72.w		; A0 72 AF
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $09.b,X		; 95 09
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	ldy #$AF3E.w		; A0 3E AF
	jsr $0459.w		; 20 59 04
	jsr $0501.w		; 20 01 05
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	ldy #$AF72.w		; A0 72 AF
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  33.b		; D0 21
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	ldy #$BDDE.w		; A0 DE BD
	jsr $113C.w		; 20 3C 11
	ldy #$BDE4.w		; A0 E4 BD
	jsr $113C.w		; 20 3C 11
	jsr $10B6.w		; 20 B6 10
	jsr $036E.w		; 20 6E 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	lda #$2000.w		; A9 00 20
	sta $54.b,X		; 95 54
	jsr $0153.w		; 20 53 01
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	ldy #$AF72.w		; A0 72 AF
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$4000.w		; A9 00 40
	sta $54.b,X		; 95 54
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   4.b		; D0 04
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$1000.w		; A9 00 10
	sta $54.b,X		; 95 54
	jsr $0416.w		; 20 16 04
	jsr $051A.w		; 20 1A 05
	ldy #$AF32.w		; A0 32 AF
	jsr $0459.w		; 20 59 04
	jsr $0536.w		; 20 36 05
	jsr $03A4.w		; 20 A4 03
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	ldy #$AF72.w		; A0 72 AF
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  13.b		; D0 0D
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$1004.w		; A9 04 10
	sta $54.b,X		; 95 54
	jsr $0416.w		; 20 16 04
	jsr $0528.w		; 20 28 05
	ldy #$AF3E.w		; A0 3E AF
	jsr $0459.w		; 20 59 04
	jsr $0536.w		; 20 36 05
	jsr $03A4.w		; 20 A4 03
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	ldy #$AF72.w		; A0 72 AF
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1000.w		; A9 00 10
	sta $54.b,X		; 95 54
	ldy #$BDD8.w		; A0 D8 BD
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
	jsr $09D3.w		; 20 D3 09
	jsr $09EF.w		; 20 EF 09
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1004.w		; A9 04 10
	sta $54.b,X		; 95 54
	ldy #$BDD8.w		; A0 D8 BD
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
	jsr $09E1.w		; 20 E1 09
	jsr $09EF.w		; 20 EF 09
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8000.w		; A9 00 80
	sta $54.b,X		; 95 54
	ldy #$BDD8.w		; A0 D8 BD
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $0A33.w		; 20 33 0A
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	ldy #$AF72.w		; A0 72 AF
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	stz $54.b,X		; 74 54
	jsr $0153.w		; 20 53 01
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
	ldy #$AF32.w		; A0 32 AF
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $02DF.w		; 20 DF 02
	jsr $02F3.w		; 20 F3 02
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
	jsr $0501.w		; 20 01 05
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	ldy #$AF72.w		; A0 72 AF
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	bne   2.b		; D0 02
	inc $02.b,X		; F6 02
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $0A09.w		; 20 09 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8008.w		; A9 08 80
	sta $54.b,X		; 95 54
	jsr $0A09.w		; 20 09 0A
	jsr $0336.w		; 20 36 03
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	ldy #$AF72.w		; A0 72 AF
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   5.b		; D0 05
	inc $02.b,X		; F6 02
	jsr $0A84.w		; 20 84 0A
	jsr $0A09.w		; 20 09 0A
	jsr $035C.w		; 20 5C 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  15.b		; D0 0F
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$8004.w		; A9 04 80
	sta $54.b,X		; 95 54
	ldy #$BDD8.w		; A0 D8 BD
	jsr $113C.w		; 20 3C 11
	jsr $0136.w		; 20 36 01
	jsr $0153.w		; 20 53 01
	jsr $0A09.w		; 20 09 0A
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $0A33.w		; 20 33 0A
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  18.b		; D0 12
	jsr $03EB.w		; 20 EB 03
	jsr $0501.w		; 20 01 05
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	ldy #$AF72.w		; A0 72 AF
	jsr $055A.w		; 20 5A 05
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$2D.b		; A9 2D
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $54.b,X		; 95 54
	lda #$F800.w		; A9 00 F8
	sta $32.b,X		; 95 32
	lda #$00C0.w		; A9 C0 00
	sta $34.b,X		; 95 34
	lda #$FD00.w		; A9 00 FD
	jsr $0389.w		; 20 89 03
	jsr $0AB9.w		; 20 B9 0A
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  12.b		; D0 0C
	inc $02.b,X		; F6 02
	stz $46.b,X		; 74 46
.ACCU 16
	rep #$20		; C2 20
	stz $30.b,X		; 74 30
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0040.w		; A9 40 00
	sta $3A.b,X		; 95 3A
	stz $54.b,X		; 74 54
	jsr $0153.w		; 20 53 01
.ACCU 8
	sep #$20		; E2 20
	lda #$2A.b		; A9 2A
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	inc $02.b,X		; F6 02
	lda #$0F.b		; A9 0F
	sta $78.b		; 85 78
.ACCU 16
	rep #$20		; C2 20
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	ldy #$BDDE.w		; A0 DE BD
	jsr $113C.w		; 20 3C 11
	ldy #$BDE4.w		; A0 E4 BD
	jsr $113C.w		; 20 3C 11
.ACCU 8
	sep #$20		; E2 20
	lda #$29.b		; A9 29
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  22.b		; D0 16
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$FA00.w		; A9 00 FA
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	lda #$FE80.w		; A9 80 FE
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$28.b		; A9 28
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$02.b		; A9 02
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0010.w		; A9 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2041.w		; A9 41 20
	phx		; DA
	tsb $A0.b		; 04 A0
	.db $62, $AF, $20		; 62 AF 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
	ldy #$AF32.w		; A0 32 AF
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
	jsr $0311.w		; 20 11 03
	jsr $03A4.w		; 20 A4 03
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$05.b		; A9 05
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0040.w		; A9 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2043.w		; A9 43 20
	phx		; DA
	tsb $A0.b		; 04 A0
	.db $62, $AF, $20		; 62 AF 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$07.b		; A9 07
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0040.w		; A9 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2045.w		; A9 45 20
	phx		; DA
	tsb $A0.b		; 04 A0
	.db $62, $AF, $20		; 62 AF 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$02.b		; A9 02
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0020.w		; A9 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2047.w		; A9 47 20
	phx		; DA
	tsb $A0.b		; 04 A0
	.db $62, $AF, $20		; 62 AF 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0080.w		; A9 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2049.w		; A9 49 20
	phx		; DA
	tsb $A0.b		; 04 A0
	.db $62, $AF, $20		; 62 AF 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$02.b		; A9 02
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0010.w		; 09 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$03.b		; A9 03
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0010.w		; 09 10 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$05.b		; A9 05
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0040.w		; 09 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$06.b		; A9 06
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0040.w		; 09 40 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0020.w		; 09 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$04.b		; A9 04
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$02.b		; A9 02
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0020.w		; 09 20 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0080.w		; 09 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  32.b		; D0 20
	lda #$09.b		; A9 09
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$06.b		; A9 06
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $54.b,X		; B5 54
	ora #$0080.w		; 09 80 00
	sta $54.b,X		; 95 54
	rts		; 60

	jsr $0336.w		; 20 36 03
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$02.b		; A9 02
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$07.b		; A9 07
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0014.w		; A9 14 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2053.w		; A9 53 20
	phx		; DA
	tsb $A0.b		; 04 A0
	.db $62, $AF, $20		; 62 AF 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   9.b		; D0 09
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
	ldy #$AF3E.w		; A0 3E AF
	jsr $0459.w		; 20 59 04
	jsr $03EB.w		; 20 EB 03
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jsr $044B.w		; 20 4B 04
	jsr $03A4.w		; 20 A4 03
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$05.b		; A9 05
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$04.b		; A9 04
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$08.b		; A9 08
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0044.w		; A9 44 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2055.w		; A9 55 20
	phx		; DA
	tsb $A0.b		; 04 A0
	.db $62, $AF, $20		; 62 AF 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  11.b		; D0 0B
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	lda #$0004.w		; A9 04 00
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  30.b		; D0 1E
	lda #$02.b		; A9 02
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$00.b		; A9 00
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$05.b		; A9 05
	sta $78.b		; 85 78
	lda #$09.b		; A9 09
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0024.w		; A9 24 00
	sta $54.b,X		; 95 54
	rts		; 60

	lda #$2057.w		; A9 57 20
	phx		; DA
	tsb $A0.b		; 04 A0
	.db $62, $AF, $20		; 62 AF 20
	eor ($09.b)		; 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  46.b		; D0 2E
	lda #$09.b		; A9 09
	sta $45.b,X		; 95 45
	stz $43.b,X		; 74 43
	stz $46.b,X		; 74 46
	lda #$0A.b		; A9 0A
	sta $44.b,X		; 95 44
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0084.w		; A9 84 00
	sta $54.b,X		; 95 54
	lda #$0028.w		; A9 28 00
	sta $3A.b,X		; 95 3A
	lda #$0600.w		; A9 00 06
	jsr $0389.w		; 20 89 03
	ldy #$BDEA.w		; A0 EA BD
	jmp $113C.w		; 4C 3C 11
	jsr $0153.w		; 20 53 01
.ACCU 8
	sep #$20		; E2 20
	lda #$59.b		; A9 59
	jsr $0A33.w		; 20 33 0A
	ldy #$AF62.w		; A0 62 AF
	jsr $0952.w		; 20 52 09
	jsl $80BFBB.l		; 22 BB BF 80
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  37.b		; D0 25
	inc $02.b,X		; F6 02
	lda #$1A.b		; A9 1A
	sta $78.b		; 85 78
	jsr $03DC.w		; 20 DC 03
.ACCU 8
	sep #$20		; E2 20
	lda #$08.b		; A9 08
	sta $57.b,X		; 95 57
	sta $0057.w,Y		; 99 57 00
	lda $09.b,X		; B5 09
	eor #$01.b		; 49 01
	sta $0009.w,Y		; 99 09 00
	lda #$05.b		; A9 05
	sta $56.b,X		; 95 56
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	stz $34.b,X		; 74 34
	stz $54.b,X		; 74 54
	ldy #$AF92.w		; A0 92 AF
	jsr $0C0F.w		; 20 0F 0C
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  20.b		; D0 14
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$FA00.w		; A9 00 FA
	sta $32.b,X		; 95 32
	lda #$00A0.w		; A9 A0 00
	sta $34.b,X		; 95 34
	lda #$FF80.w		; A9 80 FF
	jsr $0389.w		; 20 89 03
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  25.b		; D0 19
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	lda #$F600.w		; A9 00 F6
	sta $32.b,X		; 95 32
	lda #$00A0.w		; A9 A0 00
	sta $34.b,X		; 95 34
	stz $30.b,X		; 74 30
	ldy #$AF4A.w		; A0 4A AF
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0009.w		; A9 09 00
	sta $54.b,X		; 95 54
	lda #$F600.w		; A9 00 F6
	sta $32.b,X		; 95 32
	lda #$00A0.w		; A9 A0 00
	sta $34.b,X		; 95 34
	lda #$0200.w		; A9 00 02
	jsr $0389.w		; 20 89 03
	ldy #$AF56.w		; A0 56 AF
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  29.b		; D0 1D
	inc $02.b,X		; F6 02
	lda #$0C.b		; A9 0C
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$000A.w		; A9 0A 00
	sta $54.b,X		; 95 54
	lda #$F600.w		; A9 00 F6
	sta $32.b,X		; 95 32
	lda #$00A0.w		; A9 A0 00
	sta $34.b,X		; 95 34
	lda #$FE00.w		; A9 00 FE
	jsr $0389.w		; 20 89 03
	ldy #$AF56.w		; A0 56 AF
	jsr $0459.w		; 20 59 04
	jsr $0336.w		; 20 36 03
	ldy #$AF62.w		; A0 62 AF
	jsr $0958.w		; 20 58 09
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$5A.b		; A9 5A
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0200.w		; A9 00 02
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$61.b		; A9 61
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$BDF0.w		; A0 F0 BD
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  17.b		; D0 11
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$5A.b		; A9 5A
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $30.b,X		; 74 30
	lda #$0300.w		; A9 00 03
	sta $54.b,X		; 95 54
.ACCU 8
	sep #$20		; E2 20
	lda #$62.b		; A9 62
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$BDF7.w		; A0 F7 BD
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   8.b		; D0 08
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $04DA.w		; 20 DA 04
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  42.b		; D0 2A
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	stz $43.b,X		; 74 43
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
	lda #$5B.b		; A9 5B
	sta $78.b,X		; 95 78
	lda #$08.b		; A9 08
	sta $45.b,X		; 95 45
	lda #$0C.b		; A9 0C
	sta $44.b,X		; 95 44
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0408.w		; A9 08 04
	sta $54.b,X		; 95 54
	stz $34.b,X		; 74 34
	lda #$0400.w		; A9 00 04
	sta $32.b,X		; 95 32
	lda #$0400.w		; A9 00 04
	jmp $0389.w		; 4C 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$67.b		; A9 67
	jsr $0348.w		; 20 48 03
	jsl $80BFBB.l		; 22 BB BF 80
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $43.b,X		; B5 43
	beq   5.b		; F0 05
	lda #$69.b		; A9 69
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  42.b		; D0 2A
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	stz $43.b,X		; 74 43
	lda #$0A.b		; A9 0A
	sta $77.b,X		; 95 77
	lda #$5B.b		; A9 5B
	sta $78.b,X		; 95 78
	lda #$0A.b		; A9 0A
	sta $45.b,X		; 95 45
	lda #$0C.b		; A9 0C
	sta $44.b,X		; 95 44
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0508.w		; A9 08 05
	sta $54.b,X		; 95 54
	stz $34.b,X		; 74 34
	lda #$0500.w		; A9 00 05
	sta $32.b,X		; 95 32
	lda #$0600.w		; A9 00 06
	jmp $0389.w		; 4C 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$68.b		; A9 68
	jsr $0348.w		; 20 48 03
	jsl $80BFBB.l		; 22 BB BF 80
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldx $88.b		; A6 88
	lda $43.b,X		; B5 43
	beq   5.b		; F0 05
	lda #$6A.b		; A9 6A
	jsr $0224.w		; 20 24 02
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  20.b		; D0 14
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	lda #$0020.w		; A9 20 00
	sta $3A.b,X		; 95 3A
	ldy #$BE05.w		; A0 05 BE
	jsr $113C.w		; 20 3C 11
	jsr $0153.w		; 20 53 01
	jsr $0136.w		; 20 36 01
.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	jsr $0A33.w		; 20 33 0A
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  20.b		; D0 14
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $54.b,X		; 95 54
	lda #$0020.w		; A9 20 00
	sta $3A.b,X		; 95 3A
	ldy #$BE05.w		; A0 05 BE
	jsr $113C.w		; 20 3C 11
	jsr $0153.w		; 20 53 01
	jsr $0136.w		; 20 36 01
.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	jsr $0A33.w		; 20 33 0A
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  22.b		; D0 16
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	lda #$F900.w		; A9 00 F9
	sta $32.b,X		; 95 32
	lda #$0068.w		; A9 68 00
	sta $34.b,X		; 95 34
	lda #$FFC0.w		; A9 C0 FF
	jsr $0389.w		; 20 89 03
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  22.b		; D0 16
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	lda #$F880.w		; A9 80 F8
	sta $32.b,X		; 95 32
	lda #$0058.w		; A9 58 00
	sta $34.b,X		; 95 34
	lda #$FF90.w		; A9 90 FF
	jsr $0389.w		; 20 89 03
	jsr $0336.w		; 20 36 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  27.b		; D0 1B
	stz $46.b,X		; 74 46
	inc $02.b,X		; F6 02
	lda #$06.b		; A9 06
	sta $78.b		; 85 78
	lda #$5B.b		; A9 5B
	sta $78.b,X		; 95 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0C08.w		; A9 08 0C
	sta $54.b,X		; 95 54
	stz $30.b,X		; 74 30
	stz $32.b,X		; 74 32
	stz $34.b,X		; 74 34
.ACCU 8
	sep #$20		; E2 20
	lda #$6C.b		; A9 6C
	jsr $04DA.w		; 20 DA 04
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	ldy #$BDFE.w		; A0 FE BD
	jsr $0B49.w		; 20 49 0B
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  24.b		; D0 18
	inc $02.b,X		; F6 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $54.b,X		; 74 54
	lda #$F800.w		; A9 00 F8
	sta $32.b,X		; 95 32
	lda #$0080.w		; A9 80 00
	sta $34.b,X		; 95 34
	lda #$FF80.w		; A9 80 FF
	jsr $0389.w		; 20 89 03
.ACCU 8
	sep #$20		; E2 20
	lda #$6D.b		; A9 6D
	jsr $0348.w		; 20 48 03
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne  10.b		; D0 0A
	inc $02.b,X		; F6 02
.ACCU 16
	rep #$20		; C2 20
	stz $54.b,X		; 74 54
	stz $30.b,X		; 74 30
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	jsr $121B.w		; 20 1B 12
	jmp $0204.w		; 4C 04 02
.INDEX 16
	rep #$10		; C2 10
	ldx $88.b		; A6 88
.ACCU 8
	sep #$20		; E2 20
	lda $02.b,X		; B5 02
	bne   6.b		; D0 06
	inc $02.b,X		; F6 02
	lda #$5C.b		; A9 5C
	sta $78.b,X		; 95 78
	rts		; 60

	rts		; 60

	and ($F8.b)		; 32 F8
	sed		; F8
	sbc $330000.l,X		; FF 00 00 33
	brk $F0.b		; 00 F0
	sbc $330000.l,X		; FF 00 00 33
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $32.b		; 00 32
	cpx $FFEC.w		; EC EC FF
	brk $00.b		; 00 00
	inc A		; 1A
	brk $28.b		; 00 28
	brk $CC.b		; 00 CC
	sbc $011A63.l,X		; FF 63 1A 01
	plp		; 28
	brk $CC.b		; 00 CC
	sbc $011B64.l,X		; FF 64 1B 01
	bpl   0.b		; 10 00
	cpx $00FF.w		; EC FF 00
	and ($E8.b)		; 32 E8
	inx		; E8
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
	jsr $0824.w		; 20 24 08
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	rti		; 40

	php		; 08
	and ($00.b,X)		; 21 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	ldy $00.b		; A4 00
	rti		; 40

	asl $44.b		; 06 44
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $84.b		; 00 84
	iny		; C8
	bpl   8.b		; 10 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  33.b		; 10 21
	bra   0.b		; 80 00
	brk $98.b		; 00 98
	stx $2080.w		; 8E 80 20
	bra   1.b		; 80 01
	asl $03.b		; 06 03
	rti		; 40

	adc $47.b		; 65 47
	lsr $12.b		; 46 12
	sta ($00.b)		; 92 00
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
	brk $50.b		; 00 50
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	ora [$10.b],Y		; 17 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($00.b,X)		; 21 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $20.b		; 00 20
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($08.b,X)		; 41 08
	brk $00.b		; 00 00
	rti		; 40

	ora $02.b,X		; 15 02
	sta ($02.b,X)		; 81 02
	tsb $00.b		; 04 00
	ora ($82.b,X)		; 01 82
	bpl  33.b		; 10 21
	clc		; 18
	brk $00.b		; 00 00
	php		; 08
	ora ($F2.b),Y		; 11 F2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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

	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	.db $82, $00, $00		; 82 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($81.b,X)		; 01 81
	dey		; 88
	stx $24.b,Y		; 96 24
	bmi -96.b		; 30 A0
	brk $84.b		; 00 84
	ora $81.b,S		; 03 81
	jsr $8064.w		; 20 64 80
	bcs -112.b		; B0 90
	jsl $000076.l		; 22 76 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	jsr $0040.w		; 20 40 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  42.b		; 30 2A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	bit $8008.w		; 2C 08 80
	ora ($18.b)		; 12 18
	jsr $00EA.w		; 20 EA 00
	bra -124.b		; 80 84
	bra   1.b		; 80 01
	asl A		; 0A
	php		; 08
	.db $82, $B2, $FF		; 82 B2 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $CFDEFF.l,X		; FF FF DE CF
	cmp $59FBFF.l,X		; DF FF FB 59
	inc $FFCB.w,X		; FE CB FF
	sbc [$FD.b],Y		; F7 FD
	lda $70BEB4.l		; AF B4 BE 70
	adc $FEDF1F.l,X		; 7F 1F DF FE
	sbc $B7F777.l,X		; FF 77 F7 B7
	cmp [$DE.b]		; C7 DE
	adc $EAF7.w		; 6D F7 EA
	lda $DC5EEF.l,X		; BF EF 5E DC
	eor $FFFF.w,X		; 5D FF FF
	lda $7FEEFF.l		; AF FF EE 7F
	plb		; AB
	sbc $E7F6.w,X		; FD F6 E7
	lda [$C3.b],Y		; B7 C3
	cmp ($CA.b,S),Y		; D3 CA
	asl $FFBF.w,X		; 1E BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	xce		; FB
	sbc $FEFFC7.l,X		; FF C7 FF FE
	sbc $FEFDFB.l,X		; FF FB FD FE
	adc $BFFF.w,X		; 7D FF BF
	inc $F73D.w,X		; FE 3D F7
	tyx		; BB
	sbc $FFA3BE.l,X		; FF BE A3 FF
	lda [$FF.b],Y		; B7 FF
	xce		; FB
	sbc $FFF7FD.l,X		; FF FD F7 FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $6B55FF.l,X		; FF FF 55 6B
	sbc $FFEF7F.l,X		; FF 7F EF FF
	inc $EFFF.w		; EE FF EF
	inc $FF.b		; E6 FF
	sbc $F9FB.w,X		; FD FB F9
	sbc $D7FF.w		; ED FF D7
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
	sbc $DFFFFF.l		; EF FF FF DF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FDFDFF.l,X		; FF FF FD FD
	lda $AFCF7F.l,X		; BF 7F CF AF
	cmp $F714EC.l,X		; DF EC 14 F7
	sbc $CF7B35.l,X		; FF 35 7B CF
	ora $FBEF6A.l,X		; 1F 6A EF FB
	sbc $E6FF.w,X		; FD FF E6
	cmp $FFF7.w,X		; DD F7 FF
	sbc $BD.b,X		; F5 BD
	and $D9DAF0.l,X		; 3F F0 DA D9
	lsr $EE.b,X		; 56 EE
	sbc $D7FFEF.l,X		; FF EF FF D7
	tyx		; BB
	ldx $FEF7.w,Y		; BE F7 FE
	sbc $B761DE.l,X		; FF DE 61 B7
	sbc $676F17.l		; EF 17 6F 67
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $EDFFFF.l,X		; FF FF FF ED
	plx		; FA
	cmp $FEFC5F.l,X		; DF 5F FC FE
	inc $F4F3.w,X		; FE F3 F4
	sbc [$FF.b],Y		; F7 FF
	and $FFF6FD.l,X		; 3F FD F6 FF
	sbc $BDFEED.l		; EF ED FE BD
	sbc $FDFB8F.l,X		; FF 8F FB FD
	cmp $FFF7B5.l		; CF B5 F7 FF
	sbc $7FFCFF.l,X		; FF FF FC 7F
	sbc $FFEDFF.l,X		; FF FF ED FF
	sbc $EFEBF1.l,X		; FF F1 EB EF
	adc $FFFF7E.l,X		; 7F 7E FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	xce		; FB
	sbc $FCFFF7.l,X		; FF F7 FF FC
	sbc $7FBBFF.l,X		; FF FF BB 7F
	sbc $F77E.w,X		; FD 7E F7
	jmp $D27AE3.l		; 5C E3 7A D2
	eor $F7AF.w,Y		; 59 AF F7
	inc $B57B.w,X		; FE 7B B5
	eor $BEFD4F.l,X		; 5F 4F FD BE
	sbc $FCFD.w,X		; FD FD FC
	eor $4F6D7F.l,X		; 5F 7F 6D 4F
	lda $DD7F.w,X		; BD 7F DD
	sbc [$95.b],Y		; F7 95
	cmp $FF5FFB.l,X		; DF FB 5F FF
	lda $D3FD.w,X		; BD FD D3
	sbc $C5797C.l,X		; FF 7C 79 C5
	jmp ($FC7E.w)		; 6C 7E FC
	eor $DD.b,X		; 55 DD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDF.w,X		; FD DF FF
	sbc $FDFFBF.l,X		; FF BF FF FD
	sbc $CFF95F.l,X		; FF 5F F9 CF
	lda $F4DF.w,X		; BD DF F4
	tyx		; BB
	tyx		; BB
	adc $EF7FFF.l,X		; 7F FF 7F EF
	inc $FFFF.w,X		; FE FF FF
	eor $FF7C97.l,X		; 5F 97 7C FF
	plx		; FA
	sbc $BFBFEF.l,X		; FF EF BF BF
	adc $FFFDFF.l,X		; 7F FF FD FF
	sbc $BFFFFB.l,X		; FF FB FF BF
	sbc $7EDF46.l,X		; FF 46 DF 7E
	sbc $CCEF.w,X		; FD EF CC
	stp		; DB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	adc $FFFFFF.l,X		; 7F FF FF FF
	xba		; EB
	sbc $DEFFEF.l,X		; FF EF FF DE
	lda $F9FEFE.l,X		; BF FE FE F9
	phx		; DA
	sbc $6D9FED.l,X		; FF ED 9F 6D
	jmp.w [$DDAE]		; DC AE DD
	sta $EDF3.w,X		; 9D F3 ED
	lda $FFFDFF.l,X		; BF FF FD FF
	sbc $7FFD.w,X		; FD FD 7F
	sbc $77B73B.l		; EF 3B B7 77
	ora $BED0.w,Y		; 19 D0 BE
	lda $FFFFDF.l,X		; BF DF FF FF
	sbc [$BF.b],Y		; F7 BF
	adc $EBBBFE.l,X		; 7F FE BB EB
	ora $9FABFF.l,X		; 1F FF AB 9F
	ply		; 7A
	cmp $3ADB.w,Y		; D9 DB 3A
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFBFFF.l,X		; FF FF BF DF
	sbc $FEDEFF.l,X		; FF FF DE FE
	lda $FFFEFF.l,X		; BF FF FE FF
	adc $FFFEF7.l,X		; 7F F7 FE FF
	sbc $FFFBBF.l,X		; FF BF FB FF
	dec $B5FF.w,X		; DE FF B5
	tsx		; BA
	xce		; FB
	sbc [$FD.b],Y		; F7 FD
	adc $FFB7BF.l		; 6F BF B7 FF
	ror $EF.b,X		; 76 EF
	sbc $FEBB7B.l,X		; FF 7B BB FE
	adc $FFEDEF.l		; 6F EF ED FF
	rol $FE.b,X		; 36 FE
	tda		; 7B
	sbc $EF7ADF.l,X		; FF DF 7A EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $F6FFFF.l,X		; FF FF FF F6
	sbc $E4FAFB.l,X		; FF FB FA E4
	lsr $DF.b,X		; 56 DF
	sbc $77FB.w,X		; FD FB 77
	ror $F7E7.w,X		; 7E E7 F7
	lda $5DB7B7.l,X		; BF B7 B7 5D
	cmp $FD7FEF.l,X		; DF EF 7F FD
	sbc $5FFEFD.l,X		; FF FD FE 5F
	adc $57EFB0.l		; 6F B0 EF 57
	sbc ($CE.b,S),Y		; F3 CE
	ldx $FE74.w		; AE 74 FE
	sbc $EDEFFF.l,X		; FF FF EF ED
	sbc [$DE.b],Y		; F7 DE
	lda $F5F5BD.l,X		; BF BD F5 F5
	xce		; FB
	adc $7FFFE3.l,X		; 7F E3 FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFEFF.l,X		; FF FF FE DF
	sbc $F7FFFE.l,X		; FF FE FF F7
	adc $6BFFDF.l,X		; 7F DF FF 6B
	sbc $F97FDF.l,X		; FF DF 7F F9
	eor [$7F.b],Y		; 57 7F
	sbc $BFCEE7.l,X		; FF E7 CE BF
	sbc $FF7F79.l,X		; FF 79 7F FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $BFFF.w,X		; FD FF BF
	sbc $FFFB.w,X		; FD FB FF
	xce		; FB
	eor $FF3B9F.l,X		; 5F 9F 3B FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $7DFF7F.l,X		; FF 7F FF 7D
	xce		; FB
	sta $F64EFF.l,X		; 9F FF 4E F6
	cmp [$FF.b],Y		; D7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFB7F.l,X		; FF 7F FB FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	inc $FE.b,X		; F6 FE
	cmp $E76BEF.l		; CF EF 6B E7
	adc [$DA.b],Y		; 77 DA
	cmp $D5C7D7.l,X		; DF D7 C7 D5
	cmp $6FFAEF.l		; CF EF FA 6F
	xce		; FB
	cmp $FDAF97.l,X		; DF 97 AF FD
	dec $DF.b		; C6 DF
	stp		; DB
	eor $6A972F.l,X		; 5F 2F 97 6A
	adc $BF.b,X		; 75 BF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $7F6FF3.l		; EF F3 6F 7F
	adc $93178D.l,X		; 7F 8D 17 93
	adc $3EDD.w,Y		; 79 DD 3E
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFA.w,X		; FE FA FF
	sbc $BFBFFF.l,X		; FF FF BF BF
	xce		; FB
	sbc $BFDFFF.l,X		; FF FF DF BF
	adc $FFBFFE.l,X		; 7F FE BF FF
	sbc $BFEBFF.l,X		; FF FF EB BF
	cmp $96FD.w,Y		; D9 FD 96
	tyx		; BB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FE.b],Y		; F7 FE
	sbc $F7DFD7.l,X		; FF D7 DF F7
	lda [$75.b],Y		; B7 75
	sbc $EFB7.w		; ED B7 EF
	ora [$FF.b],Y		; 17 FF
	lda $57FFFF.l,X		; BF FF FF 57
	sbc $DA7FFF.l,X		; FF FF 7F DA
	adc $EE7FFF.l,X		; 7F FF 7F EE
	sbc $FF671F.l,X		; FF 1F 67 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $BFFFFF.l,X		; 7F FF FF BF
	sbc $FEEFFF.l,X		; FF FF EF FE
	sbc $FF9FFF.l,X		; FF FF 9F FF
	sbc [$FF.b]		; E7 FF
	sbc $FDBFDB.l,X		; FF DB BF FD
	eor $FF7F.w,X		; 5D 7F FF
	sbc $487DCE.l,X		; FF CE 7D 48
	ora [$01.b],Y		; 17 01
	lda $27F5FE.l,X		; BF FE F5 27
	sbc [$E5.b],Y		; F7 E5
	sbc $FA.b,X		; F5 FA
	jsr ($5DEE.w,X)		; FC EE 5D
	sbc ($FF.b,S),Y		; F3 FF
	inc $3C3F.w,X		; FE 3F 3C
	xce		; FB
	sbc $CFDFFD.l,X		; FF FD DF CF
	lda $EDFC.w,X		; BD FC ED
	cmp $BF8FFD.l,X		; DF FD 8F BF
	sta $3F.b		; 85 3F
	eor $FFFF23.l,X		; 5F 23 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FDFFFF.l,X		; DF FF FF FD
	inc $FFFF.w,X		; FE FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $9BFFF5.l,X		; FF F5 FF 9B
	sbc $FEDFFD.l,X		; FF FD DF FE
	inc $32BB.w		; EE BB 32
	sbc $BC7FFE.l,X		; FF FE 7F BC
	cmp $F7FFFF.l,X		; DF FF FF F7
	and $FFFF77.l,X		; 3F 77 FF FF
	sbc $BCFC75.l,X		; FF 75 FC BC
	sbc $EFFFFF.l,X		; FF FF FF EF
	adc $77FFFF.l,X		; 7F FF FF 77
	plx		; FA
	sbc $6FFBFF.l,X		; FF FF FB 6F
	ror $7FCF.w,X		; 7E CF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $EBDFFF.l		; EF FF DF EB
	lda $FF.b,X		; B5 FF
	dec $FFFF.w,X		; DE FF FF
	lda $7D3BFF.l,X		; BF FF 3B 7D
	sbc $BFBFDF.l		; EF DF BF BF
	ldx $BE.b		; A6 BE
	lda $5C.b,S		; A3 5C
	cmp $DB.b,S		; C3 DB
	sta ($DF.b,S),Y		; 93 DF
	sbc $AFFFFF.l,X		; FF FF FF AF
	cmp $FF7B7C.l,X		; DF 7C 7B FF
	sbc $0F52.w,X		; FD 52 0F
	lda $F529.w,X		; BD 29 F5
	sbc ($BB.b,X)		; E1 BB
	inc $EEFE.w,X		; FE FE EE
	sbc [$FB.b],Y		; F7 FB
	sbc $FF.b,X		; F5 FF
	sbc [$EE.b],Y		; F7 EE
	and [$79.b],Y		; 37 79
	rol $F4.b		; 26 F4
	cmp $FFFFDD.l,X		; DF DD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FEFFEF.l,X		; FF EF FF FE
	sbc $DFDFFF.l,X		; FF FF DF DF
	sbc $FFF777.l,X		; FF 77 F7 FF
	adc ($FF.b,S),Y		; 73 FF
	sbc $EDFF.w,X		; FD FF ED
	inc $6BE2.w,X		; FE E2 6B
	sbc $77EFDB.l,X		; FF DB EF 77
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FDBFF7.l,X		; FF F7 BF FD
	sbc $FF.b,S		; E3 FF
	sbc $FBB1D8.l,X		; FF D8 B1 FB
	lda $F5.b,X		; B5 F5
	sbc $FDFDFF.l,X		; FF FF FD FD
	sbc $FFFFFD.l,X		; FF FD FF FF
	and $DE7B.w,X		; 3D 7B DE
	cmp $7779F7.l,X		; DF F7 79 77
	eor $FFFFFF.l,X		; 5F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	php		; 08
	bra   8.b		; 80 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	php		; 08
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	bra  32.b		; 80 20
	cop $04.b		; 02 04
	brk $18.b		; 00 18
	bpl   8.b		; 10 08
	tsb $80.b		; 04 80
	eor $82.b		; 45 82
	ror $00.b		; 66 00
	.db $82, $08, $2C		; 82 08 2C
	sta $3091.w		; 8D 91 30
	eor $00.b		; 45 00
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
	bmi   1.b		; 30 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $20.b		; 00 20
	tsb $41.b		; 04 41
	cop $34.b		; 02 34
	adc $50.b,S		; 63 50
	brk $00.b		; 00 00
	bmi  29.b		; 30 1D
	ora ($01.b,X)		; 01 01
	ora $0B.b		; 05 0B
	cpy $48.b		; C4 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $01.b		; 04 01
	jsr $0000.w		; 20 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $10.b		; 00 10
	brk $81.b		; 00 81
	brk $08.b		; 00 08
	cld		; D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	jsr $6024.w		; 20 24 60
	asl A		; 0A
	rti		; 40

	pla		; 68
	tsb $81.b		; 04 81
	sei		; 78
	dey		; 88
	sta ($C0.b)		; 92 C0
	cop $00.b		; 02 00
	php		; 08
	rol $00.b		; 26 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0001.w		; 20 01 00
	jsr $0000.w		; 20 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	jsr $4001.w		; 20 01 40
	brk $04.b		; 00 04
	brk $14.b		; 00 14
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	rti		; 40

	rti		; 40

	bpl   0.b		; 10 00
	clc		; 18
	.db $42, $00		; 42 00
	tsb $00.b		; 04 00
	mvp $08,$07		; 44 07 08
	dey		; 88
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
	jsr $0800.w		; 20 00 08
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora ($80.b,X)		; 01 80
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora #$01.b		; 09 01
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	rti		; 40

	.db $82, $45, $00		; 82 45 00
	brk $00.b		; 00 00
	bpl  18.b		; 10 12
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	.db $42, $00		; 42 00
	ora [$0B.b]		; 07 0B
	jsr $A002.w		; 20 02 A0
	asl $3B.b		; 06 3B
	sec		; 38
	dey		; 88
	stz $8002.w		; 9C 02 80
	mvn $00,$63		; 54 63 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bvc  16.b		; 50 10
	brk $00.b		; 00 00
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	jsl $000001.l		; 22 01 00 00
	brk $01.b		; 00 01
	brk $51.b		; 00 51
	mvp $01,$D0		; 44 D0 01
	bit $82.b		; 24 82
	brk $10.b		; 00 10
	jmp $0200.w		; 4C 00 02
	eor ($C0.b)		; 52 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0010.w		; 20 10 00
	brk $02.b		; 00 02
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	cop $20.b		; 02 20
	brk $02.b		; 00 02
	bra   0.b		; 80 00
	jsr $0400.w		; 20 00 04
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $8004.w		; 20 04 80
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	tsb $91.b		; 04 91
	pha		; 48
.ACCU 16
	rep #$20		; C2 20
	ora $0121.w,Y		; 19 21 01
	ldy #$0444.w		; A0 44 04
	ora $40.b,S		; 03 40
	ora $10.b,X		; 15 10
	iny		; C8
	bit $0000.w		; 2C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	trb $00.b		; 14 00
	brk $54.b		; 00 54
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $08.b		; 04 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	php		; 08
	ora ($00.b,X)		; 01 00
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$0010.w		; A0 10 00
	ora ($22.b,X)		; 01 22
	php		; 08
	bra   0.b		; 80 00
	bra  22.b		; 80 16
	jsr $6426.w		; 20 26 64
	rti		; 40

	eor ($00.b,X)		; 41 00
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	and ($00.b,X)		; 21 00
	rti		; 40

	tsb $00.b		; 04 00
	bpl  65.b		; 10 41
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	jsr $0100.w		; 20 00 01
	bra   0.b		; 80 00
	brk $0A.b		; 00 0A
	ora ($00.b,S),Y		; 13 00
	ldy #$008E.w		; A0 8E 00
	bcc -80.b		; 90 B0
	bmi -123.b		; 30 85
	bpl  16.b		; 10 10
	and #$10DB.w		; 29 DB 10
	.db $82, $B0, $00		; 82 B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $20.b		; 00 20
	brk $08.b		; 00 08
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $02.b		; 00 02
	bpl -112.b		; 10 90
	brk $00.b		; 00 00
	ora ($00.b)		; 12 00
	brk $80.b		; 00 80
	jsr $0000.w		; 20 00 00
	brk $A0.b		; 00 A0
	brk $02.b		; 00 02
	jsr $0000.w		; 20 00 00
	bra  10.b		; 80 0A
	brk $01.b		; 00 01
	rti		; 40

	ora ($00.b,X)		; 01 00
	brk $10.b		; 00 10
	lda ($00.b,X)		; A1 00
	bra -128.b		; 80 80
	sty $8B89.w		; 8C 89 8B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $02.b		; 00 02
	plp		; 28
	ora ($00.b,X)		; 01 00
	sta ($00.b)		; 92 00
	brk $00.b		; 00 00
	sta $00.b		; 85 00
	rti		; 40

	brk $80.b		; 00 80
	php		; 08
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   4.b		; 80 04
	brk $00.b		; 00 00
	cpy #$0080.w		; C0 80 00
	brk $88.b		; 00 88
	brk $40.b		; 00 40
	cpy #$400A.w		; C0 0A 40
	ora ($4B.b,X)		; 01 4B
	wai		; CB
	tsb $D1.b		; 04 D1
	bpl  88.b		; 10 58
	brk $D0.b		; 00 D0
	ora ($6C.b,X)		; 01 6C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cli		; 58
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	trb $00.b		; 14 00
	brk $04.b		; 00 04
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	jsr $0002.w		; 20 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  32.b		; 10 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	ora ($00.b,X)		; 01 00
	php		; 08
	jsr $4481.w		; 20 81 44
	php		; 08
	sty $08.b,X		; 94 08
	bit $10.b		; 24 10
	asl $31.b		; 06 31
	sep #$00		; E2 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	php		; 08
	bra   0.b		; 80 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $02.b		; 00 02
	jsr $0008.w		; 20 08 00
	php		; 08
	cop $94.b		; 02 94
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $10.b		; 02 10
	ora ($00.b),Y		; 11 00
	jsr $2000.w		; 20 00 20
	.db $82, $E0, $29		; 82 E0 29
	ora ($80.b,X)		; 01 80
	tsb $84.b		; 04 84
	bit $85.b		; 24 85
	brk $96.b		; 00 96
	asl A		; 0A
	bpl   8.b		; 10 08
	sbc ($00.b)		; F2 00
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
	brk $80.b		; 00 80
	jsr $0000.w		; 20 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	plp		; 28
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cop $00.b		; 02 00
	brk $08.b		; 00 08
	bit $00.b		; 24 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $00C0.w		; 20 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0009.w		; 20 09 00
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	trb $80.b		; 14 80
	adc $40.b,X		; 75 40
	eor ($0C.b,X)		; 41 0C
	cpy #$B002.w		; C0 02 B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $02.b		; 00 02
	bra   0.b		; 80 00
	sty $0890.w		; 8C 90 08
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	trb $04.b		; 14 04
	brk $80.b		; 00 80
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	ora #$0840.w		; 09 40 08
	bcc -119.b		; 90 89
	brk $02.b		; 00 02
	stz $4503.w		; 9C 03 45
	brk $BE.b		; 00 BE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
	jsr $0280.w		; 20 80 02
	adc ($00.b,X)		; 61 00
	bit $00.b		; 24 00
	brk $80.b		; 00 80
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $08.b		; 00 08
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $02.b		; 00 02
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	iny		; C8
	bra -46.b		; 80 D2
	bcc  88.b		; 90 58
	.db $82, $03, $20		; 82 03 20
	adc ($A2.b)		; 72 A2
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBDFF.l		; EF FF BD FF
	xce		; FB
	dec $6FF7.w,X		; DE F7 6F
	bvc -39.b		; 50 D9
	cmp ($FF.b)		; D2 FF
	adc $8BFFBF.l,X		; 7F BF FF 8B
	sbc $7FFFFE.l,X		; FF FE FF 7F
	sbc $FEEFFE.l,X		; FF FE EF FE
	sbc $2FF7.w,Y		; F9 F7 2F
	sbc ($FF.b)		; F2 FF
	sbc $FF36CF.l,X		; FF CF 36 FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $5DEEF7.l,X		; FF F7 EE 5D
	adc ($FE.b),Y		; 71 FE
	cmp $E7F7FF.l,X		; DF FF F7 E7
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
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $F7FFFB.l,X		; FF FB FF F7
	sbc $FEFBFF.l,X		; FF FF FB FE
	adc $FDFFBE.l		; 6F BE FF FD
	sbc $7DBE.w,X		; FD BE 7D
	cmp $FFFFFB.l		; CF FB FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $EFFFF7.l,X		; FF F7 FF EF
	sta $69F7FF.l		; 8F FF F7 69
	cmp $FFFFBF.l,X		; DF BF FF FF
	cmp $7DFFFF.l,X		; DF FF FF 7D
	sbc $FEEEE7.l,X		; FF E7 EE FE
	sbc $F7F5EF.l,X		; FF EF F5 F7
	sbc $FFFFAB.l		; EF AB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFF7.l,X		; FF F7 FF FD
	cmp $DFFEFF.l,X		; DF FF FE DF
	sbc [$FF.b],Y		; F7 FF
	xce		; FB
	sbc $FF3FBF.l,X		; FF BF 3F FF
	sbc $FF79F7.l,X		; FF F7 79 FF
	sbc $B7EF.w,X		; FD EF B7
	eor $BFFC6B.l		; 4F 6B FC BF
	sei		; 78
	lda $FBCFFB.l,X		; BF FB CF FB
	sbc $FF3DFF.l,X		; FF FF 3D FF
	ror $27DC.w,X		; 7E DC 27
	cmp [$DF.b],Y		; D7 DF
	sta $FFFC97.l		; 8F 97 FC FF
	sbc $7FFF7B.l,X		; FF 7B FF 7F
	ply		; 7A
	adc $FF.b,X		; 75 FF
	adc [$EF.b]		; 67 EF
	lda $AFF2DB.l		; AF DB F2 AF
	sta $FFFF.w,Y		; 99 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FBFF.w,X		; FE FF FB
	sbc $FFFF.w,X		; FD FF FF
	cmp $BBFF.w,X		; DD FF BB
	sbc $FBFEAF.l,X		; FF AF FE FB
	sbc $6EF7FF.l,X		; FF FF F7 6E
	lda $FFBF.w,X		; BD BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	dec $BFF7.w,X		; DE F7 BF
	adc $FFF78F.l,X		; 7F 8F F7 FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $7FDEEF.l		; EF EF DE 7F
	sbc $FF7F6F.l,X		; FF 6F 7F FF
	lda $FFFEEF.l		; AF EF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFDF.l,X		; FF DF FF DF
	sbc $BFFFFF.l,X		; FF FF FF BF
	adc $DDDCFE.l,X		; 7F FE DC DD
	cmp $FFEFBD.l,X		; DF BD EF FF
	sbc $DDDDFB.l,X		; FF FB DD DD
	xce		; FB
	sbc $FDF6AF.l,X		; FF AF F6 FD
	and $59DFFC.l,X		; 3F FC DF 59
	rol $BF4D.w,X		; 3E 4D BF
	inc $FE.b,X		; F6 FE
	sbc $FFFDFF.l		; EF FF FD FF
	adc $BB5FFF.l,X		; 7F FF 5F BB
	adc $BFEE.w,X		; 7D EE BF
	sbc $74BF3B.l,X		; FF 3B BF 74
	sbc ($52.b,S),Y		; F3 52
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFB.l		; EF FB FF FF
	inc $FFFF.w		; EE FF FF
	stp		; DB
	ror $9DBF.w,X		; 7E BF 9D
	tsx		; BA
	sbc $DFF7FF.l,X		; FF FF F7 DF
	sbc $FFDFCE.l,X		; FF CE DF FF
	sbc $9F.b,S		; E3 9F
	lda $FEBC7F.l,X		; BF 7F BC FE
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FEBFDF.l,X		; FF DF BF FE
	sbc [$AD.b],Y		; F7 AD
	sbc $DED7FD.l,X		; FF FD D7 DE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDF7FF.l,X		; FF FF F7 FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $77.b,X		; F6 77
	adc [$F7.b]		; 67 F7
	sbc $5FFFFF.l,X		; FF FF FF 5F
	sbc $FF3FBF.l,X		; FF BF 3F FF
	plx		; FA
	lda $FDFF.w,X		; BD FF FD
	sbc $73FEFF.l,X		; FF FF FE 73
	sbc $EFFFFF.l		; EF FF FF EF
	adc $7BEE.w,Y		; 79 EE 7B
	cmp $E79F78.l,X		; DF 78 9F E7
	cmp $FF.b,X		; D5 FF
	sbc $FDFFDF.l,X		; FF DF FF FD
	lda $DE7F.w,X		; BD 7F DE
	and [$DF.b],Y		; 37 DF
	cmp $F6.b,X		; D5 F6
	ldy $F87F.w,X		; BC 7F F8
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
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $EFFDFF.l,X		; FF FF FD EF
	xce		; FB
	xce		; FB
	and $DF5EAE.l,X		; 3F AE 5E DF
	adc $BC8F7F.l,X		; 7F 7F 8F BC
	tyx		; BB
	adc $DFBFFF.l,X		; 7F FF BF DF
	sbc $FF7F77.l,X		; FF 77 7F FF
	sbc $FEEFFD.l,X		; FF FD EF FE
	lda $75FF6E.l,X		; BF 6E FF 75
	sbc $D7FF6F.l,X		; FF 6F FF D7
	sbc $FDFFFE.l,X		; FF FE FF FD
	inc $F7EE.w,X		; FE EE F7
	sbc $F6F97F.l		; EF 7F F9 F6
	ldx $FF.b,Y		; B6 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $7FF9FE.l,X		; FF FE F9 7F
	sbc $9FFF.w,X		; FD FF 9F
	cmp $FDFEFD.l,X		; DF FD FE FD
	sbc $F6EFBF.l,X		; FF BF EF F6
	sbc ($FE.b,S),Y		; F3 FE
	jmp.w [$FFDD]		; DC DD FF
	sbc $BFFEDF.l,X		; FF DF FE BF
	sbc $A7B9F7.l		; EF F7 B9 A7
	adc $3EFDF7.l,X		; 7F F7 FD 3E
	inc $7CFD.w,X		; FE FD 7C
	sbc $BFFF.w,X		; FD FF BF
	sbc $7DAF7E.l,X		; FF 7E AF 7D
	cmp $ED5FFA.l,X		; DF FA 5F ED
	eor $FE9F6F.l,X		; 5F 6F 9F FE
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
	xce		; FB
	sbc $FFF5FF.l,X		; FF FF F5 FF
	cmp $FF7BBF.l,X		; DF BF 7B FF
	ror $9F3F.w,X		; 7E 3F 9F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFBE.l,X		; FF BE FF FB
	eor $7FFFFF.l,X		; 5F FF FF 7F
	lda $DF.b,X		; B5 DF
	sbc $BDF3.w,X		; FD F3 BD
	inc $FFFF.w,X		; FE FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	adc $7FFF6B.l,X		; 7F 6B FF 7F
	and $FFFF7C.l,X		; 3F 7C FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF6FF.l,X		; FF FF F6 FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFABFD.l,X		; FF FD AB FF
	xce		; FB
	inc $FE7F.w,X		; FE 7F FE
	adc $F7.b,X		; 75 F7
	sbc $FF6B7F.l,X		; FF 7F 6B FF
	sbc $3673D7.l,X		; FF D7 73 36
	xce		; FB
	cmp [$FF.b],Y		; D7 FF
	sbc $E7F7DF.l,X		; FF DF F7 E7
	sbc ($DF.b,S),Y		; F3 DF
	sbc $7BCBB9.l,X		; FF B9 CB 7B
	sbc $FF7A7F.l,X		; FF 7F 7A FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	tyx		; BB
	sbc $FFDDF7.l,X		; FF F7 DD FF
	ror $7B7D.w,X		; 7E 7D 7B
	ldx $7B.b,Y		; B6 7B
	sbc ($FF.b),Y		; F1 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFEBF.l,X		; FF BF FE FD
	sbc [$FF.b],Y		; F7 FF
	sbc $FFDDFF.l,X		; FF FF DD FF
	sbc $FFF6FB.l,X		; FF FB F6 FF
	sbc [$FF.b],Y		; F7 FF
	cmp $FFF3FF.l,X		; DF FF F3 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	and $D5FEFF.l,X		; 3F FF FE D5
	adc $E73E.w,X		; 7D 3E E7
	sbc $FFBDBF.l,X		; FF BF BD FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	cmp $FFF7.w,Y		; D9 F7 FF
	sbc $7BFD.w,X		; FD FD 7B
	ror $4E.b,X		; 76 4E
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FE7FFF.l		; EF FF 7F FE
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $3EF9BF.l,X		; FF BF F9 3E
	cmp $FA.b,X		; D5 FA
	sbc [$7F.b],Y		; F7 7F
	dec $FEF5.w,X		; DE F5 FE
	lda $FFBF.w,X		; BD BF FF
	cmp $5FDDFB.l,X		; DF FB DD 5F
	lda $FDCED9.l,X		; BF D9 CE FD
	tda		; 7B
	sbc $EF.b		; E5 EF
	eor $5DF7.w,X		; 5D F7 5D
	sbc [$FF.b],Y		; F7 FF
	sbc $BB7FFD.l,X		; FF FD 7F BB
	and $FADBFF.l,X		; 3F FF DB FA
	clv		; B8
	ldy $DFDD.w,X		; BC DD DF
	adc $FF7F.w,X		; 7D 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	and $FFFFDF.l,X		; 3F DF FF FF
	tda		; 7B
	sbc $F7FFF4.l,X		; FF F4 FF F7
	sbc [$DF.b],Y		; F7 DF
	sbc $FFDF3F.l,X		; FF 3F DF FF
	cmp $B77B.w,X		; DD 7B B7
	sbc $FFDCFF.l,X		; FF FF DC FF
	lda $FF7FFF.l,X		; BF FF 7F FF
	inc $FFFD.w,X		; FE FD FF
	adc $7FEF.w,X		; 7D EF 7F
	cmp $7FFDFF.l,X		; DF FF FD 7F
	inc $FFDB.w		; EE DB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp [$FE.b],Y		; D7 FE
	sbc $FBFDFF.l,X		; FF FF FD FB
	adc [$D7.b],Y		; 77 D7
	sbc $FBFEFF.l,X		; FF FF FE FB
	adc $3FBF.w,X		; 7D BF 3F
	xba		; EB
	ora $FEFC66.l,X		; 1F 66 FC FE
	sbc [$7F.b],Y		; F7 7F
	sbc $AE7F7F.l,X		; FF 7F 7F AE
	rol $FFCF.w		; 2E CF FF
	cmp $BAFE7E.l,X		; DF 7E FE BA
	and ($E6.b,S),Y		; 33 E6
	wai		; CB
	sbc ($FF.b,S),Y		; F3 FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	cmp [$EF.b],Y		; D7 EF
	cpx $FAFF.w		; EC FF FA
	sbc $FF.b,S		; E3 FF
	jmp ($EAFC.w)		; 6C FC EA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	adc $7EFE9F.l,X		; 7F 9F FE 7E
	sbc $FAD7FF.l,X		; FF FF D7 FA
	and $1B8F9B.l,X		; 3F 9B 8F 1B
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $EFFF.w,X		; FE FF EF
	sbc $B7BFDF.l,X		; FF DF BF B7
	adc [$FF.b],Y		; 77 FF
	lsr $1C5E.w		; 4E 5E 1C
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FDFDFD.l,X		; FF FD FD FD
	sbc $B67F7E.l,X		; FF 7E 7F B6
	adc $6FCEFF.l,X		; 7F FF CE 6F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	dey		; 88
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	tsb $20.b		; 04 20
	php		; 08
	brk $00.b		; 00 00
	php		; 08
	bpl   8.b		; 10 08
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora ($80.b,X)		; 01 80
	brk $00.b		; 00 00
	bra   8.b		; 80 08
	bra  24.b		; 80 18
	brk $00.b		; 00 00
	asl A		; 0A
	eor ($24.b,X)		; 41 24
	jsr $CA04.w		; 20 04 CA
	bra  68.b		; 80 44
	jsr $0484.w		; 20 84 04
	brk $40.b		; 00 40
	ora ($A0.b,X)		; 01 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	sty $14.b		; 84 14
	brk $04.b		; 00 04
	ora $00.b		; 05 00
	jsl $002012.l		; 22 12 20 00
	pla		; 68
	mvn $80,$40		; 54 40 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $20.b		; 00 20
	brk $01.b		; 00 01
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	jsr $0000.w		; 20 00 00
	asl $001A.w		; 0E 1A 00
	brk $10.b		; 00 10
	cpy #$0000.w		; C0 00 00
	.db $82, $C7, $28		; 82 C7 28
	lda ($00.b,X)		; A1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	tsb $05.b		; 04 05
	brk $00.b		; 00 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	jsr $2100.w		; 20 00 21
	ora $02.b		; 05 02
	ldy #$C084.w		; A0 84 C0
	jsr $8000.w		; 20 00 80
	brk $80.b		; 00 80
	tsb $40.b		; 04 40
	inc A		; 1A
	bvc  28.b		; 50 1C
	cop $12.b		; 02 12
	lsr A		; 4A
	lda $2C.b		; A5 2C
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $20.b		; 00 20
	php		; 08
	lsr $20.b		; 46 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc   0.b		; 50 00
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	php		; 08
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $A0.b		; 00 A0
	bpl   3.b		; 10 03
	brk $12.b		; 00 12
	sta ($20.b,X)		; 81 20
	plp		; 28
	ora $48.b,S		; 03 48
	tsb $2003.w		; 0C 03 20
	phd		; 0B
	cop $00.b		; 02 00
	.db $62, $CA, $08		; 62 CA 08
	sta $00.b,X		; 95 00
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
	ora ($00.b,X)		; 01 00
	jsr $0000.w		; 20 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $8000.w		; 20 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	php		; 08
	brk $04.b		; 00 04
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	sta $02.b		; 85 02
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $3A.b		; 00 3A
	.db $62, $52, $08		; 62 52 08
	bit $22.b		; 24 22
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	bit $04.b		; 24 04
	clc		; 18
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pha		; 48
	ora ($20.b,X)		; 01 20
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	.db $42, $00		; 42 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $20.b		; 02 20
	brk $14.b		; 00 14
	tsb $01.b		; 04 01
	brk $04.b		; 00 04
	brk $23.b		; 00 23
	php		; 08
	asl $8000.w		; 0E 00 80
	bra 114.b		; 80 72
	brk $40.b		; 00 40
	cmp $0148.w,X		; DD 48 01
	ldy #$0000.w		; A0 00 00
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
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	plp		; 28
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	and ($00.b,X)		; 21 00
	bpl   0.b		; 10 00
	sty $02.b		; 84 02
	eor ($88.b),Y		; 51 88
	ora $4010.w		; 0D 10 40
	bpl   0.b		; 10 00
	trb $08.b		; 14 08
	ora ($A0.b,X)		; 01 A0
	sta $00.b		; 85 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra   4.b		; 80 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $42.b		; 00 42
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0005.w		; 20 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	.db $82, $80, $42		; 82 80 42
	cop $04.b		; 02 04
	brk $31.b		; 00 31
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	clc		; 18
	cli		; 58
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bpl -124.b		; 10 84
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	ora ($00.b,X)		; 01 00
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
	brk $10.b		; 00 10
	cop $01.b		; 02 01
	sta ($08.b)		; 92 08
	rti		; 40

	bra -111.b		; 80 91
	cop $02.b		; 02 02
	tsb $80.b		; 04 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	jsr $0074.w		; 20 74 00
	ora $00.b,X		; 15 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	brk $0C.b		; 00 0C
	dey		; 88
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	brk $80.b		; 00 80
	txa		; 8A
	rti		; 40

	bra -128.b		; 80 80
	brk $60.b		; 00 60
	ldx #$0088.w		; A2 88 00
	jsl $403094.l		; 22 94 30 40
	asl A		; 0A
	trb $38.b		; 14 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	asl A		; 0A
	cpy #$0200.w		; C0 00 02
	brk $00.b		; 00 00
	asl A		; 0A
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $58.b		; 00 58
	ora $80.b,S		; 03 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	tsb $40.b		; 04 40
	tya		; 98
	and ($01.b)		; 32 01
	brk $00.b		; 00 00
	stx $02.b		; 86 02
	bcc   0.b		; 90 00
	eor ($00.b,X)		; 41 00
	brk $A0.b		; 00 A0
	ora ($0A.b),Y		; 11 0A
	ldx #$0000.w		; A2 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
	brk $02.b		; 00 02
	tsb $00.b		; 04 00
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	ldy #$2200.w		; A0 00 22
	jsr $0000.w		; 20 00 00
	brk $48.b		; 00 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	php		; 08
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bit $00.b		; 24 00
	brk $94.b		; 00 94
	tsb $D2.b		; 04 D2
	brk $0B.b		; 00 0B
	tsb $0680.w		; 0C 80 06
	bpl  56.b		; 10 38
	bpl  74.b		; 10 4A
	and #$0088.w		; 29 88 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $08.b		; 04 08
	cop $40.b		; 02 40
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	eor ($10.b,X)		; 41 10
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $02.b		; 00 02
	php		; 08
	brk $00.b		; 00 00
	jsl $820030.l		; 22 30 00 82
	bmi   0.b		; 30 00
	bvc  29.b		; 50 1D
	brk $2C.b		; 00 2C
	php		; 08
	and #$0886.w		; 29 86 08
	tsx		; BA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($26.b,X)		; 01 26
	cop $00.b		; 02 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	dey		; 88
	bra   6.b		; 80 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	php		; 08
	brk $20.b		; 00 20
	rti		; 40

	tsb $80.b		; 04 80
	brk $4A.b		; 00 4A
	dey		; 88
	ora ($40.b,X)		; 01 40
	sta ($10.b,X)		; 81 10
	cpy $22.b		; C4 22
	ora ($8D.b)		; 12 8D
	bpl   4.b		; 10 04
	tsb $31.b		; 04 31
	cmp ($00.b,X)		; C1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $00.b		; 02 00
	jsr $1000.w		; 20 00 10
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	jsr $0800.w		; 20 00 08
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $41.b		; 00 41
	brk $00.b		; 00 00
	cmp ($00.b,X)		; C1 00
	ora ($00.b,X)		; 01 00
	sta ($A0.b,X)		; 81 A0
	ldy #$1400.w		; A0 00 14
	bcc  32.b		; 90 20
	sta $60.b,S		; 83 60
	ldy #$2850.w		; A0 50 28
	.db $62, $FF, $FF		; 62 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7DB7FF.l,X		; FF FF B7 7D
	sbc $FBF7FF.l,X		; FF FF F7 FB
	sbc $FBBBBE.l,X		; FF BE BB FB
	sbc $7F8AC7.l		; EF C7 8A 7F
	cmp [$D7.b],Y		; D7 D7
	sta [$E3.b],Y		; 97 E3
	ora $7F.b		; 05 7F
	cmp $FFB7F7.l,X		; DF F7 B7 FF
	sbc $F6F77F.l,X		; FF 7F F7 F6
	sbc $FEF79F.l,X		; FF 9F F7 FE
	adc $964FC7.l		; 6F C7 4F 96
	lda [$7B.b],Y		; B7 7B
	lda $FEFFFD.l,X		; BF FD FF FE
	inc $FDDF.w		; EE DF FD
	sbc $A9.b,X		; F5 A9
	sbc $BFFB.w		; ED FB BF
	and $FFBD.w,X		; 3D BD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BB6FFF.l,X		; FF FF 6F BB
	sbc $C3F7.w,X		; FD F7 C3
	cmp ($FF.b,S),Y		; D3 FF
	dec $FFFB.w		; CE FB FF
	inc $EF9F.w,X		; FE 9F EF
	sbc $CFFFFF.l,X		; FF FF FF CF
	sbc $E77CDF.l		; EF DF 7C E7
	plx		; FA
	sbc $B9BFFF.l,X		; FF FF BF B9
	adc $E794F6.l		; 6F F6 94 E7
	sbc $FFDFFF.l,X		; FF FF DF FF
	and $FFEEFF.l		; 2F FF EE FF
	sbc $DE7A77.l,X		; FF 77 7A DE
	adc ($F9.b)		; 72 F9
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
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFEF7.l,X		; FF F7 FE 7F
	sbc $FFFFF9.l,X		; FF F9 FF FF
	lda [$16.b],Y		; B7 16
	jmp.w [$FC5A]		; DC 5A FC
	ldx $FF2F.w		; AE 2F FF
	adc $FFFFCF.l,X		; 7F CF FF FF
	sbc $DBDE.w,X		; FD DE DB
	sbc $F7A6FD.l,X		; FF FD A6 F7
	ldx $DFB7.w,Y		; BE B7 DF
	stx $9F38.w		; 8E 38 9F
	lda $F6BB.w,Y		; B9 BB F6
	sbc $FFF6DF.l,X		; FF DF F6 FF
	sbc [$FF.b],Y		; F7 FF
	eor $C6FF7F.l		; 4F 7F FF C6
	cmp $5BFF03.l		; CF 03 FF 5B
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	cmp $FFFFBF.l,X		; DF BF FF FF
	sbc $EFFBFF.l,X		; FF FF FB EF
	sbc $FB.b,X		; F5 FB
	tda		; 7B
	sbc $FFBFFF.l,X		; FF FF BF FF
	nop		; EA
	adc $FFEFFE.l,X		; 7F FE EF FF
	sbc $E7FFFE.l,X		; FF FE FF E7
	xce		; FB
	sbc $FC9B81.l,X		; FF 81 9B FC
	sbc $8FEF.w		; ED EF 8F
	sbc $FFFEFF.l,X		; FF FF FE FF
	tyx		; BB
	sbc $FECFFF.l,X		; FF FF CF FE
	lda $0FFFFF.l,X		; BF FF FF 0F
	and $FFC3BB.l		; 2F BB C3 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFEF.l,X		; FF EF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFEF7.l,X		; FF F7 FE FF
	sbc ($BE.b),Y		; F1 BE
	plx		; FA
	sbc $77BF.w,X		; FD BF 77
	sbc $CEE9.w,X		; FD E9 CE
	jsr ($8CB7.w,X)		; FC B7 8C
	stx $5DDC.w		; 8E DC 5D
	stz $FBFF.w,X		; 9E FF FB
	jmp.w [$6FE5]		; DC E5 6F
	sbc $7BEEAF.l,X		; FF AF EE 7B
	sbc $F6D6F7.l,X		; FF F7 D6 F6
	sbc $FFCE.w,X		; FD CE FF
	sbc $ABF7EF.l,X		; FF EF F7 AB
	sbc [$8F.b],Y		; F7 8F
	sta $F677EE.l,X		; 9F EE 77 F6
	pld		; 2B
	tsx		; BA
	stp		; DB
	xce		; FB
	rtl		; 6B

	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FDFFBF.l,X		; FF BF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EEFF67.l,X		; FF 67 FF EE
	tsx		; BA
	inc $FFFE.w,X		; FE FE FF
	sbc $F7FBE7.l,X		; FF E7 FB F7
	dec $FEFF.w,X		; DE FF FE
	sbc [$FF.b],Y		; F7 FF
	sbc $FF5FFF.l,X		; FF FF 5F FF
	xba		; EB
	adc $FFFFFF.l,X		; 7F FF FF FF
	cmp $BFFB07.l,X		; DF 07 FB BF
	sbc $FFFF.w,X		; FD FF FF
	sbc $EFDFFF.l,X		; FF FF DF EF
	sbc $3FBF.w,Y		; F9 BF 3F
	sbc $FCFBF1.l,X		; FF F1 FB FC
	stz $FF.b		; 64 FF
	and $F7.b,X		; 35 F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFD.l,X		; FF FD FF FB
	sbc [$FF.b],Y		; F7 FF
	sbc $FF3FFF.l,X		; FF FF 3F FF
	sbc [$EF.b],Y		; F7 EF
	inc $CFFF.w,X		; FE FF CF
	adc $7AEFFD.l,X		; 7F FD EF 7A
	cmp $2ED7FB.l		; CF FB D7 2E
	cmp [$AE.b],Y		; D7 AE
	tyx		; BB
	sbc $BEFF3B.l,X		; FF 3B FF BE
	sbc $7ABAFF.l,X		; FF FF BA 7A
	sbc $FFFCCF.l,X		; FF CF FC FF
	wai		; CB
	sbc $7FA7.w		; ED A7 7F
	xba		; EB
	ldx $B7FF.w,Y		; BE FF B7
	sbc $FF7FFB.l,X		; FF FB 7F FF
	adc $33FF.w,X		; 7D FF 33
	sbc [$7E.b]		; E7 7E
	xce		; FB
	stz $DF5C.w		; 9C 5C DF
	cmp [$FF.b],Y		; D7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $F67FFF.l,X		; FF FF 7F F6
	eor [$DD.b]		; 47 DD
	xce		; FB
	sbc ($FD.b,S),Y		; F3 FD
	adc $FDDF.w,X		; 7D DF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $C3F7FD.l,X		; BF FD F7 C3
	and $FCD53E.l,X		; 3F 3E D5 FC
	lda $FEFFFE.l		; AF FE FF FE
	sbc $DFFFF7.l,X		; FF F7 FF DF
	cmp $FF7FFD.l,X		; DF FD 7F FF
	rtl		; 6B

	sbc $FEF9.w,X		; FD F9 FE
	adc $FFD6D6.l,X		; 7F D6 D6 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w		; ED FF FF
	sbc $F3FFFF.l,X		; FF FF FF F3
	sta $F9B6FB.l		; 8F FB B6 F9
	adc $DFBA53.l,X		; 7F 53 BA DF
	lda $A77E94.l,X		; BF 94 7E A7
	sbc $E7.b,X		; F5 E7
	sbc $BEFE7E.l,X		; FF 7E FE BE
	sta $D79FB6.l,X		; 9F B6 9F D7
	xce		; FB
	sbc $FFC9.w,X		; FD C9 FF
	xce		; FB
	tda		; 7B
	lda $FDFF5E.l,X		; BF 5E FF FD
	sbc $FF5BB8.l,X		; FF B8 5B FF
	adc $FB.b,S		; 63 FB
	sbc $B5FE78.l,X		; FF 78 FE B5
	xce		; FB
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
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $7F7FFF.l,X		; FF FF 7F 7F
	sbc $FEFF77.l,X		; FF 77 FF FE
	xce		; FB
	sbc $9DFBFF.l,X		; FF FF FB 9D
	adc $7B.b,X		; 75 7B
	sbc $3DFFCF.l,X		; FF CF FF 3D
	inc $B7BF.w		; EE BF B7
	sbc $FDFFDB.l,X		; FF DB FF FD
	cmp $FDFFFF.l,X		; DF FF FF FD
	lda $F57BB5.l		; AF B5 7B F5
	sbc $3BEFFE.l,X		; FF FE EF 3B
	cmp $FFFFBF.l		; CF BF FF FF
	sbc $F3FFF7.l		; EF F7 FF F3
	rtl		; 6B

	tyx		; BB
	sbc $FAFDE7.l,X		; FF E7 FD FA
	sbc $EEE3A7.l,X		; FF A7 E3 EE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $BFFFDF.l,X		; FF DF FF BF
	inc $FFF7.w,X		; FE F7 FF
	sbc $FF7F7F.l,X		; FF 7F 7F FF
	inc $DB7F.w,X		; FE 7F DB
	tda		; 7B
	dec $FB.b,X		; D6 FB
	stz $F3EF.w		; 9C EF F3
	ldy $3D7F.w,X		; BC 7F 3D
	ora [$FF.b],Y		; 17 FF
	sbc $75DB7F.l,X		; FF 7F DB 75
	cmp ($BE.b)		; D2 BE
	sbc $6A7DFD.l		; EF FD 7D 6A
	ldx $BDBE.w,Y		; BE BE BD
	sbc $7FEECF.l,X		; FF CF EE 7F
	adc $FD72EF.l,X		; 7F EF 72 FD
	sbc $EDABF9.l,X		; FF F9 AB ED
	sbc $D57EEF.l		; EF EF 7E D5
	lda $FFFFCF.l		; AF CF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFDF7.l,X		; FF F7 FD FF
	sbc $CFFFEF.l,X		; FF EF FF CF
	sbc $B3EEFB.l,X		; FF FB EE B3
	wai		; CB
	plb		; AB
	cmp [$FF.b],Y		; D7 FF
	sta $FFDFFF.l,X		; 9F FF DF FF
	sbc $FEEAFF.l,X		; FF FF EA FE
	sbc $BBF3EF.l		; EF EF F3 BB
	inc A		; 1A
	cmp [$1D.b],Y		; D7 1D
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7BDFFB.l,X		; FF FB DF 7B
	sbc $5FBBF7.l,X		; FF F7 BB 5F
	inc $5F7B.w,X		; FE 7B 5F
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
	sbc $FFFEBF.l,X		; FF BF FE FF
	xce		; FB
	lda $FEFFFE.l,X		; BF FE FF FE
	tda		; 7B
	sbc $AB9F6F.l,X		; FF 6F 9F AB
	cmp $37F7FF.l		; CF FF F7 37
	cmp $7F3FDF.l,X		; DF DF 3F 7F
	dec $A7CF.w,X		; DE CF A7
	jsr ($FDBD.w,X)		; FC BD FD
	sbc $F1FDDF.l,X		; FF DF FD F1
	sbc $C69FFD.l,X		; FF FD 9F C6
	lda $B2A5.w,X		; BD A5 B2
	lda $AF1D46.l,X		; BF 46 1D AF
	sbc [$6B.b]		; E7 6B
	inc $BE5F.w,X		; FE 5F BE
	lda $FF7B.w,X		; BD 7B FF
	stz $FD.b,X		; 74 FD
	lda $F4DD.w		; AD DD F4
	xce		; FB
	and $33.b,X		; 35 33
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $EFF3FF.l,X		; FF FF F3 EF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sta $DFFF.w,X		; 9D FF DF
	sta $FFAEBB.l,X		; 9F BB AE FF
	stx $FFEF.w		; 8E EF FF
	sbc $DFAEFB.l,X		; FF FB AE DF
	and $F5DFFC.l,X		; 3F FC DF F5
	stp		; DB
	and [$BB.b],Y		; 37 BB
	xce		; FB
	lda ($FC.b),Y		; B1 FC
	inc $F7FF.w,X		; FE FF F7
	sbc $7EF4ED.l,X		; FF ED F4 7E
	sbc [$FF.b],Y		; F7 FF
	adc ($DF.b)		; 72 DF
	lda $7FFFB1.l		; AF B1 FF 7F
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
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FF7FA7.l,X		; FF A7 7F FF
	sbc $7F.b,X		; F5 7F
	sbc $FFDCFF.l,X		; FF FF DC FF
	sbc $7EEABB.l,X		; FF BB EA 7E
	sbc $C2F1FA.l,X		; FF FA F1 C2
	cmp $35EE8A.l		; CF 8A EE 35
	lda $DBF9FE.l		; AF FE F9 DB
	eor [$DF.b],Y		; 57 DF
	inc $2FB7.w,X		; FE B7 2F
	cmp $867EEE.l,X		; DF EE 7E 86
	lda ($79.b)		; B2 79
	xce		; FB
	xba		; EB
	sbc [$FF.b],Y		; F7 FF
	lda $FDFDD7.l,X		; BF D7 FD FD
	adc $FF9F.w		; 6D 9F FF
	bit $E9FD.w,X		; 3C FD E9
	and $DF.b,X		; 35 DF
	sbc $FFFF4F.l,X		; FF 4F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FF7FFB.l,X		; FF FB 7F FF
	cmp $DF9D6D.l		; CF 6D 9D DF
	adc $FFFF.w,X		; 7D FF FF
	xba		; EB
	lsr $FFEF.w		; 4E EF FF
	xce		; FB
	sbc $F7FFFD.l,X		; FF FD FF F7
	cmp $BF7A5E.l,X		; DF 5E 7A BF
	dec $D2FF.w		; CE FF D2
	sbc $FFFDDD.l,X		; FF DD FD FF
	sbc [$AB.b],Y		; F7 AB
	sbc $FFF7FD.l,X		; FF FD F7 FF
	eor $B9B6AF.l,X		; 5F AF B6 B9
	sbc $7FF7FB.l,X		; FF FB F7 7F
	txa		; 8A
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $80.b		; 02 80
	ldy #$00A0.w		; A0 A0 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	ora ($80.b,X)		; 01 80
	bpl -128.b		; 10 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	bcc  28.b		; 90 1C
	txa		; 8A
	and ($00.b,X)		; 21 00
	brk $52.b		; 00 52
	brk $06.b		; 00 06
	eor ($60.b),Y		; 51 60
	ldy $98.b		; A4 98
	.db $82, $98, $21		; 82 98 21
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	php		; 08
	rti		; 40

	brk $00.b		; 00 00
	rti		; 40

	brk $80.b		; 00 80
	brk $20.b		; 00 20
	php		; 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	cop $00.b		; 02 00
	rti		; 40

	inc A		; 1A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0001.w		; 20 01 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bra   7.b		; 80 07
	brk $50.b		; 00 50
	ora ($20.b,X)		; 01 20
	.db $42, $00		; 42 00
	jsr $2001.w		; 20 01 20
	lda #$5148.w		; A9 48 51
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
	jsr $0100.w		; 20 00 01
	.db $82, $00, $80		; 82 00 80
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $42, $90		; 42 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $80.b		; 02 80
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	tsb $00.b		; 04 00
	lsr $00.b		; 46 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	jsr $2100.w		; 20 00 21
	tsb $01.b		; 04 01
	rti		; 40

	rti		; 40

	brk $04.b		; 00 04
	ora $10.b		; 05 10
	bit $00.b		; 24 00
	cmp $82.b,S		; C3 82
	ora $84.b		; 05 84
	bpl  75.b		; 10 4B
	ora [$3F.b]		; 07 3F
	stz $00.b		; 64 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cop $10.b		; 02 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bpl   1.b		; 10 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $1001.w		; 20 01 10
	cop $2D.b		; 02 2D
	brk $04.b		; 00 04
	ora #$5028.w		; 09 28 50
	php		; 08
	brk $C0.b		; 00 C0
	pla		; 68
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	brk $0C.b		; 00 0C
	brk $82.b		; 00 82
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	php		; 08
	php		; 08
	brk $80.b		; 00 80
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $40.b		; 02 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $08.b		; 00 08
	brk $22.b		; 00 22
	brk $14.b		; 00 14
	bra   8.b		; 80 08
	bra -123.b		; 80 85
	clc		; 18
	rts		; 60

	php		; 08
	tsb $00.b		; 04 00
	.db $42, $90		; 42 90
	pha		; 48
	cpy #$9038.w		; C0 38 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	asl A		; 0A
	ldy #$0000.w		; A0 00 00
	brk $08.b		; 00 08
	bcc  32.b		; 90 20
	brk $00.b		; 00 00
	plp		; 28
	bvc  29.b		; 50 1D
	brk $00.b		; 00 00
	cpy #$8662.w		; C0 62 86
	lda $31.b,S		; A3 31
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bmi   0.b		; 30 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	jsr $0010.w		; 20 10 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	eor #$0000.w		; 49 00 00
	rti		; 40

	iny		; C8
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	cpy #$0059.w		; C0 59 00
	dey		; 88
	rol $E0.b		; 26 E0
	and ($04.b,X)		; 21 04
	brk $A9.b		; 00 A9
	bit $02.b		; 24 02
	tsb $C5.b		; 04 C5
	and ($00.b)		; 32 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	rti		; 40

	brk $02.b		; 00 02
	brk $00.b		; 00 00
	rti		; 40

	brk $04.b		; 00 04
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $01.b		; 00 01
	brk $22.b		; 00 22
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $10.b		; 00 10
	bra   0.b		; 80 00
	jsr $0008.w		; 20 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl -124.b		; 10 84
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   4.b		; 80 04
	brk $00.b		; 00 00
	bpl  17.b		; 10 11
	tsb $10.b		; 04 10
	lsr A		; 4A
	sta ($03.b,X)		; 81 03
	dey		; 88
	ora ($A9.b),Y		; 11 A9
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
	brk $04.b		; 00 04
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0100.w		; 20 00 01
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $31.b		; 00 31
	brk $00.b		; 00 00
	asl $02.b		; 06 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	ora ($00.b,X)		; 01 00
	jsr $01C3.w		; 20 C3 01
	.db $42, $0C		; 42 0C
	txs		; 9A
	brk $10.b		; 00 10
	brk $A0.b		; 00 A0
	cpy $300D.w		; CC 0D 30
	bra  32.b		; 80 20
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	plp		; 28
	bra  17.b		; 80 11
	bra -128.b		; 80 80
	cop $20.b		; 02 20
	bpl  32.b		; 10 20
	rti		; 40

	ora ($49.b,X)		; 01 49
	brk $18.b		; 00 18
	eor #$E802.w		; 49 02 E8
	and $00.b		; 25 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $40.b		; 02 40
	brk $82.b		; 00 82
	jsr $0000.w		; 20 00 00
	brk $20.b		; 00 20
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	tsb $00.b		; 04 00
	bpl -128.b		; 10 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	jsr $0004.w		; 20 04 00
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	bit $82.b		; 24 82
	ora ($80.b,X)		; 01 80
	ldx #$0A00.w		; A2 00 0A
	stx $A815.w		; 8E 15 A8
	cop $C0.b		; 02 C0
	bit $45.b		; 24 45
	bcs   0.b		; B0 00
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
	brk $04.b		; 00 04
	ora ($C0.b),Y		; 11 C0
	brk $00.b		; 00 00
	lsr $00.b		; 46 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $41.b		; 00 41
	brk $48.b		; 00 48
	cop $08.b		; 02 08
	brk $04.b		; 00 04
	bcs  32.b		; B0 20
	jsl $600688.l		; 22 88 06 60
	clc		; 18
	brk $55.b		; 00 55
	sta ($2D.b)		; 92 2D
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
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	jsr $0022.w		; 20 22 00
	ora ($20.b,X)		; 01 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	dey		; 88
	brk $04.b		; 00 04
	php		; 08
	bpl   0.b		; 10 00
	rti		; 40

	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	bra -112.b		; 80 90
	ora $B400.w		; 0D 00 B4
	sta $81.b,X		; 95 81
	ldy #$40D8.w		; A0 D8 40
	and ($32.b,X)		; 21 32
	cpy #$5250.w		; C0 50 52
	and $00.b,S		; 23 00
	tay		; A8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	php		; 08
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($C0.b,X)		; 01 C0
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	and ($42.b),Y		; 31 42
	jsr $1408.w		; 20 08 14
	bra -128.b		; 80 80
	sta ($20.b,X)		; 81 20
	bcc -124.b		; 90 84
	asl A		; 0A
	tsb $38.b		; 04 38
	bra -56.b		; 80 C8
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	mvp $04,$02		; 44 02 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	tya		; 98
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $32.b		; 00 32
	brk $04.b		; 00 04
	brk $44.b		; 00 44
	rti		; 40

	php		; 08
	brk $84.b		; 00 84
	mvp $04,$90		; 44 90 04
	ldy #$0002.w		; A0 02 00
	brk $28.b		; 00 28
	bra   0.b		; 80 00
	iny		; C8
	bpl  32.b		; 10 20
	tsa		; 3B
	rtl		; 6B

	ror $00.b,X		; 76 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $06.b		; 00 06
	bra  18.b		; 80 12
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  16.b		; 80 10
	cop $00.b		; 02 00
	brk $05.b		; 00 05
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	tsb $08.b		; 04 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bra -124.b		; 80 84
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	bra 100.b		; 80 64
	sta ($24.b)		; 92 24
	tsb $00.b		; 04 00
	tya		; 98
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7F7E7.l,X		; FF E7 F7 F7
	sbc $FFEFFF.l,X		; FF FF EF FF
	inc $FEDF.w,X		; FE DF FE
	stz $F42F.w		; 9C 2F F4
	adc [$D3.b]		; 67 D3
	inc $FFFE.w		; EE FE FF
	sbc $FFFFFF.l		; EF FF FF FF
	adc $FEFFCB.l,X		; 7F CB FF FE
	ldx $FC.b,Y		; B6 FC
	clv		; B8
	sta [$FB.b],Y		; 97 FB
	sbc [$C4.b],Y		; F7 C4
	sbc $7DFFFD.l,X		; FF FD FF 7D
	sbc $DFEFFF.l		; EF FF EF DF
	sbc $EFFF2F.l,X		; FF 2F FF EF
	pea $9BEB.w		; F4 EB 9B
	eor $FF.b		; 45 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda [$7E.b],Y		; B7 7E
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFBFFF.l,X		; FF FF BF DF
	sbc $EFAF.w,X		; FD AF EF
	sbc $DFBF6E.l,X		; FF 6E BF DF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $F7F7DF.l,X		; FF DF F7 F7
	sbc $FFFFBF.l,X		; FF BF FF FF
	adc [$95.b],Y		; 77 95
	xce		; FB
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $F5FF7D.l,X		; FF 7D FF F5
	sbc $FFEF9F.l,X		; FF 9F EF FF
	sbc $FF3FBF.l,X		; FF BF 3F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $7FFFFF.l,X		; FF FF FF 7F
	adc $FFF7FE.l,X		; 7F FE F7 FF
	sbc $F7FFFB.l,X		; FF FB FF F7
	adc $3EFBDE.l,X		; 7F DE FB 3E
	eor $FFFDFD.l,X		; 5F FD FD FF
	sbc [$FE.b],Y		; F7 FE
	sbc $FFDFFE.l,X		; FF FE DF FF
	sbc $5F3FF7.l		; EF F7 3F 5F
	eor $BFECFE.l,X		; 5F FE EC BF
	pea $FFFF.w		; F4 FF FF
	sbc $FF5FFF.l,X		; FF FF 5F FF
	xce		; FB
	inc $AF.b,X		; F6 AF
	inc $ADFB.w,X		; FE FB AD
	and $BDDB3F.l,X		; 3F 3F DB BD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $DFFFFD.l,X		; FF FD FF DF
	sbc $3FFFFD.l,X		; FF FD FF 3F
	sbc $FF6BFB.l,X		; FF FB 6B FF
	sbc [$BF.b],Y		; F7 BF
	xce		; FB
	sbc $FDFFDF.l,X		; FF DF FF FD
	lsr $FFDD.w,X		; 5E DD FF
	cmp $FDFBFE.l,X		; DF FE FB FD
	stz $FC7F.w,X		; 9E 7F FC
	sbc $FFFFFF.l		; EF FF FF FF
	xce		; FB
	cmp $FDFFEF.l,X		; DF EF FF FD
	xce		; FB
	sbc $CEF27B.l		; EF 7B F2 CE
	sbc $FF3CFF.l,X		; FF FF 3C FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFF5.l,X		; FF F5 FF FF
	sbc $FAE5FF.l,X		; FF FF E5 FA
	tsx		; BA
	adc $75EF67.l,X		; 7F 67 EF 75
	ldx $7F6D.w,Y		; BE 6D 7F
	sbc $EBEFDF.l,X		; FF DF EF EB
	sbc $FFBFCD.l		; EF CD BF FF
	adc $B6DF3B.l,X		; 7F 3B DF B6
	adc $EF7C.w,X		; 7D 7C EF
	sbc $FFFFFD.l,X		; FF FD FF FF
	adc $FFCFF7.l,X		; 7F F7 CF FF
	adc $7FE7F5.l,X		; 7F F5 E7 7F
	tda		; 7B
	sbc ($DC.b,S),Y		; F3 DC
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFF7F.l,X		; FF 7F FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFEE.w,X		; FE EE FF
	sbc $FDDFFF.l		; EF FF DF FD
	plx		; FA
	xce		; FB
	adc $7FFFFF.l,X		; 7F FF FF 7F
	rol $FFFF.w,X		; 3E FF FF
	sbc $D7DF7F.l,X		; FF 7F DF D7
	sbc $F9FFDF.l,X		; FF DF FF F9
	adc $FF77.w,X		; 7D 77 FF
	sbc $FF9FFF.l,X		; FF FF 9F FF
	ldx $FFFF.w,Y		; BE FF FF
	sbc $EFDFFB.l,X		; FF FB DF EF
	sbc $DDFF97.l,X		; FF 97 FF DD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFD.l,X		; FF FD FF FF
	adc $BBF6FF.l,X		; 7F FF F6 BB
	dec A		; 3A
	sbc $B3D9.w,X		; FD D9 B3
	sbc ($FF.b,S),Y		; F3 FF
	sta $FFF9.w,X		; 9D F9 FF
	sbc $FDFBFF.l,X		; FF FF FB FD
	sbc $9CFBF7.l,X		; FF F7 FB 9C
	cmp $5BB7DF.l,X		; DF DF B7 5B
	sbc [$7F.b],Y		; F7 7F
	tsx		; BA
	sbc $FFFFFB.l,X		; FF FB FF FF
	cmp $EFDB35.l,X		; DF 35 DB EF
	tda		; 7B
	sbc $ED7FEF.l,X		; FF EF 7F ED
	cmp $7E77.w,X		; DD 77 7E
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFF7FF.l,X		; FF FF F7 BF
	xba		; EB
	sbc $C3CFBF.l,X		; FF BF CF C3
	inc $D7CF.w,X		; FE CF D7
	inc $EF.b,X		; F6 EF
	lda $FFFF76.l,X		; BF 76 FF FF
	sbc $DFDDFF.l,X		; FF FF DD DF
	sbc [$DE.b],Y		; F7 DE
	sbc $BFDF.w,Y		; F9 DF BF
	ldx $DB.b,Y		; B6 DB
	adc [$CA.b],Y		; 77 CA
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	tda		; 7B
	sbc $FD7F.w,X		; FD 7F FD
	xce		; FB
	lda $BEF7B7.l,X		; BF B7 F7 BE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	inc $F7FF.w,X		; FE FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FEFFFF.l,X		; 7F FF FF FE
	sbc $FFFDBF.l,X		; FF BF FD FF
	xce		; FB
	sbc $FB.b,X		; F5 FB
	eor $FBADDB.l,X		; 5F DB AD FB
	eor $7F7BEA.l		; 4F EA 7B 7F
	sbc $D4FFFF.l,X		; FF FF FF D4
	sbc $CEDFB7.l,X		; FF B7 DF CE
	sbc $DFDC.w,X		; FD DC DF
	cmp $7E9BEC.l,X		; DF EC 9B 7E
	sbc $7FDFFE.l,X		; FF FE DF 7F
	sbc $EFDF3F.l,X		; FF 3F DF EF
	cmp $E9EFBD.l,X		; DF BD EF E9
	inc $FFF9.w		; EE F9 FF
	rol $FFFF.w,X		; 3E FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FBFF7F.l,X		; FF 7F FF FB
	sbc $FFFF7B.l,X		; FF 7B FF FF
	sbc $BFFBD7.l,X		; FF D7 FB BF
	adc $3BDDFE.l,X		; 7F FE DD 3B
	sbc [$13.b]		; E7 13
	adc [$EF.b],Y		; 77 EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $ADF5FF.l,X		; FF FF F5 AD
	lda $EEFFFF.l,X		; BF FF FF EE
	eor $FFBF37.l,X		; 5F 37 BF FF
	adc $FFFDFF.l,X		; 7F FF FD FF
	eor $FDFFF3.l		; 4F F3 FF FD
	cmp $ECE7D5.l,X		; DF D5 E7 EC
	lda $FFFF9E.l,X		; BF 9E FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $EF7F7F.l,X		; FF 7F 7F EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc ($3F.b,S),Y		; F3 3F
	stp		; DB
	xce		; FB
	inc $FF57.w		; EE 57 FF
	lda $F7FB.w,Y		; B9 FB F7
	sbc [$5F.b],Y		; F7 5F
	cmp $FFFF5F.l,X		; DF 5F FF FF
	lda $77FBBE.l,X		; BF BE FB 77
	adc $FFF9.w,X		; 7D F9 FF
	cmp $BD.b		; C5 BD
	nop		; EA
	tad		; 5B
	ply		; 7A
	ldy $94.b,X		; B4 94
	sbc $BFFF7E.l,X		; FF 7E FF BF
	sbc $FDAAFF.l,X		; FF FF AA FD
	sbc [$E3.b],Y		; F7 E3
	sbc $EBFF77.l,X		; FF 77 FF EB
	sbc ($72.b,S),Y		; F3 72
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FDDFFE.l,X		; FF FE DF FD
	sbc $94FEEB.l,X		; FF EB FE 94
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFBEDF.l,X		; FF DF BE FF
	cmp [$FF.b],Y		; D7 FF
	sbc $FEA3FF.l		; EF FF A3 FE
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FBEFBF.l,X		; FF BF EF FB
	lda $FBFFBF.l,X		; BF BF FF FB
	sbc [$FF.b],Y		; F7 FF
	lda $F3D1.w,Y		; B9 D1 F3
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
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FDFFDF.l,X		; FF DF FF FD
	sbc $E3FFF4.l,X		; FF F4 FF E3
	dec $5AFC.w,X		; DE FC 5A
	ror $FF3E.w,X		; 7E 3E FF
	cmp #$3E9D.w		; C9 9D 3E
	adc $FEDFFE.l,X		; 7F FE DF FE
	sbc [$FD.b],Y		; F7 FD
	sbc $FFFF.w,Y		; F9 FF FF
	lsr $DBF7.w,X		; 5E F7 DB
	inc $CABA.w		; EE BA CA
	and $DF.b,X		; 35 DF
	sbc $FEFBFF.l,X		; FF FF FB FE
	lda $C7FFFF.l		; AF FF FF C7
	sbc $59FCFF.l		; EF FF FC 59
	eor ($2F.b),Y		; 51 2F
	eor [$FF.b],Y		; 57 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFEFF.l,X		; FF FF FE FF
	lda $FFFFFF.l,X		; BF FF FF FF
	lda $D7DE3F.l		; AF 3F DE D7
	sbc $DFBD77.l,X		; FF 77 BD DF
	sbc $7FDE7F.l,X		; FF 7F DE 7F
	sbc $FBFED7.l,X		; FF D7 FE FB
	cmp [$EF.b],Y		; D7 EF
	plx		; FA
	sbc [$79.b],Y		; F7 79
	ror $FBEF.w,X		; 7E EF FB
	xce		; FB
	xce		; FB
	adc $BFFFFF.l		; 6F FF FF BF
	sbc $FBFBFD.l,X		; FF FD FB FB
	sbc $BDDFDF.l,X		; FF DF DF BD
	sbc $BFFFFA.l,X		; FF FA FF BF
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
	lda $BFFFFF.l,X		; BF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	adc [$F4.b],Y		; 77 F4
	sta $7F5BEF.l,X		; 9F EF 5B 7F
	lda ($FF.b,S),Y		; B3 FF
	lda [$FF.b],Y		; B7 FF
	cmp $ADCFDF.l		; CF DF CF AD
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FDFF.w,X		; FD FF FD
	jsr ($FEEF.w,X)		; FC EF FE
	sbc [$F3.b],Y		; F7 F3
	dec $FFAD.w,X		; DE AD FF
	and $FFFFFF.l,X		; 3F FF FF FF
	inc $33EF.w		; EE EF 33
	cmp $6A877B.l,X		; DF 7B 87 6A
	lda $DF2FD3.l,X		; BF D3 2F DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $7FB3D3.l		; EF D3 B3 7F
	lda $FBFDEF.l,X		; BF EF FD FB
	sta $EE2EFF.l,X		; 9F FF 2E EE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EEBFFF.l,X		; FF FF BF EE
	sbc $DFEF.w,X		; FD EF DF
	adc $C7BB2E.l,X		; 7F 2E BB C7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	lda $EFF3EF.l,X		; BF EF F3 EF
	sbc ($EE.b),Y		; F1 EE
	lda [$7F.b],Y		; B7 7F
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
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	php		; 08
	brk $20.b		; 00 20
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bra   0.b		; 80 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $00.b		; 24 00
	jsr $0000.w		; 20 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	jsr $0000.w		; 20 00 00
	php		; 08
	asl $2804.w		; 0E 04 28
	sta ($98.b,X)		; 81 98
	tsb $0120.w		; 0C 20 01
	bvs   4.b		; 70 04
	jsr $7072.w		; 20 72 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $5000.w		; 20 00 50
	brk $04.b		; 00 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	jsr $10C0.w		; 20 C0 10
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	clc		; 18
	brk $09.b		; 00 09
	bpl   4.b		; 10 04
	bpl  70.b		; 10 46
	jsr $0C80.w		; 20 80 0C
	pha		; 48
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
	rti		; 40

	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	php		; 08
	bpl   0.b		; 10 00
	tsb $30.b		; 04 30
	brk $00.b		; 00 00
	eor ($00.b,X)		; 41 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	jsr $0001.w		; 20 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	brk $41.b		; 00 41
	tsb $45.b		; 04 45
	brk $12.b		; 00 12
	ldy #$2804.w		; A0 04 28
	ora ($14.b)		; 12 14
	bra -112.b		; 80 90
	cop $14.b		; 02 14
	bra -59.b		; 80 C5
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra -128.b		; 80 80
	jsr $0008.w		; 20 08 00
	brk $82.b		; 00 82
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	rti		; 40

	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0A.b		; 00 0A
	brk $08.b		; 00 08
	tsb $00.b		; 04 00
	ora $1080.w,Y		; 19 80 10
	rti		; 40

	.db $62, $81, $51		; 62 81 51
	asl $58.b,X		; 16 58
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($28.b,X)		; 01 28
	brk $01.b		; 00 01
	tsb $00.b		; 04 00
	rti		; 40

	brk $00.b		; 00 00
	brk $04.b		; 00 04
	jsr $0800.w		; 20 00 08
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	php		; 08
	tsb $04.b		; 04 04
	jsr $0000.w		; 20 00 00
	brk $10.b		; 00 10
	brk $02.b		; 00 02
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl -128.b		; 10 80
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $C428.w		; 0D 28 C4
	pha		; 48
	dey		; 88
	jsr $0217.w		; 20 17 02
	brk $10.b		; 00 10
	sei		; 78
	sty $A3.b,X		; 94 A3
	adc $000000.l		; 6F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $11.b		; 00 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	jsr $4000.w		; 20 00 40
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($10.b,X)		; 01 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $10.b		; 00 10
	rti		; 40

	php		; 08
	brk $10.b		; 00 10
	brk $48.b		; 00 48
	rti		; 40

	ora ($90.b)		; 12 90
	ldy #$AE23.w		; A0 23 AE
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
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $30.b		; 06 30
	php		; 08
	lda ($04.b,X)		; A1 04
	eor #$4506.w		; 49 06 45
	brk $00.b		; 00 00
	asl $0219.w		; 0E 19 02
	ora [$80.b]		; 07 80
	clc		; 18
	and ($90.b,X)		; 21 90
	lda #$0060.w		; A9 60 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $08.b		; 00 08
	brk $09.b		; 00 09
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   4.b		; 80 04
	ora ($00.b,X)		; 01 00
	brk $2A.b		; 00 2A
	brk $00.b		; 00 00
	rti		; 40

	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	rti		; 40

	php		; 08
	brk $42.b		; 00 42
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	rts		; 60

	brk $12.b		; 00 12
	bra -128.b		; 80 80
	brk $60.b		; 00 60
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
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($80.b,X)		; 41 80
	ora ($08.b),Y		; 11 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $02.b		; 00 02
	ora ($B8.b,X)		; 01 B8
	brk $11.b		; 00 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $02.b		; 00 02
	bpl   0.b		; 10 00
	tay		; A8
	rti		; 40

	.db $42, $42		; 42 42
	sty $10.b,X		; 94 10
	brk $24.b		; 00 24
	rts		; 60

	ora ($81.b),Y		; 11 81
	bra  86.b		; 80 56
	ldy $0000.w		; AC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	brk $E1.b		; 00 E1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	jsr $1008.w		; 20 08 10
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	.db $82, $00, $00		; 82 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	ora ($22.b,X)		; 01 22
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	tsb $08.b		; 04 08
	brk $00.b		; 00 00
	tsb $03.b		; 04 03
	bpl -80.b		; 10 B0
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	tsb $34.b		; 04 34
	tya		; 98
	cop $82.b		; 02 82
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
	asl $00.b		; 06 00
	php		; 08
	jsr $0000.w		; 20 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $53.b		; 00 53
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	ora ($44.b,X)		; 01 44
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bpl  64.b		; 10 40
	brk $00.b		; 00 00
	sta ($40.b,X)		; 81 40
	brk $10.b		; 00 10
	tsb $1489.w		; 0C 89 14
	brk $82.b		; 00 82
	trb $84.b		; 14 84
	asl $C480.w,X		; 1E 80 C4
	pha		; 48
	sta $0000.w		; 8D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bra  72.b		; 80 48
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   8.b		; 80 08
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	ora ($30.b,S),Y		; 13 30
	brk $31.b		; 00 31
	brk $48.b		; 00 48
	cpy #$C691.w		; C0 91 C6
	brk $00.b		; 00 00
	cop $A2.b		; 02 A2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	cop $40.b		; 02 40
	brk $84.b		; 00 84
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	brk $02.b		; 00 02
	beq   0.b		; F0 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	rti		; 40

	brk $81.b		; 00 81
	bpl -128.b		; 10 80
	bpl -112.b		; 10 90
	rts		; 60

	bra -120.b		; 80 88
	phx		; DA
	ora ($24.b,X)		; 01 24
	bvs   4.b		; 70 04
	dey		; 88
	brk $C8.b		; 00 C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $91.b		; 00 91
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $04.b		; 00 04
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	brk $04.b		; 00 04
	ora ($00.b,X)		; 01 00
	bpl   6.b		; 10 06
	php		; 08
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	cpy #$848E.w		; C0 8E 84
	clv		; B8
	sta ($80.b,X)		; 81 80
	bra -95.b		; 80 A1
	ora ($40.b,X)		; 01 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	jsl $000000.l		; 22 00 00 00
	rti		; 40

	pha		; 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	php		; 08
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	cop $80.b		; 02 80
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   4.b		; 10 04
	.db $42, $00		; 42 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $81.b		; 00 81
	trb $41.b		; 14 41
	sty $80.b		; 84 80
	ora #$0A10.w		; 09 10 0A
	brk $20.b		; 00 20
	bit $C000.w,X		; 3C 00 C0
	cpy #$938D.w		; C0 8D 93
	sta $00.b,S		; 83 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	txa		; 8A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	rti		; 40

	brk $00.b		; 00 00
	jsr $0108.w		; 20 08 01
	brk $04.b		; 00 04
	php		; 08
	php		; 08
	ora ($6D.b,X)		; 01 6D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bmi   0.b		; 30 00
	and $B4.b,S		; 23 B4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	rti		; 40

	brk $04.b		; 00 04
	cop $20.b		; 02 20
	ply		; 7A
	jsr $0082.w		; 20 82 00
	mvp $C2,$28		; 44 28 C2
	and ($14.b,X)		; 21 14
	bit $22.b		; 24 22
	sta $00.b,S		; 83 00
	.db $62, $0C, $A3		; 62 0C A3
	.db $C7		; Opcode C7 overrunning bank boundry at 01FFFF. Skipping.
.ENDS
