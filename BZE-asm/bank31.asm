.BANK 31 SLOT 0
.ORG $0000

.SECTION "Bank31" FORCE

	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFF.w,Y		; F9 FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	cmp [$EF.b],Y		; D7 EF
	inc $FF7F.w,X		; FE 7F FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $7FFDFF.l,X		; FF FF FD 7F
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
	sbc $FEFFFB.l,X		; FF FB FF FE
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l		; EF FF FF F7
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBDFF.l,X		; FF FF BD FF
	sbc $FFEFFF.l,X		; FF FF EF FF
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
	sbc $F7FFFF.l,X		; FF FF FF F7
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
	sbc $FFFBBF.l,X		; FF BF FB FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	inc $FEFF.w,X		; FE FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
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
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
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
	dec $FFFF.w,X		; DE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFDF.l,X		; FF DF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFE.l,X		; FF FE FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
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
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	ldx $FFFF.w,Y		; BE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $EFFDFF.l,X		; DF FF FD EF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$7F.b],Y		; F7 7F
	inc $FFFE.w,X		; FE FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $CFFFFF.l,X		; FF FF FF CF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	lda $FFFEFF.l,X		; BF FF FE FF
	cmp $FFFCEE.l,X		; DF EE FC FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFBFB.l,X		; FF FB FB FF
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
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
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
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ror $EFFF.w,X		; 7E FF EF
	sbc $FFFFFE.l,X		; FF FE FF FF
	adc $FFFFF9.l,X		; 7F F9 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7DD.l,X		; FF DD F7 FF
	sbc $BFFFFF.l,X		; FF FF FF BF
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
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFDFF.l		; EF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DF5FBF.l,X		; FF BF 5F DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	lda $FFFEFF.l,X		; BF FF FE FF
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
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
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
	sbc $1003FF.l,X		; FF FF 03 10
	eor ($24.b),Y		; 51 24
	brk $81.b		; 00 81
	bpl  33.b		; 10 21
	tsb $08.b		; 04 08
	clc		; 18
	bpl -59.b		; 10 C5
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	tsb $10.b		; 04 10
	and $48.b,X		; 35 48
	tsb $21.b		; 04 21
	brk $0A.b		; 00 0A
	brk $40.b		; 00 40
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	ora ($85.b),Y		; 11 85
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	jsr $0000.w		; 20 00 00
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
	cop $00.b		; 02 00
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
	mvp $84,$01		; 44 01 84
	eor ($40.b,X)		; 41 40
	.db $82, $04, $A4		; 82 04 A4
	tsb $0A.b		; 04 0A
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   2.b		; 10 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $10.b		; 00 10
	ora ($00.b,X)		; 01 00
	bpl   0.b		; 10 00
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
	ora ($00.b,X)		; 01 00
	jsr $0290.w		; 20 90 02
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	brk $61.b		; 00 61
	ora [$10.b]		; 07 10
	brk $02.b		; 00 02
	rti		; 40

	brk $04.b		; 00 04
	stz $00.b		; 64 00
	iny		; C8
	bra   3.b		; 80 03
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
	bpl   0.b		; 10 00
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
	brk $84.b		; 00 84
	brk $01.b		; 00 01
	bpl   1.b		; 10 01
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$8C42.w		; C0 42 8C
	ora ($6A.b),Y		; 11 6A
	bra  40.b		; 80 28
	pha		; 48
	tsb $00.b		; 04 00
	bpl  32.b		; 10 20
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $08.b		; 00 08
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
	brk $01.b		; 00 01
	bmi -128.b		; 30 80
	brk $10.b		; 00 10
	ldy #$0020.w		; A0 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	jsl $052288.l		; 22 88 22 05
	brk $10.b		; 00 10
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	rti		; 40

	ora ($00.b,X)		; 01 00
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
	brk $01.b		; 00 01
	brk $40.b		; 00 40
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
	brk $92.b		; 00 92
	bit $0000.w,X		; 3C 00 00
	cop $08.b		; 02 08
	.db $82, $24, $00		; 82 24 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	cop $C0.b		; 02 C0
	bpl   2.b		; 10 02
	brk $00.b		; 00 00
	ora ($81.b,X)		; 01 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tay		; A8
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	cop $00.b		; 02 00
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
	brk $80.b		; 00 80
	rts		; 60

	brk $0A.b		; 00 0A
	bra   0.b		; 80 00
	ora ($22.b,X)		; 01 22
	brk $08.b		; 00 08
	cop $00.b		; 02 00
	php		; 08
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
	cop $00.b		; 02 00
	asl $08.b		; 06 08
	ora $102C.w		; 0D 2C 10
	tsb $00.b		; 04 00
	brk $04.b		; 00 04
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	trb $0008.w		; 1C 08 00
	jsr $0000.w		; 20 00 00
	cop $00.b		; 02 00
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l		; AF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FEFFEF.l,X		; 7F EF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBCFFF.l,X		; FF FF CF FB
	sbc $FF7FFF.l		; EF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFE.l,X		; FF FE FF FF
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
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFE.l,X		; FF FE FF FF
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
	adc [$FF.b],Y		; 77 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFF7.l,X		; FF F7 DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
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
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	adc $FFFFFF.l,X		; 7F FF FF FF
	xce		; FB
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
	sbc $F9FF.w,X		; FD FF F9
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
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
	sbc $FEFFFF.l,X		; FF FF FF FE
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
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $7FFFFF.l,X		; FF FF FF 7F
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
	sbc $FFFEF7.l,X		; FF F7 FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	adc $FFFFF7.l,X		; 7F F7 FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFEFE.l,X		; FF FE FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEF.w,X		; FD EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFDFFF.l,X		; BF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $BFFF.w,X		; FE FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $3C4141.l,X		; FF 41 41 3C
	jsl $008180.l		; 22 80 81 00
	brk $00.b		; 00 00
	tsb $20.b		; 04 20
	pha		; 48
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
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
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	rti		; 40

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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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

	mvp $00,$00		; 44 00 00
	ora ($00.b,X)		; 01 00
	ora ($30.b,X)		; 01 30
	tsb $01.b		; 04 01
	bvc   0.b		; 50 00
	tsb $42.b		; 04 42
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bpl   0.b		; 10 00
	jsl $000048.l		; 22 48 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $80.b		; 00 80
	brk $03.b		; 00 03
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
	brk $10.b		; 00 10
	php		; 08
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
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	bra   0.b		; 80 00
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
	brk $61.b		; 00 61
	php		; 08
	plp		; 28
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	brk $01.b		; 00 01
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
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
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
	brk $60.b		; 00 60
	trb $40.b		; 14 40
	brk $20.b		; 00 20
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	brk $10.b		; 00 10
	rts		; 60

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
	ora ($00.b,X)		; 01 00
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
	pha		; 48
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	tsb $00.b		; 04 00
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
	rti		; 40

	cop $00.b		; 02 00
	ora $04.b		; 05 04
	cop $00.b		; 02 00
	cop $08.b		; 02 08
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
	rti		; 40

	brk $40.b		; 00 40
	rti		; 40

	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	brk $02.b		; 00 02
	bra   0.b		; 80 00
	sta $0E.b,S		; 83 0E
	bpl   0.b		; 10 00
	cop $04.b		; 02 04
	cop $00.b		; 02 00
	brk $84.b		; 00 84
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $00.b		; 02 00
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
	.db $42, $00		; 42 00
	cop $00.b		; 02 00
	php		; 08
	.db $82, $00, $40		; 82 00 40
	ldy $02.b		; A4 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0400.w		; 20 00 04
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
	rti		; 40

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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($10.b,X)		; 01 10
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
	brk $FF.b		; 00 FF
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
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FF7.l,X		; FF F7 7F FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FF7FFF.l,X		; FF FF 7F FF
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
	sbc $FFFBFF.l,X		; FF FF FB FF
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
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF75FF.l,X		; FF FF 75 FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
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
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFDFF.l,X		; 7F FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDBFFF.l,X		; FF FF BF FD
	sbc $FFFFDF.l,X		; FF DF FF FF
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
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFD.w,X		; FE FD FF
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
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
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
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
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
	sbc $FFFFBF.l,X		; FF BF FF FF
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
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $BFFFCF.l,X		; FF CF FF BF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	adc $FDFFFE.l,X		; 7F FE FF FD
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
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
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBD.l		; EF BD FF FF
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
	sbc $FFFFE7.l,X		; FF E7 FF FF
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
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EF7FF7.l,X		; FF F7 7F EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	adc $77FFFF.l,X		; 7F FF FF 77
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l		; EF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $20FFFF.l,X		; FF FF FF 20
	jsr $86AD.w		; 20 AD 86
	ora ($68.b,X)		; 01 68
	ora ($00.b),Y		; 11 00
	bra   6.b		; 80 06
	tsb $04.b		; 04 04
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$00.b		; 09 00
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
	brk $80.b		; 00 80
	tsb $00.b		; 04 00
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
	sty $00.b		; 84 00
	brk $18.b		; 00 18
	brk $81.b		; 00 81
	brk $20.b		; 00 20
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
	jsr $0000.w		; 20 00 00
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
	brk $89.b		; 00 89
	.db $82, $20, $00		; 82 20 00
	mvp $89,$04		; 44 04 89
	tsb $00.b		; 04 00
	jsl $100000.l		; 22 00 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	brk $04.b		; 00 04
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
	brk $40.b		; 00 40
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	eor ($90.b)		; 52 90
	ora ($00.b),Y		; 11 00
	rti		; 40

	brk $00.b		; 00 00
	rts		; 60

	ora ($86.b,X)		; 01 86
	eor ($06.b,X)		; 41 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	brk $32.b		; 00 32
	rti		; 40

	pha		; 48
	cop $04.b		; 02 04
	brk $09.b		; 00 09
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
	brk $02.b		; 00 02
	mvp $01,$12		; 44 12 01
	pld		; 2B
	brk $A8.b		; 00 A8
	ora ($00.b,X)		; 01 00
	bra  16.b		; 80 10
	brk $01.b		; 00 01
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	php		; 08
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $20.b		; 00 20
	brk $81.b		; 00 81
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	php		; 08
	sei		; 78
	bcc   0.b		; 90 00
	bvc  30.b		; 50 1E
	php		; 08
	brk $94.b		; 00 94
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
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	brk $30.b		; 00 30
	brk $01.b		; 00 01
	tsb $20.b		; 04 20
	brk $88.b		; 00 88
	ora $00.b		; 05 00
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
	brk $42.b		; 00 42
	ora ($10.b,X)		; 01 10
	tya		; 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	tsb $1008.w		; 0C 08 10
	bcc   1.b		; 90 01
	brk $20.b		; 00 20
	php		; 08
	brk $40.b		; 00 40
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
	jsr $0000.w		; 20 00 00
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
	brk $82.b		; 00 82
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	jsr $0000.w		; 20 00 00
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
	mvp $20,$B8		; 44 B8 20
	sty $8500.w		; 8C 00 85
	asl $20.b		; 06 20
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   8.b		; 80 08
	ora ($00.b,X)		; 01 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $03.b		; 00 03
	bra  65.b		; 80 41
	bra   0.b		; 80 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	php		; 08
	brk $30.b		; 00 30
	dey		; 88
	brk $10.b		; 00 10
	cop $16.b		; 02 16
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
	brk $80.b		; 00 80
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $40.b		; 00 40
	tsb $00.b		; 04 00
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	ora ($10.b,X)		; 01 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFF7B.l,X		; FF 7B FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
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
	sbc $FFFDBF.l,X		; FF BF FD FF
	sbc $BFFEFF.l,X		; FF FF FE BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFB.l,X		; FF FB FF FF
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
	sbc $FFFFFE.l,X		; FF FE FF FF
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
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
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
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
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
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
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
	sbc $FEFFFF.l,X		; FF FF FF FE
	stp		; DB
	sbc [$7F.b],Y		; F7 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	tyx		; BB
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
	sbc $42FFFF.l,X		; FF FF FF 42
	jsr $20C8.w		; 20 C8 20
	sta $1E.b,S		; 83 1E
	brk $00.b		; 00 00
	jsl $004002.l		; 22 02 40 00
	eor ($00.b,X)		; 41 00
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
	jsr $0000.w		; 20 00 00
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	bra  20.b		; 80 14
	ora ($00.b,X)		; 01 00
	bpl -127.b		; 10 81
	ora ($08.b,X)		; 01 08
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	bvc   0.b		; 50 00
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
	bra   0.b		; 80 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	brk $29.b		; 00 29
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	sta ($00.b,X)		; 81 00
	brk $10.b		; 00 10
	rti		; 40

	tsb $10.b		; 04 10
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $80.b		; 00 80
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
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	ora ($00.b,X)		; 01 00
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
	bpl   2.b		; 10 02
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $20.b		; 00 20
	bra   0.b		; 80 00
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
	cop $80.b		; 02 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
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
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	cop $41.b		; 02 41
	brk $11.b		; 00 11
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $89.b		; 00 89
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	php		; 08
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $00.b		; 02 00
	brk $44.b		; 00 44
	brk $20.b		; 00 20
	mvp $00,$00		; 44 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
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
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	php		; 08
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
	brk $10.b		; 00 10
	bcc   0.b		; 90 00
	.db $42, $00		; 42 00
	cop $00.b		; 02 00
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
	brk $0A.b		; 00 0A
	ldy #$0000.w		; A0 00 00
	cop $02.b		; 02 02
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	brk $01.b		; 00 01
	brk $50.b		; 00 50
	php		; 08
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
	brk $01.b		; 00 01
	jsr $0718.w		; 20 18 07
	jsr $4000.w		; 20 00 40
	brk $B0.b		; 00 B0
	rti		; 40

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
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	php		; 08
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFF7D.l,X		; BF 7D FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDF.w,X		; FD DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
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
	sbc $FFFFFD.l		; EF FD FF FF
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
	adc $FDFFFF.l,X		; 7F FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
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
	sbc $FFFBFE.l,X		; FF FE FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFBFF.l,X		; FF FF FB FD
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
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	lda $FFFFEF.l,X		; BF EF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFBFF.l,X		; FF FF FB BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
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
	sbc $FFFBFF.l,X		; FF FF FB FF
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
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFDDFF.l,X		; FF FF DD EF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
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
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $D6FFFF.l,X		; FF FF FF D6
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
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
	sbc $FFDFFB.l,X		; FF FB DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
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
	sbc $FFEFFF.l		; EF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	eor ($04.b),Y		; 51 04
	ora ($10.b)		; 12 10
	jsr $0302.w		; 20 02 03
	rti		; 40

	jsr $0000.w		; 20 00 00
	rti		; 40

	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $10.b		; 02 10
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
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	jsr $8000.w		; 20 00 80
	cop $00.b		; 02 00
	brk $08.b		; 00 08
	php		; 08
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	cpy #$000C.w		; C0 0C 00
	lsr $20.b		; 46 20
	ora ($09.b,X)		; 01 09
	cop $80.b		; 02 80
	brk $00.b		; 00 00
	ora ($09.b,X)		; 01 09
	php		; 08
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
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	php		; 08
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
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
	mvp $00,$00		; 44 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $1200.w		; 20 00 12
	iny		; C8
	ora ($00.b,X)		; 01 00
	bpl  80.b		; 10 50
	bit #$04.b		; 89 04
	jsr $0802.w		; 20 02 08
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
	brk $07.b		; 00 07
	ldy #$110A.w		; A0 0A 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0002.w		; 20 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
	adc $A200.w,Y		; 79 00 A2
	sta ($90.b,X)		; 81 90
	tsb $20.b		; 04 20
	clc		; 18
	bpl   4.b		; 10 04
	brk $84.b		; 00 84
	rti		; 40

	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	cop $08.b		; 02 08
	tsb $82.b		; 04 82
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
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
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	bra  12.b		; 80 0C
	tsb $00.b		; 04 00
	brk $40.b		; 00 40
	clc		; 18
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $20.b		; 00 20
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
	brk $0A.b		; 00 0A
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $50.b		; 00 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra   0.b		; 80 00
	brk $44.b		; 00 44
	cpy #$8002.w		; C0 02 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $40.b		; 00 40
	tsb $20.b		; 04 20
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora $00.b		; 05 00
	brk $80.b		; 00 80
	sta ($00.b)		; 92 00
	cpy #$0040.w		; C0 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	rti		; 40

	brk $04.b		; 00 04
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora $08.b		; 05 08
	tsb $02.b		; 04 02
	cop $20.b		; 02 20
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $14.b		; 00 14
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
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
	sbc $FFFAFF.l,X		; FF FF FA FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FB7F7F.l,X		; FF 7F 7F FB
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEBFF.l,X		; FF FF EB FF
	lda $FFFF.w,X		; BD FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
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
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
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
	xce		; FB
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFF7D.l,X		; FF 7D FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
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
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
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
	sbc $FFFF.w,X		; FD FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
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
	sbc $7FFFFF.l,X		; FF FF FF 7F
	cmp $FDFFF7.l,X		; DF F7 FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	lda $FFFFF7.l,X		; BF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $7FFFFF.l,X		; FF FF FF 7F
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
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	rti		; 40

	dey		; 88
	tsb $28.b		; 04 28
	brk $22.b		; 00 22
	clc		; 18
	cpy #$00A0.w		; C0 A0 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
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
	brk $82.b		; 00 82
	cpx #$0201.w		; E0 01 02
	cop $00.b		; 02 00
	mvp $02,$00		; 44 00 02
	txa		; 8A
	bpl   6.b		; 10 06
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
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
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
	tsb $4820.w		; 0C 20 48
	plp		; 28
	rti		; 40

	tsb $00.b		; 04 00
	tsb $10.b		; 04 10
	brk $02.b		; 00 02
	.db $82, $00, $00		; 82 00 00
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
	tsb $00.b		; 04 00
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
	brk $02.b		; 00 02
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
	bpl -128.b		; 10 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	clc		; 18
	sta ($80.b,X)		; 81 80
	ora ($10.b,X)		; 01 10
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
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	mvp $00,$85		; 44 85 00
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
	.db $42, $00		; 42 00
	cop $42.b		; 02 42
	tsb $40.b		; 04 40
	bit $00.b		; 24 00
	php		; 08
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
	inc A		; 1A
	php		; 08
	brk $02.b		; 00 02
	php		; 08
	php		; 08
	bra  48.b		; 80 30
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	php		; 08
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
	rti		; 40

	sty $10.b		; 84 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	tsb $0200.w		; 0C 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	cpy $00.b		; C4 00
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	jsr $0000.w		; 20 00 00
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   8.b		; 80 08
	tsb $20.b		; 04 20
	ora ($00.b,X)		; 01 00
	rti		; 40

	brk $04.b		; 00 04
	rti		; 40

	brk $02.b		; 00 02
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	rti		; 40

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
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
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
	tsb $00.b		; 04 00
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
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BDFFFF.l,X		; FF FF FF BD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FE7FFF.l,X		; FF FF 7F FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
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
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBBFFF.l,X		; FF FF BF FB
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
	sbc $FFFBFF.l,X		; FF FF FB FF
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
	sbc $FFFDFF.l,X		; FF FF FD FF
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
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FF7DFF.l,X		; FF FF 7D FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FF6FF.l,X		; FF FF F6 7F
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $EFFFFF.l,X		; FF FF FF EF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FF77FF.l,X		; FF FF 77 FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
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
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
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
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EEFF.w,X		; FD FF EE
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
	adc $FEFF7F.l,X		; 7F 7F FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFBFFF.l,X		; FF FF BF FF
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
	sbc $FEEFFF.l,X		; FF FF EF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFF7.w,X		; DD F7 FF
	sbc $FF.b,X		; F5 FF
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
	sbc $FDFFFF.l,X		; FF FF FF FD
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
	sbc $FEFFFF.l,X		; FF FF FF FE
	inc $7FF7.w,X		; FE F7 7F
	sbc $FFFFDD.l,X		; FF DD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp [$FF.b],Y		; D7 FF
	and $FFFFFE.l,X		; 3F FE FF FF
	sbc $F7FEFF.l,X		; FF FF FE F7
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	xce		; FB
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
	sbc $FFEFFE.l,X		; FF FE EF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFDFF.l,X		; FF FF FD FE
	inc $FFFF.w,X		; FE FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
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
	sbc $BFFFFF.l,X		; FF FF FF BF
	adc $FFFFFF.l,X		; 7F FF FF FF
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
	sbc $6000FF.l,X		; FF FF 00 60
	php		; 08
	rti		; 40

	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0800.w		; 20 00 08
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
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
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
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	sty $41.b		; 84 41
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	trb $00.b		; 14 00
	bpl   0.b		; 10 00
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
	php		; 08
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
	bra  34.b		; 80 22
	tsb $00.b		; 04 00
	tsb $06.b		; 04 06
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	pha		; 48
	.db $42, $00		; 42 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	rti		; 40

	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $04.b		; 00 04
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
	brk $44.b		; 00 44
	brk $80.b		; 00 80
	tsb $21.b		; 04 21
	rti		; 40

	bpl   0.b		; 10 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $C0.b		; 00 C0
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	sec		; 38
	ora ($50.b,X)		; 01 50
	brk $84.b		; 00 84
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	tsb $20.b		; 04 20
	php		; 08
	cpy #$0008.w		; C0 08 00
	brk $04.b		; 00 04
	and ($00.b,X)		; 21 00
	brk $08.b		; 00 08
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	tsb $00.b		; 04 00
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
	brk $17.b		; 00 17
	rep #$84		; C2 84
	brk $4A.b		; 00 4A
	brk $00.b		; 00 00
	bpl   2.b		; 10 02
	tsb $80.b		; 04 80
	brk $04.b		; 00 04
	brk $01.b		; 00 01
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
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cop $00.b		; 02 00
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
	bra  65.b		; 80 41
	brk $88.b		; 00 88
	jsr $0082.w		; 20 82 00
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	brk $04.b		; 00 04
	ora ($80.b),Y		; 11 80
	brk $42.b		; 00 42
	jsl $8A6000.l		; 22 00 60 8A
	brk $02.b		; 00 02
	brk $40.b		; 00 40
	tsb $00.b		; 04 00
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
	bpl   0.b		; 10 00
	php		; 08
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
	cop $80.b		; 02 80
	rti		; 40

	bpl  32.b		; 10 20
	dey		; 88
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $10.b		; 00 10
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	brk $10.b		; 00 10
	brk $14.b		; 00 14
	brk $08.b		; 00 08
	ora ($00.b)		; 12 00
	brk $01.b		; 00 01
	brk $10.b		; 00 10
	brk $40.b		; 00 40
	tsb $20.b		; 04 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	asl $C0.b		; 06 C0
	brk $04.b		; 00 04
	tsb $0110.w		; 0C 10 01
	php		; 08
	brk $10.b		; 00 10
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	rti		; 40

	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $20.b		; 00 20
	rti		; 40

	cop $00.b		; 02 00
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
	lsr $01.b		; 46 01
	and $20C1.w		; 2D C1 20
	jsr $8100.w		; 20 00 81
	rti		; 40

	rti		; 40

	tsb $04.b		; 04 04
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	rti		; 40

	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0080.w		; 20 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
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
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsl $081000.l		; 22 00 10 08
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $EFFFFF.l,X		; FF FF FF EF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FBFFFF.l,X		; FF FF FF FB
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
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
	sbc $FFEFFF.l,X		; FF FF EF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	inc $DFFF.w,X		; FE FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $F7FFFF.l,X		; FF FF FF F7
	plx		; FA
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
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
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
	sbc $FFEFFF.l,X		; FF FF EF FF
	cmp $FF.b,X		; D5 FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $9FFFFF.l,X		; FF FF FF 9F
	sbc $7EFFFF.l,X		; FF FF FF 7E
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
	bra  32.b		; 80 20
	trb $0040.w		; 1C 40 00
	brk $01.b		; 00 01
	php		; 08
	brk $80.b		; 00 80
	brk $14.b		; 00 14
	rti		; 40

	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	cop $80.b		; 02 80
	php		; 08
	brk $02.b		; 00 02
	rti		; 40

	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	jsr $0000.w		; 20 00 00
	ora ($10.b,X)		; 01 10
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cpy #$0000.w		; C0 00 00
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
	brk $01.b		; 00 01
	bpl   0.b		; 10 00
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
	brk $01.b		; 00 01
	jsr $0000.w		; 20 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $00.b		; 24 00
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
	ora ($00.b,X)		; 01 00
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
	brk $42.b		; 00 42
	brk $00.b		; 00 00
	dey		; 88
	jsr $1000.w		; 20 00 10
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	brk $20.b		; 00 20
	bpl   0.b		; 10 00
	php		; 08
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $40.b		; 00 40
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
	brk $01.b		; 00 01
	brk $04.b		; 00 04
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
	brk $02.b		; 00 02
	dey		; 88
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	ora $01.b		; 05 01
	cpy #$2010.w		; C0 10 20
	bra -64.b		; 80 C0
	brk $02.b		; 00 02
	cop $20.b		; 02 20
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
	brk $40.b		; 00 40
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
	php		; 08
	bra   1.b		; 80 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	bit $A5.b		; 24 A5
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	tsb $00.b		; 04 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $01.b		; 00 01
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
	brk $02.b		; 00 02
	cop $0C.b		; 02 0C
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	brk $20.b		; 00 20
	ora $20.b		; 05 20
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	jsr $0800.w		; 20 00 08
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	brk $80.b		; 00 80
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
	rti		; 40

	ora ($42.b)		; 12 42
	brk $18.b		; 00 18
	bra  36.b		; 80 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
	bpl   0.b		; 10 00
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
	phb		; 8B
	phk		; 4B
	plb		; AB
	jsr $8346.w		; 20 46 83
.ACCU 16
	rep #$20		; C2 20
	lda #$000F.w		; A9 0F 00
	jsl $8083EB.l		; 22 EB 83 80
	jsr $83AB.w		; 20 AB 83
.ACCU 8
	sep #$20		; E2 20
	stz $6F.b		; 64 6F
	lda #$06.b		; A9 06
	sta $6D.b		; 85 6D
	stz $41.b		; 64 41
.ACCU 16
	rep #$20		; C2 20
	lda #$8147.w		; A9 47 81
	jsr $83E1.w		; 20 E1 83
	jsr $854A.w		; 20 4A 85
.ACCU 16
	rep #$20		; C2 20
	lda #$0000.w		; A9 00 00
	jsr $857B.w		; 20 7B 85
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $1DC0.w		; 9C C0 1D
	lda $1D00.w		; AD 00 1D
	and #$000F.w		; 29 0F 00
	jsr $874F.w		; 20 4F 87
	jsr $8568.w		; 20 68 85
.INDEX 16
	rep #$10		; C2 10
	ldx #$0000.w		; A2 00 00
	jsr $825E.w		; 20 5E 82
.ACCU 16
	rep #$20		; C2 20
	lda #$0015.w		; A9 15 00
	jsr $853D.w		; 20 3D 85
	jsr $830F.w		; 20 0F 83
	jsr $82EB.w		; 20 EB 82
	jsr $8370.w		; 20 70 83
	jsr $8591.w		; 20 91 85
	jsr $87F5.w		; 20 F5 87
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $60.b		; A5 60
	and #$5080.w		; 29 80 50
	bne  23.b		; D0 17
	lda $1C04.w		; AD 04 1C
	bne   0.b		; D0 00
	lda $1C04.w		; AD 04 1C
	cmp #$0004.w		; C9 04 00
	beq  23.b		; F0 17
	and #$000F.w		; 29 0F 00
	asl A		; 0A
	tax		; AA
	jsr ($8099.w,X)		; FC 99 80
	bra -44.b		; 80 D4
.ACCU 16
	rep #$20		; C2 20
	lda $1C04.w		; AD 04 1C
	bne   6.b		; D0 06
	lda #$FFFF.w		; A9 FF FF
	sta $1DC0.w		; 8D C0 1D
	jsr $8386.w		; 20 86 83
	plb		; AB
	rtl		; 6B

	lda #$0001.w		; A9 01 00
	sta $1DC0.w		; 8D C0 1D
	bra -13.b		; 80 F3
	lda $80.b,S		; A3 80
	ldx $80.b		; A6 80
	tsx		; BA
	bra -47.b		; 80 D1
	bra -39.b		; 80 D9
	bra  76.b		; 80 4C
	phx		; DA
	bra -62.b		; 80 C2
	bmi -50.b		; 30 CE
	rol $D01C.w		; 2E 1C D0
	tsb $04EE.w		; 0C EE 04
	trb $5CA9.w		; 1C A9 5C
	ldx $9FA2.w,Y		; BE A2 9F
	brk $4C.b		; 00 4C
	pla		; 68
	sta $60.b		; 85 60
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C18.w		; AD 18 1C
	beq  15.b		; F0 0F
	inc $1C04.w		; EE 04 1C
	stz $1C00.w		; 9C 00 1C
	stz $1C02.w		; 9C 02 1C
	lda #$0078.w		; A9 78 00
	sta $1C2E.w		; 8D 2E 1C
	rts		; 60

	dec $1C2E.w		; CE 2E 1C
	bne   3.b		; D0 03
	inc $1C04.w		; EE 04 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $60.b		; A5 60
	and #$A040.w		; 29 40 A0
	bne   6.b		; D0 06
	dec $1C02.w		; CE 02 1C
	bmi   1.b		; 30 01
	rts		; 60

	lda #$003C.w		; A9 3C 00
	sta $1C02.w		; 8D 02 1C
	ldx $1C00.w		; AE 00 1C
	lda $810E.w,X		; BD 0E 81
	beq  13.b		; F0 0D
	ldx #$009F.w		; A2 9F 00
	jsr $8126.w		; 20 26 81
	inc $1C00.w		; EE 00 1C
	inc $1C00.w		; EE 00 1C
	rts		; 60

	lda #$0078.w		; A9 78 00
	sta $1C2E.w		; 8D 2E 1C
	inc $1C04.w		; EE 04 1C
	rts		; 60

	jmp ($8281.w)		; 6C 81 82
	sta ($98.b,X)		; 81 98
	sta ($AE.b,X)		; 81 AE
	sta ($C4.b,X)		; 81 C4
	sta ($DA.b,X)		; 81 DA
	sta ($F0.b,X)		; 81 F0
	sta ($06.b,X)		; 81 06
	.db $82, $1C, $82		; 82 1C 82
	and ($82.b)		; 32 82
	pha		; 48
	.db $82, $00, $00		; 82 00 00
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	sta $00.b		; 85 00
	ldy #$0000.w		; A0 00 00
	lda $1CD0.w,Y		; B9 D0 1C
	beq  11.b		; F0 0B
	iny		; C8
	iny		; C8
	iny		; C8
	iny		; C8
	cpy #$0030.w		; C0 30 00
	bcc -14.b		; 90 F2
	bra -19.b		; 80 ED
	lda $00.b		; A5 00
	sta $1CD0.w,Y		; 99 D0 1C
	txa		; 8A
	sta $1CD2.w,Y		; 99 D2 1C
	rts		; 60

	tsb $50.b		; 04 50
	ora $00C7.w,X		; 1D C7 00
	brk $20.b		; 00 20
	brk $B5.b		; 00 B5
	rol $C7.b,X		; 36 C7
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	ror $3A.b		; 66 3A
	cmp [$00.b]		; C7 00
	brk $7C.b		; 00 7C
	brk $91.b		; 00 91
	rtl		; 6B

	cmp [$00.b]		; C7 00
	brk $40.b		; 00 40
	brk $01.b		; 00 01
	ror $39.b		; 66 39
	cmp [$00.b]		; C7 00
	ora $08.b		; 05 08
	brk $58.b		; 00 58
	bvs   8.b		; 70 08
	brk $02.b		; 00 02
	brk $22.b		; 00 22
	asl $0E23.w		; 0E 23 0E
	jsr $210E.w		; 20 0E 21
	asl $0E32.w		; 0E 32 0E
	and ($0E.b,S),Y		; 33 0E
	bmi  14.b		; 30 0E
	and ($0E.b),Y		; 31 0E
	cli		; 58
	bvs   8.b		; 70 08
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $42.b		; 00 42
	asl $0E43.w		; 0E 43 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($0E.b)		; 52 0E
	eor ($0E.b,S),Y		; 53 0E
	brk $00.b		; 00 00
	cli		; 58
	bvs   8.b		; 70 08
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	asl $0E41.w		; 0E 41 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc  14.b		; 50 0E
	eor ($0E.b),Y		; 51 0E
	brk $00.b		; 00 00
	cli		; 58
	bvs   8.b		; 70 08
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $2E.b		; 00 2E
	asl $0E2F.w		; 0E 2F 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $3F0E.w,X		; 3E 0E 3F
	asl $0000.w		; 0E 00 00
	cli		; 58
	bvs   8.b		; 70 08
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $2C.b		; 00 2C
	asl $0E2D.w		; 0E 2D 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $3D0E.w,X		; 3C 0E 3D
	asl $0000.w		; 0E 00 00
	cli		; 58
	bvs   8.b		; 70 08
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $2A.b		; 00 2A
	asl $0E2B.w		; 0E 2B 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec A		; 3A
	asl $0E3B.w		; 0E 3B 0E
	brk $00.b		; 00 00
	cli		; 58
	bvs   8.b		; 70 08
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	asl $0E29.w		; 0E 29 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	asl $0E39.w		; 0E 39 0E
	brk $00.b		; 00 00
	cli		; 58
	bvs   8.b		; 70 08
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $26.b		; 00 26
	asl $0E27.w		; 0E 27 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $0E.b,X		; 36 0E
	and [$0E.b],Y		; 37 0E
	brk $00.b		; 00 00
	cli		; 58
	bvs   8.b		; 70 08
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	asl $0E25.w		; 0E 25 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $0E.b,X		; 34 0E
	and $0E.b,X		; 35 0E
	brk $00.b		; 00 00
	cli		; 58
	bvs   8.b		; 70 08
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	asl $0E23.w		; 0E 23 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($0E.b)		; 32 0E
	and ($0E.b,S),Y		; 33 0E
	brk $00.b		; 00 00
	cli		; 58
	bvs   8.b		; 70 08
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	asl $0E21.w		; 0E 21 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  14.b		; 30 0E
	and ($0E.b),Y		; 31 0E
	brk $00.b		; 00 00
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $828B.w,X		; BD 8B 82
	sta $1CC5.w		; 8D C5 1C
	sta $0A06.w		; 8D 06 0A
	lda $828D.w,X		; BD 8D 82
	sta $1CC1.w		; 8D C1 1C
	sta $0A04.w		; 8D 04 0A
	lda $828F.w,X		; BD 8F 82
	sta $0A0A.w		; 8D 0A 0A
	lda $8291.w,X		; BD 91 82
	sta $0A08.w		; 8D 08 0A
	lda $8293.w,X		; BD 93 82
	sta $0A16.w		; 8D 16 0A
	lda $8295.w,X		; BD 95 82
	sta $0A14.w		; 8D 14 0A
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc  -1.b		; 50 FF
	beq  -1.b		; F0 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	jsr $82FC.w		; 20 FC 82
	jsl $808386.l		; 22 86 83 80
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0001.w		; A9 01 00
	sta $1C0A.w		; 8D 0A 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C0A.w		; AD 0A 1C
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $1C0A.w		; 6D 0A 1C
	clc		; 18
	adc #$3711.w		; 69 11 37
	sta $1C0A.w		; 8D 0A 1C
	rts		; 60

	jsr $82F3.w		; 20 F3 82
	jsr $833A.w		; 20 3A 83
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	sta TMAIN.w		; 8D 2C 21
	sta TSUB.w		; 8D 2D 21
	sta TMW.w		; 8D 2E 21
	sta TSW.w		; 8D 2F 21
	lda $40.b		; A5 40
	and #$0F.b		; 29 0F
	sta INIDSP.w		; 8D 00 21
	sta $40.b		; 85 40
	lda $41.b		; A5 41
	and #$30.b		; 29 30
	ora #$81.b		; 09 81
	sta $41.b		; 85 41
	sta NMITIMEN.w		; 8D 00 42
	rts		; 60

	php		; 08
.ACCU 8
	sep #$20		; E2 20
	lda RDNMI.w		; AD 10 42
	and #$80.b		; 29 80
	bne  -7.b		; D0 F9
	plp		; 28
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda #$80.b		; A9 80
	sta INIDSP.w		; 8D 00 21
	sta $40.b		; 85 40
	jsr $833A.w		; 20 3A 83
	lda $41.b		; A5 41
	and #$30.b		; 29 30
	sta $41.b		; 85 41
	sta NMITIMEN.w		; 8D 00 42
	lda #$00.b		; A9 00
	sta TMAIN.w		; 8D 2C 21
	sta TSUB.w		; 8D 2D 21
	sta TMW.w		; 8D 2E 21
	sta TSW.w		; 8D 2F 21
	sta MDMAEN.w		; 8D 0B 42
	sta HDMAEN.w		; 8D 0C 42
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda $40.b		; A5 40
	and #$0F.b		; 29 0F
	cmp #$0F.b		; C9 0F
	beq  11.b		; F0 0B
	inc A		; 1A
	sta $00.b		; 85 00
	lda $40.b		; A5 40
	and #$F0.b		; 29 F0
	ora $00.b		; 05 00
	sta $40.b		; 85 40
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda #$F0.b		; A9 F0
	jsl $80EB8C.l		; 22 8C EB 80
	jsl $808386.l		; 22 86 83 80
.ACCU 8
	sep #$20		; E2 20
	lda $40.b		; A5 40
	and #$0F.b		; 29 0F
	beq  13.b		; F0 0D
	dec A		; 3A
	sta $00.b		; 85 00
	lda $40.b		; A5 40
	and #$F0.b		; 29 F0
	ora $00.b		; 05 00
	sta $40.b		; 85 40
	bra -25.b		; 80 E7
	jsr $8346.w		; 20 46 83
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	phb		; 8B
	stz $1000.w		; 9C 00 10
	ldx #$1000.w		; A2 00 10
	ldy #$1001.w		; A0 01 10
	lda #$0BFE.w		; A9 FE 0B
	mvn $00,$00		; 54 00 00
	plb		; AB
	phb		; 8B
	stz $1C00.w		; 9C 00 1C
	ldx #$1C00.w		; A2 00 1C
	ldy #$1C01.w		; A0 01 1C
	lda #$00FE.w		; A9 FE 00
	mvn $00,$00		; 54 00 00
	plb		; AB
	phb		; 8B
	stz $0F00.w		; 9C 00 0F
	ldx #$0F00.w		; A2 00 0F
	ldy #$0F01.w		; A0 01 0F
	lda #$00FE.w		; A9 FE 00
	mvn $00,$00		; 54 00 00
	plb		; AB
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	sta $28.b		; 85 28
	lda ($28.b)		; B2 28
	and #$00FF.w		; 29 FF 00
	sta $2A.b		; 85 2A
	inc $28.b		; E6 28
	ldy #$0000.w		; A0 00 00
	lda ($28.b),Y		; B1 28
	sta $00.b		; 85 00
	iny		; C8
	lda ($28.b),Y		; B1 28
	sta $01.b		; 85 01
	ldy #$0003.w		; A0 03 00
	lda ($28.b),Y		; B1 28
	and #$00FF.w		; 29 FF 00
	beq  15.b		; F0 0F
	lda #$0000.w		; A9 00 00
	sta $03.b		; 85 03
	lda #$007F.w		; A9 7F 00
	sta $05.b		; 85 05
	lda #$FFFF.w		; A9 FF FF
	bra  15.b		; 80 0F
	ldy #$0004.w		; A0 04 00
	lda ($28.b),Y		; B1 28
	sta $03.b		; 85 03
	iny		; C8
	lda ($28.b),Y		; B1 28
	sta $04.b		; 85 04
	lda #$0000.w		; A9 00 00
	jsl $808DEC.l		; 22 EC 8D 80
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy #$0003.w		; A0 03 00
	lda ($28.b),Y		; B1 28
	and #$00FF.w		; 29 FF 00
	beq  17.b		; F0 11
	ldy #$0006.w		; A0 06 00
	lda ($28.b),Y		; B1 28
	sta $08.b		; 85 08
	ldy #$0004.w		; A0 04 00
	lda ($28.b),Y		; B1 28
	jsr $84C2.w		; 20 C2 84
	inc $28.b		; E6 28
	lda $28.b		; A5 28
	clc		; 18
	adc #$0007.w		; 69 07 00
	sta $28.b		; 85 28
	dec $2A.b		; C6 2A
	bne -97.b		; D0 9F
	lda ($28.b)		; B2 28
	and #$00FF.w		; 29 FF 00
	sta $2A.b		; 85 2A
	inc $28.b		; E6 28
	ldy #$0000.w		; A0 00 00
	lda ($28.b),Y		; B1 28
	sta $00.b		; 85 00
	iny		; C8
	lda ($28.b),Y		; B1 28
	sta $01.b		; 85 01
	ldy #$0003.w		; A0 03 00
	lda ($28.b),Y		; B1 28
	sta $03.b		; 85 03
	ldy #$0005.w		; A0 05 00
	lda ($28.b),Y		; B1 28
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	sta $06.b		; 85 06
	jsr $84E9.w		; 20 E9 84
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $28.b		; A5 28
	clc		; 18
	adc #$0006.w		; 69 06 00
	sta $28.b		; 85 28
	dec $2A.b		; C6 2A
	bne -50.b		; D0 CE
	lda ($28.b)		; B2 28
	and #$00FF.w		; 29 FF 00
	sta $2A.b		; 85 2A
	beq  46.b		; F0 2E
	inc $28.b		; E6 28
	ldx #$1000.w		; A2 00 10
	ldy #$0000.w		; A0 00 00
	lda ($28.b),Y		; B1 28
	and #$00FF.w		; 29 FF 00
	sta $00.b,X		; 95 00
	stz $02.b,X		; 74 02
	iny		; C8
	lda ($28.b),Y		; B1 28
	sta $21.b,X		; 95 21
	iny		; C8
	iny		; C8
	lda ($28.b),Y		; B1 28
	sta $25.b,X		; 95 25
	iny		; C8
	iny		; C8
	lda ($28.b),Y		; B1 28
	sta $0A.b,X		; 95 0A
	iny		; C8
	iny		; C8
	txa		; 8A
	clc		; 18
	adc #$0080.w		; 69 80 00
	tax		; AA
	dec $2A.b		; C6 2A
	bne -38.b		; D0 DA
	rts		; 60

	php		; 08
.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	sta VMADDL.w		; 8D 16 21
	ldy #$18.b		; A0 18
	sty DMADEST0.w		; 8C 01 43
	lda $08.b		; A5 08
	sta DMALEN0L.w		; 8D 05 43
	lda #$0000.w		; A9 00 00
	sta DMASRC0L.w		; 8D 02 43
	ldy #$7F.b		; A0 7F
	sty DMASRC0B.w		; 8C 04 43
	ldy #$01.b		; A0 01
	sty DMAP0.w		; 8C 00 43
	sty MDMAEN.w		; 8C 0B 42
	plp		; 28
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy #$0000.w		; A0 00 00
	lda [$00.b],Y		; B7 00
	sta ($03.b),Y		; 91 03
	iny		; C8
	iny		; C8
	dec $06.b		; C6 06
	bne -10.b		; D0 F6
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$01.b		; A9 01
	sta DMAP0.w		; 8D 00 43
	lda $8538.w,Y		; B9 38 85
	sta VMADDL.w		; 8D 16 21
	lda $8539.w,Y		; B9 39 85
	sta VMADDH.w		; 8D 17 21
	lda #$18.b		; A9 18
	sta DMADEST0.w		; 8D 01 43
	lda $8535.w,Y		; B9 35 85
	sta DMASRC0L.w		; 8D 02 43
	lda $8536.w,Y		; B9 36 85
	sta DMASRC0H.w		; 8D 03 43
	lda $8537.w,Y		; B9 37 85
	sta DMASRC0B.w		; 8D 04 43
	lda $853A.w,Y		; B9 3A 85
	sta DMALEN0L.w		; 8D 05 43
	lda $853B.w,Y		; B9 3B 85
	sta DMALEN0H.w		; 8D 06 43
	lda #$01.b		; A9 01
	sta MDMAEN.w		; 8D 0B 42
	rts		; 60

	brk $00.b		; 00 00
	adc $007000.l,X		; 7F 00 70 00
	php		; 08
	brk $48.b		; 00 48
	php		; 08
	jsl $80EB4B.l		; 22 4B EB 80
	plp		; 28
	pla		; 68
	jsl $80EB8C.l		; 22 8C EB 80
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$4580.w		; A9 80 45
	sta $00.b		; 85 00
	lda #$00C2.w		; A9 C2 00
	sta $02.b		; 85 02
	lda #$0000.w		; A9 00 00
	sta $03.b		; 85 03
	lda #$007F.w		; A9 7F 00
	sta $05.b		; 85 05
	lda #$FFFF.w		; A9 FF FF
	jsl $808DEC.l		; 22 EC 8D 80
	rts		; 60

	sta $1C10.w		; 8D 10 1C
	stx $1C12.w		; 8E 12 1C
	stz $1C16.w		; 9C 16 1C
	stz $1C18.w		; 9C 18 1C
	stz $1C14.w		; 9C 14 1C
	stz $1C1E.w		; 9C 1E 1C
	rts		; 60

	sta $1C1C.w		; 8D 1C 1C
	asl A		; 0A
	tay		; A8
	lda $8587.w,Y		; B9 87 85
	sta $1C1A.w		; 8D 1A 1C
	rts		; 60

	bpl  80.b		; 10 50
	brk $58.b		; 00 58
	rts		; 60

	tad		; 5B
	brk $58.b		; 00 58
	brk $58.b		; 00 58
.ACCU 8
	sep #$20		; E2 20
	lda $1C1E.w		; AD 1E 1C
	bne  37.b		; D0 25
	lda $1C2A.w		; AD 2A 1C
	beq  18.b		; F0 12
.ACCU 16
	rep #$20		; C2 20
	lda $60.b		; A5 60
	and #$4080.w		; 29 80 40
	beq  17.b		; F0 11
	stz $60.b		; 64 60
	stz $62.b		; 64 62
.ACCU 8
	sep #$20		; E2 20
	stz $1C2A.w		; 9C 2A 1C
	lda $1C14.w		; AD 14 1C
	beq   4.b		; F0 04
	dec $1C14.w		; CE 14 1C
	rts		; 60

	lda #$0A.b		; A9 0A
	sta $1C14.w		; 8D 14 1C
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C10.w		; AD 10 1C
	sta $10.b		; 85 10
	lda $1C12.w		; AD 12 1C
	sta $12.b		; 85 12
	lda [$10.b]		; A7 10
	and #$00FF.w		; 29 FF 00
	cmp #$00F9.w		; C9 F9 00
	bcs  12.b		; B0 0C
	jsr $86CE.w		; 20 CE 86
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	inc $1C16.w		; EE 16 1C
	inc $1C10.w		; EE 10 1C
	rts		; 60

	sec		; 38
	sbc #$00F9.w		; E9 F9 00
	asl A		; 0A
	tax		; AA
	jsr ($85E9.w,X)		; FC E9 85
	rts		; 60

	sbc [$85.b],Y		; F7 85
	mvn $03,$86		; 54 86 03
	stx $C7.b		; 86 C7
	stx $BD.b		; 86 BD
	stx $80.b		; 86 80
	stx $12.b		; 86 12
	stx $C2.b		; 86 C2
	bmi -18.b		; 30 EE
	bpl  28.b		; 10 1C
	lda #$0001.w		; A9 01 00
	sta $1DC2.w		; 8D C2 1D
	rts		; 60

	inc $1C10.w		; EE 10 1C
	inc $1C10.w		; EE 10 1C
	ldy #$0001.w		; A0 01 00
	lda [$10.b],Y		; B7 10
	sta $1C14.w		; 8D 14 1C
	rts		; 60

	inc $1C10.w		; EE 10 1C
	lda $1C1C.w		; AD 1C 1C
	asl A		; 0A
	tax		; AA
	jmp ($861D.w,X)		; 7C 1D 86
	and [$86.b]		; 27 86
	dec A		; 3A
	stx $3A.b		; 86 3A
	stx $3A.b		; 86 3A
	stx $64.b		; 86 64
	stx $AD.b		; 86 AD
	asl $1C.b,X		; 16 1C
	cmp #$000F.w		; C9 0F 00
	bcs   7.b		; B0 07
	lda #$000F.w		; A9 0F 00
	sta $1C16.w		; 8D 16 1C
	rts		; 60

	stz $1C16.w		; 9C 16 1C
	rts		; 60

	ldy #$0009.w		; A0 09 00
	lda $1C16.w		; AD 16 1C
	cmp #$000A.w		; C9 0A 00
	bcc  11.b		; 90 0B
	ldy #$0012.w		; A0 12 00
	cmp #$0013.w		; C9 13 00
	bcc   3.b		; 90 03
	ldy #$0000.w		; A0 00 00
	sty $1C16.w		; 8C 16 1C
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	stz $1C1E.w		; 9C 1E 1C
	lda #$FF.b		; A9 FF
	sta $1C2A.w		; 8D 2A 1C
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	inc $1C10.w		; EE 10 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy #$000F.w		; A0 0F 00
	lda $1C16.w		; AD 16 1C
	cmp #$0010.w		; C9 10 00
	bcc  11.b		; 90 0B
	ldy #$001E.w		; A0 1E 00
	cmp #$001F.w		; C9 1F 00
	bcc   3.b		; 90 03
	ldy #$0000.w		; A0 00 00
	sty $1C16.w		; 8C 16 1C
	rts		; 60

	inc $1C10.w		; EE 10 1C
	stz $1C16.w		; 9C 16 1C
	stz $1C18.w		; 9C 18 1C
	phb		; 8B
	lda #$0000.w		; A9 00 00
	sta $7F8000.l		; 8F 00 80 7F
	ldx #$8000.w		; A2 00 80
	ldy #$8001.w		; A0 01 80
	lda #$0FFE.w		; A9 FE 0F
	mvn $7F,$7F		; 54 7F 7F
	plb		; AB
	lda $1C1A.w		; AD 1A 1C
	sta $7F7FFA.l		; 8F FA 7F 7F
	lda #$0C00.w		; A9 00 0C
	sta $7F7FFC.l		; 8F FC 7F 7F
	lda #$0001.w		; A9 01 00
	sta $7F7FFE.l		; 8F FE 7F 7F
	lda #$7FFA.w		; A9 FA 7F
	ldx #$007F.w		; A2 7F 00
	jsr $8126.w		; 20 26 81
	rts		; 60

	inc $1C10.w		; EE 10 1C
	lda #$0040.w		; A9 40 00
	sta $1C18.w		; 8D 18 1C
	rts		; 60

	lda #$0080.w		; A9 80 00
	sta $1C18.w		; 8D 18 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	sta $00.b		; 85 00
	lda #$8000.w		; A9 00 80
	sta $08.b		; 85 08
	lda #$007F.w		; A9 7F 00
	sta $0A.b		; 85 0A
	lda $00.b		; A5 00
	and #$0007.w		; 29 07 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	sta $04.b		; 85 04
	lda $00.b		; A5 00
	and #$00F8.w		; 29 F8 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $04.b		; 65 04
	adc #$0000.w		; 69 00 00
	sta $04.b		; 85 04
	lda #$007F.w		; A9 7F 00
	sta $06.b		; 85 06
	jsr $873F.w		; 20 3F 87
	lda $04.b		; A5 04
	clc		; 18
	adc #$0100.w		; 69 00 01
	sta $04.b		; 85 04
	lda $08.b		; A5 08
	clc		; 18
	adc #$0020.w		; 69 20 00
	sta $08.b		; 85 08
	jsr $873F.w		; 20 3F 87
	lda $1C16.w		; AD 16 1C
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $1C1A.w		; 6D 1A 1C
	sta $7F7FFA.l		; 8F FA 7F 7F
	lda #$0040.w		; A9 40 00
	sta $7F7FFC.l		; 8F FC 7F 7F
	lda #$0001.w		; A9 01 00
	sta $7F7FFE.l		; 8F FE 7F 7F
	lda #$7FFA.w		; A9 FA 7F
	ldx #$007F.w		; A2 7F 00
	jsr $8126.w		; 20 26 81
	rts		; 60

	ldy #$0000.w		; A0 00 00
	ldx #$0010.w		; A2 10 00
	lda [$04.b],Y		; B7 04
	sta [$08.b],Y		; 97 08
	iny		; C8
	iny		; C8
	dex		; CA
	bne  -9.b		; D0 F7
	rts		; 60

	dec A		; 3A
	bpl   3.b		; 10 03
	lda #$0000.w		; A9 00 00
	asl A		; 0A
	tay		; A8
	lda $875E.w,Y		; B9 5E 87
	ldx #$009F.w		; A2 9F 00
	rts		; 60

	ldx $BD.b		; A6 BD
.ACCU 8
.INDEX 8
	sep #$BD		; E2 BD
	cmp $BD.b		; C5 BD
	inc $1ABD.w,X		; FE BD 1A
	ldx $BE3B.w,Y		; BE 3B BE
	tsa		; 3B
	ldx $BE3B.w,Y		; BE 3B BE
	tsa		; 3B
	ldx $0286.w,Y		; BE 86 02
	sta $00.b		; 85 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $00.b		; 65 00
	asl A		; 0A
	sta $00.b		; 85 00
	tya		; 98
	asl A		; 0A
	clc		; 18
	adc $00.b		; 65 00
	tay		; A8
	lda ($02.b),Y		; B1 02
	ldx #$9F.b		; A2 9F
	brk $60.b		; 00 60
	sbc ($AF.b),Y		; F1 AF
	sbc ($AF.b),Y		; F1 AF
	sty $AF.b,X		; 94 AF
	and ($B0.b,X)		; 21 B0
	ldx $52AF.w,Y		; BE AF 52
	bcs -124.b		; B0 84
	bcs -83.b		; B0 AD
	bcs -45.b		; B0 D3
	bcs -88.b		; B0 A8
	lda ($A8.b),Y		; B1 A8
	lda ($1C.b),Y		; B1 1C
	lda ($46.b),Y		; B1 46
	lda ($78.b),Y		; B1 78
	lda ($DB.b),Y		; B1 DB
	lda ($11.b),Y		; B1 11
	lda ($40.b)		; B2 40
	lda ($70.b)		; B2 70
	lda ($3D.b)		; B2 3D
	lda ($A4.b,S),Y		; B3 A4
	lda ($A4.b)		; B2 A4
	lda ($D1.b)		; B2 D1
	lda ($08.b)		; B2 08
	lda ($6B.b,S),Y		; B3 6B
	lda ($9E.b,S),Y		; B3 9E
	lda ($D2.b,S),Y		; B3 D2
	lda ($04.b,S),Y		; B3 04
	ldy $C7.b,X		; B4 C7
	ldy $6C.b,X		; B4 6C
	ldy $34.b,X		; B4 34
	ldy $34.b,X		; B4 34
	ldy $98.b,X		; B4 98
	ldy $F5.b,X		; B4 F5
	ldy $26.b,X		; B4 26
	lda $59.b,X		; B5 59
	lda $8C.b,X		; B5 8C
	lda $5D.b,X		; B5 5D
	ldx $F3.b,Y		; B6 F3
	lda $BD.b,X		; B5 BD
	lda $27.b,X		; B5 27
	ldx $27.b,Y		; B6 27
	ldx $8E.b,Y		; B6 8E
	ldx $C2.b,Y		; B6 C2
	ldx $F9.b,Y		; B6 F9
	ldx $31.b,Y		; B6 31
	lda [$3C.b],Y		; B7 3C
	clv		; B8
	sta $B765B7.l,X		; 9F B7 65 B7
	dec $B7.b,X		; D6 B7
	bpl -72.b		; 10 B8
	bpl -72.b		; 10 B8
	ror A		; 6A
	clv		; B8
	sta $B8.b,X		; 95 B8
	cmp $C2B8.w		; CD B8 C2
	bmi -87.b		; 30 A9
	brk $10.b		; 00 10
	sta $88.b		; 85 88
	ldx $88.b		; A6 88
	lda $00.b,X		; B5 00
	and #$FF.b		; 29 FF
	brk $AA.b		; 00 AA
	jsr ($881E.w,X)		; FC 1E 88
	jsr $8B9C.w		; 20 9C 8B
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $88.b		; A5 88
	clc		; 18
	adc #$0080.w		; 69 80 00
	sta $88.b		; 85 88
	cmp #$1900.w		; C9 00 19
	bcc -29.b		; 90 E3
	jsl $809D75.l		; 22 75 9D 80
	rts		; 60

	sty $88.b		; 84 88
	sta $88.b		; 85 88
	cmp $94DD88.l,X		; DF 88 DD 94
	cmp $DD94.w,X		; DD 94 DD
	sty $DD.b,X		; 94 DD
	sty $DD.b,X		; 94 DD
	sty $DD.b,X		; 94 DD
	sty $DD.b,X		; 94 DD
	sty $DD.b,X		; 94 DD
	sty $DD.b,X		; 94 DD
	sty $52.b,X		; 94 52
	sta $52.b,X		; 95 52
	sta $52.b,X		; 95 52
	sta $52.b,X		; 95 52
	sta $52.b,X		; 95 52
	sta $52.b,X		; 95 52
	sta $52.b,X		; 95 52
	sta $52.b,X		; 95 52
	sta $52.b,X		; 95 52
	sta $30.b,X		; 95 30
	sta $9D71.w,X		; 9D 71 9D
	adc ($9D.b),Y		; 71 9D
	adc ($9D.b),Y		; 71 9D
	adc ($9D.b),Y		; 71 9D
	adc ($9D.b),Y		; 71 9D
	adc ($9D.b),Y		; 71 9D
	adc ($9D.b),Y		; 71 9D
	adc ($9D.b),Y		; 71 9D
	adc ($9D.b),Y		; 71 9D
	adc ($9D.b),Y		; 71 9D
	ora $A2.b,X		; 15 A2
	ora $A2.b,X		; 15 A2
	ora $A2.b,X		; 15 A2
	ora $A2.b,X		; 15 A2
	ldx $15A1.w,Y		; BE A1 15
	ldx #$A215.w		; A2 15 A2
	ora ($A5.b),Y		; 11 A5
	inx		; E8
	ldy $22.b		; A4 22
	plb		; AB
	eor ($A5.b,X)		; 41 A5
	eor ($A5.b,X)		; 41 A5
	eor ($A5.b,X)		; 41 A5
	eor ($A5.b,X)		; 41 A5
	eor ($A5.b,X)		; 41 A5
	eor ($A5.b,X)		; 41 A5
	eor ($A5.b,X)		; 41 A5
	eor ($A5.b,X)		; 41 A5
	eor ($A5.b,X)		; 41 A5
	rts		; 60

	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
	lda $8896.w,Y		; B9 96 88
	sta $00.b		; 85 00
	jmp ($0000.w)		; 6C 00 00
	stz $AF88.w,X		; 9E 88 AF
	dey		; 88
	iny		; C8
	dey		; 88
	dec $A088.w,X		; DE 88 A0
	brk $00.b		; 00 00
	jsr $8B81.w		; 20 81 8B
	lda #$0028.w		; A9 28 00
	sta $78.b,X		; 95 78
	jsr $8BD5.w		; 20 D5 8B
	inc $02.b,X		; F6 02
	rts		; 60

	dec $78.b,X		; D6 78
	bpl  20.b		; 10 14
	lda #$F800.w		; A9 00 F8
	sta $30.b,X		; 95 30
	lda #$0800.w		; A9 00 08
	sta $32.b,X		; 95 32
	inc $02.b,X		; F6 02
.ACCU 8
	sep #$20		; E2 20
	lda #$11.b		; A9 11
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

	lda $25.b,X		; B5 25
	cmp #$0080.w		; C9 80 00
	bcc  14.b		; 90 0E
	jsr $8BD5.w		; 20 D5 8B
	inc $02.b,X		; F6 02
	ldy #$1080.w		; A0 80 10
	lda #$0002.w		; A9 02 00
	sta $0002.w,Y		; 99 02 00
	rts		; 60

	rts		; 60

	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
	lda $88F0.w,Y		; B9 F0 88
	sta $00.b		; 85 00
	jmp ($0000.w)		; 6C 00 00
	tsb $89.b		; 04 89
	tsb $0D89.w		; 0C 89 0D
	bit #$8926.w		; 89 26 89
	rti		; 40

	bit #$895C.w		; 89 5C 89
	bvs -119.b		; 70 89
	sty $A089.w		; 8C 89 A0
	bit #$89B2.w		; 89 B2 89
	ldy #$0000.w		; A0 00 00
	jsr $8B81.w		; 20 81 8B
	inc $02.b,X		; F6 02
	rts		; 60

	lda #$00A0.w		; A9 A0 00
	sta $21.b,X		; 95 21
	lda #$0090.w		; A9 90 00
	sta $25.b,X		; 95 25
	inc $02.b,X		; F6 02
	lda #$001C.w		; A9 1C 00
	sta $78.b,X		; 95 78
	stz $7A.b,X		; 74 7A
	lda #$FFF7.w		; A9 F7 FF
	sta $70.b,X		; 95 70
	rts		; 60

	dec $78.b,X		; D6 78
	bpl  18.b		; 10 12
	lda #$0030.w		; A9 30 00
	sta $1C06.w		; 8D 06 1C
	lda #$001C.w		; A9 1C 00
	sta $78.b,X		; 95 78
	lda #$0009.w		; A9 09 00
	sta $70.b,X		; 95 70
	inc $02.b,X		; F6 02
	jsr $89BD.w		; 20 BD 89
	rts		; 60

	dec $78.b,X		; D6 78
	bpl  20.b		; 10 14
	ldy #$0003.w		; A0 03 00
	jsr $8B81.w		; 20 81 8B
	lda #$001E.w		; A9 1E 00
	sta $78.b,X		; 95 78
	stz $7A.b,X		; 74 7A
	lda #$000B.w		; A9 0B 00
	sta $70.b,X		; 95 70
	inc $02.b,X		; F6 02
	jsr $89BD.w		; 20 BD 89
	rts		; 60

	dec $78.b,X		; D6 78
	bpl  12.b		; 10 0C
	lda #$001E.w		; A9 1E 00
	sta $78.b,X		; 95 78
	lda #$FFF5.w		; A9 F5 FF
	sta $70.b,X		; 95 70
	inc $02.b,X		; F6 02
	jsr $8A39.w		; 20 39 8A
	rts		; 60

	dec $78.b,X		; D6 78
	bpl  20.b		; 10 14
	ldy #$0006.w		; A0 06 00
	jsr $8B81.w		; 20 81 8B
	lda #$0028.w		; A9 28 00
	sta $78.b,X		; 95 78
	stz $7A.b,X		; 74 7A
	lda #$FFFB.w		; A9 FB FF
	sta $70.b,X		; 95 70
	inc $02.b,X		; F6 02
	jsr $8A39.w		; 20 39 8A
	rts		; 60

	dec $78.b,X		; D6 78
	bpl  12.b		; 10 0C
	lda #$0028.w		; A9 28 00
	sta $78.b,X		; 95 78
	lda #$0005.w		; A9 05 00
	sta $70.b,X		; 95 70
	inc $02.b,X		; F6 02
	jsr $8AC9.w		; 20 C9 8A
	rts		; 60

	dec $78.b,X		; D6 78
	bpl  10.b		; 10 0A
	inc $02.b,X		; F6 02
	lda #$003C.w		; A9 3C 00
	sta $78.b,X		; 95 78
	jsr $8BD5.w		; 20 D5 8B
	jsr $8AC9.w		; 20 C9 8A
	rts		; 60

	dec $78.b,X		; D6 78
	bpl   6.b		; 10 06
	lda #$FFFF.w		; A9 FF FF
	sta $1C04.w		; 8D 04 1C
	rts		; 60

	ldy $7A.b,X		; B4 7A
	cpy #$0068.w		; C0 68 00
	bcs  10.b		; B0 0A
	lda $89D1.w,Y		; B9 D1 89
	sta $32.b,X		; 95 32
	inc $7A.b,X		; F6 7A
	inc $7A.b,X		; F6 7A
	rts		; 60

	stz $32.b,X		; 74 32
	rts		; 60

	brk $00.b		; 00 00
	ora $001F00.l		; 0F 00 1F 00
	rol $3D00.w		; 2E 00 3D
	brk $4C.b		; 00 4C
	brk $5A.b		; 00 5A
	brk $68.b		; 00 68
	brk $75.b		; 00 75
	brk $81.b		; 00 81
	brk $8D.b		; 00 8D
	brk $98.b		; 00 98
	brk $A1.b		; 00 A1
	brk $AA.b		; 00 AA
	brk $B2.b		; 00 B2
	brk $B8.b		; 00 B8
	brk $BE.b		; 00 BE
	brk $C2.b		; 00 C2
	brk $C5.b		; 00 C5
	brk $C7.b		; 00 C7
	brk $C7.b		; 00 C7
	brk $C7.b		; 00 C7
	brk $C5.b		; 00 C5
	brk $C2.b		; 00 C2
	brk $BE.b		; 00 BE
	brk $B8.b		; 00 B8
	brk $B2.b		; 00 B2
	brk $AA.b		; 00 AA
	brk $A1.b		; 00 A1
	brk $98.b		; 00 98
	brk $8D.b		; 00 8D
	brk $81.b		; 00 81
	brk $75.b		; 00 75
	brk $68.b		; 00 68
	brk $5A.b		; 00 5A
	brk $4C.b		; 00 4C
	brk $3D.b		; 00 3D
	brk $2E.b		; 00 2E
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C3.b		; 00 C3
	sbc $5FFF8B.l,X		; FF 8B FF 5F
	sbc $39FF42.l,X		; FF 42 FF 39
	sbc $5FFF42.l,X		; FF 42 FF 5F
	sbc $C3FF8B.l,X		; FF 8B FF C3
	sbc $B40000.l,X		; FF 00 00 B4
	ply		; 7A
	cpy #$007C.w		; C0 7C 00
	bcs  10.b		; B0 0A
	lda $8A4D.w,Y		; B9 4D 8A
	sta $32.b,X		; 95 32
	inc $7A.b,X		; F6 7A
	inc $7A.b,X		; F6 7A
	rts		; 60

	stz $32.b,X		; 74 32
	rts		; 60

	brk $00.b		; 00 00
	asl $1C00.w		; 0E 00 1C
	brk $2A.b		; 00 2A
	brk $37.b		; 00 37
	brk $44.b		; 00 44
	brk $51.b		; 00 51
	brk $5E.b		; 00 5E
	brk $69.b		; 00 69
	brk $74.b		; 00 74
	brk $7F.b		; 00 7F
	brk $88.b		; 00 88
	brk $91.b		; 00 91
	brk $99.b		; 00 99
	brk $A0.b		; 00 A0
	brk $A6.b		; 00 A6
	brk $AB.b		; 00 AB
	brk $AF.b		; 00 AF
	brk $B1.b		; 00 B1
	brk $B3.b		; 00 B3
	brk $B3.b		; 00 B3
	brk $B3.b		; 00 B3
	brk $B1.b		; 00 B1
	brk $AF.b		; 00 AF
	brk $AB.b		; 00 AB
	brk $A6.b		; 00 A6
	brk $A0.b		; 00 A0
	brk $99.b		; 00 99
	brk $91.b		; 00 91
	brk $88.b		; 00 88
	brk $7F.b		; 00 7F
	brk $74.b		; 00 74
	brk $69.b		; 00 69
	brk $5E.b		; 00 5E
	brk $51.b		; 00 51
	brk $44.b		; 00 44
	brk $37.b		; 00 37
	brk $2A.b		; 00 2A
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F1.b		; 00 F1
	sbc $D3FFE2.l,X		; FF E2 FF D3
	sbc $BAFFC6.l,X		; FF C6 FF BA
	sbc $A7FFB0.l,X		; FF B0 FF A7
	sbc $9EFFA1.l,X		; FF A1 FF 9E
	sbc $9EFF9D.l,X		; FF 9D FF 9E
	sbc $A7FFA1.l,X		; FF A1 FF A7
	sbc $BAFFB0.l,X		; FF B0 FF BA
	sbc $D3FFC6.l,X		; FF C6 FF D3
	sbc $F1FFE2.l,X		; FF E2 FF F1
	sbc $B40000.l,X		; FF 00 00 B4
	ply		; 7A
	cpy #$00A4.w		; C0 A4 00
	bcs  10.b		; B0 0A
	lda $8ADD.w,Y		; B9 DD 8A
	sta $32.b,X		; 95 32
	inc $7A.b,X		; F6 7A
	inc $7A.b,X		; F6 7A
	rts		; 60

	stz $32.b,X		; 74 32
	rts		; 60

	brk $00.b		; 00 00
	ora $00.b		; 05 00
	asl A		; 0A
	brk $0F.b		; 00 0F
	brk $14.b		; 00 14
	brk $19.b		; 00 19
	brk $1E.b		; 00 1E
	brk $23.b		; 00 23
	brk $28.b		; 00 28
	brk $2D.b		; 00 2D
	brk $31.b		; 00 31
	brk $36.b		; 00 36
	brk $3A.b		; 00 3A
	brk $3E.b		; 00 3E
	brk $42.b		; 00 42
	brk $46.b		; 00 46
	brk $4A.b		; 00 4A
	brk $4D.b		; 00 4D
	brk $50.b		; 00 50
	brk $53.b		; 00 53
	brk $56.b		; 00 56
	brk $59.b		; 00 59
	brk $5B.b		; 00 5B
	brk $5D.b		; 00 5D
	brk $5F.b		; 00 5F
	brk $60.b		; 00 60
	brk $61.b		; 00 61
	brk $62.b		; 00 62
	brk $63.b		; 00 63
	brk $63.b		; 00 63
	brk $63.b		; 00 63
	brk $63.b		; 00 63
	brk $63.b		; 00 63
	brk $62.b		; 00 62
	brk $61.b		; 00 61
	brk $60.b		; 00 60
	brk $5F.b		; 00 5F
	brk $5D.b		; 00 5D
	brk $5B.b		; 00 5B
	brk $59.b		; 00 59
	brk $56.b		; 00 56
	brk $53.b		; 00 53
	brk $50.b		; 00 50
	brk $4D.b		; 00 4D
	brk $4A.b		; 00 4A
	brk $46.b		; 00 46
	brk $42.b		; 00 42
	brk $3E.b		; 00 3E
	brk $3A.b		; 00 3A
	brk $36.b		; 00 36
	brk $32.b		; 00 32
	brk $2D.b		; 00 2D
	brk $28.b		; 00 28
	brk $23.b		; 00 23
	brk $1E.b		; 00 1E
	brk $19.b		; 00 19
	brk $14.b		; 00 14
	brk $0F.b		; 00 0F
	brk $0A.b		; 00 0A
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F9.b		; 00 F9
	sbc $EAFFF1.l,X		; FF F1 FF EA
	sbc $DDFFE3.l,X		; FF E3 FF DD
	sbc $D4FFD8.l,X		; FF D8 FF D4
	sbc $CFFFD1.l,X		; FF D1 FF CF
	sbc $CFFFCF.l,X		; FF CF FF CF
	sbc $D4FFD1.l,X		; FF D1 FF D4
	sbc $DDFFD8.l,X		; FF D8 FF DD
	sbc $EAFFE3.l,X		; FF E3 FF EA
	sbc $F9FFF1.l,X		; FF F1 FF F9
	sbc $5A0000.l,X		; FF 00 00 5A
	lda $00.b,X		; B5 00
	tay		; A8
	lda $C030.w,Y		; B9 30 C0
	sta $00.b		; 85 00
	ply		; 7A
	lda ($00.b),Y		; B1 00
	sta $60.b,X		; 95 60
	iny		; C8
	lda ($00.b),Y		; B1 00
	sta $61.b,X		; 95 61
	stz $6E.b,X		; 74 6E
	lda #$FFFC.w		; A9 FC FF
	sta $68.b,X		; 95 68
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy #$0000.w		; A0 00 00
	lda $30.b,X		; B5 30
	bpl   3.b		; 10 03
	ldy #$FFFF.w		; A0 FF FF
	clc		; 18
	adc $20.b,X		; 75 20
	sta $20.b,X		; 95 20
	tya		; 98
	adc $22.b,X		; 75 22
	sta $22.b,X		; 95 22
	ldy #$0000.w		; A0 00 00
	lda $32.b,X		; B5 32
	bpl   3.b		; 10 03
	ldy #$FFFF.w		; A0 FF FF
	clc		; 18
	adc $24.b,X		; 75 24
	sta $24.b,X		; 95 24
	tya		; 98
	adc $26.b,X		; 75 26
	sta $26.b,X		; 95 26
	lda $70.b,X		; B5 70
	clc		; 18
	adc $30.b,X		; 75 30
	sta $30.b,X		; 95 30
	lda $72.b,X		; B5 72
	clc		; 18
	adc $32.b,X		; 75 32
	sta $32.b,X		; 95 32
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0000.w		; A9 00 00
	sta $30.b,X		; 95 30
	sta $32.b,X		; 95 32
	sta $70.b,X		; 95 70
	sta $72.b,X		; 95 72
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$1000.w		; A9 00 10
	sta $88.b		; 85 88
	ldx $88.b		; A6 88
	lda $00.b,X		; B5 00
	and #$00FF.w		; 29 FF 00
	beq   7.b		; F0 07
	jsr $8BFB.w		; 20 FB 8B
	jsl $809D75.l		; 22 75 9D 80
	rts		; 60

	lda $02.b,X		; B5 02
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
	lda $8C0A.w,Y		; B9 0A 8C
	sta $00.b		; 85 00
	jmp ($0000.w)		; 6C 00 00
	asl $1F8C.w		; 0E 8C 1F
	sty $00A0.w		; 8C A0 00
	brk $20.b		; 00 20
	sta ($8B.b,X)		; 81 8B
	jsr $8BD5.w		; 20 D5 8B
	inc $02.b,X		; F6 02
.ACCU 8
	sep #$20		; E2 20
	lda #$01.b		; A9 01
	sta $09.b,X		; 95 09
	rts		; 60

	phb		; 8B
	phk		; 4B
	plb		; AB
	jsr $8346.w		; 20 46 83
.ACCU 16
	rep #$20		; C2 20
	lda #$000F.w		; A9 0F 00
	jsl $8083EB.l		; 22 EB 83 80
	jsr $83AB.w		; 20 AB 83
.ACCU 8
	sep #$20		; E2 20
	stz $6F.b		; 64 6F
	lda #$06.b		; A9 06
	sta $6D.b		; 85 6D
	stz $41.b		; 64 41
.ACCU 16
	rep #$20		; C2 20
	lda #$8C62.w		; A9 62 8C
	jsr $83E1.w		; 20 E1 83
.INDEX 16
	rep #$10		; C2 10
	ldx #$000C.w		; A2 0C 00
	jsr $825E.w		; 20 5E 82
	jsr $830F.w		; 20 0F 83
	jsr $82EB.w		; 20 EB 82
	jsr $8370.w		; 20 70 83
	jsr $87F5.w		; 20 F5 87
	lda $1C04.w		; AD 04 1C
	beq -14.b		; F0 F2
	jsr $8386.w		; 20 86 83
	plb		; AB
	rtl		; 6B

	ora $00.b,S		; 03 00
	brk $C8.b		; 00 C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $C803.w,Y		; B9 03 C8
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	sta ($6B.b),Y		; 91 6B
	cmp [$00.b]		; C7 00
	brk $40.b		; 00 40
	brk $02.b		; 00 02
	ror $39.b		; 66 39
	cmp [$00.b]		; C7 00
	ora $08.b		; 05 08
	lda $C802.w,Y		; B9 02 C8
	brk $06.b		; 00 06
	php		; 08
	cop $02.b		; 02 02
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	tsb $20.b		; 04 20
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	bmi -117.b		; 30 8B
	phk		; 4B
	plb		; AB
	jsr $8346.w		; 20 46 83
.ACCU 16
	rep #$20		; C2 20
	lda $1EE0.w		; AD E0 1E
	bne  96.b		; D0 60
	lda #$000E.w		; A9 0E 00
	jsl $8083EB.l		; 22 EB 83 80
	jsr $83AB.w		; 20 AB 83
.ACCU 8
	sep #$20		; E2 20
	stz $6F.b		; 64 6F
	lda #$06.b		; A9 06
	sta $6D.b		; 85 6D
	stz $41.b		; 64 41
.ACCU 16
	rep #$20		; C2 20
	lda #$8D0E.w		; A9 0E 8D
	jsr $83E1.w		; 20 E1 83
.INDEX 16
	rep #$10		; C2 10
	ldx #$0018.w		; A2 18 00
	jsr $825E.w		; 20 5E 82
	jsr $8E16.w		; 20 16 8E
.ACCU 16
	rep #$20		; C2 20
	lda #$0003.w		; A9 03 00
	jsr $853D.w		; 20 3D 85
	jsr $830F.w		; 20 0F 83
	jsr $82EB.w		; 20 EB 82
	jsr $8370.w		; 20 70 83
.ACCU 16
	rep #$20		; C2 20
	lda $60.b		; A5 60
	and #$2000.w		; 29 00 20
	bne  33.b		; D0 21
	jsr $8D3B.w		; 20 3B 8D
	jsr $8DF4.w		; 20 F4 8D
	jsr $8ED0.w		; 20 D0 8E
.ACCU 16
	rep #$20		; C2 20
	lda $1C04.w		; AD 04 1C
	bpl -31.b		; 10 E1
	jsr $8386.w		; 20 86 83
	jsr $926B.w		; 20 6B 92
	jsr $92B3.w		; 20 B3 92
.ACCU 8
	sep #$20		; E2 20
	lda #$0C.b		; A9 0C
	sta $8A.b		; 85 8A
	plb		; AB
	rtl		; 6B

.ACCU 8
	sep #$20		; E2 20
	lda #$01.b		; A9 01
	sta $8A.b		; 85 8A
	jsr $8386.w		; 20 86 83
	plb		; AB
	rtl		; 6B

	ora $02.b		; 05 02
	tsb $C8.b		; 04 C8
	brk $00.b		; 00 00
	jsr $FB00.w		; 20 00 FB
	ora ($C8.b)		; 12 C8
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	stx $C814.w		; 8E 14 C8
	brk $00.b		; 00 00
	sei		; 78
	brk $D0.b		; 00 D0
	pha		; 48
	cmp $FF.b,S		; C3 FF
	brk $2A.b		; 00 2A
	brk $50.b		; 00 50
	bpl 106.b		; 10 6A
	dex		; CA
	brk $00.b		; 00 00
	bvc   0.b		; 50 00
	ora ($98.b,X)		; 01 98
	clc		; 18
	iny		; C8
	brk $05.b		; 00 05
	php		; 08
	brk $C2.b		; 00 C2
	bmi -83.b		; 30 AD
	tsb $1C.b		; 04 1C
	beq   3.b		; F0 03
	jmp $8F08.w		; 4C 08 8F
	lda $60.b		; A5 60
	sta $28.b		; 85 28
	lda $1C20.w		; AD 20 1C
	cmp #$08.b		; C9 08
	brk $F0.b		; 00 F0
	and $A5.b		; 25 A5
	plp		; 28
	and #$00.b		; 29 00
	ora ($F0.b,X)		; 01 F0
	asl $A0.b		; 06 A0
	ora ($00.b,X)		; 01 00
	jsr $8D99.w		; 20 99 8D
	lda $28.b		; A5 28
	and #$00.b		; 29 00
	cop $F0.b		; 02 F0
	asl $A0.b		; 06 A0
	sbc $9920FF.l,X		; FF FF 20 99
	sta $28A5.w		; 8D A5 28
	and #$80.b		; 29 80
	bvc -16.b		; 50 F0
	tsb $20.b		; 04 20
	dec $8D.b		; C6 8D
	rts		; 60

	lda $28.b		; A5 28
	and #$40.b		; 29 40
	bra -16.b		; 80 F0
	trb $AD.b		; 14 AD
	jsr $C91C.w		; 20 1C C9
	php		; 08
	brk $F0.b		; 00 F0
	ora $01A9.w		; 0D A9 01
	brk $8D.b		; 00 8D
	tsb $1C.b		; 04 1C
	jsr $8FA1.w		; 20 A1 8F
	jsr $82EB.w		; 20 EB 82
	rts		; 60

	lda #$FF.b		; A9 FF
	sbc $1C048D.l,X		; FF 8D 04 1C
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
	lda #$04.b		; A9 04
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C20.w		; AD 20 1C
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc #$0F00.w		; 69 00 0F
	tax		; AA
	tya		; 98
	clc		; 18
	adc $02.b,X		; 75 02
	sta $02.b,X		; 95 02
	beq  11.b		; F0 0B
	cmp #$000A.w		; C9 0A 00
	bne  11.b		; D0 0B
	lda #$0001.w		; A9 01 00
	sta $02.b,X		; 95 02
	rts		; 60

	lda #$0009.w		; A9 09 00
	sta $02.b,X		; 95 02
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	inc $1C20.w		; EE 20 1C
	lda $1C20.w		; AD 20 1C
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc #$0F00.w		; 69 00 0F
	tax		; AA
	lda #$0001.w		; A9 01 00
	sta $02.b,X		; 95 02
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C20.w		; AD 20 1C
	cmp #$0008.w		; C9 08 00
	beq   1.b		; F0 01
	rts		; 60

	lda #$0003.w		; A9 03 00
	sta $1C04.w		; 8D 04 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0F00.w		; A9 00 0F
	sta $88.b		; 85 88
	stz $2E.b		; 64 2E
	stz $2C.b		; 64 2C
	ldx $88.b		; A6 88
	lda $00.b,X		; B5 00
	beq   3.b		; F0 03
	jsr $8E5D.w		; 20 5D 8E
	lda $88.b		; A5 88
	clc		; 18
	adc #$0010.w		; 69 10 00
	sta $88.b		; 85 88
	cmp #$0F80.w		; C9 80 0F
	bcc -22.b		; 90 EA
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$0F00.w		; A2 00 0F
	ldy #$0000.w		; A0 00 00
	lda $8E3D.w,Y		; B9 3D 8E
	sta $00.b,X		; 95 00
	lda $8E3F.w,Y		; B9 3F 8E
	sta $02.b,X		; 95 02
	lda #$0001.w		; A9 01 00
	sta $04.b,X		; 95 04
	iny		; C8
	iny		; C8
	iny		; C8
	iny		; C8
	txa		; 8A
	clc		; 18
	adc #$0010.w		; 69 10 00
	tax		; AA
	cpx #$0F80.w		; E0 80 0F
	bcc -30.b		; 90 E2
	rts		; 60

	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $B5.b		; 00 B5
	cop $0A.b		; 02 0A
	tay		; A8
	lda $8EAC.w,Y		; B9 AC 8E
	tay		; A8
	ldx $2C.b		; A6 2C
	lda #$0027.w		; A9 27 00
	sta $00.b		; 85 00
	lda $0000.w,Y		; B9 00 00
	sta $7F8000.l,X		; 9F 00 80 7F
	inx		; E8
	inx		; E8
	iny		; C8
	iny		; C8
	dec $00.b		; C6 00
	bne -15.b		; D0 F1
	ldx $88.b		; A6 88
	lda $00.b,X		; B5 00
	dec A		; 3A
	asl A		; 0A
	tay		; A8
	lda $8EC0.w,Y		; B9 C0 8E
	ldx $2C.b		; A6 2C
	sta $7F8000.l,X		; 9F 00 80 7F
	ldx $2E.b		; A6 2E
	lda $2C.b		; A5 2C
	clc		; 18
	adc #$8000.w		; 69 00 80
	sta $1CD0.w,X		; 9D D0 1C
	lda #$007F.w		; A9 7F 00
	sta $1CD2.w,X		; 9D D2 1C
	txa		; 8A
	clc		; 18
	adc #$0004.w		; 69 04 00
	sta $2E.b		; 85 2E
	lda $2C.b		; A5 2C
	clc		; 18
	adc #$0080.w		; 69 80 00
	sta $2C.b		; 85 2C
	rts		; 60

	ora ($92.b),Y		; 11 92
	pld		; 2B
	bcc  97.b		; 90 61
	bcc -105.b		; 90 97
	bcc -51.b		; 90 CD
	bcc   3.b		; 90 03
	sta ($39.b),Y		; 91 39
	sta ($6F.b),Y		; 91 6F
	sta ($A5.b),Y		; 91 A5
	sta ($DB.b),Y		; 91 DB
	sta ($0D.b),Y		; 91 0D
	adc ($4D.b),Y		; 71 4D
	adc ($8D.b),Y		; 71 8D
	adc ($CD.b),Y		; 71 CD
	adc ($0D.b),Y		; 71 0D
	adc ($4D.b)		; 72 4D
	adc ($8D.b)		; 72 8D
	adc ($CD.b)		; 72 CD
	adc ($C2.b)		; 72 C2
	bmi -117.b		; 30 8B
	ldx #$9247.w		; A2 47 92
	ldy #$8800.w		; A0 00 88
	lda #$0040.w		; A9 40 00
	mvn $9F,$7F		; 54 7F 9F
	plb		; AB
	lda $1C20.w		; AD 20 1C
	asl A		; 0A
	tay		; A8
	lda $8EF6.w,Y		; B9 F6 8E
	sta $7F8800.l		; 8F 00 88 7F
	ldx #$007F.w		; A2 7F 00
	lda #$8800.w		; A9 00 88
	jsr $8126.w		; 20 26 81
	rts		; 60

	cmp $70.b		; C5 70
	ora $71.b		; 05 71
	eor $71.b		; 45 71
	sta $71.b		; 85 71
	cmp $71.b		; C5 71
	ora $72.b		; 05 72
	eor $72.b		; 45 72
	sta $72.b		; 85 72
	sta $72.b		; 85 72
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C04.w		; AD 04 1C
	asl A		; 0A
	tax		; AA
	jmp ($8F12.w,X)		; 7C 12 8F
	inc A		; 1A
	sta $3A8F29.l		; 8F 29 8F 3A
	sta $608F1B.l		; 8F 1B 8F 60
	lda $60.b		; A5 60
	and #$5080.w		; 29 80 50
	beq   6.b		; F0 06
	lda #$FFFF.w		; A9 FF FF
	sta $1C04.w		; 8D 04 1C
	rts		; 60

	inc $1C04.w		; EE 04 1C
	lda $1C0B.w		; AD 0B 1C
	and #$000F.w		; 29 0F 00
	clc		; 18
	adc #$0005.w		; 69 05 00
	sta $1C22.w		; 8D 22 1C
	rts		; 60

	dec $1C22.w		; CE 22 1C
	bmi   7.b		; 30 07
	ldy #$0001.w		; A0 01 00
	jsr $8D9F.w		; 20 9F 8D
	rts		; 60

	jsr $8F4A.w		; 20 4A 8F
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C20.w		; AD 20 1C
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc #$0F00.w		; 69 00 0F
	tax		; AA
	lda $02.b,X		; B5 02
	sta $00.b		; 85 00
	ldy #$0008.w		; A0 08 00
	stz $02.b		; 64 02
	ldx #$0F00.w		; A2 00 0F
	lda $02.b,X		; B5 02
	cmp $00.b		; C5 00
	bne   2.b		; D0 02
	inc $02.b		; E6 02
	txa		; 8A
	clc		; 18
	adc #$0010.w		; 69 10 00
	tax		; AA
	dey		; 88
	bne -17.b		; D0 EF
	lda $02.b		; A5 02
	cmp #$0001.w		; C9 01 00
	beq   7.b		; F0 07
	lda #$0001.w		; A9 01 00
	sta $1C22.w		; 8D 22 1C
	rts		; 60

	dec $1C04.w		; CE 04 1C
	jsr $8F8D.w		; 20 8D 8F
	jsr $8DC6.w		; 20 C6 8D
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C20.w		; AD 20 1C
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc #$0F00.w		; 69 00 0F
	tax		; AA
	lda #$0002.w		; A9 02 00
	sta $04.b,X		; 95 04
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy #$0000.w		; A0 00 00
	ldx #$0000.w		; A2 00 00
	lda $925D.w,Y		; B9 5D 92
	sta $7F8C00.l,X		; 9F 00 8C 7F
	sta $7F8C10.l,X		; 9F 10 8C 7F
	sta $7F8C20.l,X		; 9F 20 8C 7F
	sta $7F8C30.l,X		; 9F 30 8C 7F
	sta $7F8C40.l,X		; 9F 40 8C 7F
	sta $7F8C50.l,X		; 9F 50 8C 7F
	sta $7F8C60.l,X		; 9F 60 8C 7F
	sta $7F8C70.l,X		; 9F 70 8C 7F
	inx		; E8
	inx		; E8
	iny		; C8
	iny		; C8
	cpy #$0010.w		; C0 10 00
	bcc -44.b		; 90 D4
	ldy #$0000.w		; A0 00 00
	ldx #$0000.w		; A2 00 00
	lda $900B.w,Y		; B9 0B 90
	sta $7F8C00.l,X		; 9F 00 8C 7F
	iny		; C8
	iny		; C8
	txa		; 8A
	clc		; 18
	adc #$0010.w		; 69 10 00
	tax		; AA
	cpy #$0010.w		; C0 10 00
	bcc -20.b		; 90 EC
	lda $1C20.w		; AD 20 1C
	sta $28.b		; 85 28
	lda $28.b		; A5 28
	asl A		; 0A
	tay		; A8
	lda $901B.w,Y		; B9 1B 90
	ldx #$007F.w		; A2 7F 00
	jsr $8126.w		; 20 26 81
	inc $28.b		; E6 28
	lda $28.b		; A5 28
	cmp #$0008.w		; C9 08 00
	bcc -22.b		; 90 EA
	rts		; 60

	ora [$71.b]		; 07 71
	eor [$71.b]		; 47 71
	sta [$71.b]		; 87 71
	cmp [$71.b]		; C7 71
	ora [$72.b]		; 07 72
	eor [$72.b]		; 47 72
	sta [$72.b]		; 87 72
	cmp [$72.b]		; C7 72
	brk $8C.b		; 00 8C
	bpl -116.b		; 10 8C
	jsr $308C.w		; 20 8C 30
	sty $8C40.w		; 8C 40 8C
	bvc -116.b		; 50 8C
	rts		; 60

	sty $8C70.w		; 8C 70 8C
	brk $00.b		; 00 00
	clc		; 18
	brk $02.b		; 00 02
	brk $E4.b		; 00 E4
	ora $0DE5.w		; 0D E5 0D
	stz $0D.b		; 64 0D
	adc $0D.b		; 65 0D
	asl $0E.b		; 06 0E
	ora [$0E.b]		; 07 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $F50D.w		; F4 0D F5
	ora $0D74.w		; 0D 74 0D
	adc $0D.b,X		; 75 0D
	asl $0E.b,X		; 16 0E
	ora [$0E.b],Y		; 17 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $02.b		; 00 02
	brk $E0.b		; 00 E0
	ora $0DE1.w		; 0D E1 0D
	stz $0D.b		; 64 0D
	adc $0D.b		; 65 0D
	bra  13.b		; 80 0D
	sta ($0D.b,X)		; 81 0D
	nop		; EA
	ora $0DEB.w		; 0D EB 0D
	brk $0E.b		; 00 0E
	ora ($0E.b,X)		; 01 0E
	stz $0D.b		; 64 0D
	adc $0D.b		; 65 0D
	beq  13.b		; F0 0D
	sbc ($0D.b),Y		; F1 0D
	stz $0D.b,X		; 74 0D
	adc $0D.b,X		; 75 0D
	bcc  13.b		; 90 0D
	sta ($0D.b),Y		; 91 0D
	plx		; FA
	ora $0DFB.w		; 0D FB 0D
	bpl  14.b		; 10 0E
	ora ($0E.b),Y		; 11 0E
	stz $0D.b,X		; 74 0D
	adc $0D.b,X		; 75 0D
	brk $00.b		; 00 00
	clc		; 18
	brk $02.b		; 00 02
	brk $E0.b		; 00 E0
	ora $0DE1.w		; 0D E1 0D
	stz $0D.b		; 64 0D
	adc $0D.b		; 65 0D
	ldy #$A10D.w		; A0 0D A1
	ora $0000.w		; 0D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  13.b		; F0 0D
	sbc ($0D.b),Y		; F1 0D
	stz $0D.b,X		; 74 0D
	adc $0D.b,X		; 75 0D
	bcs  13.b		; B0 0D
	lda ($0D.b),Y		; B1 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $02.b		; 00 02
	brk $8E.b		; 00 8E
	ora $0D8F.w		; 0D 8F 0D
	nop		; EA
	ora $0DEB.w		; 0D EB 0D
	cpy $CD0D.w		; CC 0D CD
	ora $0DA2.w		; 0D A2 0D
	lda $0D.b,S		; A3 0D
	stz $0D.b		; 64 0D
	adc $0D.b		; 65 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $9F0D.w,X		; 9E 0D 9F
	ora $0DFA.w		; 0D FA 0D
	xce		; FB
	ora $0DDC.w		; 0D DC 0D
	cmp $B20D.w,X		; DD 0D B2
	ora $0DB3.w		; 0D B3 0D
	stz $0D.b,X		; 74 0D
	adc $0D.b,X		; 75 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $02.b		; 00 02
	brk $08.b		; 00 08
	asl $0E09.w		; 0E 09 0E
	ror $6F0D.w		; 6E 0D 6F
	ora $0D64.w		; 0D 64 0D
	adc $0D.b		; 65 0D
	ldy $AD0D.w		; AC 0D AD
	ora $0D8A.w		; 0D 8A 0D
	phb		; 8B
	ora $0000.w		; 0D 00 00
	brk $00.b		; 00 00
	clc		; 18
	asl $0E19.w		; 0E 19 0E
	ror $7F0D.w,X		; 7E 0D 7F
	ora $0D74.w		; 0D 74 0D
	adc $0D.b,X		; 75 0D
	ldy $BD0D.w,X		; BC 0D BD
	ora $0D9A.w		; 0D 9A 0D
	txy		; 9B
	ora $0000.w		; 0D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $02.b		; 00 02
	brk $E6.b		; 00 E6
	tsb $0CE7.w		; 0C E7 0C
	tsb $0D0D.w		; 0C 0D 0D
	ora $0DE4.w		; 0D E4 0D
	sbc $0D.b		; E5 0D
	stz $0D.b		; 64 0D
	adc $0D.b		; 65 0D
	asl $0E.b		; 06 0E
	ora [$0E.b]		; 07 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $0C.b,X		; F6 0C
	sbc [$0C.b],Y		; F7 0C
	trb $1D0D.w		; 1C 0D 1D
	ora $0DF4.w		; 0D F4 0D
	sbc $0D.b,X		; F5 0D
	stz $0D.b,X		; 74 0D
	adc $0D.b,X		; 75 0D
	asl $0E.b,X		; 16 0E
	ora [$0E.b],Y		; 17 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $02.b		; 00 02
	brk $CE.b		; 00 CE
	ora $0DCF.w		; 0D CF 0D
	cop $0E.b		; 02 0E
	ora $0E.b,S		; 03 0E
	stz $0D.b		; 64 0D
	adc $0D.b		; 65 0D
	tay		; A8
	ora $0DA9.w		; 0D A9 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec $DF0D.w,X		; DE 0D DF
	ora $0E12.w		; 0D 12 0E
	ora ($0E.b,S),Y		; 13 0E
	stz $0D.b,X		; 74 0D
	adc $0D.b,X		; 75 0D
	clv		; B8
	ora $0DB9.w		; 0D B9 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $02.b		; 00 02
	brk $C2.b		; 00 C2
	ora $0DC3.w		; 0D C3 0D
	dec $CF0D.w		; CE 0D CF
	ora $0DA4.w		; 0D A4 0D
	lda $0D.b		; A5 0D
	nop		; EA
	ora $0DEB.w		; 0D EB 0D
	stz $0D.b		; 64 0D
	adc $0D.b		; 65 0D
	asl $0E.b		; 06 0E
	ora [$0E.b]		; 07 0E
	cmp ($0D.b)		; D2 0D
	cmp ($0D.b,S),Y		; D3 0D
	dec $DF0D.w,X		; DE 0D DF
	ora $0DB4.w		; 0D B4 0D
	lda $0D.b,X		; B5 0D
	plx		; FA
	ora $0DFB.w		; 0D FB 0D
	stz $0D.b,X		; 74 0D
	adc $0D.b,X		; 75 0D
	asl $0E.b,X		; 16 0E
	ora [$0E.b],Y		; 17 0E
	brk $00.b		; 00 00
	clc		; 18
	brk $02.b		; 00 02
	brk $6A.b		; 00 6A
	ora $0D6B.w		; 0D 6B 0D
	inc $EF0D.w		; EE 0D EF
	ora $0DC0.w		; 0D C0 0D
	cmp ($0D.b,X)		; C1 0D
	txa		; 8A
	ora $0D8B.w		; 0D 8B 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ply		; 7A
	ora $0D7B.w		; 0D 7B 0D
	inc $FF0D.w,X		; FE 0D FF
	ora $0DD0.w		; 0D D0 0D
	cmp ($0D.b),Y		; D1 0D
	txs		; 9A
	ora $0D9B.w		; 0D 9B 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
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
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EC.b		; 00 EC
	asl $0EED.w		; 0E ED 0E
	jsr ($FD0E.w,X)		; FC 0E FD
	asl $0000.w		; 0E 00 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	asl $0F0E.w		; 0E 0E 0F
	asl $0E1E.w		; 0E 1E 0E
	ora $30C20E.l,X		; 1F 0E C2 30
	ldy #$0000.w		; A0 00 00
	ldx #$0F00.w		; A2 00 0F
	lda $02.b,X		; B5 02
	sta $1EC0.w,Y		; 99 C0 1E
	lda $04.b,X		; B5 04
	sta $1EC1.w,Y		; 99 C1 1E
	lda #$0000.w		; A9 00 00
	sta $1EC2.w,Y		; 99 C2 1E
	txa		; 8A
	clc		; 18
	adc #$0010.w		; 69 10 00
	tax		; AA
	iny		; C8
	iny		; C8
	iny		; C8
	iny		; C8
	cpy #$0020.w		; C0 20 00
	bcc -31.b		; 90 E1
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	ldy #$00.b		; A0 00
	ldx #$08.b		; A2 08
	lda #$10.b		; A9 10
	sta $00.b		; 85 00
	lda $00.b		; A5 00
	ora $1EC0.w,Y		; 19 C0 1E
	sta $1EC0.w,Y		; 99 C0 1E
	iny		; C8
	iny		; C8
	iny		; C8
	iny		; C8
	lda $00.b		; A5 00
	clc		; 18
	adc #$10.b		; 69 10
	sta $00.b		; 85 00
	dex		; CA
	bne -22.b		; D0 EA
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C0B.w		; AD 0B 1C
	and #$001F.w		; 29 1F 00
	clc		; 18
	adc #$0080.w		; 69 80 00
	sta $00.b		; 85 00
	jsr $82FC.w		; 20 FC 82
	lda $1C0B.w		; AD 0B 1C
	sta $02.b		; 85 02
	jsr $82FC.w		; 20 FC 82
	lda $1C0B.w		; AD 0B 1C
	sta $04.b		; 85 04
	lda $02.b		; A5 02
	and #$0007.w		; 29 07 00
	asl A		; 0A
	asl A		; 0A
	tax		; AA
	lda $04.b		; A5 04
	and #$0007.w		; 29 07 00
	asl A		; 0A
	asl A		; 0A
	tay		; A8
	lda $1EC0.w,X		; BD C0 1E
	sta $10.b		; 85 10
	lda $1EC2.w,X		; BD C2 1E
	sta $12.b		; 85 12
	lda $1EC0.w,Y		; B9 C0 1E
	sta $14.b		; 85 14
	lda $1EC2.w,Y		; B9 C2 1E
	sta $16.b		; 85 16
	lda $10.b		; A5 10
	sta $1EC0.w,Y		; 99 C0 1E
	lda $12.b		; A5 12
	sta $1EC2.w,Y		; 99 C2 1E
	lda $14.b		; A5 14
	sta $1EC0.w,X		; 9D C0 1E
	lda $16.b		; A5 16
	sta $1EC2.w,X		; 9D C2 1E
	dec $00.b		; C6 00
	bne -76.b		; D0 B4
	rts		; 60

	phb		; 8B
	phk		; 4B
	plb		; AB
	jsr $8346.w		; 20 46 83
.ACCU 16
	rep #$20		; C2 20
	lda #$000D.w		; A9 0D 00
	jsl $8083EB.l		; 22 EB 83 80
	jsr $83AB.w		; 20 AB 83
.ACCU 8
	sep #$20		; E2 20
	stz $6F.b		; 64 6F
	lda #$06.b		; A9 06
	sta $6D.b		; 85 6D
	stz $41.b		; 64 41
.ACCU 16
	rep #$20		; C2 20
	lda #$9405.w		; A9 05 94
	jsr $83E1.w		; 20 E1 83
	jsr $9612.w		; 20 12 96
	jsr $944D.w		; 20 4D 94
	jsr $854A.w		; 20 4A 85
.ACCU 16
	rep #$20		; C2 20
	lda #$0001.w		; A9 01 00
	jsr $857B.w		; 20 7B 85
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1DBA.w		; AD BA 1D
	ldy $1DBC.w		; AC BC 1D
	ldx #$8789.w		; A2 89 87
	jsr $8770.w		; 20 70 87
	jsr $8568.w		; 20 68 85
.ACCU 16
	rep #$20		; C2 20
	lda #$0005.w		; A9 05 00
	jsr $853D.w		; 20 3D 85
.INDEX 16
	rep #$10		; C2 10
	ldx #$0024.w		; A2 24 00
	jsr $825E.w		; 20 5E 82
	jsr $830F.w		; 20 0F 83
	jsr $82EB.w		; 20 EB 82
	jsr $8370.w		; 20 70 83
	jsr $87F5.w		; 20 F5 87
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $60.b		; A5 60
	and #$1000.w		; 29 00 10
	bne  18.b		; D0 12
	lda $1C04.w		; AD 04 1C
	cmp #$0005.w		; C9 05 00
	beq  10.b		; F0 0A
	and #$000F.w		; 29 0F 00
	asl A		; 0A
	tax		; AA
	jsr ($9390.w,X)		; FC 90 93
	bra -36.b		; 80 DC
	jsr $8386.w		; 20 86 83
	plb		; AB
	rtl		; 6B

	stz $9D93.w		; 9C 93 9D
	sta ($AE.b,S),Y		; 93 AE
	sta ($AE.b,S),Y		; 93 AE
	sta ($E5.b,S),Y		; 93 E5
	sta ($F4.b,S),Y		; 93 F4
	sta ($60.b,S),Y		; 93 60
	jsr $9583.w		; 20 83 95
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $1C0E.w		; CE 0E 1C
	bpl   6.b		; 10 06
	lda #$0002.w		; A9 02 00
	sta $1C04.w		; 8D 04 1C
	rts		; 60

	jsr $8591.w		; 20 91 85
	jsr $93F5.w		; 20 F5 93
.ACCU 16
	rep #$20		; C2 20
	lda $1C04.w		; AD 04 1C
	cmp #$0003.w		; C9 03 00
	beq  24.b		; F0 18
	lda $1C18.w		; AD 18 1C
	cmp #$0040.w		; C9 40 00
	bne  15.b		; D0 0F
	lda #$0003.w		; A9 03 00
	sta $1C04.w		; 8D 04 1C
	lda #$0002.w		; A9 02 00
	jsr $857B.w		; 20 7B 85
	jsr $856E.w		; 20 6E 85
	rts		; 60

	lda $1C18.w		; AD 18 1C
	cmp #$0080.w		; C9 80 00
	bne   6.b		; D0 06
	lda #$0004.w		; A9 04 00
	sta $1C04.w		; 8D 04 1C
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda $60.b		; A5 60
	and #$5080.w		; 29 80 50
	beq   6.b		; F0 06
	lda #$0005.w		; A9 05 00
	sta $1C04.w		; 8D 04 1C
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
	lda $60.b		; A5 60
	and #$4080.w		; 29 80 40
	beq   6.b		; F0 06
	lda #$0001.w		; A9 01 00
	sta $1C1E.w		; 8D 1E 1C
	rts		; 60

	tsb $98.b		; 04 98
	ora $00C8.w,Y		; 19 C8 00
	brk $10.b		; 00 10
	brk $D5.b		; 00 D5
	bit $00C8.w		; 2C C8 00
	brk $70.b		; 00 70
	brk $AB.b		; 00 AB
	adc $00C8.w		; 6D C8 00
	brk $7C.b		; 00 7C
	brk $D0.b		; 00 D0
	pha		; 48
	cmp $FF.b,S		; C3 FF
	brk $28.b		; 00 28
	brk $50.b		; 00 50
	cop $DA.b		; 02 DA
	bmi -56.b		; 30 C8
	brk $05.b		; 00 05
	php		; 08
	phb		; 8B
	adc $40C8.w		; 6D C8 40
	asl $01.b		; 06 01
	tsb $06.b		; 04 06
	sec		; 38
	brk $8B.b		; 00 8B
	brk $00.b		; 00 00
	bmi   8.b		; 30 08
	iny		; C8
	brk $8B.b		; 00 8B
	brk $80.b		; 00 80
	and ($18.b)		; 32 18
	bpl   0.b		; 10 00
	eor [$00.b]		; 47 00
	brk $34.b		; 00 34
	inc A		; 1A
	ldy #$4700.w		; A0 00 47
	brk $80.b		; 00 80
	bit $C2.b,X		; 34 C2
	bmi 100.b		; 30 64
	ora $64.b,S		; 03 64
	tsb $AD.b		; 04 AD
	brk $10.b		; 00 10
	beq   3.b		; F0 03
	jsr $9487.w		; 20 87 94
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $04.b		; 64 04
	lda #$0800.w		; A9 00 08
	sta $03.b		; 85 03
	lda $1080.w		; AD 80 10
	beq   5.b		; F0 05
	jsr $9487.w		; 20 87 94
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1000.w		; AD 00 10
	beq   6.b		; F0 06
	ldy #$0000.w		; A0 00 00
	jsr $94A4.w		; 20 A4 94
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1080.w		; AD 80 10
	beq   6.b		; F0 06
	ldy #$0020.w		; A0 20 00
	jsr $94A4.w		; 20 A4 94
	rts		; 60

	sec		; 38
	sbc #$0006.w		; E9 06 00
	sta $00.b		; 85 00
	lsr A		; 4A
	clc		; 18
	adc $00.b		; 65 00
	tay		; A8
	lda $94C2.w,Y		; B9 C2 94
	sta $00.b		; 85 00
	lda $94C3.w,Y		; B9 C3 94
	sta $01.b		; 85 01
	lda #$0000.w		; A9 00 00
	jsl $808DEC.l		; 22 EC 8D 80
	rts		; 60

	sec		; 38
	sbc #$0006.w		; E9 06 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	tax		; AA
	lda #$0010.w		; A9 10 00
	sta $00.b		; 85 00
	lda $C86C6B.l,X		; BF 6B 6C C8
	sta $0600.w,Y		; 99 00 06
	iny		; C8
	iny		; C8
	inx		; E8
	inx		; E8
	dec $00.b		; C6 00
	bne -15.b		; D0 F1
	rts		; 60

	phx		; DA
	and ($C8.b)		; 32 C8
	tsx		; BA
	sec		; 38
	iny		; C8
	plp		; 28
	rol $EAC8.w,X		; 3E C8 EA
	eor $C8.b,S		; 43 C8
	sec		; 38
	lsr A		; 4A
	iny		; C8
	sta $C850.w,X		; 9D 50 C8
	stp		; DB
	cli		; 58
	iny		; C8
	eor ($5F.b)		; 52 5F
	iny		; C8
	stz $66.b		; 64 66
	iny		; C8
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
	lda $94EE.w,Y		; B9 EE 94
	sta $00.b		; 85 00
	jmp ($0000.w)		; 6C 00 00
	inc $94.b,X		; F6 94
	jsr $3B95.w		; 20 95 3B
	sta $51.b,X		; 95 51
	sta $A0.b,X		; 95 A0
	brk $00.b		; 00 00
	jsr $8B81.w		; 20 81 8B
	jsr $8BD5.w		; 20 D5 8B
	inc $02.b,X		; F6 02
	bra  11.b		; 80 0B
	lda #$0003.w		; A9 03 00
	sta $02.b,X		; 95 02
	lda #$0004.w		; A9 04 00
	sta $1C04.w		; 8D 04 1C
	lda #$003C.w		; A9 3C 00
	sta $78.b,X		; 95 78
	txa		; 8A
	and #$0080.w		; 29 80 00
	beq   6.b		; F0 06
.ACCU 8
	sep #$20		; E2 20
	lda #$01.b		; A9 01
	sta $09.b,X		; 95 09
	rts		; 60

	dec $78.b,X		; D6 78
	bpl  22.b		; 10 16
	inc $02.b,X		; F6 02
	lda #$34.b		; A9 34
	brk $95.b		; 00 95
	sei		; 78
	ldy #$FF00.w		; A0 00 FF
	lda $09.b,X		; B5 09
	and #$01.b		; 29 01
	brk $F0.b		; 00 F0
	ora $A0.b,S		; 03 A0
	brk $01.b		; 00 01
	sty $32.b,X		; 94 32
	rts		; 60

	dec $78.b,X		; D6 78
	bpl  17.b		; 10 11
	jsr $8BD5.w		; 20 D5 8B
	inc $02.b,X		; F6 02
	lda #$01.b		; A9 01
	brk $8D.b		; 00 8D
	tsb $1C.b		; 04 1C
	lda #$10.b		; A9 10
	brk $8D.b		; 00 8D
	asl $601C.w		; 0E 1C 60
	rts		; 60

	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	and #$FF.b		; 29 FF
	brk $0A.b		; 00 0A
	tay		; A8
	lda $9563.w,Y		; B9 63 95
	sta $00.b		; 85 00
	jmp ($0000.w)		; 6C 00 00
	adc [$95.b]		; 67 95
	adc ($95.b,S),Y		; 73 95
	ldy #$0000.w		; A0 00 00
	jsr $8B81.w		; 20 81 8B
	jsr $8BD5.w		; 20 D5 8B
	inc $02.b,X		; F6 02
	rts		; 60

	txa		; 8A
	sec		; 38
	sbc #$00.b		; E9 00
	ora ($A8.b,X)		; 01 A8
	lda $0025.w,Y		; B9 25 00
	sec		; 38
	sbc #$48.b		; E9 48
	brk $95.b		; 00 95
	and $60.b		; 25 60
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$0000.w		; A2 00 00
	lda $0540.w,X		; BD 40 05
	sta $00.b		; 85 00
	lda $C8321A.l,X		; BF 1A 32 C8
	sta $02.b		; 85 02
	jsr $95A5.w		; 20 A5 95
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $08.b		; A5 08
	sta $0540.w,X		; 9D 40 05
	inx		; E8
	inx		; E8
	cpx #$00C0.w		; E0 C0 00
	bcc -28.b		; 90 E4
	rts		; 60

	stz $08.b		; 64 08
	lda $00.b		; A5 00
	and #$001F.w		; 29 1F 00
	sta $04.b		; 85 04
	lda $02.b		; A5 02
	and #$001F.w		; 29 1F 00
	sta $06.b		; 85 06
	jsr $9603.w		; 20 03 96
	lda $04.b		; A5 04
	sta $08.b		; 85 08
	lda $00.b		; A5 00
	and #$03E0.w		; 29 E0 03
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	sta $04.b		; 85 04
	lda $02.b		; A5 02
	and #$03E0.w		; 29 E0 03
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	sta $06.b		; 85 06
	jsr $9603.w		; 20 03 96
	lda $04.b		; A5 04
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	ora $08.b		; 05 08
	sta $08.b		; 85 08
	lda $00.b		; A5 00
	and #$7C00.w		; 29 00 7C
	xba		; EB
	lsr A		; 4A
	lsr A		; 4A
	sta $04.b		; 85 04
	lda $02.b		; A5 02
	and #$7C00.w		; 29 00 7C
	xba		; EB
	lsr A		; 4A
	lsr A		; 4A
	sta $06.b		; 85 06
	jsr $9603.w		; 20 03 96
	lda $04.b		; A5 04
	xba		; EB
	asl A		; 0A
	asl A		; 0A
	ora $08.b		; 05 08
	sta $08.b		; 85 08
	rts		; 60

	lda $04.b		; A5 04
	and #$001F.w		; 29 1F 00
	dec A		; 3A
	bmi   6.b		; 30 06
	cmp $06.b		; C5 06
	bcc   2.b		; 90 02
	sta $04.b		; 85 04
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1DBA.w		; AD BA 1D
	and #$00FF.w		; 29 FF 00
	tay		; A8
	ldx #$1000.w		; A2 00 10
	jsr $962B.w		; 20 2B 96
	lda $1DBC.w		; AD BC 1D
	and #$00FF.w		; 29 FF 00
	tay		; A8
	ldx #$1080.w		; A2 80 10
	lda $963D.w,Y		; B9 3D 96
	and #$00FF.w		; 29 FF 00
	sta $00.b,X		; 95 00
	lda $9646.w,Y		; B9 46 96
	and #$00FF.w		; 29 FF 00
	sta $0100.w,X		; 9D 00 01
	rts		; 60

	asl $08.b		; 06 08
	asl A		; 0A
	tsb $100E.w		; 0C 0E 10
	ora ($14.b)		; 12 14
	asl $18.b,X		; 16 18
	inc A		; 1A
	trb $201E.w		; 1C 1E 20
	jsl $282624.l		; 22 24 26 28
	phb		; 8B
	phk		; 4B
	plb		; AB
	jsr $8346.w		; 20 46 83
.ACCU 16
	rep #$20		; C2 20
	lda #$000C.w		; A9 0C 00
	jsl $8083EB.l		; 22 EB 83 80
	jsr $83AB.w		; 20 AB 83
.ACCU 8
	sep #$20		; E2 20
	stz $6F.b		; 64 6F
	lda #$06.b		; A9 06
	sta $6D.b		; 85 6D
	stz $41.b		; 64 41
.ACCU 16
	rep #$20		; C2 20
	stz $1C30.w		; 9C 30 1C
	lda #$96BC.w		; A9 BC 96
	jsr $83E1.w		; 20 E1 83
	jsr $9732.w		; 20 32 97
.INDEX 8
	sep #$10		; E2 10
	ldy #$00.b		; A0 00
	jsr $84F9.w		; 20 F9 84
	jsr $944D.w		; 20 4D 94
	jsr $96F0.w		; 20 F0 96
.INDEX 16
	rep #$10		; C2 10
	ldx #$0030.w		; A2 30 00
	jsr $825E.w		; 20 5E 82
.ACCU 16
	rep #$20		; C2 20
	lda #$0006.w		; A9 06 00
	jsr $853D.w		; 20 3D 85
	jsr $830F.w		; 20 0F 83
	jsr $82EB.w		; 20 EB 82
	jsr $8370.w		; 20 70 83
	jsr $8BE3.w		; 20 E3 8B
	jsr $96B3.w		; 20 B3 96
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $60.b		; A5 60
	and #$5080.w		; 29 80 50
	beq -21.b		; F0 EB
	jsr $8386.w		; 20 86 83
	plb		; AB
	rtl		; 6B

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	inc $0A0A.w		; EE 0A 0A
	inc $0A08.w		; EE 08 0A
	rts		; 60

	tsb $FA.b		; 04 FA
	ror $C8.b,X		; 76 C8
	brk $00.b		; 00 00
	sei		; 78
	brk $E0.b		; 00 E0
	and [$C2.b]		; 27 C2
	sbc $002000.l,X		; FF 00 20 00
	trb $D0.b		; 14 D0
	pha		; 48
	cmp $FF.b,S		; C3 FF
	brk $2A.b		; 00 2A
	brk $50.b		; 00 50
	bit $C870.w,X		; 3C 70 C8
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	cop $FA.b		; 02 FA
	adc $C8.b,X		; 75 C8
	brk $05.b		; 00 05
	php		; 08
	phb		; 8B
	adc $40C8.w		; 6D C8 40
	asl $01.b		; 06 01
	ora ($06.b,X)		; 01 06
	bit $00.b,X		; 34 00
	sei		; 78
	brk $00.b		; 00 00
	bmi -30.b		; 30 E2
	bmi -87.b		; 30 A9
	brk $8D.b		; 00 8D
	and $21.b,S		; 23 21
	sta WBGLOG.w		; 8D 2A 21
	lda #$8D00.w		; A9 00 8D
	pld		; 2B
	and ($A9.b,X)		; 21 A9
	jsr $258D.w		; 20 8D 25
	and ($A9.b,X)		; 21 A9
	rti		; 40

	sta W1L.w		; 8D 26 21
	lda #$8D80.w		; A9 80 8D
	and [$21.b]		; 27 21
	lda #$85E5.w		; A9 E5 85
	eor [$A9.b],Y		; 57 A9
	ora ($8D.b,X)		; 01 8D
	bvs  67.b		; 70 43
	lda #$8D26.w		; A9 26 8D
	adc ($43.b),Y		; 71 43
	lda #$8DD8.w		; A9 D8 8D
	adc ($43.b)		; 72 43
	lda #$8DCC.w		; A9 CC 8D
	adc ($43.b,S),Y		; 73 43
	lda #$8D9F.w		; A9 9F 8D
	stz $43.b,X		; 74 43
	lda $6F.b		; A5 6F
	ora #$8580.w		; 09 80 85
	adc $30C260.l		; 6F 60 C2 30
	lda $1DBE.w		; AD BE 1D
	asl A		; 0A
	tax		; AA
	lda $1DBA.w,X		; BD BA 1D
	and #$00FF.w		; 29 FF 00
	tay		; A8
	lda $976D.w,Y		; B9 6D 97
	and #$00FF.w		; 29 FF 00
	sta $1000.w		; 8D 00 10
	lda #$98BE.w		; A9 BE 98
	ldx $1C30.w		; AE 30 1C
	beq   3.b		; F0 03
	lda #$98EC.w		; A9 EC 98
	sta $28.b		; 85 28
	jsr $9884.w		; 20 84 98
	lda #$9829.w		; A9 29 98
	ldx $1C30.w		; AE 30 1C
	beq   3.b		; F0 03
	lda #$984B.w		; A9 4B 98
	sta $28.b		; 85 28
	jsr $97F7.w		; 20 F7 97
	jsr $9776.w		; 20 76 97
	rts		; 60

	asl $08.b		; 06 08
	asl A		; 0A
	tsb $100E.w		; 0C 0E 10
	ora ($14.b)		; 12 14
	asl $C2.b,X		; 16 C2
	bmi -83.b		; 30 AD
	bmi  28.b		; 30 1C
	bne  89.b		; D0 59
	ldy #$0000.w		; A0 00 00
	lda $1DBE.w		; AD BE 1D
	beq  11.b		; F0 0B
	ldy #$0008.w		; A0 08 00
	lda $1DBC.w		; AD BC 1D
	bpl   3.b		; 10 03
	ldy #$0010.w		; A0 10 00
	ldx #$01DE.w		; A2 DE 01
	lda $97D7.w,Y		; B9 D7 97
	sta $7F0000.l,X		; 9F 00 00 7F
	lda $97D9.w,Y		; B9 D9 97
	sta $7F0002.l,X		; 9F 02 00 7F
	lda $97DB.w,Y		; B9 DB 97
	sta $7F0040.l,X		; 9F 40 00 7F
	lda $97DD.w,Y		; B9 DD 97
	sta $7F0042.l,X		; 9F 42 00 7F
	lda $1DBC.w		; AD BC 1D
	bpl  34.b		; 10 22
	ldy #$0018.w		; A0 18 00
	ldx #$0430.w		; A2 30 04
	lda $97D7.w,Y		; B9 D7 97
	sta $7F0000.l,X		; 9F 00 00 7F
	lda $97D9.w,Y		; B9 D9 97
	sta $7F0002.l,X		; 9F 02 00 7F
	lda $97DB.w,Y		; B9 DB 97
	sta $7F0040.l,X		; 9F 40 00 7F
	lda $97DD.w,Y		; B9 DD 97
	sta $7F0042.l,X		; 9F 42 00 7F
	rts		; 60

	ldx $12.b		; A6 12
	lda [$12.b]		; A7 12
	ldx $12.b,Y		; B6 12
	lda [$12.b],Y		; B7 12
	tay		; A8
	ora ($A9.b)		; 12 A9
	ora ($B8.b)		; 12 B8
	ora ($B9.b)		; 12 B9
	ora ($0E.b)		; 12 0E
	ora ($0F.b)		; 12 0F
	ora ($1E.b)		; 12 1E
	ora ($1F.b)		; 12 1F
	ora ($0E.b)		; 12 0E
	asl $0E0F.w		; 0E 0F 0E
	asl $1F0E.w,X		; 1E 0E 1F
	asl $30C2.w		; 0E C2 30
	lda ($28.b)		; B2 28
	cmp #$FFFF.w		; C9 FF FF
	bne   1.b		; D0 01
	rts		; 60

	sta $00.b		; 85 00
	lda ($00.b)		; B2 00
	sta $10.b		; 85 10
	ldy #$0002.w		; A0 02 00
	lda ($28.b),Y		; B1 28
	sta $12.b		; 85 12
	ldx #$0C00.w		; A2 00 0C
	lda $10.b		; A5 10
	bpl   3.b		; 10 03
	ldx #$1000.w		; A2 00 10
	lda $12.b		; A5 12
	jsr $9859.w		; 20 59 98
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $28.b		; A5 28
	clc		; 18
	adc #$0004.w		; 69 04 00
	sta $28.b		; 85 28
	bra -48.b		; 80 D0
	ldy #$861D.w		; A0 1D 86
	tsb $A4.b		; 04 A4
	ora $0516.w,X		; 1D 16 05
	tay		; A8
	ora $0596.w,X		; 1D 96 05
	ldy $161D.w		; AC 1D 16
	asl $A2.b		; 06 A2
	ora $0496.w,X		; 1D 96 04
	ldx $1D.b		; A6 1D
	asl $05.b,X		; 16 05
	tax		; AA
	ora $0596.w,X		; 1D 96 05
	ldx $161D.w		; AE 1D 16
	asl $FF.b		; 06 FF
	sbc $861DA4.l,X		; FF A4 1D 86
	tsb $A8.b		; 04 A8
	ora $0506.w,X		; 1D 06 05
	ldy $861D.w		; AC 1D 86
	ora $FF.b		; 05 FF
	sbc $8630C2.l,X		; FF C2 30 86
	asl $0A85.w		; 0E 85 0A
	ldy #$000A.w		; A0 0A 00
	ldx $0A.b		; A6 0A
	lda $7F0000.l,X		; BF 00 00 7F
	and #$E3FF.w		; 29 FF E3
	ora $0E.b		; 05 0E
	sta $7F0000.l,X		; 9F 00 00 7F
	lda $7F0040.l,X		; BF 40 00 7F
	and #$E3FF.w		; 29 FF E3
	ora $0E.b		; 05 0E
	sta $7F0040.l,X		; 9F 40 00 7F
	inx		; E8
	inx		; E8
	dey		; 88
	bne -31.b		; D0 E1
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda ($28.b)		; B2 28
	cmp #$FFFF.w		; C9 FF FF
	bne   1.b		; D0 01
	rts		; 60

	sta $00.b		; 85 00
	lda ($00.b)		; B2 00
	sta $10.b		; 85 10
	ldy #$0002.w		; A0 02 00
	lda ($28.b),Y		; B1 28
	sta $12.b		; 85 12
	lda $10.b		; A5 10
	and #$7FFF.w		; 29 FF 7F
	jsr $9975.w		; 20 75 99
	ldx #$0C00.w		; A2 00 0C
	lda $10.b		; A5 10
	bpl   3.b		; 10 03
	ldx #$1000.w		; A2 00 10
	lda $12.b		; A5 12
	jsr $990A.w		; 20 0A 99
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $28.b		; A5 28
	clc		; 18
	adc #$0004.w		; 69 04 00
	sta $28.b		; 85 28
	bra -56.b		; 80 C8
	bcs  29.b		; B0 1D
	bvs   2.b		; 70 02
	lda ($1D.b)		; B2 1D
	beq   2.b		; F0 02
	ldy $1D.b,X		; B4 1D
	bvs   3.b		; 70 03
	ldy #$861D.w		; A0 1D 86
	tsb $A4.b		; 04 A4
	ora $0506.w,X		; 1D 06 05
	tay		; A8
	ora $0586.w,X		; 1D 86 05
	ldy $061D.w		; AC 1D 06
	asl $A2.b		; 06 A2
	ora $04AE.w,X		; 1D AE 04
	ldx $1D.b		; A6 1D
	rol $AA05.w		; 2E 05 AA
	ora $05AE.w,X		; 1D AE 05
	ldx $2E1D.w		; AE 1D 2E
	asl $FF.b		; 06 FF
	sbc $9E1DB0.l,X		; FF B0 1D 9E
	tsb $B2.b		; 04 B2
	ora $051E.w,X		; 1D 1E 05
	ldy $1D.b,X		; B4 1D
	stz $A405.w,X		; 9E 05 A4
	ora $04AE.w,X		; 1D AE 04
	tay		; A8
	ora $052E.w,X		; 1D 2E 05
	ldy $AE1D.w		; AC 1D AE
	ora $B6.b		; 05 B6
	ora $0626.w,X		; 1D 26 06
	sbc $30C2FF.l,X		; FF FF C2 30
	sta $0A.b		; 85 0A
	stx $0E.b		; 86 0E
	stz $0C.b		; 64 0C
	ldx #$0002.w		; A2 02 00
	lda $00.b,X		; B5 00
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	tay		; A8
	bne  14.b		; D0 0E
	lda $0C.b		; A5 0C
	bne  10.b		; D0 0A
	cpx #$0004.w		; E0 04 00
	beq  10.b		; F0 0A
	ldy #$0050.w		; A0 50 00
	bra   5.b		; 80 05
	lda #$FFFF.w		; A9 FF FF
	sta $0C.b		; 85 0C
	phx		; DA
	ldx $0A.b		; A6 0A
	lda $D2B6.w,Y		; B9 B6 D2
	and #$E3FF.w		; 29 FF E3
	ora $0E.b		; 05 0E
	sta $7F0000.l,X		; 9F 00 00 7F
	lda $D2B8.w,Y		; B9 B8 D2
	and #$E3FF.w		; 29 FF E3
	ora $0E.b		; 05 0E
	sta $7F0002.l,X		; 9F 02 00 7F
	lda $D2BA.w,Y		; B9 BA D2
	and #$E3FF.w		; 29 FF E3
	ora $0E.b		; 05 0E
	sta $7F0040.l,X		; 9F 40 00 7F
	lda $D2BC.w,Y		; B9 BC D2
	and #$E3FF.w		; 29 FF E3
	ora $0E.b		; 05 0E
	sta $7F0042.l,X		; 9F 42 00 7F
	txa		; 8A
	clc		; 18
	adc #$0004.w		; 69 04 00
	sta $0A.b		; 85 0A
	plx		; FA
	inx		; E8
	cpx #$0005.w		; E0 05 00
	bcc -95.b		; 90 A1
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $00.b		; 64 00
	stz $02.b		; 64 02
	stz $04.b		; 64 04
	ldy #$0000.w		; A0 00 00
	ldx #$0000.w		; A2 00 00
	sec		; 38
	sbc $999C.w,Y		; F9 9C 99
	bcc   4.b		; 90 04
	inc $00.b,X		; F6 00
	bra -10.b		; 80 F6
	clc		; 18
	adc $999C.w,Y		; 79 9C 99
	inx		; E8
	iny		; C8
	iny		; C8
	cpy #$0008.w		; C0 08 00
	bcc -22.b		; 90 EA
	sta $00.b,X		; 95 00
	rts		; 60

	bpl  39.b		; 10 27
	inx		; E8
	ora $64.b,S		; 03 64
	brk $0A.b		; 00 0A
	brk $8B.b		; 00 8B
	phk		; 4B
	plb		; AB
	jsr $8346.w		; 20 46 83
.ACCU 16
	rep #$20		; C2 20
	lda #$000B.w		; A9 0B 00
	jsl $8083EB.l		; 22 EB 83 80
	jsr $83AB.w		; 20 AB 83
.ACCU 8
	sep #$20		; E2 20
	stz $6F.b		; 64 6F
	lda #$06.b		; A9 06
	sta $6D.b		; 85 6D
	stz $41.b		; 64 41
.ACCU 16
	rep #$20		; C2 20
	lda #$0001.w		; A9 01 00
	sta $1C30.w		; 8D 30 1C
	lda #$9B27.w		; A9 27 9B
	jsr $83E1.w		; 20 E1 83
	jsr $9732.w		; 20 32 97
.INDEX 8
	sep #$10		; E2 10
	ldy #$00.b		; A0 00
	jsr $84F9.w		; 20 F9 84
	jsr $944D.w		; 20 4D 94
	jsr $854A.w		; 20 4A 85
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$7400.w		; A9 00 74
	ldx #$0800.w		; A2 00 08
	jsr $9C09.w		; 20 09 9C
	jsr $96F0.w		; 20 F0 96
	jsr $9BD5.w		; 20 D5 9B
.ACCU 16
	rep #$20		; C2 20
	lda #$0003.w		; A9 03 00
	jsr $857B.w		; 20 7B 85
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1DBA.w		; AD BA 1D
	ldy $1DBC.w		; AC BC 1D
	ldx #$9B69.w		; A2 69 9B
	jsr $8770.w		; 20 70 87
	jsr $8568.w		; 20 68 85
.INDEX 16
	rep #$10		; C2 10
	ldx #$0030.w		; A2 30 00
	jsr $825E.w		; 20 5E 82
.ACCU 16
	rep #$20		; C2 20
	lda #$0006.w		; A9 06 00
	jsr $853D.w		; 20 3D 85
	jsr $830F.w		; 20 0F 83
	jsr $82EB.w		; 20 EB 82
	jsr $8370.w		; 20 70 83
	jsr $8BE3.w		; 20 E3 8B
	jsr $96B3.w		; 20 B3 96
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$1000.w		; A2 00 10
	lda $1C18.w		; AD 18 1C
	cmp #$0080.w		; C9 80 00
	bne   3.b		; D0 03
	ldx #$5080.w		; A2 80 50
	stx $00.b		; 86 00
	lda $60.b		; A5 60
	and $00.b		; 25 00
	bne  18.b		; D0 12
	lda $1C04.w		; AD 04 1C
	cmp #$0006.w		; C9 06 00
	beq  10.b		; F0 0A
	and #$000F.w		; 29 0F 00
	asl A		; 0A
	tax		; AA
	jsr ($9A56.w,X)		; FC 56 9A
	bra -54.b		; 80 CA
	jsr $8386.w		; 20 86 83
	plb		; AB
	rtl		; 6B

	stz $9A.b		; 64 9A
	sty $9A.b		; 84 9A
	sta $9A.b,X		; 95 9A
	pei ($9A.b)		; D4 9A
	brk $9B.b		; 00 9B
	rol $9B.b		; 26 9B
	rol $9B.b		; 26 9B
	jsr $8591.w		; 20 91 85
	jsr $93F5.w		; 20 F5 93
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C18.w		; AD 18 1C
	cmp #$0080.w		; C9 80 00
	bne   8.b		; D0 08
	lda $1DB8.w		; AD B8 1D
	beq   4.b		; F0 04
	inc $1C04.w		; EE 04 1C
	rts		; 60

	lda #$0005.w		; A9 05 00
	sta $1C04.w		; 8D 04 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	inc $0A12.w		; EE 12 0A
	lda $0A12.w		; AD 12 0A
	cmp #$0070.w		; C9 70 00
	bcc   3.b		; 90 03
	inc $1C04.w		; EE 04 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $1C02.w		; CE 02 1C
	bmi   1.b		; 30 01
	rts		; 60

	lda #$000A.w		; A9 0A 00
	sta $1C02.w		; 8D 02 1C
	ldx $1C00.w		; AE 00 1C
	lda $9AC2.w,X		; BD C2 9A
	beq  13.b		; F0 0D
	ldx #$009F.w		; A2 9F 00
	jsr $8126.w		; 20 26 81
	inc $1C00.w		; EE 00 1C
	inc $1C00.w		; EE 00 1C
	rts		; 60

	inc $1C04.w		; EE 04 1C
	lda #$0028.w		; A9 28 00
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	asl $1CD3.w		; 0E D3 1C
	cmp ($2A.b,S),Y		; D3 2A
	cmp ($38.b,S),Y		; D3 38
	cmp ($46.b,S),Y		; D3 46
	cmp ($54.b,S),Y		; D3 54
	cmp ($62.b,S),Y		; D3 62
	cmp ($70.b,S),Y		; D3 70
	cmp ($00.b,S),Y		; D3 00
	brk $C2.b		; 00 C2
	bmi -50.b		; 30 CE
	cop $1C.b		; 02 1C
	bpl  26.b		; 10 1A
	lda $1DB8.w		; AD B8 1D
	beq  12.b		; F0 0C
	dec A		; 3A
	asl A		; 0A
	tax		; AA
	lda $9AF6.w,X		; BD F6 9A
	ldx #$009F.w		; A2 9F 00
	jsr $8126.w		; 20 26 81
	inc $1C04.w		; EE 04 1C
	lda #$0028.w		; A9 28 00
	sta $1C02.w		; 8D 02 1C
	rts		; 60

	ldx $D3.b,Y		; B6 D3
	tay		; A8
	cmp ($9A.b,S),Y		; D3 9A
	cmp ($8C.b,S),Y		; D3 8C
	cmp ($7E.b,S),Y		; D3 7E
	cmp ($C2.b,S),Y		; D3 C2
	bmi -50.b		; 30 CE
	cop $1C.b		; 02 1C
	bpl  20.b		; 10 14
	lda $1DB8.w		; AD B8 1D
	beq  12.b		; F0 0C
	dec A		; 3A
	asl A		; 0A
	tax		; AA
	lda $9B1C.w,X		; BD 1C 9B
	ldx #$009F.w		; A2 9F 00
	jsr $8126.w		; 20 26 81
	inc $1C04.w		; EE 04 1C
	rts		; 60

	jmp.w [$56D5]		; DC D5 56
	cmp $D0.b,X		; D5 D0
	pei ($4A.b)		; D4 4A
	pei ($C4.b)		; D4 C4
	cmp ($60.b,S),Y		; D3 60
	asl $FA.b		; 06 FA
	ror $C8.b,X		; 76 C8
	brk $00.b		; 00 00
	sei		; 78
	brk $E0.b		; 00 E0
	and [$C2.b]		; 27 C2
	sbc $001000.l,X		; FF 00 10 00
	trb $D0.b		; 14 D0
	pha		; 48
	cmp $FF.b,S		; C3 FF
	brk $1A.b		; 00 1A
	brk $50.b		; 00 50
	adc ($73.b)		; 72 73
	iny		; C8
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $7C.b		; 00 7C
	iny		; C8
	brk $00.b		; 00 00
	jmp ($6C00.w,X)		; 7C 00 6C
	adc ($C7.b,S),Y		; 73 C7
	brk $00.b		; 00 00
	pla		; 68
	brk $02.b		; 00 02
	plx		; FA
	adc $C8.b,X		; 75 C8
	brk $05.b		; 00 05
	php		; 08
	phb		; 8B
	adc $40C8.w		; 6D C8 40
	asl $01.b		; 06 01
	ora ($06.b,X)		; 01 06
	bit $00.b,X		; 34 00
	sei		; 78
	brk $00.b		; 00 00
	bmi  27.b		; 30 1B
	lda $B91B.w,Y		; B9 1B B9
	tsb $B9.b		; 04 B9
	bit $43B9.w		; 2C B9 43
	lda $B95D.w,Y		; B9 5D B9
	adc $B9.b,X		; 75 B9
	sty $A8B9.w		; 8C B9 A8
	lda $BAD3.w,Y		; B9 D3 BA
	cmp ($BA.b,S),Y		; D3 BA
	phb		; 8B
	tsx		; BA
	lda [$BA.b]		; A7 BA
	lda $EFBA.w,X		; BD BA EF
	tsx		; BA
	tsb $BB.b		; 04 BB
	jsr $39BB.w		; 20 BB 39
	tyx		; BB
	asl $C5BA.w		; 0E BA C5
	lda $B9C5.w,Y		; B9 C5 B9
	cmp $F3B9.w,Y		; D9 B9 F3
	lda $BA25.w,Y		; B9 25 BA
	tsa		; 3B
	tsx		; BA
	lsr $BA.b,X		; 56 BA
	bvs -70.b		; 70 BA
	sta [$BB.b],Y		; 97 BB
	bvs -69.b		; 70 BB
	eor [$BB.b],Y		; 57 BB
	eor [$BB.b],Y		; 57 BB
	stx $BB.b		; 86 BB
	lda ($BB.b),Y		; B1 BB
	cpy $E4BB.w		; CC BB E4
	tyx		; BB
	sbc $BC68BB.l,X		; FF BB 68 BC
	and [$BC.b],Y		; 37 BC
	tas		; 1B
	ldy $BC4F.w,X		; BC 4F BC
	eor $BC82BC.l		; 4F BC 82 BC
	txy		; 9B
	ldy $BCB2.w,X		; BC B2 BC
	dec $3EBC.w		; CE BC 3E
	lda $BCFF.w,X		; BD FF BC
	sbc #$15BC.w		; E9 BC 15
	lda $BD28.w,X		; BD 28 BD
	plp		; 28
	lda $BD57.w,X		; BD 57 BD
	adc ($BD.b),Y		; 71 BD
	phb		; 8B
	lda $30E2.w,X		; BD E2 30
	lda #$8D43.w		; A9 43 8D
	rts		; 60

	eor $A9.b,S		; 43 A9
	asl $618D.w		; 0E 8D 61
	eor $A9.b,S		; 43 A9
	jsr ($628D.w,X)		; FC 8D 62
	eor $A9.b,S		; 43 A9
	txy		; 9B
	sta DMASRC6H.w		; 8D 63 43
	lda #$8D9F.w		; A9 9F 8D
	stz $43.b		; 64 43
	lda #$8D00.w		; A9 00 8D
	adc [$43.b]		; 67 43
	lda $6F.b		; A5 6F
	ora #$8540.w		; 09 40 85
	adc $024060.l		; 6F 60 40 02
	asl A		; 0A
	rti		; 40

	cop $0A.b		; 02 0A
	bvc  18.b		; 50 12
	asl A		; 0A
	bpl   2.b		; 10 02
	asl A		; 0A
	brk $C2.b		; 00 C2
	jsr $168D.w		; 20 8D 16
	and ($8E.b,X)		; 21 8E
	ora $43.b		; 05 43
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda #$09.b		; A9 09
	sta DMAP0.w		; 8D 00 43
	lda #$18.b		; A9 18
	sta DMADEST0.w		; 8D 01 43
	lda #$32.b		; A9 32
	sta DMASRC0L.w		; 8D 02 43
	lda #$9C.b		; A9 9C
	sta DMASRC0H.w		; 8D 03 43
	lda #$9F.b		; A9 9F
	sta DMASRC0B.w		; 8D 04 43
	lda #$01.b		; A9 01
	sta MDMAEN.w		; 8D 0B 42
	rts		; 60

	brk $00.b		; 00 00
	phb		; 8B
	phk		; 4B
	plb		; AB
	jsr $8346.w		; 20 46 83
.ACCU 16
	rep #$20		; C2 20
	lda #$000A.w		; A9 0A 00
	jsl $8083EB.l		; 22 EB 83 80
	jsr $83AB.w		; 20 AB 83
.ACCU 8
	sep #$20		; E2 20
	lda #$E0.b		; A9 E0
	sta $6F.b		; 85 6F
	lda #$06.b		; A9 06
	sta $6D.b		; 85 6D
	stz $41.b		; 64 41
.ACCU 16
	rep #$20		; C2 20
	lda #$9CB8.w		; A9 B8 9C
	jsr $83E1.w		; 20 E1 83
	jsr $9E8B.w		; 20 8B 9E
	jsr $9F34.w		; 20 34 9F
.INDEX 16
	rep #$10		; C2 10
	ldx #$003C.w		; A2 3C 00
	jsr $825E.w		; 20 5E 82
	jsr $830F.w		; 20 0F 83
.ACCU 8
	sep #$20		; E2 20
	lda #$16.b		; A9 16
	sta $78.b		; 85 78
	jsr $82EB.w		; 20 EB 82
	jsr $8370.w		; 20 70 83
.ACCU 16
	rep #$20		; C2 20
	lda $60.b		; A5 60
	and #$2000.w		; 29 00 20
	bne  40.b		; D0 28
	lda $60.b		; A5 60
	and #$1000.w		; 29 00 10
	bne  25.b		; D0 19
.ACCU 16
	rep #$20		; C2 20
	lda $1C3C.w		; AD 3C 1C
	bne   6.b		; D0 06
	jsr $87F5.w		; 20 F5 87
	jsr $9E57.w		; 20 57 9E
	jsr $9FA6.w		; 20 A6 9F
.ACCU 8
	sep #$20		; E2 20
	lda $1C04.w		; AD 04 1C
	beq -45.b		; F0 D3
	bra  19.b		; 80 13
.ACCU 8
	sep #$20		; E2 20
	lda #$02.b		; A9 02
	sta $8A.b		; 85 8A
	bra   6.b		; 80 06
.ACCU 8
	sep #$20		; E2 20
	lda #$01.b		; A9 01
	sta $8A.b		; 85 8A
	jsr $8386.w		; 20 86 83
	plb		; AB
	rtl		; 6B

	jsr $838E.w		; 20 8E 83
	plb		; AB
	rtl		; 6B

	tsb $00.b		; 04 00
	brk $C9.b		; 00 C9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xba		; EB
	phd		; 0B
	cmp #$00.b		; C9 00
	brk $40.b		; 00 40
	brk $4D.b		; 00 4D
	ora ($C9.b)		; 12 C9
	brk $00.b		; 00 00
	rts		; 60

	brk $12.b		; 00 12
	asl $C9.b,X		; 16 C9
	brk $00.b		; 00 00
	jmp ($0200.w,X)		; 7C 00 02
	xba		; EB
	asl A		; 0A
	cmp #$00.b		; C9 00
	ora $08.b		; 05 08
	eor $C911.w		; 4D 11 C9
	brk $06.b		; 00 06
	php		; 08
	phd		; 0B
	rol A		; 2A
	bra   0.b		; 80 00
	stz $00.b		; 64 00
	brk $30.b		; 00 30
	bit $008C.w		; 2C 8C 00
	bit $0000.w,X		; 3C 00 00
	and ($2E.b)		; 32 2E
	bvs   0.b		; 70 00
	rti		; 40

	brk $00.b		; 00 00
	and ($30.b)		; 32 30
	sei		; 78
	brk $50.b		; 00 50
	brk $00.b		; 00 00
	and ($32.b)		; 32 32
	sty $3800.w		; 8C 00 38
	brk $00.b		; 00 00
	and ($34.b)		; 32 34
	tya		; 98
	brk $48.b		; 00 48
	brk $00.b		; 00 00
	and ($36.b)		; 32 36
	dey		; 88
	brk $50.b		; 00 50
	brk $00.b		; 00 00
	and ($38.b)		; 32 38
	pla		; 68
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	and ($3A.b)		; 32 3A
	cli		; 58
	brk $58.b		; 00 58
	brk $00.b		; 00 00
	and ($3C.b)		; 32 3C
	tay		; A8
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	and ($3E.b)		; 32 3E
	bcc   0.b		; 90 00
	bvc   0.b		; 50 00
	brk $32.b		; 00 32
	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	and #$FF.b		; 29 FF
	brk $0A.b		; 00 0A
	tay		; A8
	lda $9D41.w,Y		; B9 41 9D
	sta $00.b		; 85 00
	jmp ($0000.w)		; 6C 00 00
	eor #$9D.b		; 49 9D
	mvn $55,$9D		; 54 9D 55
	sta $9D66.w,X		; 9D 66 9D
	ldy #$0000.w		; A0 00 00
	jsr $8B81.w		; 20 81 8B
	jsr $8BD5.w		; 20 D5 8B
	inc $02.b,X		; F6 02
	rts		; 60

	inc $02.b,X		; F6 02
	stz $100A.w		; 9C 0A 10
	ldy #$0003.w		; A0 03 00
	jsr $8B81.w		; 20 81 8B
	lda #$78.b		; A9 78
	brk $95.b		; 00 95
	ror $D660.w,X		; 7E 60 D6
	ror $06D0.w,X		; 7E D0 06
	lda #$01.b		; A9 01
	brk $8D.b		; 00 8D
	tsb $1C.b		; 04 1C
	rts		; 60

	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	and #$FF.b		; 29 FF
	brk $0A.b		; 00 0A
	tay		; A8
	lda $9D82.w,Y		; B9 82 9D
	sta $00.b		; 85 00
	jmp ($0000.w)		; 6C 00 00
	dey		; 88
	sta $9D9A.w,X		; 9D 9A 9D
	lda #$9D.b		; A9 9D
	ldy #$0000.w		; A0 00 00
	jsr $8B81.w		; 20 81 8B
	jsr $8BD5.w		; 20 D5 8B
.ACCU 8
	sep #$20		; E2 20
	lda #$80.b		; A9 80
	sta $03.b,X		; 95 03
	inc $02.b,X		; F6 02
	rts		; 60

	lda $1C4E.w		; AD 4E 1C
	beq   9.b		; F0 09
	jsr $9E19.w		; 20 19 9E
.ACCU 8
	sep #$20		; E2 20
	stz $03.b,X		; 74 03
	inc $02.b,X		; F6 02
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	jsr $9DD0.w		; 20 D0 9D
	ldy #$0010.w		; A0 10 00
	lda $30.b,X		; B5 30
	bpl   3.b		; 10 03
	ldy #$FFF0.w		; A0 F0 FF
	tya		; 98
	clc		; 18
	adc $30.b,X		; 75 30
	sta $30.b,X		; 95 30
	ldy #$0000.w		; A0 00 00
	lda $30.b,X		; B5 30
	bmi   3.b		; 30 03
	ldy #$0001.w		; A0 01 00
	tya		; 98
.ACCU 8
	sep #$20		; E2 20
	sta $09.b,X		; 95 09
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy #$0000.w		; A0 00 00
	lda $21.b,X		; B5 21
	beq  35.b		; F0 23
	bmi  33.b		; 30 21
	cmp #$00FF.w		; C9 FF 00
	bcs  28.b		; B0 1C
	cmp #$0080.w		; C9 80 00
	bcc   8.b		; 90 08
	sta $00.b		; 85 00
	lda #$0100.w		; A9 00 01
	sec		; 38
	sbc $00.b		; E5 00
	sta $00.b		; 85 00
	lda $9E05.w,Y		; B9 05 9E
	cmp $00.b		; C5 00
	bcc   7.b		; 90 07
	iny		; C8
	iny		; C8
	iny		; C8
	iny		; C8
	bra -13.b		; 80 F3
	rts		; 60

	lda $9E07.w,Y		; B9 07 9E
	tay		; A8
	jsr $8B81.w		; 20 81 8B
	rts		; 60

	cli		; 58
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	brk $03.b		; 00 03
	brk $38.b		; 00 38
	brk $06.b		; 00 06
	brk $10.b		; 00 10
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	brk $B5.b		; 00 B5
	brk $29.b		; 00 29
	sbc $E93800.l,X		; FF 00 38 E9
	bit $0A00.w		; 2C 00 0A
	tay		; A8
	lda $9E2F.w,Y		; B9 2F 9E
	sta $30.b,X		; 95 30
	lda $9E31.w,Y		; B9 31 9E
	sta $32.b,X		; 95 32
	rts		; 60

	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $FF.b		; 00 FF
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $FE.b		; 00 FE
	brk $02.b		; 00 02
	brk $02.b		; 00 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C40.w		; AD 40 1C
	cmp #$0070.w		; C9 70 00
	bcs  23.b		; B0 17
	lda $1C4E.w		; AD 4E 1C
	bne  18.b		; D0 12
	lda #$0001.w		; A9 01 00
	sta $1C4C.w		; 8D 4C 1C
	sta $1C4E.w		; 8D 4E 1C
	stz $0A0A.w		; 9C 0A 0A
	lda #$0002.w		; A9 02 00
	sta $1002.w		; 8D 02 10
	lda $1C40.w		; AD 40 1C
	beq  13.b		; F0 0D
	lda $1C40.w		; AD 40 1C
	sec		; 38
	sbc #$0004.w		; E9 04 00
	sta $1C40.w		; 8D 40 1C
	sta $1C46.w		; 8D 46 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0180.w		; A9 80 01
	sta $1C40.w		; 8D 40 1C
	sta $1C46.w		; 8D 46 1C
	lda #$0000.w		; A9 00 00
	sta $1C42.w		; 8D 42 1C
	sta $1C44.w		; 8D 44 1C
	lda #$0080.w		; A9 80 00
	sta $1C48.w		; 8D 48 1C
	lda #$0058.w		; A9 58 00
	sta $1C4A.w		; 8D 4A 1C
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$0000.w		; A2 00 00
	ldy #$0000.w		; A0 00 00
	lda $9F2C.w,Y		; B9 2C 9F
	sta VMADDL.w		; 8D 16 21
	lda VMDATALREAD.w		; AD 39 21
	phy		; 5A
	ldy #$0004.w		; A0 04 00
	lda VMDATALREAD.w		; AD 39 21
	and #$FF00.w		; 29 00 FF
	sta $1C50.w,X		; 9D 50 1C
	inx		; E8
	inx		; E8
	dey		; 88
	bne -14.b		; D0 F2
	ply		; 7A
	iny		; C8
	iny		; C8
	cpy #$0008.w		; C0 08 00
	bcc -35.b		; 90 DD
	rts		; 60

.BASE $80
L9F9ED7:
.BASE $00
L1F9ED7:
	phb
	phk
	plb
.ACCU 16
.INDEX 16
	rep #$30
	lda $1C4C.w
	beq L1F9F0A.b
	stz $1C4C.w
	ldx #$0000.w
	ldy #$0000.w
L1F9EEA:
	lda $9F2C.w,Y
	sta VMADDL.w		; VRAM Address Low Byte
	phy
	ldy #$0004.w
L1F9EF4:
	lda $1C50.w,X
	ora $9F0C.w,X
	sta VMDATAL.w		; VRAM Data Write Low Byte
	inx
	inx
	dey
	bne L1F9EF4.b
	ply
	iny
	iny
	cpy #$0008.w
	bcc L1F9EEA.b
L1F9F0A:
	plb
	rtl

	ora ($00.b,S),Y		; 13 00
	trb $00.b		; 14 00
	ora $00.b,X		; 15 00
	asl $00.b,X		; 16 00
	and $00.b,S		; 23 00
	bit $00.b		; 24 00
	and $00.b		; 25 00
	rol $00.b		; 26 00
	and ($00.b,S),Y		; 33 00
	bit $00.b,X		; 34 00
	and $00.b,X		; 35 00
	rol $00.b,X		; 36 00
	eor $00.b,S		; 43 00
	mvp $45,$00		; 44 00 45
	brk $46.b		; 00 46
	brk $8E.b		; 00 8E
	tsb $0E.b		; 04 0E
	ora $8E.b		; 05 8E
	ora $0E.b		; 05 0E
	asl $E2.b		; 06 E2
	bmi -87.b		; 30 A9
	brk $8D.b		; 00 8D
	rts		; 60

	eor $A9.b,S		; 43 A9
	ora $8D.b		; 05 8D
	adc ($43.b,X)		; 61 43
	lda #$8D94.w		; A9 94 8D
	.db $62, $43, $A9		; 62 43 A9
	sta $43638D.l,X		; 9F 8D 63 43
	lda #$8D9F.w		; A9 9F 8D
	stz $43.b		; 64 43
	lda #$8D00.w		; A9 00 8D
	bvc  67.b		; 50 43
	lda #$8D2C.w		; A9 2C 8D
	eor ($43.b),Y		; 51 43
	lda #$8D9D.w		; A9 9D 8D
	eor ($43.b)		; 52 43
	lda #$8D9F.w		; A9 9F 8D
	eor ($43.b,S),Y		; 53 43
	lda #$8D9F.w		; A9 9F 8D
	mvn $A9,$43		; 54 43 A9
	eor $8D.b,S		; 43 8D
	bvs  67.b		; 70 43
	lda #$8D0D.w		; A9 0D 8D
	adc ($43.b),Y		; 71 43
	lda #$8D87.w		; A9 87 8D
	adc ($43.b)		; 72 43
	lda #$8D9F.w		; A9 9F 8D
	adc ($43.b,S),Y		; 73 43
	lda #$8D9F.w		; A9 9F 8D
	stz $43.b,X		; 74 43
	lda #$8D00.w		; A9 00 8D
	adc [$43.b],Y		; 77 43
	rts		; 60

	clc		; 18
	php		; 08
	asl A		; 0A
	stz $00.b		; 64 00
	asl A		; 0A
	trb $00.b		; 14 00
	asl A		; 0A
	bvc   8.b		; 50 08
	asl A		; 0A
	brk $18.b		; 00 18
	ora ($64.b,X)		; 01 64
	ora [$14.b]		; 07 14
	ora [$50.b]		; 07 50
	ora ($00.b,X)		; 01 00
	clc		; 18
	cop $64.b		; 02 64
	ora ($14.b),Y		; 11 14
	ora ($50.b),Y		; 11 50
	cop $00.b		; 02 00
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1C4E.w		; AD 4E 1C
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
	lda $9FB8.w,Y		; B9 B8 9F
	sta $00.b		; 85 00
	jmp ($0000.w)		; 6C 00 00
.INDEX 16
	rep #$9F		; C2 9F
	cmp $9F.b,S		; C3 9F
	sbc [$9F.b],Y		; F7 9F
	ora #$C2A0.w		; 09 A0 C2
	sta $20E260.l,X		; 9F 60 E2 20
	lda #$8510.w		; A9 10 85
	sei		; 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$7FFF.w		; A9 FF 7F
	sta $0500.w		; 8D 00 05
	ldx #$0000.w		; A2 00 00
	lda #$7FFF.w		; A9 FF 7F
	sta $0500.w,X		; 9D 00 05
	sta $0520.w,X		; 9D 20 05
	sta $0600.w,X		; 9D 00 06
	inx		; E8
	inx		; E8
	cpx #$0020.w		; E0 20 00
	bcc -19.b		; 90 ED
	inc $1C4E.w		; EE 4E 1C
	lda #$001E.w		; A9 1E 00
	sta $1C3E.w		; 8D 3E 1C
	lda #$0001.w		; A9 01 00
	sta $1C3C.w		; 8D 3C 1C
	rts		; 60

	dec $1C3E.w		; CE 3E 1C
	bne  12.b		; D0 0C
	stz $1C3C.w		; 9C 3C 1C
	inc $1C4E.w		; EE 4E 1C
	lda #$0020.w		; A9 20 00
	sta $1C3E.w		; 8D 3E 1C
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $1C3E.w		; CE 3E 1C
	bne   3.b		; D0 03
	inc $1C4E.w		; EE 4E 1C
	jsr $A017.w		; 20 17 A0
	rts		; 60

	lda $0500.w		; AD 00 05
	sta $00.b		; 85 00
	stz $02.b		; 64 02
	jsr $A072.w		; 20 72 A0
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $08.b		; A5 08
	sta $0500.w		; 8D 00 05
	ldx #$0000.w		; A2 00 00
	lda $0500.w,X		; BD 00 05
	sta $00.b		; 85 00
	lda $C90AEB.l,X		; BF EB 0A C9
	sta $02.b		; 85 02
	jsr $A072.w		; 20 72 A0
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $08.b		; A5 08
	sta $0500.w,X		; 9D 00 05
	lda $0520.w,X		; BD 20 05
	sta $00.b		; 85 00
	lda $C90B0B.l,X		; BF 0B 0B C9
	sta $02.b		; 85 02
	jsr $A072.w		; 20 72 A0
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $08.b		; A5 08
	sta $0520.w,X		; 9D 20 05
	lda $0600.w,X		; BD 00 06
	sta $00.b		; 85 00
	lda $C9114D.l,X		; BF 4D 11 C9
	sta $02.b		; 85 02
	jsr $A072.w		; 20 72 A0
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $08.b		; A5 08
	sta $0600.w,X		; 9D 00 06
	inx		; E8
	inx		; E8
	cpx #$0020.w		; E0 20 00
	bcc -70.b		; 90 BA
	rts		; 60

	stz $08.b		; 64 08
	lda $00.b		; A5 00
	and #$001F.w		; 29 1F 00
	sta $04.b		; 85 04
	lda $02.b		; A5 02
	and #$001F.w		; 29 1F 00
	sta $06.b		; 85 06
	jsr $9603.w		; 20 03 96
	lda $04.b		; A5 04
	sta $08.b		; 85 08
	lda $00.b		; A5 00
	and #$03E0.w		; 29 E0 03
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	sta $04.b		; 85 04
	lda $02.b		; A5 02
	and #$03E0.w		; 29 E0 03
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	sta $06.b		; 85 06
	jsr $9603.w		; 20 03 96
	lda $04.b		; A5 04
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	ora $08.b		; 05 08
	sta $08.b		; 85 08
	lda $00.b		; A5 00
	and #$7C00.w		; 29 00 7C
	xba		; EB
	lsr A		; 4A
	lsr A		; 4A
	sta $04.b		; 85 04
	lda $02.b		; A5 02
	and #$7C00.w		; 29 00 7C
	xba		; EB
	lsr A		; 4A
	lsr A		; 4A
	sta $06.b		; 85 06
	jsr $9603.w		; 20 03 96
	lda $04.b		; A5 04
	xba		; EB
	asl A		; 0A
	asl A		; 0A
	ora $08.b		; 05 08
	sta $08.b		; 85 08
	rts		; 60

	phb		; 8B
	phk		; 4B
	plb		; AB
	jsr $8346.w		; 20 46 83
.ACCU 16
	rep #$20		; C2 20
	lda #$0014.w		; A9 14 00
	jsr $853D.w		; 20 3D 85
.ACCU 16
	rep #$20		; C2 20
	stz $1EA0.w		; 9C A0 1E
	stz $1DC2.w		; 9C C2 1D
	stz $1C2C.w		; 9C 2C 1C
	jsr $8346.w		; 20 46 83
.ACCU 16
	rep #$20		; C2 20
	lda #$0009.w		; A9 09 00
	jsl $8083EB.l		; 22 EB 83 80
	jsr $83AB.w		; 20 AB 83
.ACCU 8
	sep #$20		; E2 20
	lda #$80.b		; A9 80
	sta $6F.b		; 85 6F
	lda #$06.b		; A9 06
	sta $6D.b		; 85 6D
	stz $41.b		; 64 41
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1EA0.w		; AD A0 1E
	asl A		; 0A
	tay		; A8
	lda $A236.w,Y		; B9 36 A2
	jsr $83E1.w		; 20 E1 83
	jsr $A3BB.w		; 20 BB A3
	jsr $854A.w		; 20 4A 85
.ACCU 16
	rep #$20		; C2 20
	lda #$0004.w		; A9 04 00
	jsr $857B.w		; 20 7B 85
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1EA0.w		; AD A0 1E
	asl A		; 0A
	tay		; A8
	lda $A240.w,Y		; B9 40 A2
	ldx #$009F.w		; A2 9F 00
	jsr $8568.w		; 20 68 85
.INDEX 16
	rep #$10		; C2 10
	ldx #$0048.w		; A2 48 00
	jsr $825E.w		; 20 5E 82
	jsr $830F.w		; 20 0F 83
	jsr $82EB.w		; 20 EB 82
	jsr $8370.w		; 20 70 83
	jsr $87F5.w		; 20 F5 87
	jsr $8591.w		; 20 91 85
	jsr $93F5.w		; 20 F5 93
	jsr $A18C.w		; 20 8C A1
.ACCU 16
	rep #$20		; C2 20
	lda $60.b		; A5 60
	and #$1000.w		; 29 00 10
	bne  36.b		; D0 24
	lda $60.b		; A5 60
	and #$2000.w		; 29 00 20
	bne  37.b		; D0 25
	lda $1C18.w		; AD 18 1C
	cmp #$0080.w		; C9 80 00
	bne -42.b		; D0 D6
	bra   0.b		; 80 00
.ACCU 16
	rep #$20		; C2 20
	inc $1EA0.w		; EE A0 1E
	lda $1EA0.w		; AD A0 1E
	cmp #$0005.w		; C9 05 00
	beq   6.b		; F0 06
	jsr $838E.w		; 20 8E 83
	jmp $A0E9.w		; 4C E9 A0
.ACCU 8
	sep #$20		; E2 20
	lda #$02.b		; A9 02
	sta $8A.b		; 85 8A
	bra   6.b		; 80 06
.ACCU 8
	sep #$20		; E2 20
	lda #$01.b		; A9 01
	sta $8A.b		; 85 8A
	jsr $8386.w		; 20 86 83
	plb		; AB
	rtl		; 6B

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1EA0.w		; AD A0 1E
	and #$000F.w		; 29 0F 00
	cmp #$0001.w		; C9 01 00
	bne  36.b		; D0 24
	ldx #$0000.w		; A2 00 00
	lda $1C2C.w		; AD 2C 1C
	and #$0006.w		; 29 06 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	tax		; AA
	ldy #$0000.w		; A0 00 00
	lda $CA6990.l,X		; BF 90 69 CA
	sta $05E0.w,Y		; 99 E0 05
	inx		; E8
	inx		; E8
	iny		; C8
	iny		; C8
	cpy #$0020.w		; C0 20 00
	bcc -16.b		; 90 F0
	inc $1C2C.w		; EE 2C 1C
	rts		; 60

	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
	lda $A1CF.w,Y		; B9 CF A1
	sta $00.b		; 85 00
	jmp ($0000.w)		; 6C 00 00
	rol A		; 2A
	ldx #$A1D7.w		; A2 D7 A1
	sbc ($A1.b,X)		; E1 A1
	sbc [$A1.b],Y		; F7 A1
	lda $1DC2.w		; AD C2 1D
	beq   4.b		; F0 04
	stz $7E.b,X		; 74 7E
	inc $02.b,X		; F6 02
	rts		; 60

	lda $7E.b,X		; B5 7E
	bne  15.b		; D0 0F
	lda #$FD00.w		; A9 00 FD
	sta $32.b,X		; 95 32
	lda $25.b,X		; B5 25
	cmp #$009E.w		; C9 9E 00
	bcs   2.b		; B0 02
	inc $02.b,X		; F6 02
	rts		; 60

	dec $7E.b,X		; D6 7E
	rts		; 60

	lda #$0100.w		; A9 00 01
	sta $0A04.w		; 8D 04 0A
	jsr $8BD5.w		; 20 D5 8B
	ldx #$1000.w		; A2 00 10
	lda $21.b,X		; B5 21
	and #$00FF.w		; 29 FF 00
	sta $21.b,X		; 95 21
	txa		; 8A
	adc #$0080.w		; 69 80 00
	tax		; AA
	cpx #$1800.w		; E0 00 18
	bcc -17.b		; 90 EF
	rts		; 60

	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
	lda $A226.w,Y		; B9 26 A2
	sta $00.b		; 85 00
	jmp ($0000.w)		; 6C 00 00
	rol A		; 2A
	ldx #$A235.w		; A2 35 A2
	ldy #$0000.w		; A0 00 00
	jsr $8B81.w		; 20 81 8B
	jsr $8BD5.w		; 20 D5 8B
	inc $02.b,X		; F6 02
	rts		; 60

	lsr A		; 4A
	ldx #$A28A.w		; A2 8A A2
	ldy $FCA2.w,X		; BC A2 FC
	ldx #$A343.w		; A2 43 A3
	sei		; 78
	ldx $BEAB.w,Y		; BE AB BE
	ora $4CBF.w		; 0D BF 4C
	lda $06BFF0.l,X		; BF F0 BF 06
	lda ($16.b),Y		; B1 16
	cmp #$0000.w		; C9 00 00
	brk $00.b		; 00 00
	pei ($43.b)		; D4 43
	cmp #$0000.w		; C9 00 00
	bpl   0.b		; 10 00
	lda $66.b,X		; B5 66
	cmp #$0000.w		; C9 00 00
	bmi   0.b		; 30 00
	sty $5F.b,X		; 94 5F
	cmp #$0000.w		; C9 00 00
	bvs   0.b		; 70 00
	clv		; B8
	adc ($C9.b,X)		; 61 C9
	brk $00.b		; 00 00
	sei		; 78
	brk $00.b		; 00 00
	brk $CA.b		; 00 CA
	brk $00.b		; 00 00
	jmp ($0200.w,X)		; 7C 00 02
	sbc $C97A.w,Y		; F9 7A C9
	brk $05.b		; 00 05
	php		; 08
	sbc $C978.w,Y		; F9 78 C9
	brk $06.b		; 00 06
	php		; 08
	ora ($40.b,X)		; 01 40
	bra   0.b		; 80 00
	tya		; 98
	brk $00.b		; 00 00
	bmi   5.b		; 30 05
	ora ($01.b),Y		; 11 01
	dex		; CA
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	rtl		; 6B

	phk		; 4B
	cmp [$00.b]		; C7 00
	brk $30.b		; 00 30
	brk $DB.b		; 00 DB
	ora [$CA.b],Y		; 17 CA
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	sbc $CA1A.w,Y		; F9 1A CA
	brk $00.b		; 00 00
	sei		; 78
	brk $00.b		; 00 00
	brk $CA.b		; 00 CA
	brk $00.b		; 00 00
	jmp ($0200.w,X)		; 7C 00 02
	sbc $C97B.w,Y		; F9 7B C9
	brk $05.b		; 00 05
	php		; 08
	sbc $C978.w,Y		; F9 78 C9
	brk $06.b		; 00 06
	php		; 08
	brk $06.b		; 00 06
	cmp ($1D.b),Y		; D1 1D
	dex		; CA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pei ($43.b)		; D4 43
	cmp #$0000.w		; C9 00 00
	bpl   0.b		; 10 00
	lda $66.b,X		; B5 66
	cmp #$0000.w		; C9 00 00
	bmi   0.b		; 30 00
	sty $5F.b,X		; 94 5F
	cmp #$0000.w		; C9 00 00
	bvs   0.b		; 70 00
	clv		; B8
	adc ($C9.b,X)		; 61 C9
	brk $00.b		; 00 00
	sei		; 78
	brk $00.b		; 00 00
	brk $CA.b		; 00 CA
	brk $00.b		; 00 00
	jmp ($0200.w,X)		; 7C 00 02
	sbc $C97A.w,Y		; F9 7A C9
	brk $05.b		; 00 05
	php		; 08
	sbc $C978.w,Y		; F9 78 C9
	brk $06.b		; 00 06
	php		; 08
	ora ($42.b,X)		; 01 42
	bra   0.b		; 80 00
	tya		; 98
	brk $00.b		; 00 00
	bmi   6.b		; 30 06
	ror $2D.b,X		; 76 2D
	dex		; CA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	txa		; 8A
	ora $0000C9.l,X		; 1F C9 00 00
	bpl   0.b		; 10 00
	lda $66.b,X		; B5 66
	cmp #$0000.w		; C9 00 00
	bmi   0.b		; 30 00
	ora $3E.b,S		; 03 3E
	cmp #$0000.w		; C9 00 00
	bvs   0.b		; 70 00
	bvs  64.b		; 70 40
	cmp #$0000.w		; C9 00 00
	sei		; 78
	brk $00.b		; 00 00
	brk $CA.b		; 00 CA
	brk $00.b		; 00 00
	jmp ($0200.w,X)		; 7C 00 02
	sbc $C979.w,Y		; F9 79 C9
	brk $05.b		; 00 05
	php		; 08
	sbc $C978.w,Y		; F9 78 C9
	brk $06.b		; 00 06
	php		; 08
	cop $4A.b		; 02 4A
	bvs   0.b		; 70 00
	adc ($00.b)		; 72 00
	brk $32.b		; 00 32
	lsr $80.b		; 46 80
	brk $98.b		; 00 98
	brk $00.b		; 00 00
	bmi   8.b		; 30 08
	lda #$CA25.w		; A9 25 CA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $CA35.w		; AC 35 CA
	brk $00.b		; 00 00
	php		; 08
	brk $D4.b		; 00 D4
	eor $C9.b,S		; 43 C9
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	lda $66.b,X		; B5 66
	cmp #$0000.w		; C9 00 00
	bmi   0.b		; 30 00
	sty $5F.b,X		; 94 5F
	cmp #$0000.w		; C9 00 00
	bvs   0.b		; 70 00
	stx $64.b		; 86 64
	cmp #$0000.w		; C9 00 00
	stz $00.b,X		; 74 00
	clv		; B8
	adc ($C9.b,X)		; 61 C9
	brk $00.b		; 00 00
	sei		; 78
	brk $00.b		; 00 00
	brk $CA.b		; 00 CA
	brk $00.b		; 00 00
	jmp ($0200.w,X)		; 7C 00 02
	sbc $C97A.w,Y		; F9 7A C9
	brk $05.b		; 00 05
	php		; 08
	sbc $C978.w,Y		; F9 78 C9
	brk $06.b		; 00 06
	php		; 08
	ora [$48.b]		; 07 48
	bra   0.b		; 80 00
	php		; 08
	ora ($80.b,X)		; 01 80
	bit $4C.b,X		; 34 4C
	bra   1.b		; 80 01
	bvc   0.b		; 50 00
	bra  50.b		; 80 32
	mvp $00,$80		; 44 80 00
	tya		; 98
	brk $00.b		; 00 00
	bmi  76.b		; 30 4C
	trb $01.b		; 14 01
	pha		; 48
	brk $80.b		; 00 80
	and ($4C.b)		; 32 4C
	mvp $38,$01		; 44 01 38
	brk $80.b		; 00 80
	and ($4C.b)		; 32 4C
	tsx		; BA
	ora ($48.b,X)		; 01 48
	brk $80.b		; 00 80
	and ($4C.b)		; 32 4C
	cpx $4401.w		; EC 01 44
	brk $80.b		; 00 80
	and ($E2.b)		; 32 E2
	bmi -87.b		; 30 A9
	brk $8D.b		; 00 8D
	bvs  67.b		; 70 43
	lda #$8D2C.w		; A9 2C 8D
	adc ($43.b),Y		; 71 43
	lda #$8DD7.w		; A9 D7 8D
	adc ($43.b)		; 72 43
	lda #$8DA3.w		; A9 A3 8D
	adc ($43.b,S),Y		; 73 43
	lda #$8D9F.w		; A9 9F 8D
	stz $43.b,X		; 74 43
	rts		; 60

	clc		; 18
	tsb $64.b		; 04 64
	ora ($1B.b,S),Y		; 13 1B
	ora ($59.b,S),Y		; 13 59
	tsb $00.b		; 04 00
	phb		; 8B
	phk		; 4B
	plb		; AB
	jsr $8346.w		; 20 46 83
.ACCU 16
	rep #$20		; C2 20
	lda #$0008.w		; A9 08 00
	jsl $8083EB.l		; 22 EB 83 80
	jsr $83AB.w		; 20 AB 83
.ACCU 8
	sep #$20		; E2 20
	stz $6F.b		; 64 6F
	lda #$06.b		; A9 06
	sta $6D.b		; 85 6D
	stz $41.b		; 64 41
.ACCU 16
	rep #$20		; C2 20
	lda #$A43E.w		; A9 3E A4
	jsr $83E1.w		; 20 E1 83
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $1C04.w		; 9C 04 1C
	lda #$0030.w		; A9 30 00
	sta $1C06.w		; 8D 06 1C
	ldx #$0054.w		; A2 54 00
	jsr $825E.w		; 20 5E 82
	jsr $A717.w		; 20 17 A7
.ACCU 16
	rep #$20		; C2 20
	stz $1C28.w		; 9C 28 1C
	lda #$0008.w		; A9 08 00
	jsr $853D.w		; 20 3D 85
	jsr $830F.w		; 20 0F 83
	jsr $82EB.w		; 20 EB 82
	jsr $8370.w		; 20 70 83
	jsr $87F5.w		; 20 F5 87
	jsr $A973.w		; 20 73 A9
.ACCU 8
	sep #$20		; E2 20
	lda $1C04.w		; AD 04 1C
	beq -19.b		; F0 ED
	jsr $838E.w		; 20 8E 83
	plb		; AB
	rtl		; 6B

	asl $AF.b		; 06 AF
	rol $00CA.w,X		; 3E CA 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	and [$C2.b]		; 27 C2
	sbc $002000.l,X		; FF 00 20 00
	trb $14.b		; 14 14
	tsa		; 3B
	cmp [$00.b]		; C7 00
	brk $30.b		; 00 30
	brk $D1.b		; 00 D1
	mvp $00,$C7		; 44 C7 00
	brk $50.b		; 00 50
	brk $BD.b		; 00 BD
	tsa		; 3B
	cmp [$00.b]		; C7 00
	brk $70.b		; 00 70
	brk $CB.b		; 00 CB
	and $00C7.w,X		; 3D C7 00
	brk $74.b		; 00 74
	brk $02.b		; 00 02
	cmp ($42.b),Y		; D1 42
	cmp [$00.b]		; C7 00
	ora $08.b		; 05 08
	cmp ($43.b),Y		; D1 43
	cmp [$00.b]		; C7 00
	asl $08.b		; 06 08
	bpl  84.b		; 10 54
	trb $CE00.w		; 1C 00 CE
	brk $68.b		; 00 68
	bmi  86.b		; 30 56
	bit $CE00.w,X		; 3C 00 CE
	brk $92.b		; 00 92
	bmi  88.b		; 30 58
	mvn $CE,$00		; 54 00 CE
	brk $BC.b		; 00 BC
	bmi  90.b		; 30 5A
	stz $00.b,X		; 74 00
	dec $E600.w		; CE 00 E6
	bmi  92.b		; 30 5C
	sty $CE00.w		; 8C 00 CE
	brk $10.b		; 00 10
	and ($5E.b),Y		; 31 5E
	ldy $CE00.w		; AC 00 CE
	brk $3A.b		; 00 3A
	and ($60.b),Y		; 31 60
	cpy $00.b		; C4 00
	dec $6400.w		; CE 00 64
	and ($62.b),Y		; 31 62
	cpx $00.b		; E4 00
	dec $8E00.w		; CE 00 8E
	and ($4E.b),Y		; 31 4E
	trb $CE00.w		; 1C 00 CE
	brk $00.b		; 00 00
	rol $4E.b,X		; 36 4E
	bit $CE00.w,X		; 3C 00 CE
	brk $00.b		; 00 00
	rol $4E.b,X		; 36 4E
	mvn $CE,$00		; 54 00 CE
	brk $00.b		; 00 00
	rol $4E.b,X		; 36 4E
	stz $00.b,X		; 74 00
	dec $0000.w		; CE 00 00
	rol $4E.b,X		; 36 4E
	sty $CE00.w		; 8C 00 CE
	brk $00.b		; 00 00
	rol $4E.b,X		; 36 4E
	ldy $CE00.w		; AC 00 CE
	brk $00.b		; 00 00
	rol $4E.b,X		; 36 4E
	cpy $00.b		; C4 00
	dec $0000.w		; CE 00 00
	rol $4E.b,X		; 36 4E
	cpx $00.b		; E4 00
	dec $0000.w		; CE 00 00
	rol $A6.b,X		; 36 A6
	dey		; 88
	lda $02.b,X		; B5 02
	and #$FF.b		; 29 FF
	brk $0A.b		; 00 0A
	tay		; A8
	lda $A4F9.w,Y		; B9 F9 A4
	sta $00.b		; 85 00
	jmp ($0000.w)		; 6C 00 00
	sbc $0AA4.w,X		; FD A4 0A
	lda $A0.b		; A5 A0
	brk $00.b		; 00 00
	jsr $8B81.w		; 20 81 8B
	lda #$12.b		; A9 12
	brk $95.b		; 00 95
	sei		; 78
	inc $02.b,X		; F6 02
	dec $78.b,X		; D6 78
	bne   2.b		; D0 02
	stz $00.b,X		; 74 00
	rts		; 60

	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	and #$FF.b		; 29 FF
	brk $0A.b		; 00 0A
	tay		; A8
	lda $A528.w,Y		; B9 28 A5
	sta $00.b		; 85 00
	jsr $A525.w		; 20 25 A5
	jmp $A90D.w		; 4C 0D A9
	jmp ($0000.w)		; 6C 00 00
	bit $40A5.w		; 2C A5 40
	lda $A0.b		; A5 A0
	brk $00.b		; 00 00
	lda $58.b,X		; B5 58
	and #$FF.b		; 29 FF
	brk $85.b		; 00 85
	brk $0A.b		; 00 0A
	clc		; 18
	adc $00.b		; 65 00
	tay		; A8
	jsr $8B81.w		; 20 81 8B
	inc $02.b,X		; F6 02
	rts		; 60

	ldx $88.b		; A6 88
	lda $02.b,X		; B5 02
	and #$FF.b		; 29 FF
	brk $0A.b		; 00 0A
	tay		; A8
	lda $A556.w,Y		; B9 56 A5
	sta $00.b		; 85 00
	jsr $A553.w		; 20 53 A5
	rts		; 60

	jmp ($0000.w)		; 6C 00 00
	eor $A65DA6.l		; 4F A6 5D A6
	ora ($A7.b,S),Y		; 13 A7
	inc $DCA6.w		; EE A6 DC
	ldx $B7.b		; A6 B7
	ldx $70.b		; A6 70
	ldx $36.b		; A6 36
	ldx $0A.b		; A6 0A
	ldx $D2.b		; A6 D2
	lda $E3.b		; A5 E3
	lda $F1.b		; A5 F1
	lda $F0.b		; A5 F0
	lda $95.b		; A5 95
	lda $94.b		; A5 94
	lda $83.b		; A5 83
	lda $7A.b		; A5 7A
	lda $A2.b		; A5 A2
	ldx $A9.b		; A6 A9
	ora ($00.b,X)		; 01 00
	sta $78.b,X		; 95 78
	jsr $A60A.w		; 20 0A A6
	rts		; 60

	dec $79.b,X		; D6 79
	bne  12.b		; D0 0C
	jsr $8BD5.w		; 20 D5 8B
	lda $78.b,X		; B5 78
	beq   5.b		; F0 05
	stz $78.b,X		; 74 78
	jsr $AA94.w		; 20 94 AA
	rts		; 60

	rts		; 60

	jsr $AC0F.w		; 20 0F AC
	jsr $AC18.w		; 20 18 AC
	cmp #$FF.b		; C9 FF
	sbc $A91CD0.l,X		; FF D0 1C A9
	asl $9500.w		; 0E 00 95
	cop $A0.b		; 02 A0
	brk $00.b		; 00 00
	jsr $8B81.w		; 20 81 8B
	inc $1EE0.w		; EE E0 1E
	lda $1EE0.w		; AD E0 1E
	cmp #$07.b		; C9 07
	brk $F0.b		; 00 F0
	ora [$20.b]		; 07 20
	and $20A7.w,X		; 3D A7 20
	sbc ($A7.b)		; F2 A7
	rts		; 60

	lda #$0F.b		; A9 0F
	brk $95.b		; 00 95
	cop $A9.b		; 02 A9
	ora ($00.b,X)		; 01 00
	sta $78.b,X		; 95 78
	lda #$05.b		; A9 05
	brk $95.b		; 00 95
	adc $00A9.w,Y		; 79 A9 00
	sbc $603295.l,X		; FF 95 32 60
	dec $78.b,X		; D6 78
	bne  12.b		; D0 0C
	lda #$0D.b		; A9 0D
	brk $95.b		; 00 95
	cop $20.b		; 02 20
	adc $30C2AE.l,X		; 7F AE C2 30
	ldx $88.b		; A6 88
	rts		; 60

	dec $78.b,X		; D6 78
	bne   8.b		; D0 08
	lda #$08.b		; A9 08
	brk $95.b		; 00 95
	ror $6E20.w,X		; 7E 20 6E
	lda $6060.w		; AD 60 60
	jsr $AC18.w		; 20 18 AC
	cmp #$FF.b		; C9 FF
	sbc $B510D0.l,X		; FF D0 10 B5
	ror $0430.w,X		; 7E 30 04
	jsr $AD6E.w		; 20 6E AD
	rts		; 60

	lda #$0C.b		; A9 0C
	brk $95.b		; 00 95
	cop $20.b		; 02 20
	pei ($AB.b)		; D4 AB
	rts		; 60

	dec $78.b,X		; D6 78
	bne  39.b		; D0 27
	ldy #$0015.w		; A0 15 00
	lda $56.b,X		; B5 56
	bpl   3.b		; 10 03
	ldy #$0012.w		; A0 12 00
	jsr $8B81.w		; 20 81 8B
	lda $56.b,X		; B5 56
	bpl  11.b		; 10 0B
	lda #$0A.b		; A9 0A
	brk $95.b		; 00 95
	cop $A9.b		; 02 A9
	bit $9500.w,X		; 3C 00 95
	sei		; 78
	rts		; 60

	lda #$09.b		; A9 09
	brk $95.b		; 00 95
	cop $A9.b		; 02 A9
	sei		; 78
	brk $95.b		; 00 95
	sei		; 78
	rts		; 60

	rts		; 60

	dec $78.b,X		; D6 78
	bne  17.b		; D0 11
	ldy #$000F.w		; A0 0F 00
	jsr $8B81.w		; 20 81 8B
	lda #$1E.b		; A9 1E
	brk $95.b		; 00 95
	sei		; 78
	lda #$08.b		; A9 08
	brk $95.b		; 00 95
	cop $60.b		; 02 60
	jsr $AA68.w		; 20 68 AA
	rts		; 60

	jsr $ABEA.w		; 20 EA AB
	jsr $AC0F.w		; 20 0F AC
	inc $02.b,X		; F6 02
	lda #$3C.b		; A9 3C
	brk $95.b		; 00 95
	sei		; 78
	rts		; 60

	dec $78.b,X		; D6 78
	bne  14.b		; D0 0E
	lda $5C.b,X		; B5 5C
	beq  10.b		; F0 0A
	sta $02.b,X		; 95 02
	stz $7E.b,X		; 74 7E
	ldy #$0003.w		; A0 03 00
	jsr $8B81.w		; 20 81 8B
	rts		; 60

	lda $1C28.w		; AD 28 1C
	bne   7.b		; D0 07
	lda $60.b		; A5 60
	and #$80.b		; 29 80
	bvc -16.b		; 50 F0
	tas		; 1B
	lda #$FF.b		; A9 FF
	sbc $1C288D.l,X		; FF 8D 28 1C
	lda $1C26.w		; AD 26 1C
	bne  17.b		; D0 11
	lda #$02.b		; A9 02
	brk $8D.b		; 00 8D
	bit $1C.b		; 24 1C
	lda #$11.b		; A9 11
	brk $95.b		; 00 95
	cop $A9.b		; 02 A9
	ora ($00.b,X)		; 01 00
	sta $78.b,X		; 95 78
	rts		; 60

	lda #$FF.b		; A9 FF
	sbc $1C048D.l,X		; FF 8D 04 1C
	sta $1EEA.w		; 8D EA 1E
	rts		; 60

	dec $78.b,X		; D6 78
	bne  16.b		; D0 10
	lda #$07.b		; A9 07
	brk $95.b		; 00 95
	cop $A0.b		; 02 A0
	ora #$00.b		; 09 00
	jsr $8B81.w		; 20 81 8B
	lda #$B4.b		; A9 B4
	brk $95.b		; 00 95
	sei		; 78
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	dec $78.b,X		; D6 78
	beq  25.b		; F0 19
	lda $5A.b,X		; B5 5A
	and #$00FF.w		; 29 FF 00
	tay		; A8
	lda $AEFD.w,Y		; B9 FD AE
	and #$00FF.w		; 29 FF 00
.ACCU 8
	sep #$20		; E2 20
	sta $09.b,X		; 95 09
.ACCU 16
	rep #$20		; C2 20
	ldy #$000F.w		; A0 0F 00
	jsr $8B81.w		; 20 81 8B
	rts		; 60

	lda #$0002.w		; A9 02 00
	sta $02.b,X		; 95 02
	rts		; 60

	dec $78.b,X		; D6 78
	bne  13.b		; D0 0D
	lda #$003C.w		; A9 3C 00
	sta $78.b,X		; 95 78
	lda #$0005.w		; A9 05 00
	sta $02.b,X		; 95 02
	stz $1C28.w		; 9C 28 1C
	rts		; 60

	jsr $AC18.w		; 20 18 AC
	cmp #$FFFF.w		; C9 FF FF
	bne  28.b		; D0 1C
	lda $7E.b,X		; B5 7E
	cmp #$0010.w		; C9 10 00
	beq  11.b		; F0 0B
	lda #$0004.w		; A9 04 00
	sta $02.b,X		; 95 02
	lda #$003C.w		; A9 3C 00
	sta $78.b,X		; 95 78
	rts		; 60

	lda #$0006.w		; A9 06 00
	sta $02.b,X		; 95 02
	lda #$003C.w		; A9 3C 00
	sta $78.b,X		; 95 78
	rts		; 60

	jsr $AC4D.w		; 20 4D AC
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1EEA.w		; AD EA 1E
	bne  13.b		; D0 0D
	jsr $A73D.w		; 20 3D A7
	jsr $A7A9.w		; 20 A9 A7
	jsr $AF0C.w		; 20 0C AF
	jsr $A7F2.w		; 20 F2 A7
	rts		; 60

	jsr $A73D.w		; 20 3D A7
	jsr $A7A9.w		; 20 A9 A7
	jsr $AF0C.w		; 20 0C AF
	jsr $A8AA.w		; 20 AA A8
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stz $1EEA.w		; 9C EA 1E
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx #$1000.w		; A2 00 10
	ldy #$0000.w		; A0 00 00
	stz $00.b		; 64 00
	stz $02.b		; 64 02
	ldy $02.b		; A4 02
	lda $1EC0.w,Y		; B9 C0 1E
	dec A		; 3A
	and #$000F.w		; 29 0F 00
	asl A		; 0A
	clc		; 18
	adc #$0054.w		; 69 54 00
	sta $00.b,X		; 95 00
	lda $1EC0.w,Y		; B9 C0 1E
	dec A		; 3A
	and #$000F.w		; 29 0F 00
	asl A		; 0A
	tay		; A8
	lda $A7E0.w,Y		; B9 E0 A7
	sta $0A.b,X		; 95 0A
	ldy $02.b		; A4 02
	lda $1EC2.w,Y		; B9 C2 1E
	and #$00FF.w		; 29 FF 00
	sta $04.b		; 85 04
	lda $00.b		; A5 00
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $04.b		; 65 04
	tay		; A8
	lda $A8ED.w,Y		; B9 ED A8
	and #$00FF.w		; 29 FF 00
	sta $5A.b,X		; 95 5A
	ldy $02.b		; A4 02
	lda $1EC3.w,Y		; B9 C3 1E
	and #$00FF.w		; 29 FF 00
	sta $56.b,X		; 95 56
	lda $1EC1.w,Y		; B9 C1 1E
	and #$000F.w		; 29 0F 00
	sta $54.b,X		; 95 54
	inc $00.b		; E6 00
	txa		; 8A
	clc		; 18
	adc #$0080.w		; 69 80 00
	tax		; AA
	lda $02.b		; A5 02
	clc		; 18
	adc #$0004.w		; 69 04 00
	sta $02.b		; 85 02
	cmp #$0020.w		; C9 20 00
	bcc -95.b		; 90 A1
	rts		; 60

	ldx #$1400.w		; A2 00 14
	ldy #$0000.w		; A0 00 00
	lda $1EC1.w,Y		; B9 C1 1E
	and #$000F.w		; 29 0F 00
	cmp #$0002.w		; C9 02 00
	beq  13.b		; F0 0D
	lda $1EC0.w,Y		; B9 C0 1E
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	dec A		; 3A
	and #$0007.w		; 29 07 00
	bra   3.b		; 80 03
	lda #$0008.w		; A9 08 00
.ACCU 8
	sep #$20		; E2 20
	sta $58.b,X		; 95 58
.ACCU 16
	rep #$20		; C2 20
	txa		; 8A
	clc		; 18
	adc #$0080.w		; 69 80 00
	tax		; AA
	iny		; C8
	iny		; C8
	iny		; C8
	iny		; C8
	cpy #$0020.w		; C0 20 00
	bcc -48.b		; 90 D0
	rts		; 60

	pla		; 68
	bmi -110.b		; 30 92
	and ($BC.b)		; 32 BC
	bit $E6.b,X		; 34 E6
	bit $10.b,X		; 34 10
	and ($3A.b),Y		; 31 3A
	and $64.b,X		; 35 64
	and $8E.b,X		; 35 8E
	and ($B8.b,S),Y		; 33 B8
	and ($C2.b),Y		; 31 C2
	bmi -83.b		; 30 AD
	cpx #$0A1E.w		; E0 1E 0A
	tay		; A8
	lda $A89A.w,Y		; B9 9A A8
	jsr $A878.w		; 20 78 A8
	stx $10.b		; 86 10
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $A89B.w,Y		; B9 9B A8
	jsr $A878.w		; 20 78 A8
	stx $12.b		; 86 12
	jsr $A922.w		; 20 22 A9
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0001.w		; A9 01 00
	sta $1C24.w		; 8D 24 1C
	ldx $10.b		; A6 10
	ldy $12.b		; A4 12
	stz $1C26.w		; 9C 26 1C
	lda $54.b,X		; B5 54
	ora $0054.w,Y		; 19 54 00
	cmp #$0002.w		; C9 02 00
	beq   3.b		; F0 03
	inc $1C26.w		; EE 26 1C
	lda $00.b,X		; B5 00
	sec		; 38
	sbc #$0054.w		; E9 54 00
	lsr A		; 4A
	inc A		; 1A
	sta $1EE2.w		; 8D E2 1E
	txa		; 8A
	and #$0380.w		; 29 80 03
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	sta $1EE6.w		; 8D E6 1E
	lda $0000.w,Y		; B9 00 00
	sec		; 38
	sbc #$0054.w		; E9 54 00
	lsr A		; 4A
	inc A		; 1A
	sta $1EE4.w		; 8D E4 1E
	tya		; 98
	and #$0380.w		; 29 80 03
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	sta $1EE8.w		; 8D E8 1E
	lda $56.b,X		; B5 56
	cmp $0056.w,Y		; D9 56 00
	bcc  12.b		; 90 0C
	lda #$0001.w		; A9 01 00
	sta $56.b,X		; 95 56
	lda #$FFFF.w		; A9 FF FF
	sta $0056.w,Y		; 99 56 00
	rts		; 60

	lda #$FFFF.w		; A9 FF FF
	sta $56.b,X		; 95 56
	lda #$0001.w		; A9 01 00
	sta $0056.w,Y		; 99 56 00
	rts		; 60

	and #$00FF.w		; 29 FF 00
	sta $00.b		; 85 00
	ldx #$1000.w		; A2 00 10
	lda $5A.b,X		; B5 5A
	and #$00FF.w		; 29 FF 00
	cmp $00.b		; C5 00
	beq   8.b		; F0 08
	txa		; 8A
	clc		; 18
	adc #$0080.w		; 69 80 00
	tax		; AA
	bra -17.b		; 80 EF
.ACCU 8
	sep #$20		; E2 20
	lda #$02.b		; A9 02
	sta $5C.b,X		; 95 5C
	stz $02.b,X		; 74 02
	rts		; 60

	brk $01.b		; 00 01
	cop $03.b		; 02 03
	tsb $05.b		; 04 05
	asl $07.b		; 06 07
	php		; 08
	ora #$0A.b		; 09 0A
	phd		; 0B
	tsb $0E0D.w		; 0C 0D 0E
	asl $30C2.w		; 0E C2 30
	lda $1EE6.w		; AD E6 1E
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc #$00.b		; 69 00
	bpl -86.b		; 10 AA
	lda $1EE8.w		; AD E8 1E
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc #$00.b		; 69 00
	bpl -88.b		; 10 A8
	lda #$10.b		; A9 10
	brk $95.b		; 00 95
	cop $99.b		; 02 99
	cop $00.b		; 02 00
	lda $56.b,X		; B5 56
	cmp $0056.w,Y		; D9 56 00
	bcc  12.b		; 90 0C
	lda #$01.b		; A9 01
	brk $95.b		; 00 95
	lsr $A9.b,X		; 56 A9
	sbc $5699FF.l,X		; FF FF 99 56
	brk $60.b		; 00 60
	lda #$FF.b		; A9 FF
	sbc $A95695.l,X		; FF 95 56 A9
	ora ($00.b,X)		; 01 00
	sta $0056.w,Y		; 99 56 00
	rts		; 60

	brk $08.b		; 00 08
	tsb $010E.w		; 0C 0E 01
	php		; 08
	tsb $020E.w		; 0C 0E 02
	ora #$0C.b		; 09 0C
	asl $0903.w		; 0E 03 09
	tsb $040E.w		; 0C 0E 04
	asl A		; 0A
	ora $050E.w		; 0D 0E 05
	asl A		; 0A
	ora $060E.w		; 0D 0E 06
	phd		; 0B
	ora $070E.w		; 0D 0E 07
	phd		; 0B
	ora $C20E.w		; 0D 0E C2
	bmi -90.b		; 30 A6
	dey		; 88
	txa		; 8A
	sec		; 38
	sbc #$00.b		; E9 00
	tsb $A8.b		; 04 A8
	lda $0021.w,Y		; B9 21 00
	sta $21.b,X		; 95 21
	lda $0025.w,Y		; B9 25 00
	sta $25.b,X		; 95 25
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $10.b		; A6 10
	lda $00.b,X		; B5 00
	sec		; 38
	sbc #$0054.w		; E9 54 00
	and #$00FF.w		; 29 FF 00
	tay		; A8
	lda $A94F.w,Y		; B9 4F A9
	ldx #$009F.w		; A2 9F 00
	jsr $8126.w		; 20 26 81
	ldx $12.b		; A6 12
	lda $00.b,X		; B5 00
	sec		; 38
	sbc #$0054.w		; E9 54 00
	and #$00FF.w		; 29 FF 00
	tay		; A8
	lda $A961.w,Y		; B9 61 A9
	ldx #$009F.w		; A2 9F 00
	jsr $8126.w		; 20 26 81
	rts		; 60

	ora $5FE1.w,Y		; 19 E1 5F
	sbc ($A5.b,X)		; E1 A5
	sbc ($EB.b,X)		; E1 EB
	sbc ($31.b,X)		; E1 31
.ACCU 8
.INDEX 8
	sep #$77		; E2 77
.ACCU 8
.INDEX 8
	sep #$BD		; E2 BD
	sep #$03		; E2 03
	sbc $49.b,S		; E3 49
	sbc $8F.b,S		; E3 8F
	sbc $D5.b,S		; E3 D5
	sbc $1B.b,S		; E3 1B
	cpx $61.b		; E4 61
	cpx $A7.b		; E4 A7
	cpx $ED.b		; E4 ED
	cpx $33.b		; E4 33
	sbc $79.b		; E5 79
	sbc $BF.b		; E5 BF
	sbc $C2.b		; E5 C2
	bmi -83.b		; 30 AD
	bit $1C.b		; 24 1C
	asl A		; 0A
	tax		; AA
	jmp ($A97D.w,X)		; 7C 7D A9
	sta $A9.b,S		; 83 A9
	sty $A9.b		; 84 A9
	lda #$A9.b		; A9 A9
	rts		; 60

	ldy #$00.b		; A0 00
	brk $AD.b		; 00 AD
	cpx #$1E.b		; E0 1E
	cmp #$06.b		; C9 06
	brk $D0.b		; 00 D0
	ora $A0.b,S		; 03 A0
	cpx #$00.b		; E0 00
	sty $0A16.w		; 8C 16 0A
	lda $0A14.w		; AD 14 0A
	inc A		; 1A
	inc A		; 1A
	and #$FF.b		; 29 FF
	ora ($8D.b,X)		; 01 8D
	trb $0A.b		; 14 0A
	cmp #$04.b		; C9 04
	ora ($D0.b,X)		; 01 D0
	ora $9C.b,S		; 03 9C
	bit $1C.b		; 24 1C
	rts		; 60

	lda $0A14.w		; AD 14 0A
	inc A		; 1A
	inc A		; 1A
	and #$FF.b		; 29 FF
	ora ($8D.b,X)		; 01 8D
	trb $0A.b		; 14 0A
	bne   3.b		; D0 03
	stz $1C24.w		; 9C 24 1C
	rts		; 60

.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	ldy $1EE6.w		; AC E6 1E
	lda $1EE3.w		; AD E3 1E
	lda #$0F.b		; A9 0F
	sta $1EC3.w,Y		; 99 C3 1E
	ldy $1EE8.w		; AC E8 1E
	lda $1EE5.w		; AD E5 1E
	lda #$01.b		; A9 01
	sta $1EC3.w,Y		; 99 C3 1E
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $21.b,X		; B5 21
	sta $00.b		; 85 00
	lda $25.b,X		; B5 25
	sta $02.b		; 85 02
	ldx #$1000.w		; A2 00 10
	ldy #$0018.w		; A0 18 00
	lda $00.b,X		; B5 00
	beq  10.b		; F0 0A
	txa		; 8A
	clc		; 18
	adc #$0080.w		; 69 80 00
	tax		; AA
	dey		; 88
	bne -13.b		; D0 F3
	rts		; 60

	phx		; DA
	ldy #$0040.w		; A0 40 00
	lda #$0000.w		; A9 00 00
	sta $00.b,X		; 95 00
	inx		; E8
	inx		; E8
	dey		; 88
	bne  -7.b		; D0 F9
	plx		; FA
	lda #$0050.w		; A9 50 00
	sta $00.b,X		; 95 00
	stz $02.b,X		; 74 02
	lda #$3600.w		; A9 00 36
	sta $0A.b,X		; 95 0A
	lda $1C0B.w		; AD 0B 1C
	and #$000F.w		; 29 0F 00
	asl A		; 0A
	asl A		; 0A
	tay		; A8
	lda $AA28.w,Y		; B9 28 AA
	clc		; 18
	adc $00.b		; 65 00
	sta $21.b,X		; 95 21
	lda $AA2A.w,Y		; B9 2A AA
	clc		; 18
	adc $02.b		; 65 02
	sta $25.b,X		; 95 25
	rts		; 60

	pea $D4FF.w		; F4 FF D4
	sbc $D0FFF8.l,X		; FF F8 FF D0
	sbc $E0FFF8.l,X		; FF F8 FF E0
	sbc $D8FFFC.l,X		; FF FC FF D8
	sbc $E40000.l,X		; FF 00 00 E4
	sbc $E00004.l,X		; FF 04 00 E0
	sbc $D80008.l,X		; FF 08 00 D8
	sbc $E4000C.l,X		; FF 0C 00 E4
	sbc $D40000.l,X		; FF 00 00 D4
	sbc $D0FFFC.l,X		; FF FC FF D0
	sbc $E0FFFC.l,X		; FF FC FF E0
	sbc $D8FFF8.l,X		; FF F8 FF D8
	sbc $E4FFF8.l,X		; FF F8 FF E4
	sbc $E0000C.l,X		; FF 0C 00 E0
	sbc $D80008.l,X		; FF 08 00 D8
	sbc $E40004.l,X		; FF 04 00 E4
	sbc $0000A0.l,X		; FF A0 00 00
	lda $56.b,X		; B5 56
	bpl   3.b		; 10 03
	ldy #$0010.w		; A0 10 00
	sty $00.b		; 84 00
	lda $78.b,X		; B5 78
	and #$001F.w		; 29 1F 00
	cmp $00.b		; C5 00
	bne  18.b		; D0 12
	jsr $A9D5.w		; 20 D5 A9
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $1C0B.w		; AD 0B 1C
	and #$03.b		; 29 03
	tax		; AA
	lda $AA90.w,X		; BD 90 AA
	sta $78.b		; 85 78
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

	ora [$08.b]		; 07 08
	ora #$C20A.w		; 09 0A C2
	bmi -94.b		; 30 A2
	brk $10.b		; 00 10
	ldy #$0018.w		; A0 18 00
	lda $00.b,X		; B5 00
	beq  10.b		; F0 0A
	txa		; 8A
	clc		; 18
	adc #$0080.w		; 69 80 00
	tax		; AA
	dey		; 88
	bne -13.b		; D0 F3
	rts		; 60

	phx		; DA
	ldy #$0040.w		; A0 40 00
	lda #$0000.w		; A9 00 00
	sta $00.b,X		; 95 00
	inx		; E8
	inx		; E8
	dey		; 88
	bne  -7.b		; D0 F9
	plx		; FA
	lda #$0052.w		; A9 52 00
	sta $00.b,X		; 95 00
	stz $02.b,X		; 74 02
	lda #$3600.w		; A9 00 36
	sta $0A.b,X		; 95 0A
	lda #$0013.w		; A9 13 00
	sta $21.b,X		; 95 21
	lda #$FFC0.w		; A9 C0 FF
	sta $25.b,X		; 95 25
	jsr $AAD3.w		; 20 D3 AA
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $1E14.w		; AD 14 1E
	and #$00FF.w		; 29 FF 00
	cmp #$0001.w		; C9 01 00
	bne   8.b		; D0 08
	lda $1D00.w		; AD 00 1D
	and #$00FF.w		; 29 FF 00
	bra   6.b		; 80 06
	lda $1D03.w		; AD 03 1D
	and #$00FF.w		; 29 FF 00
	cmp #$0005.w		; C9 05 00
	bne  14.b		; D0 0E
	ldx #$AB02.w		; A2 02 AB
	ldy #$0660.w		; A0 60 06
	lda #$001F.w		; A9 1F 00
	phb		; 8B
	mvn $9F,$00		; 54 00 9F
	plb		; AB
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $18.b		; 84 18
	sbc $5E007F.l,X		; FF 7F 00 5E
	sbc $1F61.w,X		; FD 61 1F
	jmp ($7C1F.w,X)		; 7C 1F 7C
	ora $20187C.l,X		; 1F 7C 18 20
	asl A		; 0A
	ora #$19D0.w		; 09 D0 19
	stx $32.b,Y		; 96 32
	jmp $63FF4B.l		; 5C 4B FF 63
	sbc $88A67F.l,X		; FF 7F A6 88
	lda $02.b,X		; B5 02
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	tay		; A8
	lda $AB33.w,Y		; B9 33 AB
	sta $00.b		; 85 00
	jmp ($0000.w)		; 6C 00 00
	and $55AB.w,X		; 3D AB 55
	plb		; AB
	stz $AB.b,X		; 74 AB
	tda		; 7B
	plb		; AB
	stx $AB.b,Y		; 96 AB
	ldy #$0000.w		; A0 00 00
	jsr $8B81.w		; 20 81 8B
	inc $02.b,X		; F6 02
	lda #$0010.w		; A9 10 00
	sta $72.b,X		; 95 72
	lda #$0100.w		; A9 00 01
	sta $32.b,X		; 95 32
	lda #$0100.w		; A9 00 01
	sta $30.b,X		; 95 30
	rts		; 60

	lda $25.b,X		; B5 25
	bmi  26.b		; 30 1A
	cmp #$004C.w		; C9 4C 00
	bcc  21.b		; 90 15
	lda #$0054.w		; A9 54 00
	sta $25.b,X		; 95 25
	ldy #$0003.w		; A0 03 00
	jsr $8B81.w		; 20 81 8B
	inc $02.b,X		; F6 02
	jsr $8BD5.w		; 20 D5 8B
	lda #$003C.w		; A9 3C 00
	sta $78.b,X		; 95 78
	rts		; 60

	dec $78.b,X		; D6 78
	bne   2.b		; D0 02
	inc $02.b,X		; F6 02
	rts		; 60

	jsr $ABA1.w		; 20 A1 AB
	lda $21.b,X		; B5 21
	cmp #$006B.w		; C9 6B 00
	bcc  16.b		; 90 10
	ldy #$0003.w		; A0 03 00
	jsr $8B81.w		; 20 81 8B
	inc $02.b,X		; F6 02
	jsr $8BD5.w		; 20 D5 8B
	lda #$003C.w		; A9 3C 00
	sta $78.b,X		; 95 78
	rts		; 60

	dec $78.b,X		; D6 78
	bne   6.b		; D0 06
	lda #$FFFF.w		; A9 FF FF
	sta $1C04.w		; 8D 04 1C
	rts		; 60

	lda $25.b,X		; B5 25
	cmp #$0054.w		; C9 54 00
	bcs   1.b		; B0 01
	rts		; 60

	lda #$0054.w		; A9 54 00
	sta $25.b,X		; 95 25
	lda $78.b,X		; B5 78
	bne  27.b		; D0 1B
	ldy #$0006.w		; A0 06 00
	jsr $8B81.w		; 20 81 8B
	lda #$0080.w		; A9 80 00
	sta $30.b,X		; 95 30
	lda #$FF80.w		; A9 80 FF
	sta $32.b,X		; 95 32
	lda #$0010.w		; A9 10 00
	sta $72.b,X		; 95 72
	lda #$0006.w		; A9 06 00
	sta $78.b,X		; 95 78
	rts		; 60

	dec $78.b,X		; D6 78
	stz $32.b,X		; 74 32
	stz $72.b,X		; 74 72
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	txa		; 8A
	and #$0380.w		; 29 80 03
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	tay		; A8
.ACCU 8
	sep #$20		; E2 20
	lda #$01.b		; A9 01
	sta $1EC3.w,Y		; 99 C3 1E
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	txa		; 8A
	and #$0380.w		; 29 80 03
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	tay		; A8
	lda $1EC3.w,Y		; B9 C3 1E
	and #$00FF.w		; 29 FF 00
	cmp #$0001.w		; C9 01 00
	beq   7.b		; F0 07
	ldy #$0000.w		; A0 00 00
	jsr $8B81.w		; 20 81 8B
	rts		; 60

	ldy #$0012.w		; A0 12 00
	jsr $8B81.w		; 20 81 8B
	rts		; 60

	php		; 08
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	sta $09.b,X		; 95 09
	plp		; 28
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $30.b,X		; B5 30
	beq  16.b		; F0 10
	bmi   8.b		; 30 08
	lda $7A.b,X		; B5 7A
	cmp $21.b,X		; D5 21
	bcc  32.b		; 90 20
	bra   6.b		; 80 06
	lda $21.b,X		; B5 21
	cmp $7A.b,X		; D5 7A
	bcc  24.b		; 90 18
	lda $32.b,X		; B5 32
	beq  16.b		; F0 10
	bmi   8.b		; 30 08
	lda $7C.b,X		; B5 7C
	cmp $25.b,X		; D5 25
	bcc  12.b		; 90 0C
	bra   6.b		; 80 06
	lda $25.b,X		; B5 25
	cmp $7C.b,X		; D5 7C
	bcc   4.b		; 90 04
	lda #$0000.w		; A9 00 00
	rts		; 60

	jsr $8BD5.w		; 20 D5 8B
	lda #$FFFF.w		; A9 FF FF
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda $5A.b,X		; B5 5A
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $7E.b,X		; 75 7E
	tay		; A8
	lda $AC7E.w,Y		; B9 7E AC
	sta $30.b,X		; 95 30
	lda $AC80.w,Y		; B9 80 AC
	sta $32.b,X		; 95 32
	lda $AC82.w,Y		; B9 82 AC
	sta $7A.b,X		; 95 7A
	lda $AC84.w,Y		; B9 84 AC
	sta $7C.b,X		; 95 7C
	lda $7E.b,X		; B5 7E
	clc		; 18
	adc #$0008.w		; 69 08 00
	sta $7E.b,X		; 95 7E
	lda #$0003.w		; A9 03 00
	sta $02.b,X		; 95 02
	rts		; 60

	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	lda [$00.b]		; A7 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $A70000.l,X		; FF 00 00 A7
	brk $00.b		; 00 00
	sbc $380000.l,X		; FF 00 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $A70000.l,X		; FF 00 00 A7
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $58.b		; 00 58
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $A70000.l,X		; FF 00 00 A7
	brk $00.b		; 00 00
	sbc $700000.l,X		; FF 00 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $A70000.l,X		; FF 00 00 A7
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $A70000.l,X		; FF 00 00 A7
	brk $00.b		; 00 00
	sbc $A80000.l,X		; FF 00 00 A8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $A70000.l,X		; FF 00 00 A7
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $C8.b		; 00 C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $A70000.l,X		; FF 00 00 A7
	brk $00.b		; 00 00
	sbc $E00000.l,X		; FF 00 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $7F0000.l,X		; FF 00 00 7F
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $7F0000.l,X		; FF 00 00 7F
	brk $00.b		; 00 00
	sbc $540000.l,X		; FF 00 00 54
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $7F0000.l,X		; FF 00 00 7F
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $AC.b		; 00 AC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $7F0000.l,X		; FF 00 00 7F
	brk $00.b		; 00 00
	sbc $C40000.l,X		; FF 00 00 C4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $570000.l,X		; FF 00 00 57
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $74.b		; 00 74
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $570000.l,X		; FF 00 00 57
	brk $00.b		; 00 00
	sbc $8C0000.l,X		; FF 00 00 8C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $520000.l,X		; FF 00 00 52
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $C2.b		; 00 C2
	bmi -75.b		; 30 B5
	phy		; 5A
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $7E.b,X		; 75 7E
	tay		; A8
	lda $AD9F.w,Y		; B9 9F AD
	sta $30.b,X		; 95 30
	lda $ADA1.w,Y		; B9 A1 AD
	sta $32.b,X		; 95 32
	lda $ADA3.w,Y		; B9 A3 AD
	sta $7A.b,X		; 95 7A
	lda $ADA5.w,Y		; B9 A5 AD
	sta $7C.b,X		; 95 7C
	lda $7E.b,X		; B5 7E
	sec		; 38
	sbc #$0008.w		; E9 08 00
	sta $7E.b,X		; 95 7E
	lda #$000B.w		; A9 0B 00
	sta $02.b,X		; 95 02
	rts		; 60

	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	cmp $0000.w		; CD 00 00
	sbc $1C0000.l,X		; FF 00 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $CD.b		; 00 CD
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $CD.b		; 00 CD
	brk $00.b		; 00 00
	sbc $540000.l,X		; FF 00 00 54
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $CD.b		; 00 CD
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $74.b		; 00 74
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $CD.b		; 00 CD
	brk $00.b		; 00 00
	sbc $8C0000.l,X		; FF 00 00 8C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $CD.b		; 00 CD
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $AC.b		; 00 AC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $CD.b		; 00 CD
	brk $00.b		; 00 00
	sbc $C40000.l,X		; FF 00 00 C4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $CD.b		; 00 CD
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $E4.b		; 00 E4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $A6.b		; 00 A6
	brk $00.b		; 00 00
	sbc $2C0000.l,X		; FF 00 00 2C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $A6.b		; 00 A6
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $64.b		; 00 64
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $A6.b		; 00 A6
	brk $00.b		; 00 00
	sbc $9C0000.l,X		; FF 00 00 9C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $A6.b		; 00 A6
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $D4.b		; 00 D4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $7E.b		; 00 7E
	brk $00.b		; 00 00
	sbc $480000.l,X		; FF 00 00 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $7E.b		; 00 7E
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $B8.b		; 00 B8
	brk $00.b		; 00 00
	brk $C2.b		; 00 C2
	bmi -118.b		; 30 8A
	and #$0380.w		; 29 80 03
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	tay		; A8
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	lda $1EC2.w,Y		; B9 C2 1E
	inc A		; 1A
	sta $1EC2.w,Y		; 99 C2 1E
	sta $00.b		; 85 00
	stz $01.b		; 64 01
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldx $88.b		; A6 88
	tya		; 98
	clc		; 18
	adc $00.b		; 65 00
	tay		; A8
	lda $A8ED.w,Y		; B9 ED A8
	and #$00FF.w		; 29 FF 00
	sta $5A.b,X		; 95 5A
	asl A		; 0A
	asl A		; 0A
	tay		; A8
	lda $AEC1.w,Y		; B9 C1 AE
	sta $7A.b,X		; 95 7A
	cmp $21.b,X		; D5 21
	bcc   6.b		; 90 06
	lda #$0100.w		; A9 00 01
	sta $30.b,X		; 95 30
	rts		; 60

	lda #$FF00.w		; A9 00 FF
	sta $30.b,X		; 95 30
	rts		; 60

	trb $CE00.w		; 1C 00 CE
	brk $3C.b		; 00 3C
	brk $CE.b		; 00 CE
	brk $54.b		; 00 54
	brk $CE.b		; 00 CE
	brk $74.b		; 00 74
	brk $CE.b		; 00 CE
	brk $8C.b		; 00 8C
	brk $CE.b		; 00 CE
	brk $AC.b		; 00 AC
	brk $CE.b		; 00 CE
	brk $C4.b		; 00 C4
	brk $CE.b		; 00 CE
	brk $E4.b		; 00 E4
	brk $CE.b		; 00 CE
	brk $2C.b		; 00 2C
	brk $A6.b		; 00 A6
	brk $64.b		; 00 64
	brk $A6.b		; 00 A6
	brk $9C.b		; 00 9C
	brk $A6.b		; 00 A6
	brk $D4.b		; 00 D4
	brk $A6.b		; 00 A6
	brk $48.b		; 00 48
	brk $7E.b		; 00 7E
	brk $B8.b		; 00 B8
	brk $7E.b		; 00 7E
	brk $80.b		; 00 80
	brk $56.b		; 00 56
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	lda #$0008.w		; A9 08 00
	sta $00.b		; 85 00
	stz $02.b		; 64 02
	ldx #$1000.w		; A2 00 10
	lda $5A.b,X		; B5 5A
	and #$00FF.w		; 29 FF 00
	asl A		; 0A
	asl A		; 0A
	tay		; A8
	lda $AEC1.w,Y		; B9 C1 AE
	sta $21.b,X		; 95 21
	lda $AEC3.w,Y		; B9 C3 AE
	sta $25.b,X		; 95 25
	lda $1EEA.w		; AD EA 1E
	beq  22.b		; F0 16
	lda $02.b		; A5 02
	cmp $1EE6.w		; CD E6 1E
	beq   5.b		; F0 05
	cmp $1EE8.w		; CD E8 1E
	bne  10.b		; D0 0A
	lda $AF58.w,Y		; B9 58 AF
	sta $21.b,X		; 95 21
	lda $AF5A.w,Y		; B9 5A AF
	sta $25.b,X		; 95 25
	txa		; 8A
	clc		; 18
	adc #$0080.w		; 69 80 00
	tax		; AA
	lda $02.b		; A5 02
	clc		; 18
	adc #$0004.w		; 69 04 00
	sta $02.b		; 85 02
	dec $00.b		; C6 00
	bne -63.b		; D0 C1
	rts		; 60

	jsr $A600.w		; 20 00 A6
	brk $38.b		; 00 38
	brk $A6.b		; 00 A6
	brk $58.b		; 00 58
	brk $A6.b		; 00 A6
	brk $70.b		; 00 70
	brk $A6.b		; 00 A6
	brk $90.b		; 00 90
	brk $A6.b		; 00 A6
	brk $A8.b		; 00 A8
	brk $A6.b		; 00 A6
	brk $C8.b		; 00 C8
	brk $A6.b		; 00 A6
	brk $E0.b		; 00 E0
	brk $A6.b		; 00 A6
	brk $3C.b		; 00 3C
	brk $7E.b		; 00 7E
	brk $54.b		; 00 54
	brk $7E.b		; 00 7E
	brk $AC.b		; 00 AC
	brk $7E.b		; 00 7E
	brk $C4.b		; 00 C4
	brk $7E.b		; 00 7E
	brk $74.b		; 00 74
	brk $56.b		; 00 56
	brk $8C.b		; 00 8C
	brk $56.b		; 00 56
	brk $80.b		; 00 80
	brk $56.b		; 00 56
	brk $03.b		; 00 03
	wai		; CB
	bit $34.b		; 24 34
	jmp $FF28.w		; 4C 28 FF
	phd		; 0B
	cop $0C.b		; 02 0C
	and [$16.b],Y		; 37 16
	sbc $071345.l,X		; FF 45 13 07
	bpl  44.b		; 10 2C
	clc		; 18
	sbc $1D1DFD.l,X		; FF FD 1D 1D
	wai		; CB
	rol $FF42.w		; 2E 42 FF
	inc A		; 1A
	bit $08.b		; 24 08
	and [$08.b]		; 27 08
	asl $FF.b,X		; 16 FF
	tsb $0113.w		; 0C 13 01
	tsa		; 3B
	and #$FF2C.w		; 29 2C FF
	jsr ($8088.w,X)		; FC 88 80
	wai		; CB
	adc $5D.b		; 65 5D
	and $42.b,S		; 23 42
	rol A		; 2A
	sec		; 38
	sbc $06A3A2.l,X		; FF A2 A3 06
	bit $3406.w		; 2C 06 34
	ora ($15.b,S),Y		; 13 15
	cop $FF.b		; 02 FF
	jsr $0210.w		; 20 10 02
	clc		; 18
	sbc $D304FD.l,X		; FF FD 04 D3
	ldx #$D3A3.w		; A2 A3 D3
	sbc $160A46.l,X		; FF 46 0A 16
	cop $29.b		; 02 29
	ora $FFD3.w,Y		; 19 D3 FF
	ora ($00.b,X)		; 01 00
	ora ($10.b,X)		; 01 10
	tsb $0A19.w		; 0C 19 0A
	trb $18.b		; 14 18
	sbc $CB6FFC.l,X		; FF FC 6F CB
	eor [$86.b],Y		; 57 86
	sei		; 78
	wai		; CB
	.db $42, $09		; 42 09
	inc A		; 1A
	sbc $3E2E0C.l,X		; FF 0C 2E 3E
	ora ($10.b,S),Y		; 13 10
	ora $D216.w,Y		; 19 16 D2
	sbc $1F10FD.l,X		; FF FD 10 1F
	asl $1A.b,X		; 16 1A
	ldx #$2DA3.w		; A2 A3 2D
	sbc $2E0D24.l,X		; FF 24 0D 2E
	eor $A8.b		; 45 A8
	lda #$100C.w		; A9 0C 10
	ldx $38FF.w		; AE FF 38
	cop $02.b		; 02 02
	trb $05.b		; 14 05
	and $03.b,S		; 23 03
	ora $FCFF.w,Y		; 19 FF FC
	asl $072E.w,X		; 1E 2E 07
	eor $AF.b		; 45 AF
	bit $11.b,X		; 34 11
	and $FF.b,X		; 35 FF
	bit $42.b		; 24 42
	rol $CB.b		; 26 CB
	ora ($06.b),Y		; 11 06
	and [$FF.b]		; 27 FF
	lda #$2E02.w		; A9 02 2E
	.db $42, $06		; 42 06
	and [$FF.b]		; 27 FF
	sbc $2D13.w,X		; FD 13 2D
	ora [$08.b],Y		; 17 08
	ora $2E.b,X		; 15 2E
	ora ($FF.b,S),Y		; 13 FF
	ora ($10.b,X)		; 01 10
	tsb $0C19.w		; 0C 19 0C
	and [$03.b],Y		; 37 03
	asl $FF.b,X		; 16 FF
	ora ($2C.b,X)		; 01 2C
	ora $02.b,X		; 15 02
	clc		; 18
	sbc $2E01FC.l,X		; FF FC 01 2E
	bpl  22.b		; 10 16
	.db $42, $09		; 42 09
	inc A		; 1A
	sbc $34CB40.l,X		; FF 40 CB 34
	bpl   2.b		; 10 02
	sbc $1509C2.l,X		; FF C2 09 15
	cop $06.b		; 02 06
	and [$18.b]		; 27 18
	sbc $CB4AFD.l,X		; FF FD 4A CB
	.db $42, $00		; 42 00
	sta [$8F.b],Y		; 97 8F
	ora $FF.b,X		; 15 FF
	ldx #$42A3.w		; A2 A3 42
	trb $20.b		; 14 20
	rol $3815.w		; 2E 15 38
	sbc $2C0222.l,X		; FF 22 02 2C
	php		; 08
	ora $2329.w		; 0D 29 23
	rol $FCFF.w		; 2E FF FC
	asl A		; 0A
	asl A		; 0A
	ora $100745.l,X		; 1F 45 07 10
	and [$FF.b]		; 27 FF
	rep #$09		; C2 09
	and [$2A.b]		; 27 2A
	ora $02.b,X		; 15 02
	bit $FDFF.w		; 2C FF FD
	cmp [$19.b]		; C7 19
	ldx #$15A3.w		; A2 A3 15
	and [$47.b]		; 27 47
	sbc $08102C.l,X		; FF 2C 10 08
	tsb $0A2D.w		; 0C 2D 0A
	tsb $13.b		; 04 13
	sbc $190802.l,X		; FF 02 08 19
	eor $0D.b		; 45 0D
	sbc $1401FC.l,X		; FF FC 01 14
	trb $2810.w		; 1C 10 28
	sbc $342924.l,X		; FF 24 29 34
	ora [$35.b]		; 07 35
	ora $02.b,X		; 15 02
	cmp ($FF.b),Y		; D1 FF
	sbc $2A0A.w,X		; FD 0A 2A
	and $1B.b,S		; 23 1B
	trb $12.b		; 14 12
	ora $0CFF.w,Y		; 19 FF 0C
	rol A		; 2A
	rol $0D45.w		; 2E 45 0D
	bit $38FF.w		; 2C FF 38
	rol $3447.w		; 2E 47 34
	ora ($FF.b,S),Y		; 13 FF
	jsr ($CB5E.w,X)		; FC 5E CB
	adc [$CB.b],Y		; 77 CB
	adc ($CB.b),Y		; 71 CB
	ror $2706.w,X		; 7E 06 27
	sbc $2DA3A2.l,X		; FF A2 A3 2D
	sbc $054703.l,X		; FF 03 47 05
	ora $15.b,S		; 03 15
	rol $FF13.w		; 2E 13 FF
	plx		; FA
	inc $16C8.w,X		; FE C8 16
	asl $2C.b		; 06 2C
	bit $13.b,X		; 34 13
	sbc $133413.l,X		; FF 13 34 13
	cop $13.b		; 02 13
	ora [$16.b]		; 07 16
	sbc $050C05.l,X		; FF 05 0C 05
	ora [$26.b]		; 07 26
	cmp ($FF.b),Y		; D1 FF
	sbc $7A55.w,X		; FD 55 7A
	asl $B6.b,X		; 16 B6
	ora ($29.b,S),Y		; 13 29
	asl $15.b		; 06 15
	sbc $221B05.l,X		; FF 05 1B 22
	phd		; 0B
	ora $0613FF.l,X		; 1F FF 13 06
	tsa		; 3B
	rol $0C1A.w		; 2E 1A 0C
	ora $02.b,X		; 15 02
	rti		; 40

	sbc $1AAAFC.l,X		; FF FC AA 1A
	lda $16.b		; A5 16
	sbc $1513B6.l,X		; FF B6 13 15
	cop $19.b		; 02 19
	rol $FF.b		; 26 FF
	bit $2E22.w,X		; 3C 22 2E
	ora $0B.b,X		; 15 0B
	cop $6F.b		; 02 6F
	wai		; CB
	bcc  -1.b		; 90 FF
	sbc $1001.w,X		; FD 01 10
	tsb $B719.w		; 0C 19 B7
	inc A		; 1A
	sbc $270DA5.l,X		; FF A5 0D 27
	sbc $120724.l,X		; FF 24 07 12
	php		; 08
	ora $FF2C.w		; 0D 2C FF
	jsr ($1AA5.w,X)		; FC A5 1A
	asl $20.b		; 06 20
	ora $28.b,X		; 15 28
	and $14FF.w		; 2D FF 14
	ora $0C.b		; 05 0C
	ora ($0C.b,S),Y		; 13 0C
	ora $FF2C03.l,X		; 1F 03 2C FF
	lsr $03.b		; 46 03
	tsb $0326.w		; 0C 26 03
	sbc $1A1AFD.l,X		; FF FD 1A 1A
	bit $00.b,X		; 34 00
	ora ($2E.b,X)		; 01 2E
	ora $06FF28.l,X		; 1F 28 FF 06
	rol $0438.w		; 2E 38 04
	ora $1539.w		; 0D 39 15
	cop $FF.b		; 02 FF
	asl $3803.w,X		; 1E 03 38
	cop $02.b		; 02 02
	rol $FF.b		; 26 FF
	jsr ($8088.w,X)		; FC 88 80
	wai		; CB
	adc $5D.b		; 65 5D
	and $FF.b,S		; 23 FF
	ldx #$26A3.w		; A2 A3 26
	plp		; 28
	sbc $2C140A.l,X		; FF 0A 14 2C
	and $A819.w,X		; 3D 19 A8
	lda #$FF2D.w		; A9 2D FF
	sbc $4224.w,X		; FD 24 42
	ora $01.b,X		; 15 01
	brk $A2.b		; 00 A2
	lda $38.b,S		; A3 38
	sbc $2D141B.l,X		; FF 1B 14 2D
	ora ($08.b)		; 12 08
	and #$2619.w		; 29 19 26
	sbc $3E0242.l,X		; FF 42 02 3E
	and [$03.b],Y		; 37 03
	eor #$FCFF.w		; 49 FF FC
	ora $07.b,X		; 15 07
	and ($0C.b,X)		; 21 0C
	ora $1F.b,X		; 15 1F
	ora $FF1442.l,X		; 1F 42 14 FF
	ldx #$03A3.w		; A2 A3 03
	eor [$2C.b]		; 47 2C
	rol A		; 2A
	ora ($35.b),Y		; 11 35
	ora $FF.b,S		; 03 FF
	bit $FF26.w		; 2C 26 FF
	sbc $D203.w,X		; FD 03 D2
	ora ($10.b,X)		; 01 10
	tsb $FF1A.w		; 0C 1A FF
	ora $07.b,X		; 15 07
	and ($0C.b,X)		; 21 0C
	rol $1535.w,X		; 3E 35 15
	cop $26.b		; 02 26
	sbc $1509C2.l,X		; FF C2 09 15
	cop $2E.b		; 02 2E
	.db $42, $06		; 42 06
	and [$FF.b]		; 27 FF
	jsr ($011F.w,X)		; FC 1F 01
	bit $00.b,X		; 34 00
	cop $09.b		; 02 09
	ora $02.b,X		; 15 02
	bit $1FFF.w		; 2C FF 1F
	.db $42, $B4		; 42 B4
	eor #$080F.w		; 49 0F 08
	rol $FF35.w,X		; 3E 35 FF
	ora $02.b,X		; 15 02
	asl $0C.b		; 06 0C
	and [$FF.b]		; 27 FF
	sbc $0303.w,X		; FD 03 03
	rol $2300.w		; 2E 00 23
	ora $FF.b,S		; 03 FF
	rol $0336.w,X		; 3E 36 03
	eor #$AF2E.w		; 49 2E AF
	tsb $29.b		; 04 29
	bit $13FF.w		; 2C FF 13
	asl $3B.b		; 06 3B
	rol $150C.w		; 2E 0C 15
	cop $45.b		; 02 45
	clc		; 18
	sbc $1501FC.l,X		; FF FC 01 15
	bpl  20.b		; 10 14
	sbc $2904AF.l,X		; FF AF 04 29
	ora $2E.b,X		; 15 2E
	ora ($FF.b,S),Y		; 13 FF
	asl A		; 0A
	ora $04.b,S		; 03 04
	cop $45.b		; 02 45
	ora $FDFF.w		; 0D FF FD
	bit $0810.w		; 2C 10 08
	tsb $4523.w		; 0C 23 45
	ora $ABFF.w		; 0D FF AB
	ora $BFAF.w,Y		; 19 AF BF
	and [$0C.b]		; 27 0C
	cop $FF.b		; 02 FF
	lda $072D02.l		; AF 02 2D 07
	bpl   2.b		; 10 02
	tsb $0D1F.w		; 0C 1F 0D
	sbc $1505FC.l,X		; FF FC 05 15
	rol $2DA5.w,X		; 3E A5 2D
	sbc $122401.l,X		; FF 01 24 12
	and #$1923.w		; 29 23 19
	lsr $03.b		; 46 03
	tsb $21FF.w		; 0C FF 21
	and $020C06.l,X		; 3F 06 0C 02
	bit $FDFF.w		; 2C FF FD
	cmp $2E16.w,X		; DD 16 2E
	ora $0615.w,Y		; 19 15 06
	eor $1A.b		; 45 1A
	sbc $471102.l,X		; FF 02 11 47
	rol $05FF.w		; 2E FF 05
	ora ($12.b),Y		; 11 12
	cop $13.b		; 02 13
	and #$182C.w		; 29 2C 18
	sbc $370CFC.l,X		; FF FC 0C 37
	ora $3E.b,S		; 03 3E
	ora [$02.b]		; 07 02
	bit $13.b,X		; 34 13
	sbc $101501.l,X		; FF 01 15 10
	asl $B6.b,X		; 16 B6
	ora ($29.b,S),Y		; 13 29
	trb $1A.b		; 14 1A
	sbc $022305.l,X		; FF 05 23 02
	ora $FF2E0E.l,X		; 1F 0E 2E FF
	sbc $0A0A.w,X		; FD 0A 0A
	ora $100745.l,X		; 1F 45 07 10
	rol $FF42.w		; 2E 42 FF
	sec		; 38
	bit $06.b,X		; 34 06
	plp		; 28
	phd		; 0B
	asl $0215.w		; 0E 15 02
	eor $FF.b		; 45 FF
	php		; 08
	rol A		; 2A
	rol $15.b		; 26 15
	sbc $0924FC.l,X		; FF FC 24 09
	lsr $FF.b		; 46 FF
	tsb $0215.w		; 0C 15 02
	rol $03.b		; 26 03
	asl $FF.b,X		; 16 FF
	ora [$2D.b]		; 07 2D
	ora ($09.b)		; 12 09
	ora ($18.b,S),Y		; 13 18
	sbc $0242FD.l,X		; FF FD 42 02
	rol $0337.w,X		; 3E 37 03
	eor #$FF26.w		; 49 26 FF
	tax		; AA
	and $1020.w		; 2D 20 10
	and [$00.b]		; 27 00
	ora $FF3A.w		; 0D 3A FF
	ora #$110C.w		; 09 0C 11
	and $03.b,X		; 35 03
	asl $27.b		; 06 27
	sbc $2A0AFC.l,X		; FF FC 0A 2A
	eor ($B4.b,X)		; 41 B4
	trb $2C.b		; 14 2C
	and $FF19.w,X		; 3D 19 FF
	lda $182602.l		; AF 02 26 18
	brk $23.b		; 00 23
	ora ($2B.b),Y		; 11 2B
	rol $01FF.w		; 2E FF 01
	bpl  12.b		; 10 0C
	sec		; 38
	bit $423D.w		; 2C 3D 42
	ora #$FF46.w		; 09 46 FF
	sbc $292C.w,X		; FD 2C 29
	cop $09.b		; 02 09
	lsr $FF.b		; 46 FF
	ora ($10.b,X)		; 01 10
	tsb $2C1A.w		; 0C 1A 2C
	and $FF23.w,X		; 3D 23 FF
	asl $18.b		; 06 18
	ora $130415.l		; 0F 15 04 13
	cop $29.b		; 02 29
	rol $FF.b		; 26 FF
	jsr ($CB71.w,X)		; FC 71 CB
	ror $1219.w,X		; 7E 19 12
	and $FF16.w,Y		; 39 16 FF
	sta [$8F.b],Y		; 97 8F
	ora $88.b,X		; 15 88
	bra -53.b		; 80 CB
	adc $5D.b		; 65 5D
	asl $FF.b,X		; 16 FF
	rep #$09		; C2 09
	and #$092C.w		; 29 2C 09
	ora $02.b,X		; 15 02
	bit $FDFF.w		; 2C FF FD
	ora $2E.b,X		; 15 2E
	eor $0D.b		; 45 0D
	bit $13.b,X		; 34 13
	wai		; CB
	sbc $0602AF.l,X		; FF AF 02 06
	bpl  45.b		; 10 2D
	jsr $0613.w		; 20 13 06
	and [$FF.b]		; 27 FF
	cop $34.b		; 02 34
	ora ($26.b,S),Y		; 13 26
	clc		; 18
	sbc $2E01FC.l,X		; FF FC 01 2E
	bpl  22.b		; 10 16
	.db $42, $09		; 42 09
	inc A		; 1A
	sbc $103440.l,X		; FF 40 34 10
	cop $FF.b		; 02 FF
	ora $021509.l,X		; 1F 09 15 02
	asl $27.b		; 06 27
	clc		; 18
	sbc $2E15FD.l,X		; FF FD 15 2E
	eor $01.b		; 45 01
	bpl  12.b		; 10 0C
	.db $42, $09		; 42 09
	sbc $24CB0F.l,X		; FF 0F CB 24
	bit $13.b,X		; 34 13
	sbc $165771.l,X		; FF 71 57 16
	ora $29.b,X		; 15 29
	bit $FF09.w		; 2C 09 FF
	jsr ($1001.w,X)		; FC 01 10
	tsb $2706.w		; 0C 06 27
	tyx		; BB
	tsb $2345.w		; 0C 45 23
	sbc $0602AF.l,X		; FF AF 02 06
	bpl  45.b		; 10 2D
	sbc $48151F.l,X		; FF 1F 15 48
	trb $34.b		; 14 34
	ora ($18.b,S),Y		; 13 18
	sbc $2E03FD.l,X		; FF FD 03 2E
	brk $6F.b		; 00 6F
	wai		; CB
	bcc  26.b		; 90 1A
	sbc $083C0D.l,X		; FF 0D 3C 08
	phd		; 0B
	rol $030A.w		; 2E 0A 03
	asl $FF.b,X		; 16 FF
	ora $29.b,X		; 15 29
	trb $05.b		; 14 05
	and $03.b,S		; 23 03
	bit $FCFF.w		; 2C FF FC
	sta $64CB79.l,X		; 9F 79 CB 64
	ora ($15.b,X)		; 01 15
	bpl  22.b		; 10 16
	sbc $344814.l,X		; FF 14 48 34
	ora [$28.b]		; 07 28
	ora $B7FF.w,Y		; 19 FF B7
	jsr $130E.w		; 20 0E 13
	ora ($3B.b,X)		; 01 3B
	and #$FF2C.w		; 29 2C FF
	sbc $2715.w,X		; FD 15 27
	eor [$2C.b]		; 47 2C
	bpl   8.b		; 10 08
	tsb $FF1A.w		; 0C 1A FF
.ACCU 8
	sep #$2D		; E2 2D
	asl A		; 0A
	tsb $10.b		; 04 10
	ldy $FF.b,X		; B4 FF
	ora $20.b		; 05 20
	asl $1F0C.w		; 0E 0C 1F
	tsb $0337.w		; 0C 37 03
	sbc $03AFFC.l,X		; FF FC AF 03
	ora $FF1604.l,X		; 1F 04 16 FF
	lsr $03.b		; 46 03
	tsb $0F13.w		; 0C 13 0F
	rol $1615.w		; 2E 15 16
	sbc $121105.l,X		; FF 05 11 12
	cop $13.b		; 02 13
	and #$19.b		; 29 19
	cmp ($FF.b,S),Y		; D3 FF
	sbc $0926.w,X		; FD 26 09
	cop $15.b		; 02 15
	asl A		; 0A
	ora $1C.b,S		; 03 1C
	rol $FF1A.w		; 2E 1A FF
	inc A		; 1A
	rol $2E42.w		; 2E 42 2E
	and $16FF.w		; 2D FF 16
	eor #$27.b		; 49 27
	asl $0D1F.w		; 0E 1F 0D
	bit $FCFF.w		; 2C FF FC
	ora ($15.b,X)		; 01 15
	bpl  22.b		; 10 16
	ldx $13.b,Y		; B6 13
	eor [$FF.b]		; 47 FF
	lda [$AC.b]		; A7 AC
	asl $27.b		; 06 27
	tsx		; BA
	tyx		; BB
	ldx $BFAF.w,Y		; BE AF BF
	sbc $77CB5E.l,X		; FF 5E CB 77
	wai		; CB
	adc $2690CB.l		; 6F CB 90 26
	sbc $421FFD.l,X		; FF FD 1F 42
	ora $160719.l		; 0F 19 07 16
	sbc $152715.l,X		; FF 15 27 15
	cop $1E.b		; 02 1E
	ora $38.b,S		; 03 38
	sbc $400202.l,X		; FF 02 02 40
	sbc $0B24FC.l,X		; FF FC 24 0B
	tsb $1308.w		; 0C 08 13
	ldy $23.b,X		; B4 23
	ora ($15.b),Y		; 11 15
	sbc $9E868F.l,X		; FF 8F 86 9E
	rts		; 60

	wai		; CB
	asl $A2.b,X		; 16 A2
	lda $1A.b,S		; A3 1A
	sbc $0E061F.l,X		; FF 1F 06 0E
	ora $FF.b,X		; 15 FF
	sbc $1615.w,X		; FD 15 16
	cop $34.b		; 02 34
	ora ($2E.b,S),Y		; 13 2E
	ora $A3A2.w,Y		; 19 A2 A3
	sbc $19B71A.l,X		; FF 1A B7 19
	tsx		; BA
	tyx		; BB
	ldx $CB6F.w,Y		; BE 6F CB
	bcc  -1.b		; 90 FF
	tsb $0206.w		; 0C 06 02
	ora $02.b,X		; 15 02
	eor $0C.b		; 45 0C
	and [$FF.b],Y		; 37 FF
	jsr ($1001.w,X)		; FC 01 10
	tsb $1119.w		; 0C 19 11
	asl $27.b		; 06 27
	inc A		; 1A
	sbc $3E2015.l,X		; FF 15 20 3E
	and $15.b,X		; 35 15
	cop $26.b		; 02 26
	sbc $868FFD.l,X		; FF FD 8F 86
	stz $CB60.w,X		; 9E 60 CB
	ora $19FF.w,Y		; 19 FF 19
	ora $28.b,S		; 03 28
	and [$08.b],Y		; 37 08
	inc A		; 1A
	ora $1645.w		; 0D 45 16
	sbc $0E2E49.l,X		; FF 49 2E 0E
	ora [$3F.b]		; 07 3F
	jsr $FF26.w		; 20 26 FF
	jsr ($1F10.w,X)		; FC 10 1F
	asl $1A.b,X		; 16 1A
	sbc $1F0615.l,X		; FF 15 06 1F
	lsr $03.b		; 46 03
	tsb $FF45.w		; 0C 45 FF
	lda $231903.l		; AF 03 19 23
	cop $02.b		; 02 02
	rol $15.b		; 26 15
	sbc $030FFD.l,X		; FF FD 0F 03
	clc		; 18
	sbc $140202.l,X		; FF 02 02 14
	bit $08.b,X		; 34 08
	rol $1516.w		; 2E 16 15
	and #$FF.b		; 29 FF
	asl $23.b		; 06 23
	tsb $152A.w		; 0C 2A 15
	cop $2C.b		; 02 2C
	clc		; 18
	sbc $0B03FC.l,X		; FF FC 03 0B
	and $3511.w,Y		; 39 11 35
	rol $10FF.w		; 2E FF 10
	ora $A21A16.l,X		; 1F 16 1A A2
	lda $FF.b,S		; A3 FF
	asl $2C.b		; 06 2C
	bit $13.b,X		; 34 13
	rol $FF.b		; 26 FF
	sbc $4224.w,X		; FD 24 42
	bit $42.b		; 24 42
	sbc $103440.l,X		; FF 40 34 10
	cop $42.b		; 02 42
	rol A		; 2A
	asl $23.b,X		; 16 23
	sbc $0E2724.l,X		; FF 24 27 0E
	ora $02.b,X		; 15 02
	rol $0642.w		; 2E 42 06
	and [$FF.b]		; 27 FF
	jsr ($0611.w,X)		; FC 11 06
	and [$02.b]		; 27 02
	bit $4C.b,X		; 34 4C
	cop $FF.b		; 02 FF
	lda $130E2C.l		; AF 2C 0E 13
	and $27.b,S		; 23 27
	ora $26.b,S		; 03 26
	sbc $714811.l,X		; FF 11 48 71
	wai		; CB
	ror $FDFF.w,X		; 7E FF FD
	rol $2E36.w,X		; 3E 36 2E
	pha		; 48
	ora $2E.b,S		; 03 2E
	lsr $03.b		; 46 03
	sbc $460213.l,X		; FF 13 02 46
	asl $FF.b,X		; 16 FF
	ora ($02.b,X)		; 01 02
	ora ($0C.b,S),Y		; 13 0C
	ora ($01.b,S),Y		; 13 01
	tsa		; 3B
	and #$2C.b		; 29 2C
	sbc $799FFC.l,X		; FF FC 9F 79
	wai		; CB
	stz $01.b		; 64 01
	ora $10.b,X		; 15 10
	asl $1A.b,X		; 16 1A
	sbc $02292C.l,X		; FF 2C 29 02
	ora #$46.b		; 09 46
	sbc $0E10B6.l,X		; FF B6 10 0E
	ora ($23.b,S),Y		; 13 23
	and [$03.b]		; 27 03
	rol $FF.b		; 26 FF
	sbc $19E2.w,X		; FD E2 19
	lda $9FFFBF.l		; AF BF FF 9F
	adc $64CB.w,Y		; 79 CB 64
	asl $B6.b,X		; 16 B6
	ora ($29.b,S),Y		; 13 29
	trb $FF.b		; 14 FF
	ora $05.b		; 05 05
	and $02.b,S		; 23 02
	eor $0D.b		; 45 0D
	asl $D3.b		; 06 D3
	sbc $0A0AFC.l,X		; FF FC 0A 0A
	ora $100745.l,X		; 1F 45 07 10
	and [$FF.b]		; 27 FF
	asl $15.b		; 06 15
	and [$3F.b]		; 27 3F
	sbc $0BB6A4.l,X		; FF A4 B6 0B
	asl $2313.w		; 0E 13 23
	and [$03.b]		; 27 03
	rol $FF.b		; 26 FF
	sbc $102C.w,X		; FD 2C 10
	php		; 08
	tsb $B616.w		; 0C 16 B6
.ACCU 16
	rep #$2D		; C2 2D
	sbc $234602.l,X		; FF 02 46 23
	ora $15.b,S		; 03 15
	rol $FF13.w		; 2E 13 FF
	jsr $1E19.w		; 20 19 1E
	lsr $0C.b		; 46 0C
	and [$3F.b]		; 27 3F
	clc		; 18
	sbc $1401FC.l,X		; FF FC 01 14
	tas		; 1B
	trb $28.b		; 14 28
	.db $42, $FF		; 42 FF
	ora ($34.b,S),Y		; 13 34
	ora ($02.b,S),Y		; 13 02
	ora ($07.b,S),Y		; 13 07
	asl $FF.b,X		; 16 FF
	bit $34.b		; 24 34
	ora ($24.b,S),Y		; 13 24
	and #$FF40.w		; 29 40 FF
	sbc $1201.w,X		; FD 01 12
	php		; 08
	ora $28.b,X		; 15 28
	ora $2939.w		; 0D 39 29
	trb $FF.b		; 14 FF
	rol A		; 2A
	cop $0E.b		; 02 0E
	cop $15.b		; 02 15
	ldx $C2.b,Y		; B6 C2
	sec		; 38
	sbc $150745.l,X		; FF 45 07 15
	cop $40.b		; 02 40
	sbc $A3A2FC.l,X		; FF FC A2 A3
	inc A		; 1A
	ora [$1B.b]		; 07 1B
	rol $0119.w		; 2E 19 01
	and #$88FF.w		; 29 FF 88
	bra -53.b		; 80 CB
	adc $5D.b		; 65 5D
	eor $07.b		; 45 07
	ora $1EFF28.l,X		; 1F 28 FF 1E
	bit $1E.b,X		; 34 1E
	bit $1E.b,X		; 34 1E
	sbc $1615FD.l,X		; FF FD 15 16
	ora [$46.b]		; 07 46
	bit $13.b,X		; 34 13
	and #$2619.w		; 29 19 26
	sbc $0C102C.l,X		; FF 2C 10 0C
	ora $072C.w,Y		; 19 2C 07
	lda $38.b,S		; A3 38
	sbc $011605.l,X		; FF 05 16 01
	cop $42.b		; 02 42
	bit $FCFF.w		; 2C FF FC
	bcs  26.b		; B0 1A
	adc $8657CB.l		; 6F CB 57 86
	sei		; 78
	wai		; CB
	sec		; 38
	sbc $130201.l,X		; FF 01 02 13
	clc		; 18
	sbc $2913B6.l,X		; FF B6 13 29
	asl $0C.b		; 06 0C
	and [$D3.b]		; 27 D3
	sbc $CB0FFD.l,X		; FF FD 0F CB
	and $CB.b		; 25 CB
	asl A		; 0A
	trb $1A.b		; 14 1A
	sbc $A9A805.l,X		; FF 05 A8 A9
	asl $B6.b,X		; 16 B6
	bit $13.b,X		; 34 13
	asl $27.b		; 06 27
	sbc $4C2E0C.l,X		; FF 0C 2E 4C
	cop $0D.b		; 02 0D
	and #$2619.w		; 29 19 26
	sbc $1001FC.l,X		; FF FC 01 10
	tsb $FF19.w		; 0C 19 FF
	adc [$9A.b],Y		; 77 9A
	bvs -53.b		; 70 CB
	adc ($82.b,X)		; 61 82
	wai		; CB
	ror $FF1A.w,X		; 7E 1A FF
	tas		; 1B
	trb $01.b		; 14 01
	rol $3811.w,X		; 3E 11 38
	ora $2C.b,S		; 03 2C
	rol $FF.b		; 26 FF
	sbc $1001.w,X		; FD 01 10
	tsb $0219.w		; 0C 19 02
	asl $3F.b		; 06 3F
	ora ($45.b),Y		; 11 45
	sbc $152E0F.l,X		; FF 0F 2E 15
	and $19.b,S		; 23 19
	inc A		; 1A
	rol $FF07.w,X		; 3E 07 FF
	asl $04.b		; 06 04
	tsb $2413.w		; 0C 13 24
	and #$FF26.w		; 29 26 FF
	jsr ($8F97.w,X)		; FC 97 8F
	ora $71.b,X		; 15 71
	wai		; CB
	ror $FF1A.w,X		; 7E 1A FF
	ldx #$34A3.w		; A2 A3 34
	ora ($60.b,S),Y		; 13 60
	eor ($9F.b)		; 52 9F
	rol $FF35.w,X		; 3E 35 FF
	ora $02.b,X		; 15 02
	bit $1826.w		; 2C 26 18
	sbc $3B3BFD.l,X		; FF FD 3B 3B
	bit $FF.b,X		; 34 FF
	dey		; 88
	bra -53.b		; 80 CB
	adc $5D.b		; 65 5D
	asl $42.b,X		; 16 42
	ora #$FF1A.w		; 09 1A FF
	cop $2C.b		; 02 2C
	rol A		; 2A
	bpl   8.b		; 10 08
	ora $02.b,X		; 15 02
	bit $FCFF.w		; 2C FF FC
	cop $08.b		; 02 08
	and [$15.b]		; 27 15
	rol $2345.w		; 2E 45 23
	sbc $714811.l,X		; FF 11 48 71
	wai		; CB
	ror $1A16.w,X		; 7E 16 1A
	sbc $1509C2.l,X		; FF C2 09 15
	cop $2C.b		; 02 2C
	sbc $16B8FD.l,X		; FF FD B8 16
	ldx $13.b,Y		; B6 13
	bpl  39.b		; 10 27
	ora [$34.b]		; 07 34
	trb $FF.b		; 14 FF
	ldx #$16A3.w		; A2 A3 16
	ora $2A.b,X		; 15 2A
	and #$FF2C.w		; 29 2C FF
	clv		; B8
	inc A		; 1A
	rep #$09		; C2 09
	ora $02.b,X		; 15 02
	ora #$1846.w		; 09 46 18
	sbc $14B1FC.l,X		; FF FC B1 14
	cmp $C4.b,S		; C3 C4
	ora $5EFF.w,Y		; 19 FF 5E
	wai		; CB
	adc [$CB.b],Y		; 77 CB
	dey		; 88
	bra -53.b		; 80 CB
	adc $5D.b		; 65 5D
	sbc $0E10B6.l,X		; FF B6 10 0E
	ora ($23.b,S),Y		; 13 23
	and [$02.b]		; 27 02
	ora $FDFF0D.l,X		; 1F 0D FF FD
	ora ($15.b,X)		; 01 15
	bpl  22.b		; 10 16
	clv		; B8
	ora $3D1B.w,Y		; 19 1B 3D
	and $12FF.w		; 2D FF 12
	asl $0D.b		; 06 0D
	asl A		; 0A
	trb $38.b		; 14 38
	sbc $290745.l,X		; FF 45 07 29
	eor $0C.b		; 45 0C
	and [$03.b],Y		; 37 03
	asl $D3.b		; 06 D3
	sbc $19B1FC.l,X		; FF FC B1 19
	lda $45.b,X		; B5 45
	ora ($15.b,X)		; 01 15
	bpl  45.b		; 10 2D
	sbc $0C0B24.l,X		; FF 24 0B 0C
	php		; 08
	bpl   5.b		; 10 05
	tsb $FF13.w		; 0C 13 FF
	ora ($3B.b,X)		; 01 3B
	ora $03370C.l,X		; 1F 0C 37 03
	sbc $102CFD.l,X		; FF FD 2C 10
	php		; 08
	tsb $C91A.w		; 0C 1A C9
	ora $FF1945.l,X		; 1F 45 19 FF
	ora ($02.b,X)		; 01 02
	ora ($1E.b,S),Y		; 13 1E
	lsr $01.b		; 46 01
	ora $15FF08.l,X		; 1F 08 FF 15
	php		; 08
	ora ($26.b,S),Y		; 13 26
	ldx $C2.b,Y		; B6 C2
	eor $0D.b		; 45 0D
	bit $FCFF.w		; 2C FF FC
	ora ($15.b,X)		; 01 15
	bpl  22.b		; 10 16
	ldx $13.b,Y		; B6 13
	eor [$FF.b]		; 47 FF
	ora ($10.b,X)		; 01 10
	tsb $3E19.w		; 0C 19 3E
	.db $42, $02		; 42 02
	clc		; 18
	sbc $1509C2.l,X		; FF C2 09 15
	cop $06.b		; 02 06
	and [$FF.b]		; 27 FF
	sbc $341C.w,X		; FD 1C 34
	brk $0F.b		; 00 0F
	ora $2612.w,Y		; 19 12 26
	ora [$15.b]		; 07 15
	sbc $6C785E.l,X		; FF 5E 78 6C
	sec		; 38
	cop $12.b		; 02 12
	ora $12FF45.l,X		; 1F 45 FF 12
	mvp $06,$08		; 44 08 06
	ora $D3.b,X		; 15 D3
	sbc $1001FC.l,X		; FF FC 01 10
	tsb $3440.w		; 0C 40 34
	bpl   2.b		; 10 02
	ldy $B6.b		; A4 B6
	sbc $19290D.l,X		; FF 0D 29 19
	brk $2C.b		; 00 2C
	and #$0902.w		; 29 02 09
	lsr $FF.b		; 46 FF
	ldx $10.b,Y		; B6 10
	asl $2313.w		; 0E 13 23
	and [$03.b]		; 27 03
	bit $FDFF.w		; 2C FF FD
	lda #$2838.w		; A9 38 28
	cop $34.b		; 02 34
	ora ($13.b,S),Y		; 13 13
	cop $02.b		; 02 02
	sbc $150619.l,X		; FF 19 06 15
	brk $01.b		; 00 01
	bpl  12.b		; 10 0C
	ora $B7FF.w,Y		; 19 FF B7
	inc A		; 1A
	ora ($12.b,X)		; 01 12
	cop $2C.b		; 02 2C
	rol $FF.b		; 26 FF
	jsr ($38B8.w,X)		; FC B8 38
	ldx #$16A3.w		; A2 A3 16
	ora $34.b,X		; 15 34
	bpl  39.b		; 10 27
	sbc $02292C.l,X		; FF 2C 29 02
	tas		; 1B
	trb $10.b		; 14 10
	ora ($2D.b),Y		; 11 2D
	sbc $152E20.l,X		; FF 20 2E 15
	ora $0C.b		; 05 0C
	ora $07.b		; 05 07
	rol $FF.b		; 26 FF
	sbc $2A0F.w,X		; FD 0F 2A
	asl $1A.b,X		; 16 1A
	ora $B8FF3F.l,X		; 1F 3F FF B8
	and $0510.w		; 2D 10 05
	asl $0829.w		; 0E 29 08
	and [$02.b]		; 27 02
	sbc $082612.l,X		; FF 12 26 08
	ora $02.b,X		; 15 02
	trb $18.b		; 14 18
	sbc $16B8FC.l,X		; FF FC B8 16
	pha		; 48
	pha		; 48
	bit $13.b,X		; 34 13
	and #$182C.w		; 29 2C 18
	sbc $152E0F.l,X		; FF 0F 2E 15
	rol $353E.w		; 2E 3E 35
	asl A		; 0A
	ora $FFB9.w,Y		; 19 B9 FF
	bit $34.b		; 24 34
	ora ($09.b,S),Y		; 13 09
	ora $02.b,X		; 15 02
	bit $FF26.w		; 2C 26 FF
	sbc $4811.w,X		; FD 11 48
	adc ($CB.b),Y		; 71 CB
	ror $0F0A.w,X		; 7E 0A 0F
	sbc $344848.l,X		; FF 48 48 34
	ora ($29.b,S),Y		; 13 29
	rol $03.b		; 26 03
	.db $42, $18		; 42 18
	sbc $1C3813.l,X		; FF 13 38 1C
	and #$1304.w		; 29 04 13
	and #$FF26.w		; 29 26 FF
	jsr ($3B16.w,X)		; FC 16 3B
	and #$2715.w		; 29 15 27
	sbc $191F02.l,X		; FF 02 1F 19
	ora $11.b,S		; 03 11
	rol $FF.b		; 26 FF
	dey		; 88
	bra -53.b		; 80 CB
	adc $5D.b		; 65 5D
	sbc $4811FD.l,X		; FF FD 11 48
	adc ($CB.b),Y		; 71 CB
	ror $0F0A.w,X		; 7E 0A 0F
	sbc $361114.l,X		; FF 14 11 36
	ora $45.b,S		; 03 45
	sbc $153B16.l,X		; FF 16 3B 15
	cop $26.b		; 02 26
	ora $16.b,S		; 03 16
	clc		; 18
	sbc $0B03FC.l,X		; FF FC 03 0B
	and $4216.w,Y		; 39 16 42
	ora #$FF1A.w		; 09 1A FF
	rep #$09		; C2 09
	bpl   8.b		; 10 08
	ora $02.b,X		; 15 02
	bit $C2FF.w		; 2C FF C2
	ora #$2710.w		; 09 10 27
	inc A		; 1A
	rol $FF18.w,X		; 3E 18 FF
	sbc $CB1F.w,X		; FD 1F CB
	bpl  21.b		; 10 15
	ora $FF0702.l,X		; 1F 02 07 FF
	cop $34.b		; 02 34
	ora ($35.b),Y		; 11 35
	bit $13.b,X		; 34 13
	sbc $242A24.l,X		; FF 24 2A 24
	rol A		; 2A
	sbc $CB9FFC.l,X		; FF FC 9F CB
	sbc $3B0613.l,X		; FF 13 06 3B
	rol $0C15.w		; 2E 15 0C
	eor $FF.b		; 45 FF
	lda $261903.l		; AF 03 19 26
	sbc $062CFD.l,X		; FF FD 2C 06
	bit $13.b,X		; 34 13
	ora $5DFF0D.l,X		; 1F 0D FF 5D
	adc ($CB.b,S),Y		; 73 CB
	adc $967A.w,Y		; 79 7A 96
	bra  -1.b		; 80 FF
	asl A		; 0A
	rol A		; 2A
	and $01.b,S		; 23 01
	ora $10.b,X		; 15 10
	ora $2210.w,Y		; 19 10 22
	sbc $0211FC.l,X		; FF FC 11 02
	phd		; 0B
	cop $06.b		; 02 06
	and [$34.b]		; 27 34
	ora ($FF.b,S),Y		; 13 FF
	ora $22.b,X		; 15 22
	ora $02.b,X		; 15 02
	eor $26.b		; 45 26
	sbc $022612.l,X		; FF 12 26 02
	rol $0642.w		; 2E 42 06
	and [$FF.b]		; 27 FF
	sbc $2C06.w,X		; FD 06 2C
	cop $02.b		; 02 02
	bit $0118.w		; 2C 18 01
	ora $10.b,X		; 15 10
	sbc $16A3A2.l,X		; FF A2 A3 16
	ora $29.b,X		; 15 29
	asl $1A.b,X		; 16 1A
	ora $1AFF42.l,X		; 1F 42 FF 1A
	bit $02.b		; 24 02
	rol $353E.w		; 2E 3E 35
	ora $08.b,X		; 15 08
	ora ($FF.b,S),Y		; 13 FF
	jsr ($07BC.w,X)		; FC BC 07
	ora #$472A.w		; 09 2A 47
	cop $02.b		; 02 02
	bit $13.b,X		; 34 13
	sbc $3E2E23.l,X		; FF 23 2E 3E
	and $15.b,X		; 35 15
	cop $2C.b		; 02 2C
	sbc $1509C2.l,X		; FF C2 09 15
	cop $2E.b		; 02 2E
	.db $42, $06		; 42 06
	and [$FF.b]		; 27 FF
	sbc $2E0A.w,X		; FD 0A 2E
	ora $BD.b,X		; 15 BD
	phd		; 0B
	ora $C0.b,X		; 15 C0
	ora $0BFF45.l,X		; 1F 45 FF 0B
	rol $0C06.w		; 2E 06 0C
	ora ($02.b,S),Y		; 13 02
	and #$0619.w		; 29 19 06
	sbc $34021F.l,X		; FF 1F 02 34
	bpl  21.b		; 10 15
	sbc $341DFC.l,X		; FF FC 1D 34
	ora $2ECB.w,X		; 1D CB 2E
	.db $42, $FF		; 42 FF
	ora ($10.b,X)		; 01 10
	tsb $B619.w		; 0C 19 B6
	ora ($18.b),Y		; 11 18
	sbc $032526.l,X		; FF 26 25 03
	rol $25.b		; 26 25
	ora $FF.b,S		; 03 FF
	jsr ($1D04.w,X)		; FC 04 1D
	bit $FF.b,X		; 34 FF
	ora ($10.b,X)		; 01 10
	tsb $1334.w		; 0C 34 13
	sbc $4502A9.l,X		; FF A9 02 45
	tsb $FF37.w		; 0C 37 FF
	jsr ($190A.w,X)		; FC 0A 19
	ora ($37.b),Y		; 11 37
	ora $0C.b,S		; 03 0C
	eor $FF.b		; 45 FF
	ora ($39.b)		; 12 39
	and $FF.b,S		; 23 FF
	ldx $12.b,Y		; B6 12
	bit $07.b,X		; 34 07
	and $15.b,X		; 35 15
	cop $2C.b		; 02 2C
	clc		; 18
	sbc $9B7AFC.l,X		; FF FC 7A 9B
	adc $1019.w,Y		; 79 19 10
	asl $02.b		; 06 02
	lda $42FF02.l		; AF 02 FF 42
	bit $10.b,X		; 34 10
	bit $0BFF.w		; 2C FF 0B
	ora $8838.w		; 0D 38 88
	bra -53.b		; 80 CB
	adc $5D.b		; 65 5D
	clc		; 18
	sbc $421FFC.l,X		; FF FC 1F 42
	ora $A2FF42.l,X		; 1F 42 FF A2
	lda $2D.b,S		; A3 2D
	and $3F.b		; 25 3F
	and #$1A16.w		; 29 16 1A
	sbc $0D241A.l,X		; FF 1A 24 0D
	and $2629.w,Y		; 39 29 26
	ora $18.b,S		; 03 18
	sbc $2D07FC.l,X		; FF FC 07 2D
	ora [$02.b],Y		; 17 02
	ora ($10.b,S),Y		; 13 10
	and [$FF.b]		; 27 FF
	rep #$09		; C2 09
	ora ($10.b,S),Y		; 13 10
	asl $23.b		; 06 23
	sbc $152A0C.l,X		; FF 0C 2A 15
	cop $2C.b		; 02 2C
	clc		; 18
	sbc $421FFC.l,X		; FF FC 1F 42
	phd		; 0B
	cop $3C.b		; 02 3C
	rol $1535.w,X		; 3E 35 15
	cop $FF.b		; 02 FF
	asl A		; 0A
	rol $1415.w		; 2E 15 14
	asl A		; 0A
	eor $FF.b		; 45 FF
	cmp ($A6.b,X)		; C1 A6
	tsb $2713.w		; 0C 13 27
	rol A		; 2A
	ora $02.b,X		; 15 02
	bit $FCFF.w		; 2C FF FC
	ldx #$1AA3.w		; A2 A3 1A
	ora $103423.l,X		; 1F 23 34 10
	bit $24FF.w		; 2C FF 24
	bit $4C.b,X		; 34 4C
	bit $0C10.w		; 2C 10 0C
	cop $38.b		; 02 38
	cop $FF.b		; 02 FF
	ora ($14.b)		; 12 14
	ora $021527.l,X		; 1F 27 15 02
	rol $18.b		; 26 18
	sbc $031CFC.l,X		; FF FC 1C 03
	bit $FF.b,X		; 34 FF
	cop $02.b		; 02 02
	ora ($0E.b,X)		; 01 0E
	asl $06.b		; 06 06
	asl $FF13.w		; 0E 13 FF
	and $27.b,S		; 23 27
	bit $10.b,X		; 34 10
	bit $FCFF.w		; 2C FF FC
	ora $3F1F3F.l,X		; 1F 3F 1F 3F
	ora $0745.w,Y		; 19 45 07
	asl $15.b		; 06 15
	sbc $16A3A2.l,X		; FF A2 A3 16
	cop $34.b		; 02 34
	bvc  -1.b		; 50 FF
	ora ($06.b),Y		; 11 06
	mvp $10,$02		; 44 02 10
	bit $FF18.w		; 2C 18 FF
	jsr ($D201.w,X)		; FC 01 D2
	ora $16.b,X		; 15 16
	rol $0F.b		; 26 0F
	ora $0506.w,Y		; 19 06 05
	sbc $A238B8.l,X		; FF B8 38 A2
	lda $24.b,S		; A3 24
	bit $11.b,X		; 34 11
	and $FF.b,X		; 35 FF
	trb $2E1F.w		; 1C 1F 2E
	ora $FF1803.l		; 0F 03 18 FF
	jsr ($0242.w,X)		; FC 42 02
	rol $0337.w,X		; 3E 37 03
	eor #$0B03.w		; 49 03 0B
	and $10FF.w,Y		; 39 FF 10
	rol $490A.w		; 2E 0A 49
	sbc $130745.l,X		; FF 45 07 13
	and #$262C.w		; 29 2C 26
	sbc $223CFC.l,X		; FF FC 3C 22
	rol $FF18.w		; 2E 18 FF
	ora ($48.b),Y		; 11 48
	adc ($CB.b),Y		; 71 CB
	ror $24FF.w,X		; 7E FF 24
	ora #$0C46.w		; 09 46 0C
	ora ($35.b),Y		; 11 35
	bit $10.b,X		; 34 10
	cmp ($FF.b,S),Y		; D3 FF
	jsr ($2720.w,X)		; FC 20 27
	cop $19.b		; 02 19
	lda $FF1ABF.l		; AF BF 1A FF
	asl $1906.w,X		; 1E 06 19
	lda $1A14BF.l		; AF BF 14 1A
	sbc $01141B.l,X		; FF 1B 14 01
	rol $3811.w,X		; 3E 11 38
	ora $2C.b,S		; 03 2C
	clc		; 18
	sbc $19B8FC.l,X		; FF FC B8 19
	rol $0337.w,X		; 3E 37 03
	clc		; 18
	ora ($19.b)		; 12 19
	sbc $091AB7.l,X		; FF B7 1A 09
	cop $0B.b		; 02 0B
	rol $0238.w		; 2E 38 02
	sbc $103442.l,X		; FF 42 34 10
	rol $03.b		; 26 03
	clc		; 18
	sbc $2E20FC.l,X		; FF FC 20 2E
	ora $B8.b,X		; 15 B8
	sec		; 38
	asl A		; 0A
	asl A		; 0A
	ora $A9FF45.l,X		; 1F 45 FF A9
	cop $34.b		; 02 34
	ora ($05.b,S),Y		; 13 05
	and $2C.b,S		; 23 2C
	ora $FF.b,X		; 15 FF
	asl $34.b		; 06 34
	bpl  69.b		; 10 45
	tsb $FF37.w		; 0C 37 FF
	jsr ($1201.w,X)		; FC 01 12
	cop $AF.b		; 02 AF
	cop $42.b		; 02 42
	bit $10.b,X		; 34 10
	bit $12FF.w		; 2C FF 12
	and $B619.w,Y		; 39 19 B6
.ACCU 16
	rep #$23		; C2 23
	sbc $472E38.l,X		; FF 38 2E 47
	and [$15.b]		; 27 15
	php		; 08
	bit $11.b,X		; 34 11
	and $FF.b,X		; 35 FF
	jsr ($4807.w,X)		; FC 07 48
	tsb $FF02.w		; 0C 02 FF
	ldx $C2.b,Y		; B6 C2
	.db $42, $34		; 42 34
	bpl  44.b		; 10 2C
	sbc $2E4225.l,X		; FF 25 42 2E
	bpl   2.b		; 10 02
	ora ($07.b,S),Y		; 13 07
	clc		; 18
	sbc $02AFFC.l,X		; FF FC AF 02
	rol $28.b		; 26 28
	sbc $A9A805.l,X		; FF 05 A8 A9
	sec		; 38
	phd		; 0B
	ora [$45.b]		; 07 45
	tsb $FF37.w		; 0C 37 FF
	dey		; 88
	bra -53.b		; 80 CB
	adc $5D.b		; 65 5D
	sbc $3423FC.l,X		; FF FC 23 34
	trb $01.b		; 14 01
	cop $13.b		; 02 13
	and $20FF.w		; 2D FF 20
	ora $02.b,X		; 15 02
	trb $B6.b		; 14 B6
	ora ($15.b,S),Y		; 13 15
	cop $FF.b		; 02 FF
	bit $5E26.w		; 2C 26 5E
	wai		; CB
	adc [$CB.b],Y		; 77 CB
	adc ($CB.b),Y		; 71 CB
	ror $FCFF.w,X		; 7E FF FC
	bit $2E22.w,X		; 3C 22 2E
	ora $0B.b,X		; 15 0B
	cop $FF.b		; 02 FF
	ora ($02.b)		; 12 02
	asl $072E.w,X		; 1E 2E 07
	sbc $110C42.l,X		; FF 42 0C 11
	and $34.b,X		; 35 34
	bpl  -1.b		; 10 FF
	jsr ($0D0B.w,X)		; FC 0B 0D
	sec		; 38
	sta $64CB79.l,X		; 9F 79 CB 64
	clc		; 18
	sbc $AF190A.l,X		; FF 0A 19 AF
	cop $45.b		; 02 45
	cop $2B.b		; 02 2B
	cop $2B.b		; 02 2B
	sbc $16A9A8.l,X		; FF A8 A9 16
	ora $34.b,X		; 15 34
	bpl  44.b		; 10 2C
	sbc $0202FC.l,X		; FF FC 02 02
	lda $344202.l		; AF 02 42 34
	bpl  44.b		; 10 2C
	sbc $02101F.l,X		; FF 1F 10 02
	ora ($06.b)		; 12 06
	sbc $0CC2B6.l,X		; FF B6 C2 0C
	ora ($20.b,S),Y		; 13 20
	bpl   2.b		; 10 02
	bit $FCFF.w		; 2C FF FC
	asl A		; 0A
	rol $0206.w		; 2E 06 02
	ora $02AF.w,Y		; 19 AF 02
	inc A		; 1A
	sbc $A80202.l,X		; FF 02 02 A8
	lda #$1516.w		; A9 16 15
	bit $10.b,X		; 34 10
	bit $05FF.w		; 2C FF 05
	phd		; 0B
	and [$02.b]		; 27 02
	tsb $0815.w		; 0C 15 08
	ora ($35.b),Y		; 11 35
	sbc $2305FC.l,X		; FF FC 05 23
	cop $34.b		; 02 34
	ora [$28.b]		; 07 28
	ldy $2D.b,X		; B4 2D
	sbc $040612.l,X		; FF 12 06 04
	and #$0201.w		; 29 01 02
	ora ($1A.b,S),Y		; 13 1A
	sbc $021502.l,X		; FF 02 15 02
	ora $FF06.w,Y		; 19 06 FF
	jsr ($0323.w,X)		; FC 23 03
	tyx		; BB
	tsb $02AF.w		; 0C AF 02
	ldx $FF2D.w		; AE 2D FF
	tay		; A8
	lda #$100C.w		; A9 0C 10
	and [$FF.b]		; 27 FF
	lsr $03.b		; 46 03
	.db $42, $02		; 42 02
	cmp ($FF.b,S),Y		; D3 FF
	jsr ($3405.w,X)		; FC 05 34
	trb $BB.b		; 14 BB
	tsb $B4FF.w		; 0C FF B4
	cop $2A.b		; 02 2A
	ora $1039.w		; 0D 39 10
	asl $15.b		; 06 15
	cmp ($FF.b,S),Y		; D3 FF
	jsr ($CB5E.w,X)		; FC 5E CB
	adc [$CB.b],Y		; 77 CB
	adc ($CB.b),Y		; 71 CB
	ror $01FF.w,X		; 7E FF 01
	bpl  12.b		; 10 0C
	asl $1F.b,X		; 16 1F
	asl $0E.b		; 06 0E
	ora ($FF.b,S),Y		; 13 FF
	ldx #$1AA3.w		; A2 A3 1A
	bit $0D.b		; 24 0D
	jsr $FF15.w		; 20 15 FF
	jsr ($3423.w,X)		; FC 23 34
	trb $A9.b		; 14 A9
	php		; 08
	ora $34.b,X		; 15 34
	bpl  39.b		; 10 27
	sbc $06101F.l,X		; FF 1F 10 06
	asl $34.b		; 06 34
	ora ($07.b,S),Y		; 13 07
	ora $26.b,X		; 15 26
	sbc $714811.l,X		; FF 11 48 71
	wai		; CB
	ror $FCFF.w,X		; 7E FF FC
	ora ($10.b,X)		; 01 10
	tsb $FF23.w		; 0C 23 FF
	ora $06.b,X		; 15 06
	ora $06.b,X		; 15 06
	bit $29.b		; 24 29
	.db $42, $2B		; 42 2B
	sbc $353EB4.l,X		; FF B4 3E 35
	rep #$09		; C2 09
	ora $02.b,X		; 15 02
	rol $FF.b		; 26 FF
	jsr ($0A0A.w,X)		; FC 0A 0A
	ora $290845.l,X		; 1F 45 08 29
	trb $FF.b		; 14 FF
	ply		; 7A
	txy		; 9B
	adc $1019.w,Y		; 79 19 10
	asl $02.b		; 06 02
	sbc $2D02AF.l,X		; FF AF 02 2D
	bpl  25.b		; 10 19
	tsb $2922.w		; 0C 22 29
	ora $FF.b,X		; 15 FF
	jsr ($020B.w,X)		; FC 0B 02
	bit $B616.w,X		; 3C 16 B6
	ora ($19.b)		; 12 19
	inc A		; 1A
	sbc $281A24.l,X		; FF 24 1A 28
	ldy $19.b,X		; B4 19
	ora ($29.b,X)		; 01 29
	bit $12.b		; 24 12
	sbc $15353E.l,X		; FF 3E 35 15
	cop $14.b		; 02 14
	ora $D1.b,X		; 15 D1
	sbc $CB5EFC.l,X		; FF FC 5E CB
	adc [$CB.b],Y		; 77 CB
	cpy $3511.w		; CC 11 35
	rol $FF19.w		; 2E 19 FF
	rol $0242.w,X		; 3E 42 02
	and $341C.w		; 2D 1C 34
	asl $12.b		; 06 12
	sbc $130E0B.l,X		; FF 0B 0E 13
	jsr $290E.w		; 20 0E 29
	bit $FCFF.w		; 2C FF FC
	and $34.b,S		; 23 34
	trb $07.b		; 14 07
	bpl   4.b		; 10 04
	ora $02.b,X		; 15 02
	trb $FF.b		; 14 FF
	ora ($10.b,X)		; 01 10
	tsb $1A16.w		; 0C 16 1A
	sbc $1513B6.l,X		; FF B6 13 15
	cop $2C.b		; 02 2C
	rol $FF.b		; 26 FF
	jsr ($0D0B.w,X)		; FC 0B 0D
	sec		; 38
	sta $609E86.l		; 8F 86 9E 60
	wai		; CB
	clc		; 18
	sbc $270611.l,X		; FF 11 06 27
	mvp $0B,$26		; 44 26 0B
	and $06FF.w		; 2D FF 06
	rol $103E.w		; 2E 3E 10
	bit $FCFF.w		; 2C FF FC
	ldx #$1AA3.w		; A2 A3 1A
	clv		; B8
	sec		; 38
	and $27.b,S		; 23 27
	bit $13.b,X		; 34 13
	sbc $130205.l,X		; FF 05 02 13
	ora ($3B.b,X)		; 01 3B
	and #$2706.w		; 29 06 27
	sbc $0CA6C1.l,X		; FF C1 A6 0C
	ora ($18.b,S),Y		; 13 18
	sbc $0323FC.l,X		; FF FC 23 03
	tyx		; BB
	tsb $BCFF.w		; 0C FF BC
	ora [$08.b]		; 07 08
	ora $34.b,X		; 15 34
	ora ($06.b,S),Y		; 13 06
	and [$FF.b]		; 27 FF
	ora ($02.b,X)		; 01 02
	ora ($0C.b,S),Y		; 13 0C
	ora ($01.b,S),Y		; 13 01
	tsa		; 3B
	and #$FF2C.w		; 29 2C FF
	jsr ($0A0A.w,X)		; FC 0A 0A
	ora $290845.l,X		; 1F 45 08 29
	trb $FF.b		; 14 FF
	asl $2E.b		; 06 2E
	bpl  46.b		; 10 2E
	asl $1A.b,X		; 16 1A
	sbc $1513B6.l,X		; FF B6 13 15
	cop $2C.b		; 02 2C
	clc		; 18
	sbc $1001FC.l,X		; FF FC 01 10
	tsb $0319.w		; 0C 19 03
	rol $0346.w		; 2E 46 03
	sbc $092E0C.l,X		; FF 0C 2E 09
	cop $19.b		; 02 19
	rol $0B.b		; 26 0B
	asl $FF.b,X		; 16 FF
	ora $46.b		; 05 46
	pld		; 2B
	cop $10.b		; 02 10
	eor $0C.b		; 45 0C
	and [$FF.b],Y		; 37 FF
	jsr ($3424.w,X)		; FC 24 34
	bpl  44.b		; 10 2C
	trb $03.b		; 14 03
	trb $03.b		; 14 03
	sbc $0C1001.l,X		; FF 01 10 0C
	ora $423E.w,Y		; 19 3E 42
	cop $38.b		; 02 38
	sbc $133424.l,X		; FF 24 34 13
	ora [$10.b]		; 07 10
	ora $FF18.w,Y		; 19 18 FF
	jsr ($0924.w,X)		; FC 24 09
	lsr $0C.b		; 46 0C
	ora ($35.b),Y		; 11 35
	bit $10.b,X		; 34 10
	sbc $FF2345.l,X		; FF 45 23 FF
	ldx $34.b,Y		; B6 34
	bpl   6.b		; 10 06
	and [$02.b]		; 27 02
	cop $06.b		; 02 06
	sbc $02AFFC.l,X		; FF FC AF 02
	asl $10.b		; 06 10
	inc A		; 1A
	sbc $06033C.l,X		; FF 3C 03 06
	php		; 08
	eor $0C.b		; 45 0C
	and [$FF.b],Y		; 37 FF
	adc $8657CB.l		; 6F CB 57 86
	sei		; 78
	wai		; CB
	sbc $363EFC.l,X		; FF FC 3E 36
	ora $26.b,S		; 03 26
	php		; 08
	bit $2D03.w,X		; 3C 03 2D
	sbc $0D020E.l,X		; FF 0E 02 0D
	bit $13.b,X		; 34 13
	bit $12.b		; 24 12
	clc		; 18
	sbc $0202FC.l,X		; FF FC 02 02
	ora $2E.b,S		; 03 2E
	lsr $03.b		; 46 03
	asl $FF.b,X		; 16 FF
	ora $34.b,X		; 15 34
	bpl  44.b		; 10 2C
	sbc $26101F.l,X		; FF 1F 10 26
	pld		; 2B
	tsb $1808.w		; 0C 08 18
	sbc $16B8FC.l,X		; FF FC B8 16
	rep #$09		; C2 09
	and #$0326.w		; 29 26 03
	rol $FF35.w,X		; 3E 35 FF
	ldx #$1AA3.w		; A2 A3 1A
	ora $130E06.l,X		; 1F 06 0E 13
	sbc $150905.l,X		; FF 05 09 15
	cop $2C.b		; 02 2C
	sbc $0546FC.l,X		; FF FC 46 05
	cmp ($9F.b,S),Y		; D3 9F
	wai		; CB
	sbc $0C102C.l,X		; FF 2C 10 0C
	and $1F.b,S		; 23 1F
	ora ($1F.b,X)		; 01 1F
	ora ($FF.b,X)		; 01 FF
	ora ($26.b)		; 12 26
	php		; 08
	ora $34.b,X		; 15 34
	bpl  69.b		; 10 45
	tsb $FF37.w		; 0C 37 FF
	jsr ($1401.w,X)		; FC 01 14
	ora ($37.b),Y		; 11 37
	bit $14.b,X		; 34 14
	eor $FF.b		; 45 FF
	rti		; 40

	rol $2E02.w		; 2E 02 2E
	asl $B6.b,X		; 16 B6
	ora ($29.b,S),Y		; 13 29
	bit $38FF.w		; 2C FF 38
	rol $2B47.w		; 2E 47 2B
	bit $14.b,X		; 34 14
	sbc $3424FC.l,X		; FF FC 24 34
	bpl  36.b		; 10 24
	bit $10.b,X		; 34 10
	sbc $452A0A.l,X		; FF 0A 2A 45
	clv		; B8
	and $5E.b,S		; 23 5E
	wai		; CB
	adc [$CB.b],Y		; 77 CB
	sbc $19BFAF.l,X		; FF AF BF 19
	cop $11.b		; 02 11
	cop $2E.b		; 02 2E
	clc		; 18
	sbc $FBFEFC.l,X		; FF FC FE FB
	bit $2007.w,X		; 3C 07 20
	asl $00.b,X		; 16 00
	inc A		; 1A
	cop $4B.b		; 02 4B
	php		; 08
	ora $2015.w,Y		; 19 15 20
	.db $42, $1A		; 42 1A
	sbc $2C0116.l,X		; FF 16 01 2C
	ora $02.b,X		; 15 02
	brk $0B.b		; 00 0B
	ora ($10.b,X)		; 01 10
	ora ($19.b)		; 12 19
	.db $42, $FF		; 42 FF
	jsr ($FBFE.w,X)		; FC FE FB
	bit $2007.w,X		; 3C 07 20
	ora $02AF.w,Y		; 19 AF 02
	ora $1AB7.w,Y		; 19 B7 1A
	ora #$2A38.w		; 09 38 2A
	ora $08.b,X		; 15 08
	sbc $020CBA.l,X		; FF BA 0C 02
	brk $38.b		; 00 38
	rol $2947.w		; 2E 47 29
	ora $FF42.w,Y		; 19 42 FF
	jsr ($FBFE.w,X)		; FC FE FB
	bit $2007.w,X		; 3C 07 20
	ora $3806.w,Y		; 19 06 38
	bit $07.b		; 24 07
	and $0323.w		; 2D 23 03
	cop $11.b		; 02 11
	lsr $FF.b		; 46 FF
	bit $0C10.w		; 2C 10 0C
	asl $20.b,X		; 16 20
	asl $0813.w		; 0E 13 08
	rol A		; 2A
	sbc $FBFEFC.l,X		; FF FC FE FB
	bit $2007.w,X		; 3C 07 20
	asl $00.b,X		; 16 00
	ora ($07.b,X)		; 01 07
	and [$22.b]		; 27 22
	and #$0214.w		; 29 14 02
	ora $FF.b,S		; 03 FF
	asl A		; 0A
	trb $47.b		; 14 47
	inc A		; 1A
	brk $16.b		; 00 16
	ora ($2C.b,X)		; 01 2C
	ora $02.b,X		; 15 02
	sbc $FBFEFC.l,X		; FF FC FE FB
	bit $2007.w,X		; 3C 07 20
	ora $141B.w,Y		; 19 1B 14
	jsr $1F1A.w		; 20 1A 1F
	.db $42, $06		; 42 06
	sec		; 38
	bit $07.b		; 24 07
	and $03FF.w		; 2D FF 03
	tsb $3415.w		; 0C 15 34
	ora ($02.b,S),Y		; 13 02
	ora $02.b,X		; 15 02
	brk $AF.b		; 00 AF
	ora $19.b,S		; 03 19
	.db $42, $FF		; 42 FF
	jsr ($FBFE.w,X)		; FC FE FB
	bit $2E0A.w,X		; 3C 0A 2E
	ora $14.b,X		; 15 14
	asl A		; 0A
	pld		; 2B
	eor $15.b		; 45 15
	cop $13.b		; 02 13
	cop $13.b		; 02 13
	inc A		; 1A
	sbc $150902.l,X		; FF 02 09 15
	cop $00.b		; 02 00
	sec		; 38
	rol $2A47.w		; 2E 47 2A
	ora ($48.b),Y		; 11 48
	adc ($CB.b),Y		; 71 CB
	ror $FCFF.w,X		; 7E FF FC
	inc $3CFB.w,X		; FE FB 3C
	ora $040110.l,X		; 1F 10 01 04
	and #$0714.w		; 29 14 07
	and $1910.w		; 2D 10 19
	tsb $1620.w		; 0C 20 16
	sbc $02130C.l,X		; FF 0C 13 02
	and #$0B00.w		; 29 00 0B
	and [$47.b]		; 27 47
	.db $42, $FF		; 42 FF
	jsr ($71FE.w,X)		; FC FE 71
	wai		; CB
	ror $D4FF.w,X		; 7E FF D4
	cop $34.b		; 02 34
	ora ($37.b),Y		; 11 37
	ora ($38.b,X)		; 01 38
	plp		; 28
	wai		; CB
	sbc $71FEFA.l,X		; FF FA FE 71
	wai		; CB
	ror $D4FF.w,X		; 7E FF D4
	bit $34.b		; 24 34
	jmp $1001.w		; 4C 01 10
	tsb $1334.w		; 0C 34 13
	eor [$A9.b]		; 47 A9
	cop $26.b		; 02 26
	clc		; 18
	sbc $340B00.l,X		; FF 00 0B 34
	ora $A238.w		; 0D 38 A2
	lda $34.b,S		; A3 34
	ora ($06.b,S),Y		; 13 06
	rol $FF3E.w		; 2E 3E FF
	plx		; FA
	jsr ($9FFE.w,X)		; FC FE 9F
	adc $64CB.w,Y		; 79 CB 64
	sbc $0902D4.l,X		; FF D4 02 09
	ora $FF2E0E.l,X		; 1F 0E 2E FF
	brk $3E.b		; 00 3E
	eor #$192E.w		; 49 2E 19
	ldy $16.b,X		; B4 16
	ora $3C.b		; 05 3C
	bit $13.b,X		; 34 13
	cop $13.b		; 02 13
	inc A		; 1A
	sbc $68FEFA.l,X		; FF FA FE 68
	sta $CB8661.l,X		; 9F 61 86 CB
	ror $D4FF.w,X		; 7E FF D4
	asl A		; 0A
	rol $0A15.w		; 2E 15 0A
	trb $3E.b		; 14 3E
	and $A2.b,X		; 35 A2
	lda $1A.b,S		; A3 1A
	sbc $061F00.l,X		; FF 00 1F 06
	asl $2A27.w		; 0E 27 2A
	ora $2C2E0E.l,X		; 1F 0E 2E 2C
	sbc $53FEFA.l,X		; FF FA FE 53
	adc [$67.b],Y		; 77 67
	eor $D4FF.w,X		; 5D FF D4
	eor $7A.b,X		; 55 7A
	bpl  17.b		; 10 11
	trb $AF.b		; 14 AF
	bit $13.b,X		; 34 13
	ldx $34.b,Y		; B6 34
	bpl -83.b		; 10 AD
	and $00FF.w		; 2D FF 00
	cmp [$19.b]		; C7 19
	ldx #$14A3.w		; A2 A3 14
	jsr $2214.w		; 20 14 22
	ora ($24.b,S),Y		; 13 24
	and #$FF26.w		; 29 26 FF
	plx		; FA
	jsr ($71FE.w,X)		; FC FE 71
	wai		; CB
	ror $D4FF.w,X		; 7E FF D4
	ora ($1A.b,X)		; 01 1A
	inc A		; 1A
	inc A		; 1A
	inc A		; 1A
	cmp ($FF.b)		; D2 FF
	plx		; FA
	inc $CB71.w,X		; FE 71 CB
	ror $D4FF.w,X		; 7E FF D4
	ora $18.b		; 05 18
	tsb $0B.b		; 04 0B
	ora $00FFAE.l,X		; 1F AE FF 00
	rol $0337.w,X		; 3E 37 03
	.db $42, $2E		; 42 2E
	ora [$12.b]		; 07 12
	cop $07.b		; 02 07
	ora ($02.b)		; 12 02
	sbc $71FEFA.l,X		; FF FA FE 71
	wai		; CB
	ror $D4FF.w,X		; 7E FF D4
	jsr $152E.w		; 20 2E 15
	sec		; 38
	phd		; 0B
	rol $020E.w		; 2E 0E 02
	ora $2C29.w		; 0D 29 2C
	ora #$FFD2.w		; 09 D2 FF
	plx		; FA
	jsr ($6FFE.w,X)		; FC FE 6F
	wai		; CB
	bcc  -1.b		; 90 FF
	pei ($1F.b)		; D4 1F
	bit $13.b,X		; 34 13
	ora $FF100C.l,X		; 1F 0C 10 FF
	plx		; FA
	inc $CB6F.w,X		; FE 6F CB
	bcc  -1.b		; 90 FF
	pei ($97.b)		; D4 97
	sta $CB7115.l		; 8F 15 71 CB
	ror $0216.w,X		; 7E 16 02
	ora ($1F.b)		; 12 1F
	eor $23.b		; 45 23
	sbc $A3A200.l,X		; FF 00 A2 A3
	inc A		; 1A
	ora $130E06.l,X		; 1F 06 0E 13
	and [$2A.b]		; 27 2A
	ora $02.b,X		; 15 02
	bit $FAFF.w		; 2C FF FA
	inc $868F.w,X		; FE 8F 86
	stz $CB60.w,X		; 9E 60 CB
	sbc $2B24D4.l,X		; FF D4 24 2B
	ora $24.b,S		; 03 24
	pld		; 2B
	ora $FF.b,S		; 03 FF
	plx		; FA
	inc $CB6F.w,X		; FE 6F CB
	eor [$86.b],Y		; 57 86
	sei		; 78
	wai		; CB
	sbc $34AFD4.l,X		; FF D4 AF 34
	ora ($15.b,S),Y		; 13 15
	rol $2413.w		; 2E 13 24
	eor [$2E.b]		; 47 2E
	.db $42, $2C		; 42 2C
	sbc $234500.l,X		; FF 00 45 23
	bpl  31.b		; 10 1F
	asl $1A.b,X		; 16 1A
	cop $02.b		; 02 02
	asl $23.b		; 06 23
	sbc $88FEFA.l,X		; FF FA FE 88
	bra -53.b		; 80 CB
	adc $5D.b		; 65 5D
	sbc $A3A2D4.l,X		; FF D4 A2 A3
	ora $2E.b,X		; 15 2E
	ora ($5E.b,S),Y		; 13 5E
	wai		; CB
	adc [$CB.b],Y		; 77 CB
	cpy $00FF.w		; CC FF 00
	cop $27.b		; 02 27
	cop $26.b		; 02 26
	brk $38.b		; 00 38
	rol $2E47.w		; 2E 47 2E
	ora $07.b,X		; 15 07
	and $FF.b,X		; 35 FF
	plx		; FA
	inc $CB71.w,X		; FE 71 CB
	ror $D4FF.w,X		; 7E FF D4
	clv		; B8
	bpl  17.b		; 10 11
	ora $0325.w,Y		; 19 25 03
	rol $0337.w,X		; 3E 37 03
	bit $13.b,X		; 34 13
	sbc $2E0A00.l,X		; FF 00 0A 2E
	ora $23.b,X		; 15 23
	ora $3442.w,Y		; 19 42 34
	bpl  25.b		; 10 19
	clc		; 18
	sbc $FEFCFA.l,X		; FF FA FC FE
	adc ($CB.b),Y		; 71 CB
	ror $D4FF.w,X		; 7E FF D4
	asl A		; 0A
	wai		; CB
	ora $34.b,X		; 15 34
	bpl  39.b		; 10 27
	ora $10B83F.l,X		; 1F 3F B8 10
	ora ($45.b),Y		; 11 45
	sbc $371100.l,X		; FF 00 11 37
	ora $0E.b,S		; 03 0E
	rol $2E09.w		; 2E 09 2E
	and $0906.w		; 2D 06 09
	ora ($FF.b,S),Y		; 13 FF
	plx		; FA
	inc $CB71.w,X		; FE 71 CB
	ror $D4FF.w,X		; 7E FF D4
	lda $3E0305.l		; AF 05 03 3E
	and $15.b,X		; 35 15
	cop $19.b		; 02 19
	sbc $F9FEFA.l,X		; FF FA FE F9
	ora ($48.b),Y		; 11 48
	adc ($CB.b),Y		; 71 CB
	ror $D4FF.w,X		; 7E FF D4
	ora $CB.b		; 05 CB
	cmp ($FF.b),Y		; D1 FF
	plx		; FA
	jsr ($C096.w,X)		; FC 96 C0
	stx $C0.b,Y		; 96 C0
	sta $C6C0.w,Y		; 99 C0 C6
	cpy #$C0C9.w		; C0 C9 C0
	cpy $CFC0.w		; CC C0 CF
	cpy #$C0D2.w		; C0 D2 C0
	cmp $C0.b,X		; D5 C0
	cld		; D8
	cpy #$C0DB.w		; C0 DB C0
	dec $E1C0.w,X		; DE C0 E1
	cpy #$C0E4.w		; C0 E4 C0
	sbc [$C0.b]		; E7 C0
	nop		; EA
	cpy #$C0ED.w		; C0 ED C0
	beq -64.b		; F0 C0
	sbc ($C0.b,S),Y		; F3 C0
	inc $C0.b,X		; F6 C0
	sbc $FCC0.w,Y		; F9 C0 FC
	cpy #$C102.w		; C0 02 C1
	cop $C1.b		; 02 C1
	cop $C1.b		; 02 C1
	cop $C1.b		; 02 C1
	cop $C1.b		; 02 C1
	cop $C1.b		; 02 C1
	cop $C1.b		; 02 C1
	cop $C1.b		; 02 C1
	cop $C1.b		; 02 C1
	cop $C1.b		; 02 C1
	asl $11C1.w		; 0E C1 11
	cmp ($14.b,X)		; C1 14
	cmp ($17.b,X)		; C1 17
	cmp ($1A.b,X)		; C1 1A
	cmp ($1D.b,X)		; C1 1D
	cmp ($20.b,X)		; C1 20
	cmp ($9F.b,X)		; C1 9F
	cmp ($DE.b,X)		; C1 DE
	cmp ($ED.b,X)		; C1 ED
	cmp ($06.b,X)		; C1 06
	rep #$42		; C2 42
.ACCU 16
.INDEX 16
	rep #$7E		; C2 7E
.ACCU 16
.INDEX 16
	rep #$BA		; C2 BA
.ACCU 16
.INDEX 16
	rep #$F6		; C2 F6
.ACCU 16
.INDEX 16
	rep #$32		; C2 32
	cmp $6E.b,S		; C3 6E
	cmp $AA.b,S		; C3 AA
	cmp $E6.b,S		; C3 E6
	cmp $A2.b,S		; C3 A2
	cpy #$A69F.w		; C0 9F A6
	cpy #$B29F.w		; C0 9F B2
	cpy #$BE9F.w		; C0 9F BE
	cpy #$E29F.w		; C0 9F E2
	cpy $9F.b		; C4 9F
	txa		; 8A
	sta ($C5.b,X)		; 81 C5
	sta $C56E1E.l,X		; 9F 1E 6E C5
	sta $C55B14.l,X		; 9F 14 5B C5
	sta $C55B9E.l,X		; 9F 9E 5B C5
	sta $C56E1E.l,X		; 9F 1E 6E C5
	sta $C58114.l,X		; 9F 14 81 C5
	sta $C5819E.l,X		; 9F 9E 81 C5
	sta $C56E14.l,X		; 9F 14 6E C5
	sta $C1239E.l,X		; 9F 9E 23 C1
	sta $9FC127.l,X		; 9F 27 C1 9F
	pld		; 2B
	cmp ($9F.b,X)		; C1 9F
	and $339FC1.l		; 2F C1 9F 33
	cmp ($9F.b,X)		; C1 9F
	and [$C1.b],Y		; 37 C1
	sta $9FC13B.l,X		; 9F 3B C1 9F
	and $439FC1.l,X		; 3F C1 9F 43
	cmp ($9F.b,X)		; C1 9F
	eor [$C1.b]		; 47 C1
	sta $9FC14B.l,X		; 9F 4B C1 9F
	eor $539FC1.l		; 4F C1 9F 53
	cmp ($9F.b,X)		; C1 9F
	eor [$C1.b],Y		; 57 C1
	sta $9FC15B.l,X		; 9F 5B C1 9F
	eor $639FC1.l,X		; 5F C1 9F 63
	cmp ($9F.b,X)		; C1 9F
	adc [$C1.b]		; 67 C1
	sta $9FC16B.l,X		; 9F 6B C1 9F
	adc $739FC1.l		; 6F C1 9F 73
	cmp ($9F.b,X)		; C1 9F
	adc [$C1.b],Y		; 77 C1
	sta $9FC17B.l,X		; 9F 7B C1 9F
	adc $839FC1.l,X		; 7F C1 9F 83
	cmp ($9F.b,X)		; C1 9F
	sta [$C1.b]		; 87 C1
	sta $9FC18B.l,X		; 9F 8B C1 9F
	sta $939FC1.l		; 8F C1 9F 93
	cmp ($9F.b,X)		; C1 9F
	sta [$C1.b],Y		; 97 C1
	sta $9FC19B.l,X		; 9F 9B C1 9F
	sty $C5.b,X		; 94 C5
	sta $C63894.l,X		; 9F 94 38 C6
	sta $C70C94.l,X		; 9F 94 0C C7
	sta $C79894.l,X		; 9F 94 98 C7
	sta $C88494.l,X		; 9F 94 84 C8
	sta $C93A94.l,X		; 9F 94 3A C9
	sta $CA2694.l,X		; 9F 94 26 CA
	sta $CAEE94.l,X		; 9F 94 EE CA
	sta $CBEC94.l,X		; 9F 94 EC CB
	sta $C60194.l,X		; 9F 94 01 C6
	sta $C6D594.l,X		; 9F 94 D5 C6
	sta $C76D94.l,X		; 9F 94 6D C7
	sta $C85994.l,X		; 9F 94 59 C8
	sta $C8FD94.l,X		; 9F 94 FD C8
	sta $C9F594.l,X		; 9F 94 F5 C9
	sta $CAC994.l,X		; 9F 94 C9 CA
	sta $CBB594.l,X		; 9F 94 B5 CB
	sta $CCA794.l,X		; 9F 94 A7 CC
	sta $C42294.l,X		; 9F 94 22 C4
	sta $C45394.l,X		; 9F 94 53 C4
	sta $C4CF94.l,X		; 9F 94 CF C4
	sta $C4C894.l,X		; 9F 94 C8 C4
	sta $C4A394.l,X		; 9F 94 A3 C4
	sta $C47E94.l,X		; 9F 94 7E C4
	sta $CE9B94.l,X		; 9F 94 9B CE
	sta $CF8C94.l,X		; 9F 94 8C CF
	sta $D02F94.l,X		; 9F 94 2F D0
	sta $D0EA94.l,X		; 9F 94 EA D0
	sta $D1D094.l,X		; 9F 94 D0 D1
	sta $D1BD94.l,X		; 9F 94 BD D1
	sta $D2A394.l,X		; 9F 94 A3 D2
	sta $C1BA94.l,X		; 9F 94 BA C1
	sta $9FC1BE.l,X		; 9F BE C1 9F
	rep #$C1		; C2 C1
	sta $9FC1C6.l,X		; 9F C6 C1 9F
	dex		; CA
	cmp ($9F.b,X)		; C1 9F
	dec $9FC1.w		; CE C1 9F
	cmp ($C1.b)		; D2 C1
	sta $9FC1D6.l,X		; 9F D6 C1 9F
	phx		; DA
	cmp ($9F.b,X)		; C1 9F
	.db $62, $D6, $9F		; 62 D6 9F
	sty $75.b,X		; 94 75
	dec $9F.b,X		; D6 9F
	sty $88.b,X		; 94 88
	dec $9F.b,X		; D6 9F
	sty $9B.b,X		; 94 9B
	dec $9F.b,X		; D6 9F
	sty $AE.b,X		; 94 AE
	dec $9F.b,X		; D6 9F
	sty $C1.b,X		; 94 C1
	dec $9F.b,X		; D6 9F
	sty $D4.b,X		; 94 D4
	dec $9F.b,X		; D6 9F
	sty $E7.b,X		; 94 E7
	dec $9F.b,X		; D6 9F
	sty $FA.b,X		; 94 FA
	dec $9F.b,X		; D6 9F
	sty $E1.b,X		; 94 E1
	cmp ($9F.b,X)		; C1 9F
	ora $9FD7.w		; 0D D7 9F
	ora $14.b,S		; 03 14
	cmp [$9F.b],Y		; D7 9F
	ora $33.b,S		; 03 33
	cmp [$9F.b],Y		; D7 9F
	sta $F6.b		; 85 F6
	cmp ($9F.b,X)		; C1 9F
	plx		; FA
	cmp ($9F.b,X)		; C1 9F
	inc $9FC1.w,X		; FE C1 9F
	jmp $9FD7.w		; 4C D7 9F
	txa		; 8A
	adc $9FD7.w,X		; 7D D7 9F
	txa		; 8A
	stz $9FD7.w		; 9C D7 9F
	bpl -63.b		; 10 C1
	cmp [$9F.b],Y		; D7 9F
	bcc  30.b		; 90 1E
.INDEX 16
	rep #$9F		; C2 9F
	jsl $269FC2.l		; 22 C2 9F 26
.INDEX 16
	rep #$9F		; C2 9F
	rol A		; 2A
.INDEX 16
	rep #$9F		; C2 9F
	rol $9FC2.w		; 2E C2 9F
	and ($C2.b)		; 32 C2
	sta $9FC236.l,X		; 9F 36 C2 9F
	dec A		; 3A
.INDEX 16
	rep #$9F		; C2 9F
	inc $D7.b		; E6 D7
	sta $D80B94.l,X		; 9F 94 0B D8
	sta $D83094.l,X		; 9F 94 30 D8
	sta $D85594.l,X		; 9F 94 55 D8
	sta $D87A0A.l,X		; 9F 0A 7A D8
	sta $D89F4A.l,X		; 9F 4A 9F D8
	sta $D8C494.l,X		; 9F 94 C4 D8
	sta $D7E694.l,X		; 9F 94 E6 D7
	sta $D8300F.l,X		; 9F 0F 30 D8
	sta $C25A4F.l,X		; 9F 4F 5A C2
	sta $9FC25E.l,X		; 9F 5E C2 9F
	.db $62, $C2, $9F		; 62 C2 9F
	ror $C2.b		; 66 C2
	sta $9FC26A.l,X		; 9F 6A C2 9F
	ror $9FC2.w		; 6E C2 9F
	adc ($C2.b)		; 72 C2
	sta $9FC276.l,X		; 9F 76 C2 9F
	sbc #$9FD8.w		; E9 D8 9F
	sty $0E.b,X		; 94 0E
	cmp $949F.w,Y		; D9 9F 94
	and ($D9.b,S),Y		; 33 D9
	sta $D95894.l,X		; 9F 94 58 D9
	sta $D97D0A.l,X		; 9F 0A 7D D9
	sta $D9A24A.l,X		; 9F 4A A2 D9
	sta $D9C794.l,X		; 9F 94 C7 D9
	sta $D8E994.l,X		; 9F 94 E9 D8
	sta $D9330F.l,X		; 9F 0F 33 D9
	sta $C2964F.l,X		; 9F 4F 96 C2
	sta $9FC29A.l,X		; 9F 9A C2 9F
	stz $9FC2.w,X		; 9E C2 9F
	ldx #$9FC2.w		; A2 C2 9F
	ldx $C2.b		; A6 C2
	sta $9FC2AA.l,X		; 9F AA C2 9F
	ldx $9FC2.w		; AE C2 9F
	lda ($C2.b)		; B2 C2
	sta $9FD9EC.l,X		; 9F EC D9 9F
	sty $11.b,X		; 94 11
	phx		; DA
	sta $DA3694.l,X		; 9F 94 36 DA
	sta $DA5B94.l,X		; 9F 94 5B DA
	sta $DA800A.l,X		; 9F 0A 80 DA
	sta $DAA54A.l,X		; 9F 4A A5 DA
	sta $DACA94.l,X		; 9F 94 CA DA
	sta $D9EC94.l,X		; 9F 94 EC D9
	sta $DA360F.l,X		; 9F 0F 36 DA
	sta $C2D24F.l,X		; 9F 4F D2 C2
	sta $9FC2D6.l,X		; 9F D6 C2 9F
	phx		; DA
.INDEX 16
	rep #$9F		; C2 9F
	dec $9FC2.w,X		; DE C2 9F
	sep #$C2		; E2 C2
	sta $9FC2E6.l,X		; 9F E6 C2 9F
	nop		; EA
.INDEX 16
	rep #$9F		; C2 9F
	inc $9FC2.w		; EE C2 9F
	sbc $949FDA.l		; EF DA 9F 94
	trb $DB.b		; 14 DB
	sta $DB3994.l,X		; 9F 94 39 DB
	sta $DB5E94.l,X		; 9F 94 5E DB
	sta $DB830A.l,X		; 9F 0A 83 DB
	sta $DBA84A.l,X		; 9F 4A A8 DB
	sta $DBCD94.l,X		; 9F 94 CD DB
	sta $DAEF94.l,X		; 9F 94 EF DA
	sta $DB390F.l,X		; 9F 0F 39 DB
	sta $C30E4F.l,X		; 9F 4F 0E C3
	sta $9FC312.l,X		; 9F 12 C3 9F
	asl $C3.b,X		; 16 C3
	sta $9FC31A.l,X		; 9F 1A C3 9F
	asl $9FC3.w,X		; 1E C3 9F
	jsl $269FC3.l		; 22 C3 9F 26
	cmp $9F.b,S		; C3 9F
	rol A		; 2A
	cmp $9F.b,S		; C3 9F
	sbc ($DB.b)		; F2 DB
	sta $DC1794.l,X		; 9F 94 17 DC
	sta $DC3C94.l,X		; 9F 94 3C DC
	sta $DC6194.l,X		; 9F 94 61 DC
	sta $DC860A.l,X		; 9F 0A 86 DC
	sta $DCAB4A.l,X		; 9F 4A AB DC
	sta $DCD094.l,X		; 9F 94 D0 DC
	sta $DBF294.l,X		; 9F 94 F2 DB
	sta $DC3C0F.l,X		; 9F 0F 3C DC
	sta $C34A4F.l,X		; 9F 4F 4A C3
	sta $9FC34E.l,X		; 9F 4E C3 9F
	eor ($C3.b)		; 52 C3
	sta $9FC356.l,X		; 9F 56 C3 9F
	phy		; 5A
	cmp $9F.b,S		; C3 9F
	lsr $9FC3.w,X		; 5E C3 9F
	.db $62, $C3, $9F		; 62 C3 9F
	ror $C3.b		; 66 C3
	sta $9FDCF5.l,X		; 9F F5 DC 9F
	sty $20.b,X		; 94 20
	cmp $949F.w,X		; DD 9F 94
	phk		; 4B
	cmp $949F.w,X		; DD 9F 94
	ror $DD.b,X		; 76 DD
	sta $DD9B0A.l,X		; 9F 0A 9B DD
	sta $DDC04A.l,X		; 9F 4A C0 DD
	sta $DDE594.l,X		; 9F 94 E5 DD
	sta $DCF594.l,X		; 9F 94 F5 DC
	sta $DD4B0F.l,X		; 9F 0F 4B DD
	sta $C3864F.l,X		; 9F 4F 86 C3
	sta $9FC38A.l,X		; 9F 8A C3 9F
	stx $9FC3.w		; 8E C3 9F
	sta ($C3.b)		; 92 C3
	sta $9FC396.l,X		; 9F 96 C3 9F
	txs		; 9A
	cmp $9F.b,S		; C3 9F
	stz $9FC3.w,X		; 9E C3 9F
	ldx #$9FC3.w		; A2 C3 9F
	bpl -34.b		; 10 DE
	sta $DE3594.l,X		; 9F 94 35 DE
	sta $DE5A94.l,X		; 9F 94 5A DE
	sta $DE7F94.l,X		; 9F 94 7F DE
	sta $DEA40A.l,X		; 9F 0A A4 DE
	sta $DEC94A.l,X		; 9F 4A C9 DE
	sta $DEEE94.l,X		; 9F 94 EE DE
	sta $DE1094.l,X		; 9F 94 10 DE
	sta $DE5A0F.l,X		; 9F 0F 5A DE
	sta $C3C24F.l,X		; 9F 4F C2 C3
	sta $9FC3C6.l,X		; 9F C6 C3 9F
	dex		; CA
	cmp $9F.b,S		; C3 9F
	dec $9FC3.w		; CE C3 9F
	cmp ($C3.b)		; D2 C3
	sta $9FC3D6.l,X		; 9F D6 C3 9F
	phx		; DA
	cmp $9F.b,S		; C3 9F
	dec $9FC3.w,X		; DE C3 9F
	ora ($DF.b,S),Y		; 13 DF
	sta $DF3894.l,X		; 9F 94 38 DF
	sta $DF5D94.l,X		; 9F 94 5D DF
	sta $DF8294.l,X		; 9F 94 82 DF
	sta $DFA70A.l,X		; 9F 0A A7 DF
	sta $DFCC4A.l,X		; 9F 4A CC DF
	sta $DFF194.l,X		; 9F 94 F1 DF
	sta $DF1394.l,X		; 9F 94 13 DF
	sta $DF5D0F.l,X		; 9F 0F 5D DF
	sta $C3FE4F.l,X		; 9F 4F FE C3
	sta $9FC402.l,X		; 9F 02 C4 9F
	asl $C4.b		; 06 C4
	sta $9FC40A.l,X		; 9F 0A C4 9F
	asl $9FC4.w		; 0E C4 9F
	ora ($C4.b)		; 12 C4
	sta $9FC416.l,X		; 9F 16 C4 9F
	inc A		; 1A
	cpy $9F.b		; C4 9F
	asl $E0.b,X		; 16 E0
	sta $E03B94.l,X		; 9F 94 3B E0
	sta $E06094.l,X		; 9F 94 60 E0
	sta $E08594.l,X		; 9F 94 85 E0
	sta $E0AA0A.l,X		; 9F 0A AA E0
	sta $E0CF4A.l,X		; 9F 4A CF E0
	sta $E0F494.l,X		; 9F 94 F4 E0
	sta $E01694.l,X		; 9F 94 16 E0
	sta $E0600F.l,X		; 9F 0F 60 E0
	sta $F1084F.l,X		; 9F 4F 08 F1
	sbc $0008D0.l,X		; FF D0 08 00
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cld		; D8
	php		; 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	cpx #$0408.w		; E0 08 04
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	beq   8.b		; F0 08
	asl $48.b		; 06 48
	ora ($EF.b,X)		; 01 EF
	inx		; E8
	php		; 08
	php		; 08
	pha		; 48
	ora ($F7.b,X)		; 01 F7
	bne   0.b		; D0 00
	bit $0140.w		; 2C 40 01
	sbc [$F8.b],Y		; F7 F8
	brk $2D.b		; 00 2D
	rti		; 40

	ora #$F8EF.w		; 09 EF F8
	brk $2E.b		; 00 2E
	rti		; 40

	ora [$E9.b]		; 07 E9
	ora [$E8.b]		; 07 E8
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $F0F7.w,Y		; F9 F7 F0
	php		; 08
	tsb $F948.w		; 0C 48 F9
	sbc [$E0.b],Y		; F7 E0
	php		; 08
	asl $F948.w		; 0E 48 F9
	sbc [$D0.b],Y		; F7 D0
	php		; 08
	jsr $F148.w		; 20 48 F1
	ora [$D0.b]		; 07 D0
	brk $2F.b		; 00 2F
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cld		; D8
	brk $3C.b		; 00 3C
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cpx #$3D00.w		; E0 00 3D
	rti		; 40

	asl $F2.b		; 06 F2
	inc $08F0.w,X		; FE F0 08
	jsl $EE0248.l		; 22 48 02 EE
	beq   8.b		; F0 08
	bit $48.b		; 24 48
	cop $EE.b		; 02 EE
	brk $08.b		; 00 08
	rol $48.b		; 26 48
	sbc ($06.b)		; F2 06
	brk $00.b		; 00 00
	rol $FA40.w,X		; 3E 40 FA
	inc $0000.w,X		; FE 00 00
	and ($40.b,S),Y		; 33 40
	plx		; FA
	inc $0008.w,X		; FE 08 00
	and $FA0640.l,X		; 3F 40 06 FA
	inc $F0.b,X		; F6 F0
	php		; 08
	plp		; 28
	pha		; 48
	asl A		; 0A
	inc $00F0.w		; EE F0 00
	rti		; 40

	rti		; 40

	asl A		; 0A
	inc $00F8.w		; EE F8 00
	eor ($40.b,X)		; 41 40
	plx		; FA
	inc $0000.w,X		; FE 00 00
	.db $42, $40		; 42 40
	cop $F6.b		; 02 F6
	brk $00.b		; 00 00
	eor $40.b,S		; 43 40
	asl A		; 0A
	inc $0000.w		; EE 00 00
	mvp $01,$40		; 44 40 01
	plx		; FA
	inc $F8.b,X		; F6 F8
	php		; 08
	rol A		; 2A
	pha		; 48
	ora $FB.b,S		; 03 FB
	sbc $00F8.w,X		; FD F8 00
	eor $40.b		; 45 40
	ora $F5.b,S		; 03 F5
	sed		; F8
	brk $46.b		; 00 46
	rti		; 40

	sbc $00FB.w,X		; FD FB 00
	brk $47.b		; 00 47
	rti		; 40

	trb $19.b		; 14 19
	cmp [$C8.b],Y		; D7 C8
	php		; 08
	brk $48.b		; 00 48
	ora ($E7.b),Y		; 11 E7
	bne   0.b		; D0 00
	cop $40.b		; 02 40
	and #$C8CF.w		; 29 CF C8
	brk $03.b		; 00 03
	rti		; 40

	and #$D0CF.w		; 29 CF D0
	brk $04.b		; 00 04
	rti		; 40

	and ($C7.b),Y		; 31 C7
	dec $00.b		; C6 00
	ora $40.b		; 05 40
	and ($C7.b),Y		; 31 C7
	dec $0600.w		; CE 00 06
	rti		; 40

	tas		; 1B
	cmp $00C0.w,X		; DD C0 00
	ora [$40.b]		; 07 40
	and $D5.b,S		; 23 D5
	cpy #$0800.w		; C0 00 08
	rti		; 40

	pld		; 2B
	cmp $00C0.w		; CD C0 00
	ora #$0440.w		; 09 40 04
	pea $00F2.w		; F4 F2 00
	asl A		; 0A
	rti		; 40

	ora $00E0E9.l		; 0F E9 E0 00
	phd		; 0B
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	cpx #$0C00.w		; E0 00 0C
	rti		; 40

	ora $00E8E9.l		; 0F E9 E8 00
	ora $FF40.w		; 0D 40 FF
	sbc $00F8.w,Y		; F9 F8 00
	asl $0740.w		; 0E 40 07
	sbc ($EB.b),Y		; F1 EB
	brk $0F.b		; 00 0F
	rti		; 40

	bpl -24.b		; 10 E8
	cld		; D8
	brk $12.b		; 00 12
	rti		; 40

	clc		; 18
	cpx #$00D8.w		; E0 D8 00
	ora ($40.b,S),Y		; 13 40
	jsr $D8D8.w		; 20 D8 D8
	brk $14.b		; 00 14
	rti		; 40

	plp		; 28
	bne -40.b		; D0 D8
	brk $15.b		; 00 15
	rti		; 40

	bmi -56.b		; 30 C8
	dec $00.b,X		; D6 00
	asl $40.b,X		; 16 40
	ora $FB.b,S		; 03 FB
	sbc $00C0.w,X		; FD C0 00
	ora [$40.b],Y		; 17 40
	xce		; FB
	sbc $00C8.w,X		; FD C8 00
	clc		; 18
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp $00.b		; C5 00
	ora $0340.w,Y		; 19 40 03
	sbc $C4FF.w,Y		; F9 FF C4
	brk $1A.b		; 00 1A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cpy $00.b		; C4 00
	tas		; 1B
	rti		; 40

	jsr ($CCFC.w,X)		; FC FC CC
	brk $1C.b		; 00 1C
	rti		; 40

	ora $F9.b,S		; 03 F9
	sbc $1D00C8.l,X		; FF C8 00 1D
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	iny		; C8
	brk $1E.b		; 00 1E
	rti		; 40

	inc $C0FA.w,X		; FE FA C0
	brk $1F.b		; 00 1F
	rti		; 40

	ora ($E0.b)		; 12 E0
	bpl -16.b		; 10 F0
	php		; 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	beq   8.b		; F0 08
	cop $48.b		; 02 48
	brk $F0.b		; 00 F0
	beq   8.b		; F0 08
	tsb $48.b		; 04 48
	pea $C0FC.w		; F4 FC C0
	php		; 08
	asl $48.b		; 06 48
	tsb $EC.b		; 04 EC
	cpy #$0808.w		; C0 08 08
	pha		; 48
	cpx $0C.b		; E4 0C
	rep #$08		; C2 08
	asl A		; 0A
	pha		; 48
	inc $D002.w		; EE 02 D0
	php		; 08
	tsb $FE48.w		; 0C 48 FE
	sbc ($D0.b)		; F2 D0
	php		; 08
	asl $DE48.w		; 0E 48 DE
	ora ($D2.b)		; 12 D2
	php		; 08
	jsr $E748.w		; 20 48 E7
	ora #$08E0.w		; 09 E0 08
	jsl $F9F748.l		; 22 48 F7 F9
	cpx #$2408.w		; E0 08 24
	pha		; 48
	ora [$E9.b]		; 07 E9
	cpx #$2608.w		; E0 08 26
	pha		; 48
	asl $D8EA.w		; 0E EA D8
	brk $2A.b		; 00 2A
	rti		; 40

	bpl -24.b		; 10 E8
	sed		; F8
	brk $2B.b		; 00 2B
	rti		; 40

	cmp $00E819.l,X		; DF 19 E8 00
	bit $1840.w		; 2C 40 18
	cpx #$00F8.w		; E0 F8 00
	and $1040.w		; 2D 40 10
	inx		; E8
	beq   0.b		; F0 00
	rol $0E40.w		; 2E 40 0E
	nop		; EA
	bne   0.b		; D0 00
	and $2B0940.l		; 2F 40 09 2B
	cmp $48.b		; C5 48
	php		; 08
	plp		; 28
	pha		; 48
	tas		; 1B
	cmp $0050.w,X		; DD 50 00
	dec A		; 3A
	rti		; 40

	tas		; 1B
	cmp $0048.w,X		; DD 48 00
	tsa		; 3B
	rti		; 40

	tsa		; 3B
	lda $0048.w,X		; BD 48 00
	bit $3B40.w,X		; 3C 40 3B
	lda $0050.w,X		; BD 50 00
	and $1340.w,X		; 3D 40 13
	sbc $4A.b		; E5 4A
	brk $3E.b		; 00 3E
	rti		; 40

	and $D5.b,S		; 23 D5
	phk		; 4B
	brk $3F.b		; 00 3F
	rti		; 40

	tsb $48EC.w		; 0C EC 48
	brk $40.b		; 00 40
	rti		; 40

	tsb $50EC.w		; 0C EC 50
	brk $41.b		; 00 41
	rti		; 40

	inc A		; 1A
	beq   0.b		; F0 00
	beq   8.b		; F0 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	beq   8.b		; F0 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	iny		; C8
	php		; 08
	tsb $48.b		; 04 48
	ora ($EF.b,X)		; 01 EF
	iny		; C8
	php		; 08
	asl $48.b		; 06 48
	sbc ($FF.b),Y		; F1 FF
	cld		; D8
	php		; 08
	php		; 08
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cld		; D8
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc ($0F.b,X)		; E1 0F
	dex		; CA
	php		; 08
	tsb $1048.w		; 0C 48 10
	inx		; E8
	beq   0.b		; F0 00
	bit $40.b		; 24 40
	bpl -24.b		; 10 E8
	sed		; F8
	brk $25.b		; 00 25
	rti		; 40

	inx		; E8
	bpl -62.b		; 10 C2
	brk $26.b		; 00 26
	rti		; 40

	beq   8.b		; F0 08
	rep #$00		; C2 00
	and [$40.b]		; 27 40
	php		; 08
	beq -64.b		; F0 C0
	brk $28.b		; 00 28
	rti		; 40

	inx		; E8
	bpl  -8.b		; 10 F8
	brk $29.b		; 00 29
	rti		; 40

	clc		; 18
	cpx #$00F8.w		; E0 F8 00
	rol A		; 2A
	rti		; 40

	sed		; F8
	brk $C0.b		; 00 C0
	brk $2B.b		; 00 2B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	bne   0.b		; D0 00
	bit $1140.w		; 2C 40 11
	sbc [$D8.b]		; E7 D8
	brk $2D.b		; 00 2D
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cpx #$2E00.w		; E0 00 2E
	rti		; 40

	sbc ($07.b),Y		; F1 07
	inx		; E8
	brk $2F.b		; 00 2F
	rti		; 40

	sbc $E8FF.w,Y		; F9 FF E8
	brk $34.b		; 00 34
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	inx		; E8
	brk $35.b		; 00 35
	rti		; 40

	ora #$E8EF.w		; 09 EF E8
	brk $36.b		; 00 36
	rti		; 40

	sbc #$E20F.w		; E9 0F E2
	brk $37.b		; 00 37
	rti		; 40

	brk $F8.b		; 00 F8
	cpy #$3800.w		; C0 00 38
	rti		; 40

	sbc ($17.b,X)		; E1 17
	phx		; DA
	brk $39.b		; 00 39
	rti		; 40

	sbc #$DA0F.w		; E9 0F DA
	brk $3A.b		; 00 3A
	rti		; 40

	ora #$F000.w		; 09 00 F0
	pha		; 48
	php		; 08
	asl $1048.w		; 0E 48 10
	cpx #$0848.w		; E0 48 08
	jsr $2048.w		; 20 48 20
	bne  72.b		; D0 48
	php		; 08
	jsl $B84048.l		; 22 48 40 B8
	pha		; 48
	brk $3B.b		; 00 3B
	rti		; 40

	sec		; 38
	cpy #$0050.w		; C0 50 00
	bit $4040.w,X		; 3C 40 40
	clv		; B8
	bvc   0.b		; 50 00
	and $3040.w,X		; 3D 40 30
	iny		; C8
	pha		; 48
	brk $3E.b		; 00 3E
	rti		; 40

	bmi -56.b		; 30 C8
	bvc   0.b		; 50 00
	and $B04840.l,X		; 3F 40 48 B0
	phk		; 4B
	brk $40.b		; 00 40
	rti		; 40

	bpl -16.b		; 10 F0
	brk $C0.b		; 00 C0
	php		; 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	cpy #$0208.w		; C0 08 02
	pha		; 48
	beq   0.b		; F0 00
	bne   8.b		; D0 08
	tsb $48.b		; 04 48
	brk $F0.b		; 00 F0
	bne   8.b		; D0 08
	asl $48.b		; 06 48
	beq   0.b		; F0 00
	cpx #$0808.w		; E0 08 08
	pha		; 48
	beq   0.b		; F0 00
	beq   8.b		; F0 08
	asl A		; 0A
	pha		; 48
	brk $F0.b		; 00 F0
	cpx #$0C08.w		; E0 08 0C
	pha		; 48
	brk $F0.b		; 00 F0
	beq   8.b		; F0 08
	asl $1048.w		; 0E 48 10
	cpx #$08F0.w		; E0 F0 08
	jsr $1048.w		; 20 48 10
	cpx #$08E0.w		; E0 E0 08
	jsl $10E048.l		; 22 48 E0 10
	cmp $482408.l		; CF 08 24 48
	cpx #$DF10.w		; E0 10 DF
	php		; 08
	rol $48.b		; 26 48
	bpl -24.b		; 10 E8
	cld		; D8
	brk $2C.b		; 00 2C
	rti		; 40

	inx		; E8
	bpl -57.b		; 10 C7
	brk $2D.b		; 00 2D
	rti		; 40

	inx		; E8
	bpl  -8.b		; 10 F8
	brk $2E.b		; 00 2E
	rti		; 40

	bpl -24.b		; 10 E8
	bne   0.b		; D0 00
	and $0B0740.l		; 2F 40 07 0B
	sbc $48.b		; E5 48
	php		; 08
	plp		; 28
	pha		; 48
	pld		; 2B
	cmp $48.b		; C5 48
	php		; 08
	rol A		; 2A
	pha		; 48
	tas		; 1B
	cmp $0048.w,X		; DD 48 00
	bit $3B40.w,X		; 3C 40 3B
	lda $0048.w,X		; BD 48 00
	and $1B40.w,X		; 3D 40 1B
	cmp $0050.w,X		; DD 50 00
	rol $3B40.w,X		; 3E 40 3B
	lda $0050.w,X		; BD 50 00
	and $D52340.l,X		; 3F 40 23 D5
	phk		; 4B
	brk $40.b		; 00 40
	rti		; 40

	jsr $F000.w		; 20 00 F0
	clv		; B8
	php		; 08
	brk $48.b		; 00 48
	cpx #$C210.w		; E0 10 C2
	php		; 08
	cop $48.b		; 02 48
	beq   0.b		; F0 00
	rep #$08		; C2 08
	tsb $48.b		; 04 48
	xce		; FB
	sbc $D0.b,X		; F5 D0
	php		; 08
	asl $48.b		; 06 48
	phd		; 0B
	sbc $D0.b		; E5 D0
	php		; 08
	php		; 08
	pha		; 48
	stp		; DB
	ora $D2.b,X		; 15 D2
	php		; 08
	asl A		; 0A
	pha		; 48
	xba		; EB
	ora $D2.b		; 05 D2
	php		; 08
	tsb $F448.w		; 0C 48 F4
	jsr ($08E0.w,X)		; FC E0 08
	asl $0448.w		; 0E 48 04
	cpx $08E0.w		; EC E0 08
	jsr $E448.w		; 20 48 E4
	tsb $08E2.w		; 0C E2 08
	jsl $F00848.l		; 22 48 08 F0
	iny		; C8
	brk $2A.b		; 00 2A
	rti		; 40

	bpl -24.b		; 10 E8
	iny		; C8
	brk $2B.b		; 00 2B
	rti		; 40

	sed		; F8
	brk $BA.b		; 00 BA
	brk $2C.b		; 00 2C
	rti		; 40

	cld		; D8
	jsr $00CA.w		; 20 CA 00
	and $F040.w		; 2D 40 F0
	php		; 08
	beq   0.b		; F0 00
	rol $F840.w		; 2E 40 F8
	brk $F0.b		; 00 F0
	brk $2F.b		; 00 2F
	rti		; 40

	brk $F8.b		; 00 F8
	beq   0.b		; F0 00
	dec A		; 3A
	rti		; 40

	php		; 08
	beq -16.b		; F0 F0
	brk $3B.b		; 00 3B
	rti		; 40

	bpl -24.b		; 10 E8
	beq   0.b		; F0 00
	bit $E840.w,X		; 3C 40 E8
	bpl -16.b		; 10 F0
	brk $3D.b		; 00 3D
	rti		; 40

	cpx $14.b		; E4 14
	sed		; F8
	brk $3E.b		; 00 3E
	rti		; 40

	cpx $F80C.w		; EC 0C F8
	brk $3F.b		; 00 3F
	rti		; 40

	pea $F804.w		; F4 04 F8
	brk $40.b		; 00 40
	rti		; 40

	jsr ($F8FC.w,X)		; FC FC F8
	brk $41.b		; 00 41
	rti		; 40

	tsb $F4.b		; 04 F4
	sed		; F8
	brk $42.b		; 00 42
	rti		; 40

	tsb $F8EC.w		; 0C EC F8
	brk $43.b		; 00 43
	rti		; 40

	trb $E4.b		; 14 E4
	sed		; F8
	brk $44.b		; 00 44
	rti		; 40

	bpl -24.b		; 10 E8
	clv		; B8
	brk $45.b		; 00 45
	rti		; 40

	bpl -24.b		; 10 E8
	cpy #$4600.w		; C0 00 46
	rti		; 40

	trb $E4.b		; 14 E4
	cpx #$4700.w		; E0 00 47
	rti		; 40

	trb $E4.b		; 14 E4
	inx		; E8
	brk $48.b		; 00 48
	rti		; 40

	brk $F8.b		; 00 F8
	iny		; C8
	brk $49.b		; 00 49
	rti		; 40

	ora [$30.b]		; 07 30
	cpy #$0848.w		; C0 48 08
	bit $48.b		; 24 48
	brk $F0.b		; 00 F0
	pha		; 48
	php		; 08
	rol $48.b		; 26 48
	bpl -32.b		; 10 E0
	pha		; 48
	php		; 08
	plp		; 28
	pha		; 48
	plp		; 28
	bne  80.b		; D0 50
	brk $4A.b		; 00 4A
	rti		; 40

	jsr $48D8.w		; 20 D8 48
	brk $4B.b		; 00 4B
	rti		; 40

	jsr $50D8.w		; 20 D8 50
	brk $4C.b		; 00 4C
	rti		; 40

	rti		; 40

	clv		; B8
	phk		; 4B
	brk $4D.b		; 00 4D
	rti		; 40

	trb $E0.b		; 14 E0
	bpl -48.b		; 10 D0
	php		; 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	bne   8.b		; D0 08
	cop $48.b		; 02 48
	brk $F0.b		; 00 F0
	bne   8.b		; D0 08
	tsb $48.b		; 04 48
	inx		; E8
	php		; 08
	beq   8.b		; F0 08
	asl $48.b		; 06 48
	inx		; E8
	php		; 08
	cpx #$0808.w		; E0 08 08
	pha		; 48
	sed		; F8
	sed		; F8
	cpx #$0A08.w		; E0 08 0A
	pha		; 48
	sed		; F8
	sed		; F8
	beq   8.b		; F0 08
	tsb $0848.w		; 0C 48 08
	inx		; E8
	beq   8.b		; F0 08
	asl $0848.w		; 0E 48 08
	inx		; E8
	cpx #$2008.w		; E0 08 20
	pha		; 48
	cpx $0C.b		; E4 0C
	cpy #$2208.w		; C0 08 22
	pha		; 48
	pea $C0FC.w		; F4 FC C0
	php		; 08
	bit $48.b		; 24 48
	tsb $EC.b		; 04 EC
	cpy #$2608.w		; C0 08 26
	pha		; 48
	bpl -24.b		; 10 E8
	cld		; D8
	brk $2C.b		; 00 2C
	rti		; 40

	cpx #$E018.w		; E0 18 E0
	brk $2D.b		; 00 2D
	rti		; 40

	tsb $B8EC.w		; 0C EC B8
	brk $2E.b		; 00 2E
	rti		; 40

	trb $E4.b		; 14 E4
	iny		; C8
	brk $2F.b		; 00 2F
	rti		; 40

	clc		; 18
	cpx #$00F8.w		; E0 F8 00
	bit $E040.w,X		; 3C 40 E0
	clc		; 18
	sed		; F8
	brk $3D.b		; 00 3D
	rti		; 40

	bpl -24.b		; 10 E8
	bne   0.b		; D0 00
	rol $F640.w,X		; 3E 40 F6
	cop $B8.b		; 02 B8
	brk $3F.b		; 00 3F
	rti		; 40

	asl A		; 0A
	jsl $0848CE.l		; 22 CE 48 08
	plp		; 28
	pha		; 48
	ora $ED.b,S		; 03 ED
	pha		; 48
	php		; 08
	rol A		; 2A
	pha		; 48
	dec A		; 3A
	ldx $0048.w,Y		; BE 48 00
	rti		; 40

	rti		; 40

	and ($C6.b)		; 32 C6
	phk		; 4B
	brk $41.b		; 00 41
	rti		; 40

	eor $B5.b,S		; 43 B5
	pha		; 48
	brk $42.b		; 00 42
	rti		; 40

	eor $B5.b,S		; 43 B5
	bvc   0.b		; 50 00
	eor $40.b,S		; 43 40
	dec A		; 3A
	ldx $0050.w,Y		; BE 50 00
	mvp $13,$40		; 44 40 13
	sbc $48.b		; E5 48
	brk $45.b		; 00 45
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	bvc   0.b		; 50 00
	lsr $40.b		; 46 40
	tas		; 1B
	cmp $004B.w,X		; DD 4B 00
	eor [$40.b]		; 47 40
	ora $F0E808.l,X		; 1F 08 E8 F0
	php		; 08
	brk $48.b		; 00 48
	cld		; D8
	clc		; 18
	iny		; C8
	php		; 08
	cop $48.b		; 02 48
	inx		; E8
	php		; 08
	iny		; C8
	php		; 08
	tsb $48.b		; 04 48
	sed		; F8
	sed		; F8
	iny		; C8
	php		; 08
	asl $48.b		; 06 48
	cld		; D8
	clc		; 18
	cld		; D8
	php		; 08
	php		; 08
	pha		; 48
	inx		; E8
	php		; 08
	cld		; D8
	php		; 08
	asl A		; 0A
	pha		; 48
	sed		; F8
	sed		; F8
	cld		; D8
	php		; 08
	tsb $D848.w		; 0C 48 D8
	clc		; 18
	inx		; E8
	php		; 08
	asl $E848.w		; 0E 48 E8
	php		; 08
	inx		; E8
	php		; 08
	jsr $F848.w		; 20 48 F8
	sed		; F8
	inx		; E8
	php		; 08
	jsl $E01048.l		; 22 48 10 E0
	cpy $08.b		; C4 08
	bit $48.b		; 24 48
	bpl -32.b		; 10 E0
	pei ($08.b)		; D4 08
	rol $48.b		; 26 48
	plx		; FA
	inc $B8.b,X		; F6 B8
	php		; 08
	plp		; 28
	pha		; 48
	php		; 08
	beq -48.b		; F0 D0
	brk $40.b		; 00 40
	rti		; 40

	php		; 08
	beq -40.b		; F0 D8
	brk $41.b		; 00 41
	rti		; 40

	php		; 08
	beq -32.b		; F0 E0
	brk $42.b		; 00 42
	rti		; 40

	php		; 08
	beq -24.b		; F0 E8
	brk $43.b		; 00 43
	rti		; 40

	cld		; D8
	jsr $00F8.w		; 20 F8 00
	mvp $E0,$40		; 44 40 E0
	clc		; 18
	sed		; F8
	brk $45.b		; 00 45
	rti		; 40

	inx		; E8
	bpl  -8.b		; 10 F8
	brk $46.b		; 00 46
	rti		; 40

	beq   8.b		; F0 08
	sed		; F8
	brk $47.b		; 00 47
	rti		; 40

	sed		; F8
	brk $F8.b		; 00 F8
	brk $48.b		; 00 48
	rti		; 40

	brk $F8.b		; 00 F8
	sed		; F8
	brk $49.b		; 00 49
	rti		; 40

	bpl -24.b		; 10 E8
	cpx $4A00.w		; EC 00 4A
	rti		; 40

	cld		; D8
	jsr $00C0.w		; 20 C0 00
	phk		; 4B
	rti		; 40

	clc		; 18
	cpx #$00F8.w		; E0 F8 00
	jmp $1040.w		; 4C 40 10
	inx		; E8
	cpx $00.b		; E4 00
	eor $1840.w		; 4D 40 18
	cpx #$00E4.w		; E0 E4 00
	lsr $F240.w		; 4E 40 F2
	asl $C0.b		; 06 C0
	brk $4F.b		; 00 4F
	rti		; 40

	asl A		; 0A
	inc $00C0.w		; EE C0 00
	bvc  64.b		; 50 40
	php		; 08
	beq -56.b		; F0 C8
	brk $51.b		; 00 51
	rti		; 40

	php		; 08
	brk $F0.b		; 00 F0
	pha		; 48
	php		; 08
	rol A		; 2A
	pha		; 48
	bpl -32.b		; 10 E0
	pha		; 48
	php		; 08
	bit $2048.w		; 2C 48 20
	bne  72.b		; D0 48
	php		; 08
	rol $4048.w		; 2E 48 40
	clv		; B8
	bvc   0.b		; 50 00
	eor ($40.b)		; 52 40
	rti		; 40

	clv		; B8
	pha		; 48
	brk $53.b		; 00 53
	rti		; 40

	bmi -56.b		; 30 C8
	pha		; 48
	brk $54.b		; 00 54
	rti		; 40

	bmi -56.b		; 30 C8
	bvc   0.b		; 50 00
	eor $40.b,X		; 55 40
	sec		; 38
	cpy #$004B.w		; C0 4B 00
	lsr $40.b,X		; 56 40
	tas		; 1B
	cpx #$F010.w		; E0 10 F0
	php		; 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	beq   8.b		; F0 08
	cop $48.b		; 02 48
	brk $F0.b		; 00 F0
	beq   8.b		; F0 08
	tsb $48.b		; 04 48
	bpl -32.b		; 10 E0
	beq   8.b		; F0 08
	asl $48.b		; 06 48
	sep #$0E		; E2 0E
	iny		; C8
	php		; 08
	php		; 08
	pha		; 48
	sbc ($FE.b)		; F2 FE
	iny		; C8
	php		; 08
	asl A		; 0A
	pha		; 48
	cop $EE.b		; 02 EE
	iny		; C8
	php		; 08
	tsb $ED48.w		; 0C 48 ED
	ora $B8.b,S		; 03 B8
	php		; 08
	asl $FD48.w		; 0E 48 FD
	sbc ($B8.b,S),Y		; F3 B8
	php		; 08
	jsr $E748.w		; 20 48 E7
	ora #$08D8.w		; 09 D8 08
	jsl $F9F748.l		; 22 48 F7 F9
	cld		; D8
	php		; 08
	bit $48.b		; 24 48
	ora [$E9.b]		; 07 E9
	cld		; D8
	php		; 08
	rol $48.b		; 26 48
	ora ($E6.b)		; 12 E6
	bne   0.b		; D0 00
	rol $0D40.w		; 2E 40 0D
	xba		; EB
	clv		; B8
	brk $2F.b		; 00 2F
	rti		; 40

	ora $C0EB.w		; 0D EB C0
	brk $3E.b		; 00 3E
	rti		; 40

	sbc $13.b		; E5 13
	cpy #$3F00.w		; C0 00 3F
	rti		; 40

	ora $E3.b,X		; 15 E3
	cpy #$4000.w		; C0 00 40
	rti		; 40

	ora ($E6.b)		; 12 E6
	iny		; C8
	brk $41.b		; 00 41
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	cld		; D8
	brk $42.b		; 00 42
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	cpx #$4300.w		; E0 00 43
	rti		; 40

	sbc [$11.b]		; E7 11
	inx		; E8
	brk $44.b		; 00 44
	rti		; 40

	sbc $00E809.l		; EF 09 E8 00
	eor $40.b		; 45 40
	sbc [$01.b],Y		; F7 01
	inx		; E8
	brk $46.b		; 00 46
	rti		; 40

	sbc $00E8F9.l,X		; FF F9 E8 00
	eor [$40.b]		; 47 40
	ora [$F1.b]		; 07 F1
	inx		; E8
	brk $48.b		; 00 48
	rti		; 40

	ora $00E8E9.l		; 0F E9 E8 00
	eor #$1740.w		; 49 40 17
	sbc ($E8.b,X)		; E1 E8
	brk $4A.b		; 00 4A
	rti		; 40

	asl $08.b		; 06 08
	inx		; E8
	pha		; 48
	php		; 08
	plp		; 28
	pha		; 48
	clc		; 18
	cld		; D8
	pha		; 48
	php		; 08
	rol A		; 2A
	pha		; 48
	plp		; 28
	iny		; C8
	pha		; 48
	php		; 08
	bit $3848.w		; 2C 48 38
	cpy #$004E.w		; C0 4E 00
	phk		; 4B
	rti		; 40

	and $0048B9.l,X		; 3F B9 48 00
	jmp $3F40.w		; 4C 40 3F
	lda $0050.w,Y		; B9 50 00
	eor APUIO0.w		; 4D 40 21
	cpx #$D010.w		; E0 10 D0
	php		; 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	bne   8.b		; D0 08
	cop $48.b		; 02 48
	brk $F0.b		; 00 F0
	bne   8.b		; D0 08
	tsb $48.b		; 04 48
	bpl -32.b		; 10 E0
	bne   8.b		; D0 08
	asl $48.b		; 06 48
	bpl -32.b		; 10 E0
	cpx #$0808.w		; E0 08 08
	pha		; 48
	brk $F0.b		; 00 F0
	cpx #$0A08.w		; E0 08 0A
	pha		; 48
	beq   0.b		; F0 00
	cpx #$0C08.w		; E0 08 0C
	pha		; 48
	inc $0A.b		; E6 0A
	cpy #$0E08.w		; C0 08 0E
	pha		; 48
	asl $EA.b		; 06 EA
	cpy #$2008.w		; C0 08 20
	pha		; 48
	inc $FA.b,X		; F6 FA
	cpy #$2208.w		; C0 08 22
	pha		; 48
	inx		; E8
	bpl -24.b		; 10 E8
	brk $2A.b		; 00 2A
	rti		; 40

	inx		; E8
	bpl -16.b		; 10 F0
	brk $2B.b		; 00 2B
	rti		; 40

	beq   8.b		; F0 08
	beq   0.b		; F0 00
	bit $F840.w		; 2C 40 F8
	brk $F0.b		; 00 F0
	brk $2D.b		; 00 2D
	rti		; 40

	brk $F8.b		; 00 F8
	beq   0.b		; F0 00
	rol $0840.w		; 2E 40 08
	beq -16.b		; F0 F0
	brk $2F.b		; 00 2F
	rti		; 40

	bpl -24.b		; 10 E8
	beq   0.b		; F0 00
	dec A		; 3A
	rti		; 40

	clc		; 18
	cpx #$00F0.w		; E0 F0 00
	tsa		; 3B
	rti		; 40

	inc $12.b		; E6 12
	sed		; F8
	brk $3C.b		; 00 3C
	rti		; 40

	inc $F80A.w		; EE 0A F8
	brk $3D.b		; 00 3D
	rti		; 40

	inc $02.b,X		; F6 02
	sed		; F8
	brk $3E.b		; 00 3E
	rti		; 40

	inc $F8FA.w,X		; FE FA F8
	brk $3F.b		; 00 3F
	rti		; 40

	asl $F2.b		; 06 F2
	sed		; F8
	brk $40.b		; 00 40
	rti		; 40

	asl $F8EA.w		; 0E EA F8
	brk $41.b		; 00 41
	rti		; 40

	asl $E2.b,X		; 16 E2
	sed		; F8
	brk $42.b		; 00 42
	rti		; 40

	asl $F8DA.w,X		; 1E DA F8
	brk $43.b		; 00 43
	rti		; 40

	jsr $E8D8.w		; 20 D8 E8
	brk $44.b		; 00 44
	rti		; 40

	cpx #$E018.w		; E0 18 E0
	brk $45.b		; 00 45
	rti		; 40

	inx		; E8
	bpl -32.b		; 10 E0
	brk $46.b		; 00 46
	rti		; 40

	inc $B80A.w		; EE 0A B8
	brk $47.b		; 00 47
	rti		; 40

	inc $02.b,X		; F6 02
	clv		; B8
	brk $48.b		; 00 48
	rti		; 40

	inc $B8FA.w,X		; FE FA B8
	brk $49.b		; 00 49
	rti		; 40

	asl $F2.b		; 06 F2
	clv		; B8
	brk $4A.b		; 00 4A
	rti		; 40

	ora #$F000.w		; 09 00 F0
	pha		; 48
	php		; 08
	bit $48.b		; 24 48
	bpl -32.b		; 10 E0
	pha		; 48
	php		; 08
	rol $48.b		; 26 48
	jsr $48D0.w		; 20 D0 48
	php		; 08
	plp		; 28
	pha		; 48
	sec		; 38
	cpy #$0050.w		; C0 50 00
	phk		; 4B
	rti		; 40

	bmi -56.b		; 30 C8
	pha		; 48
	brk $4C.b		; 00 4C
	rti		; 40

	bmi -56.b		; 30 C8
	bvc   0.b		; 50 00
	eor $4740.w		; 4D 40 47
	lda ($48.b),Y		; B1 48
	brk $4E.b		; 00 4E
	rti		; 40

	eor [$B1.b]		; 47 B1
	bvc   0.b		; 50 00
	eor $B93F40.l		; 4F 40 3F B9
	lsr A		; 4A
	brk $50.b		; 00 50
	rti		; 40

	ora $D807E9.l,X		; 1F E9 07 D8
	php		; 08
	brk $48.b		; 00 48
	ora ($EF.b,X)		; 01 EF
	cld		; D8
	php		; 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	inx		; E8
	php		; 08
	tsb $48.b		; 04 48
	sep #$0E		; E2 0E
	clv		; B8
	php		; 08
	asl $48.b		; 06 48
	sbc ($FE.b)		; F2 FE
	clv		; B8
	php		; 08
	php		; 08
	pha		; 48
	cmp $08C811.l,X		; DF 11 C8 08
	asl A		; 0A
	pha		; 48
	sbc $08C801.l		; EF 01 C8 08
	tsb $FF48.w		; 0C 48 FF
	sbc ($C8.b),Y		; F1 C8
	php		; 08
	asl $F948.w		; 0E 48 F9
	sbc $2400D8.l,X		; FF D8 00 24
	rti		; 40

	sbc $E0FF.w,Y		; F9 FF E0
	brk $25.b		; 00 25
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	inx		; E8
	brk $26.b		; 00 26
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	beq   0.b		; F0 00
	and [$40.b]		; 27 40
	phx		; DA
	asl $00C0.w,X		; 1E C0 00
	plp		; 28
	rti		; 40

	asl A		; 0A
	inc $00C0.w		; EE C0 00
	and #$1140.w		; 29 40 11
	sbc [$F0.b]		; E7 F0
	brk $2A.b		; 00 2A
	rti		; 40

	ora $F0DF.w,Y		; 19 DF F0
	brk $2B.b		; 00 2B
	rti		; 40

	cop $F6.b		; 02 F6
	clv		; B8
	brk $2C.b		; 00 2C
	rti		; 40

	cop $F6.b		; 02 F6
	cpy #$2D00.w		; C0 00 2D
	rti		; 40

	cmp $00F819.l,X		; DF 19 F8 00
	rol $E740.w		; 2E 40 E7
	ora ($F8.b),Y		; 11 F8
	brk $2F.b		; 00 2F
	rti		; 40

	sbc $00F809.l		; EF 09 F8 00
	bit $40.b,X		; 34 40
	sbc [$01.b],Y		; F7 01
	sed		; F8
	brk $35.b		; 00 35
	rti		; 40

	sbc $00F8F9.l,X		; FF F9 F8 00
	rol $40.b,X		; 36 40
	ora [$F1.b]		; 07 F1
	sed		; F8
	brk $37.b		; 00 37
	rti		; 40

	ora $00F8E9.l		; 0F E9 F8 00
	sec		; 38
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	sed		; F8
	brk $39.b		; 00 39
	rti		; 40

	sbc ($17.b,X)		; E1 17
	cld		; D8
	brk $3A.b		; 00 3A
	rti		; 40

	sbc #$F00F.w		; E9 0F F0
	brk $3B.b		; 00 3B
	rti		; 40

	ora #$F0EF.w		; 09 EF F0
	brk $3C.b		; 00 3C
	rti		; 40

	ora $00C8E9.l		; 0F E9 C8 00
	and $0F40.w,X		; 3D 40 0F
	sbc #$00D0.w		; E9 D0 00
	rol $0840.w,X		; 3E 40 08
	bit $CC.b		; 24 CC
	pha		; 48
	php		; 08
	jsr $3448.w		; 20 48 34
	ldy $0848.w,X		; BC 48 08
	jsl $E41448.l		; 22 48 14 E4
	pha		; 48
	brk $21.b		; 00 21
	rti		; 40

	trb $E4.b		; 14 E4
	bvc   0.b		; 50 00
	and $DC1C40.l,X		; 3F 40 1C DC
	lsr A		; 4A
	brk $40.b		; 00 40
	rti		; 40

	ora $F3.b		; 05 F3
	pha		; 48
	brk $41.b		; 00 41
	rti		; 40

	ora $F3.b		; 05 F3
	bvc   0.b		; 50 00
	.db $42, $40		; 42 40
	ora $4BEB.w		; 0D EB 4B
	brk $43.b		; 00 43
	rti		; 40

	beq  -1.b		; F0 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $E51500.l,X		; FF 00 15 E5
	ora ($E7.b,S),Y		; 13 E7
	ora ($E8.b)		; 12 E8
	ora ($E9.b),Y		; 11 E9
	bpl -22.b		; 10 EA
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	ora $EB0FEB.l		; 0F EB 0F EB
	bpl -22.b		; 10 EA
	ora ($E9.b),Y		; 11 E9
	ora ($E8.b)		; 12 E8
	ora ($E7.b,S),Y		; 13 E7
	ora $E5.b,X		; 15 E5
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $280000.l,X		; FF 00 00 28
	cmp $08C811.l,X		; DF 11 C8 08
	brk $48.b		; 00 48
	ora $08B0E1.l		; 0F E1 B0 08
	cop $48.b		; 02 48
	ora $08C0E1.l		; 0F E1 C0 08
	tsb $48.b		; 04 48
	sbc $08B0F1.l,X		; FF F1 B0 08
	asl $48.b		; 06 48
	sbc $08B001.l		; EF 01 B0 08
	php		; 08
	pha		; 48
	sbc $08C0F1.l,X		; FF F1 C0 08
	asl A		; 0A
	pha		; 48
	sbc $08C001.l		; EF 01 C0 08
	tsb $EF48.w		; 0C 48 EF
	ora ($D0.b,X)		; 01 D0
	php		; 08
	asl $FF48.w		; 0E 48 FF
	sbc ($D0.b),Y		; F1 D0
	php		; 08
	jsr $E748.w		; 20 48 E7
	ora #$08E0.w		; 09 E0 08
	jsl $09E748.l		; 22 48 E7 09
	beq   8.b		; F0 08
	bit $48.b		; 24 48
	sbc [$F9.b],Y		; F7 F9
	cpx #$2608.w		; E0 08 26
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	beq   8.b		; F0 08
	plp		; 28
	pha		; 48
	ora [$E9.b]		; 07 E9
	beq   8.b		; F0 08
	rol A		; 2A
	pha		; 48
	ora [$E9.b]		; 07 E9
	cpx #$2C08.w		; E0 08 2C
	pha		; 48
	sbc $0D.b,S		; E3 0D
	bra   8.b		; 80 08
	rol $EE48.w		; 2E 48 EE
	cop $A0.b		; 02 A0
	php		; 08
	rti		; 40

	pha		; 48
	inc $A0F2.w,X		; FE F2 A0
	php		; 08
	.db $42, $48		; 42 48
	asl $A0E2.w		; 0E E2 A0
	php		; 08
	mvp $27,$48		; 44 48 27
	cmp ($F8.b),Y		; D1 F8
	brk $46.b		; 00 46
	rti		; 40

	sbc [$11.b]		; E7 11
	clv		; B8
	brk $47.b		; 00 47
	rti		; 40

	sbc [$11.b]		; E7 11
	cpy #$4800.w		; C0 00 48
	rti		; 40

	ora $00D0E9.l		; 0F E9 D0 00
	eor #$0F40.w		; 49 40 0F
	sbc #$00D8.w		; E9 D8 00
	lsr A		; 4A
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	inx		; E8
	brk $4B.b		; 00 4B
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	beq   0.b		; F0 00
	jmp $D740.w		; 4C 40 D7
	and ($D2.b,X)		; 21 D2
	brk $4D.b		; 00 4D
	rti		; 40

	cmp [$21.b],Y		; D7 21
	phx		; DA
	brk $4E.b		; 00 4E
	rti		; 40

	lda $00E339.l,X		; BF 39 E3 00
	eor $29CF40.l		; 4F 40 CF 29
	dec $00.b,X		; D6 00
	lsr $40.b,X		; 56 40
	cmp $00DE29.l		; CF 29 DE 00
	eor [$40.b],Y		; 57 40
	lda [$41.b],Y		; B7 41
	inc $00.b		; E6 00
	cli		; 58
	rti		; 40

	lda ($47.b),Y		; B1 47
	xba		; EB
	brk $59.b		; 00 59
	rti		; 40

	lda ($47.b),Y		; B1 47
	sbc ($00.b,S),Y		; F3 00
	phy		; 5A
	rti		; 40

	cmp $00D819.l,X		; DF 19 D8 00
	tad		; 5B
	rti		; 40

	sbc $900B.w		; ED 0B 90
	brk $5C.b		; 00 5C
	rti		; 40

	inc $980A.w		; EE 0A 98
	brk $5D.b		; 00 5D
	rti		; 40

	cmp [$31.b]		; C7 31
	cpx #$5E00.w		; E0 00 5E
	rti		; 40

	ora $00F0D9.l,X		; 1F D9 F0 00
	eor $D12740.l,X		; 5F 40 27 D1
	beq   0.b		; F0 00
	rts		; 60

	rti		; 40

	tas		; 1B
	pei ($1C.b)		; D4 1C
	beq   8.b		; F0 08
	brk $48.b		; 00 48
	pei ($1C.b)		; D4 1C
	cpx #$0208.w		; E0 08 02
	pha		; 48
	jmp.w [$D014]		; DC 14 D0
	php		; 08
	tsb $48.b		; 04 48
	cpx $D004.w		; EC 04 D0
	php		; 08
	asl $48.b		; 06 48
	jsr ($D0F4.w,X)		; FC F4 D0
	php		; 08
	php		; 08
	pha		; 48
	tsb $D0E4.w		; 0C E4 D0
	php		; 08
	asl A		; 0A
	pha		; 48
	tsb $E0E4.w		; 0C E4 E0
	php		; 08
	tsb $0448.w		; 0C 48 04
	cpx $08F0.w		; EC F0 08
	asl $FC48.w		; 0E 48 FC
	pea $08E0.w		; F4 E0 08
	jsr $EC48.w		; 20 48 EC
	tsb $E0.b		; 04 E0
	php		; 08
	jsl $04EC48.l		; 22 48 EC 04
	beq   8.b		; F0 08
	bit $48.b		; 24 48
	dec $C012.w,X		; DE 12 C0
	php		; 08
	rol $48.b		; 26 48
	inc $C002.w		; EE 02 C0
	php		; 08
	plp		; 28
	pha		; 48
	inc $C0F2.w,X		; FE F2 C0
	php		; 08
	rol A		; 2A
	pha		; 48
	sbc [$09.b]		; E7 09
	ldy #$2C08.w		; A0 08 2C
	pha		; 48
	sbc $08A2F1.l,X		; FF F1 A2 08
	rol $E148.w		; 2E 48 E1
	ora $4008B0.l		; 0F B0 08 40
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	bcs   8.b		; B0 08
	.db $42, $48		; 42 48
	jsr ($F0FC.w,X)		; FC FC F0
	brk $44.b		; 00 44
	rti		; 40

	jsr ($F8FC.w,X)		; FC FC F8
	brk $45.b		; 00 45
	rti		; 40

	sbc [$01.b],Y		; F7 01
	ldy #$4600.w		; A0 00 46
	rti		; 40

	sbc [$01.b],Y		; F7 01
	tay		; A8
	brk $47.b		; 00 47
	rti		; 40

	asl $C8EA.w		; 0E EA C8
	brk $48.b		; 00 48
	rti		; 40

	pei ($24.b)		; D4 24
	cld		; D8
	brk $49.b		; 00 49
	rti		; 40

	cpx $14.b		; E4 14
	cpx #$4A00.w		; E0 00 4A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	bcs   0.b		; B0 00
	phk		; 4B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	clv		; B8
	brk $4C.b		; 00 4C
	rti		; 40

	ora $A0FBF5.l,X		; 1F F5 FB A0
	php		; 08
	brk $48.b		; 00 48
	ora $EB.b		; 05 EB
	ldy #$0208.w		; A0 08 02
	pha		; 48
	sbc $C003.w		; ED 03 C0
	php		; 08
	tsb $48.b		; 04 48
	sbc $C0F3.w,X		; FD F3 C0
	php		; 08
	asl $48.b		; 06 48
	ora $C0E3.w		; 0D E3 C0
	php		; 08
	php		; 08
	pha		; 48
	ora $E8D3.w,X		; 1D D3 E8
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $F003.w		; ED 03 F0
	php		; 08
	tsb $FD48.w		; 0C 48 FD
	sbc ($F0.b,S),Y		; F3 F0
	php		; 08
	asl $F648.w		; 0E 48 F6
	plx		; FA
	bcs   8.b		; B0 08
	jsr $0648.w		; 20 48 06
	nop		; EA
	bcs   8.b		; B0 08
	jsl $08E848.l		; 22 48 E8 08
	bne   8.b		; D0 08
	bit $48.b		; 24 48
	inx		; E8
	php		; 08
	cpx #$2608.w		; E0 08 26
	pha		; 48
	sed		; F8
	sed		; F8
	bne   8.b		; D0 08
	plp		; 28
	pha		; 48
	sed		; F8
	sed		; F8
	cpx #$2A08.w		; E0 08 2A
	pha		; 48
	php		; 08
	inx		; E8
	cpx #$2C08.w		; E0 08 2C
	pha		; 48
	php		; 08
	inx		; E8
	bne   8.b		; D0 08
	rol $1848.w		; 2E 48 18
	cld		; D8
	bne   8.b		; D0 08
	rti		; 40

	pha		; 48
	ora $E3.b,X		; 15 E3
	tay		; A8
	brk $42.b		; 00 42
	rti		; 40

	asl $E2.b,X		; 16 E2
	bcs   0.b		; B0 00
	eor $40.b,S		; 43 40
	asl $E2.b,X		; 16 E2
	clv		; B8
	brk $44.b		; 00 44
	rti		; 40

	ora $C0DB.w,X		; 1D DB C0
	brk $45.b		; 00 45
	rti		; 40

	ora $C8DB.w,X		; 1D DB C8
	brk $46.b		; 00 46
	rti		; 40

	ora $F0EB.w		; 0D EB F0
	brk $47.b		; 00 47
	rti		; 40

	ora $F8EB.w		; 0D EB F8
	brk $48.b		; 00 48
	rti		; 40

	ora $F8DB.w,X		; 1D DB F8
	brk $49.b		; 00 49
	rti		; 40

	and $D3.b		; 25 D3
	sed		; F8
	brk $4A.b		; 00 4A
	rti		; 40

	ora $E3.b,X		; 15 E3
	ldy #$4B00.w		; A0 00 4B
	rti		; 40

	clc		; 18
	cpx #$00E0.w		; E0 E0 00
	jmp $2040.w		; 4C 40 20
	cld		; D8
	cpx #$4D00.w		; E0 00 4D
	rti		; 40

	cpx #$D618.w		; E0 18 D6
	brk $4E.b		; 00 4E
	rti		; 40

	sbc $98FF.w,Y		; F9 FF 98
	brk $4F.b		; 00 4F
	rti		; 40

	and $D4.b,S		; 23 D4
	trb $08C0.w		; 1C C0 08
	brk $48.b		; 00 48
	pei ($1C.b)		; D4 1C
	bne   8.b		; D0 08
	cop $48.b		; 02 48
	cpx $0C.b		; E4 0C
	clv		; B8
	php		; 08
	tsb $48.b		; 04 48
	pea $B8FC.w		; F4 FC B8
	php		; 08
	asl $48.b		; 06 48
	tsb $EC.b		; 04 EC
	clv		; B8
	php		; 08
	php		; 08
	pha		; 48
	cpx $0C.b		; E4 0C
	iny		; C8
	php		; 08
	asl A		; 0A
	pha		; 48
	pea $C8FC.w		; F4 FC C8
	php		; 08
	tsb $0448.w		; 0C 48 04
	cpx $08C8.w		; EC C8 08
	asl $D248.w		; 0E 48 D2
	asl $08F0.w,X		; 1E F0 08
	jsr $D248.w		; 20 48 D2
	asl $08E0.w,X		; 1E E0 08
	jsl $0EE248.l		; 22 48 E2 0E
	cpx #$2408.w		; E0 08 24
	pha		; 48
	nop		; EA
	asl $F0.b		; 06 F0
	php		; 08
	rol $48.b		; 26 48
	sbc ($FE.b)		; F2 FE
	cpx #$2808.w		; E0 08 28
	pha		; 48
	plx		; FA
	inc $F0.b,X		; F6 F0
	php		; 08
	rol A		; 2A
	pha		; 48
	cop $EE.b		; 02 EE
	cpx #$2C08.w		; E0 08 2C
	pha		; 48
	ora ($DE.b)		; 12 DE
	cpx #$2E08.w		; E0 08 2E
	pha		; 48
	asl A		; 0A
	inc $F0.b		; E6 F0
	php		; 08
	rti		; 40

	pha		; 48
	trb $E4.b		; 14 E4
	cld		; D8
	brk $42.b		; 00 42
	rti		; 40

	sbc $A8FF.w,Y		; F9 FF A8
	brk $43.b		; 00 43
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	tay		; A8
	brk $44.b		; 00 44
	rti		; 40

	sbc ($06.b)		; F2 06
	bcs   0.b		; B0 00
	eor $40.b		; 45 40
	plx		; FA
	inc $00B0.w,X		; FE B0 00
	lsr $40.b		; 46 40
	cop $F6.b		; 02 F6
	bcs   0.b		; B0 00
	eor [$40.b]		; 47 40
	phx		; DA
	asl $00B8.w,X		; 1E B8 00
	pha		; 48
	rti		; 40

	trb $E4.b		; 14 E4
	cpy #$4900.w		; C0 00 49
	rti		; 40

	trb $E4.b		; 14 E4
	iny		; C8
	brk $4A.b		; 00 4A
	rti		; 40

	trb $E4.b		; 14 E4
	bne   0.b		; D0 00
	phk		; 4B
	rti		; 40

	cpx $14.b		; E4 14
	cld		; D8
	brk $4C.b		; 00 4C
	rti		; 40

	cpx $D80C.w		; EC 0C D8
	brk $4D.b		; 00 4D
	rti		; 40

	pea $D804.w		; F4 04 D8
	brk $4E.b		; 00 4E
	rti		; 40

	jsr ($D8FC.w,X)		; FC FC D8
	brk $4F.b		; 00 4F
	rti		; 40

	tsb $F4.b		; 04 F4
	cld		; D8
	brk $52.b		; 00 52
	rti		; 40

	tsb $D8EC.w		; 0C EC D8
	brk $53.b		; 00 53
	rti		; 40

	inc A		; 1A
	dec $00F0.w,X		; DE F0 00
	mvn $1A,$40		; 54 40 1A
	dec $00F8.w,X		; DE F8 00
	eor $40.b,X		; 55 40
	ora $FC.b,S		; 03 FC
	jsr ($00F6.w,X)		; FC F6 00
	lsr $40.b,X		; 56 40
	jsr ($FEFC.w,X)		; FC FC FE
	brk $57.b		; 00 57
	rti		; 40

	tsb $F4.b		; 04 F4
	inc $5800.w,X		; FE 00 58
	rti		; 40

	and $00.b,S		; 23 00
	beq -96.b		; F0 A0
	php		; 08
	brk $48.b		; 00 48
	bpl -32.b		; 10 E0
	ldy #$0208.w		; A0 08 02
	pha		; 48
	bpl -32.b		; 10 E0
	cpy #$0408.w		; C0 08 04
	pha		; 48
	cld		; D8
	clc		; 18
	cpy #$0608.w		; C0 08 06
	pha		; 48
	inx		; E8
	php		; 08
	cpy #$0808.w		; C0 08 08
	pha		; 48
	sed		; F8
	sed		; F8
	cpy #$0A08.w		; C0 08 0A
	pha		; 48
	inx		; E8
	php		; 08
	cpx #$0C08.w		; E0 08 0C
	pha		; 48
	inx		; E8
	php		; 08
	bne   8.b		; D0 08
	asl $F848.w		; 0E 48 F8
	sed		; F8
	bne   8.b		; D0 08
	jsr $F848.w		; 20 48 F8
	sed		; F8
	cpx #$2208.w		; E0 08 22
	pha		; 48
	php		; 08
	inx		; E8
	cpx #$2408.w		; E0 08 24
	pha		; 48
	sbc $F0F7.w,Y		; F9 F7 F0
	php		; 08
	rol $48.b		; 26 48
	phx		; DA
	asl $B0.b,X		; 16 B0
	php		; 08
	plp		; 28
	pha		; 48
	nop		; EA
	asl $B0.b		; 06 B0
	php		; 08
	rol A		; 2A
	pha		; 48
	plx		; FA
	inc $B0.b,X		; F6 B0
	php		; 08
	bit $0A48.w		; 2C 48 0A
	inc $B0.b		; E6 B0
	php		; 08
	rol $0848.w		; 2E 48 08
	beq -56.b		; F0 C8
	brk $40.b		; 00 40
	rti		; 40

	cpx #$D018.w		; E0 18 D0
	brk $41.b		; 00 41
	rti		; 40

	php		; 08
	beq -48.b		; F0 D0
	brk $42.b		; 00 42
	rti		; 40

	php		; 08
	beq -40.b		; F0 D8
	brk $43.b		; 00 43
	rti		; 40

	bpl -24.b		; 10 E8
	cld		; D8
	brk $44.b		; 00 44
	rti		; 40

	sbc ($17.b,X)		; E1 17
	beq   0.b		; F0 00
	eor $40.b		; 45 40
	sbc #$F00F.w		; E9 0F F0
	brk $46.b		; 00 46
	rti		; 40

	sbc ($07.b),Y		; F1 07
	beq   0.b		; F0 00
	eor [$40.b]		; 47 40
	sed		; F8
	brk $A8.b		; 00 A8
	brk $48.b		; 00 48
	rti		; 40

	ora #$F0EF.w		; 09 EF F0
	brk $49.b		; 00 49
	rti		; 40

	ora #$F8EF.w		; 09 EF F8
	brk $4A.b		; 00 4A
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	sed		; F8
	brk $4B.b		; 00 4B
	rti		; 40

	cpx #$18.b		; E0 18
	tay		; A8
	brk $4C.b		; 00 4C
	rti		; 40

	inx		; E8
	bpl -88.b		; 10 A8
	brk $4D.b		; 00 4D
	rti		; 40

	beq   8.b		; F0 08
	tay		; A8
	brk $4E.b		; 00 4E
	rti		; 40

	php		; 08
	beq -64.b		; F0 C0
	brk $4F.b		; 00 4F
	rti		; 40

	inc A		; 1A
	dec $00B0.w,X		; DE B0 00
	bvc  64.b		; 50 40
	inc A		; 1A
	dec $00B8.w,X		; DE B8 00
	eor ($40.b),Y		; 51 40
	sbc $13.b		; E5 13
	lda ($00.b,X)		; A1 00
	eor ($40.b)		; 52 40
	ora $FC.b,S		; 03 FC
	jsr ($00F6.w,X)		; FC F6 00
	eor ($40.b,S),Y		; 53 40
	jsr ($FEFC.w,X)		; FC FC FE
	brk $54.b		; 00 54
	rti		; 40

	tsb $F4.b		; 04 F4
	inc $5500.w,X		; FE 00 55
	rti		; 40

	bra  14.b		; 80 0E
	sta ($0E.b,X)		; 81 0E
	bcc  14.b		; 90 0E
	sta ($0E.b),Y		; 91 0E
	.db $82, $0E, $83		; 82 0E 83
	asl $0E92.w		; 0E 92 0E
	sta ($0E.b,S),Y		; 93 0E
	sty $0E.b		; 84 0E
	sta $0E.b		; 85 0E
	sty $0E.b,X		; 94 0E
	sta $0E.b,X		; 95 0E
	stx $0E.b		; 86 0E
	sta [$0E.b]		; 87 0E
	stx $0E.b,Y		; 96 0E
	sta [$0E.b],Y		; 97 0E
	dey		; 88
	asl $0E89.w		; 0E 89 0E
	tya		; 98
	asl $0E99.w		; 0E 99 0E
	txa		; 8A
	asl $0E8B.w		; 0E 8B 0E
	txs		; 9A
	asl $0E9B.w		; 0E 9B 0E
	sty $8D0E.w		; 8C 0E 8D
	asl $0E9C.w		; 0E 9C 0E
	sta $8E0E.w,X		; 9D 0E 8E
	asl $0E8F.w		; 0E 8F 0E
	stz $9F0E.w,X		; 9E 0E 9F
	asl $0EA0.w		; 0E A0 0E
	lda ($0E.b,X)		; A1 0E
	bcs  14.b		; B0 0E
	lda ($0E.b),Y		; B1 0E
	ldx #$0E.b		; A2 0E
	lda $0E.b,S		; A3 0E
	lda ($0E.b)		; B2 0E
	lda ($0E.b,S),Y		; B3 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $73.b		; C5 73
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	cpx #$0C.b		; E0 0C
	sbc ($0C.b,X)		; E1 0C
	beq  12.b		; F0 0C
	sbc ($0C.b),Y		; F1 0C
	cmp [$73.b]		; C7 73
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	ldy $0C.b		; A4 0C
	lda $0C.b		; A5 0C
	ldy $0C.b,X		; B4 0C
	lda $0C.b,X		; B5 0C
	cmp #$0473.w		; C9 73 04
	brk $02.b		; 00 02
	brk $C6.b		; 00 C6
	tsb $0CC7.w		; 0C C7 0C
	dec $0C.b,X		; D6 0C
	cmp [$0C.b],Y		; D7 0C
	wai		; CB
	adc ($04.b,S),Y		; 73 04
	brk $02.b		; 00 02
	brk $A4.b		; 00 A4
	tsb $0CA5.w		; 0C A5 0C
	ldy $0C.b,X		; B4 0C
	lda $0C.b,X		; B5 0C
	cmp $0473.w		; CD 73 04
	brk $02.b		; 00 02
	brk $CE.b		; 00 CE
	tsb $0CCF.w		; 0C CF 0C
	dec $DF0C.w,X		; DE 0C DF
	tsb $73CF.w		; 0C CF 73
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	ldx #$0C.b		; A2 0C
	lda $0C.b,S		; A3 0C
	lda ($0C.b)		; B2 0C
	lda ($0C.b,S),Y		; B3 0C
	cmp ($73.b),Y		; D1 73
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	dec $CF0C.w		; CE 0C CF
	tsb $0CDE.w		; 0C DE 0C
	cmp $73D30C.l,X		; DF 0C D3 73
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	ldy $AD0C.w		; AC 0C AD
	tsb $0CBC.w		; 0C BC 0C
	lda $D80C.w,X		; BD 0C D8
	adc ($04.b,S),Y		; 73 04
	brk $02.b		; 00 02
	brk $0A.b		; 00 0A
	asl $0E0B.w		; 0E 0B 0E
	inc A		; 1A
	asl $0E1B.w		; 0E 1B 0E
	cld		; D8
	adc ($04.b,S),Y		; 73 04
	brk $02.b		; 00 02
	brk $0C.b		; 00 0C
	asl $0E0D.w		; 0E 0D 0E
	trb $1D0E.w		; 1C 0E 1D
	asl $73D8.w		; 0E D8 73
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	asl $0F0E.w		; 0E 0E 0F
	asl $0E1E.w		; 0E 1E 0E
	ora $73D80E.l,X		; 1F 0E D8 73
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	jsr $210E.w		; 20 0E 21
	asl $0E30.w		; 0E 30 0E
	and ($0E.b),Y		; 31 0E
	cld		; D8
	adc ($04.b,S),Y		; 73 04
	brk $02.b		; 00 02
	brk $22.b		; 00 22
	asl $0E23.w		; 0E 23 0E
	and ($0E.b)		; 32 0E
	and ($0E.b,S),Y		; 33 0E
	jmp $107E.w		; 4C 7E 10
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	and [$00.b]		; 27 00
	and [$01.b]		; 27 01
	and [$02.b]		; 27 02
	and [$02.b]		; 27 02
	adc [$01.b]		; 67 01
	adc [$00.b]		; 67 00
	and [$00.b]		; 27 00
	and [$00.b]		; 27 00
	and [$05.b]		; 27 05
	and [$06.b]		; 27 06
	and [$07.b]		; 27 07
	and [$08.b]		; 27 08
	and [$09.b]		; 27 09
	and [$05.b]		; 27 05
	adc [$00.b]		; 67 00
	and [$0E.b]		; 27 0E
	and [$0F.b]		; 27 0F
	and [$10.b]		; 27 10
	and [$11.b]		; 27 11
	and [$12.b]		; 27 12
	and [$13.b]		; 27 13
	and [$0F.b]		; 27 0F
	adc [$0E.b]		; 67 0E
	adc [$1B.b]		; 67 1B
	and [$1C.b]		; 27 1C
	and [$1D.b]		; 27 1D
	and [$1E.b]		; 27 1E
	and [$1F.b]		; 27 1F
	and [$20.b]		; 27 20
	and [$1C.b]		; 27 1C
	adc [$1B.b]		; 67 1B
	adc [$1B.b]		; 67 1B
	lda [$1C.b]		; A7 1C
	lda [$28.b]		; A7 28
	and [$29.b]		; 27 29
	and [$2A.b]		; 27 2A
	and [$2B.b]		; 27 2B
	and [$1C.b]		; 27 1C
	sbc [$1B.b]		; E7 1B
	sbc [$0E.b]		; E7 0E
	lda [$0F.b]		; A7 0F
	lda [$34.b]		; A7 34
	and [$35.b]		; 27 35
	and [$36.b]		; 27 36
	and [$37.b]		; 27 37
	and [$0F.b]		; 27 0F
	sbc [$0E.b]		; E7 0E
	sbc [$00.b]		; E7 00
	and [$05.b]		; 27 05
	lda [$3F.b]		; A7 3F
	and [$40.b]		; 27 40
	and [$41.b]		; 27 41
	and [$42.b]		; 27 42
	and [$05.b]		; 27 05
	sbc [$00.b]		; E7 00
	and [$00.b]		; 27 00
	and [$00.b]		; 27 00
	and [$01.b]		; 27 01
	lda [$02.b]		; A7 02
	lda [$02.b]		; A7 02
	sbc [$01.b]		; E7 01
	sbc [$00.b]		; E7 00
	and [$00.b]		; 27 00
	and [$4C.b]		; 27 4C
	ror $0010.w,X		; 7E 10 00
	php		; 08
	brk $00.b		; 00 00
	and [$00.b]		; 27 00
	and [$A3.b]		; 27 A3
	and [$A4.b]		; 27 A4
	and [$A5.b]		; 27 A5
	and [$A6.b]		; 27 A6
	and [$00.b]		; 27 00
	and [$00.b]		; 27 00
	and [$00.b]		; 27 00
	and [$A7.b]		; 27 A7
	and [$A8.b]		; 27 A8
	and [$A9.b]		; 27 A9
	and [$AA.b]		; 27 AA
	and [$AB.b]		; 27 AB
	and [$AC.b]		; 27 AC
	and [$00.b]		; 27 00
	and [$AD.b]		; 27 AD
	and [$AE.b]		; 27 AE
	and [$AF.b]		; 27 AF
	and [$B0.b]		; 27 B0
	and [$B1.b]		; 27 B1
	and [$B2.b]		; 27 B2
	and [$B3.b]		; 27 B3
	and [$00.b]		; 27 00
	and [$B4.b]		; 27 B4
	and [$B5.b]		; 27 B5
	and [$B6.b]		; 27 B6
	and [$00.b]		; 27 00
	and [$B7.b]		; 27 B7
	and [$00.b]		; 27 00
	and [$B8.b]		; 27 B8
	and [$B9.b]		; 27 B9
	and [$BA.b]		; 27 BA
	and [$BB.b]		; 27 BB
	and [$BC.b]		; 27 BC
	and [$BD.b]		; 27 BD
	and [$BE.b]		; 27 BE
	and [$BF.b]		; 27 BF
	and [$C0.b]		; 27 C0
	and [$C1.b]		; 27 C1
	and [$C2.b]		; 27 C2
	and [$C3.b]		; 27 C3
	and [$C4.b]		; 27 C4
	and [$C5.b]		; 27 C5
	and [$C6.b]		; 27 C6
	and [$00.b]		; 27 00
	and [$C7.b]		; 27 C7
	and [$C8.b]		; 27 C8
	and [$00.b]		; 27 00
	and [$C9.b]		; 27 C9
	and [$CA.b]		; 27 CA
	and [$CB.b]		; 27 CB
	and [$CC.b]		; 27 CC
	and [$CD.b]		; 27 CD
	and [$CE.b]		; 27 CE
	and [$00.b]		; 27 00
	and [$00.b]		; 27 00
	and [$00.b]		; 27 00
	and [$CF.b]		; 27 CF
	and [$D0.b]		; 27 D0
	and [$D1.b]		; 27 D1
	and [$D2.b]		; 27 D2
	and [$00.b]		; 27 00
	and [$00.b]		; 27 00
	and [$4C.b]		; 27 4C
	ror $0010.w,X		; 7E 10 00
	php		; 08
	brk $00.b		; 00 00
	and [$00.b]		; 27 00
	and [$4C.b]		; 27 4C
	and [$4D.b]		; 27 4D
	and [$4D.b]		; 27 4D
	adc [$4C.b]		; 67 4C
	adc [$00.b]		; 67 00
	and [$00.b]		; 27 00
	and [$00.b]		; 27 00
	and [$4F.b]		; 27 4F
	and [$50.b]		; 27 50
	and [$00.b]		; 27 00
	and [$51.b]		; 27 51
	and [$52.b]		; 27 52
	and [$53.b]		; 27 53
	and [$00.b]		; 27 00
	and [$59.b]		; 27 59
	and [$5A.b]		; 27 5A
	and [$5B.b]		; 27 5B
	and [$5C.b]		; 27 5C
	and [$5D.b]		; 27 5D
	and [$5E.b]		; 27 5E
	and [$5F.b]		; 27 5F
	and [$59.b]		; 27 59
	adc [$67.b]		; 67 67
	and [$68.b]		; 27 68
	and [$69.b]		; 27 69
	and [$6A.b]		; 27 6A
	and [$6B.b]		; 27 6B
	and [$6C.b]		; 27 6C
	and [$6D.b]		; 27 6D
	and [$67.b]		; 27 67
	adc [$75.b]		; 67 75
	and [$76.b]		; 27 76
	and [$77.b]		; 27 77
	and [$78.b]		; 27 78
	and [$79.b]		; 27 79
	and [$7A.b]		; 27 7A
	and [$7B.b]		; 27 7B
	and [$7C.b]		; 27 7C
	and [$00.b]		; 27 00
	and [$84.b]		; 27 84
	and [$85.b]		; 27 85
	and [$86.b]		; 27 86
	and [$87.b]		; 27 87
	and [$88.b]		; 27 88
	and [$89.b]		; 27 89
	and [$00.b]		; 27 00
	and [$00.b]		; 27 00
	and [$90.b]		; 27 90
	and [$91.b]		; 27 91
	and [$92.b]		; 27 92
	and [$93.b]		; 27 93
	and [$94.b]		; 27 94
	and [$95.b]		; 27 95
	and [$00.b]		; 27 00
	and [$00.b]		; 27 00
	and [$00.b]		; 27 00
	and [$9C.b]		; 27 9C
	and [$9D.b]		; 27 9D
	and [$9E.b]		; 27 9E
	and [$9C.b]		; 27 9C
	adc [$00.b]		; 67 00
	and [$00.b]		; 27 00
	and [$4C.b]		; 27 4C
	ror $0010.w,X		; 7E 10 00
	php		; 08
	brk $00.b		; 00 00
	and [$00.b]		; 27 00
	and [$03.b]		; 27 03
	and [$04.b]		; 27 04
	and [$04.b]		; 27 04
	adc [$03.b]		; 67 03
	adc [$00.b]		; 67 00
	and [$00.b]		; 27 00
	and [$00.b]		; 27 00
	and [$0A.b]		; 27 0A
	and [$0B.b]		; 27 0B
	and [$0C.b]		; 27 0C
	and [$0D.b]		; 27 0D
	and [$0B.b]		; 27 0B
	adc [$0A.b]		; 67 0A
	adc [$00.b]		; 67 00
	and [$14.b]		; 27 14
	and [$15.b]		; 27 15
	and [$16.b]		; 27 16
	and [$17.b]		; 27 17
	and [$18.b]		; 27 18
	and [$19.b]		; 27 19
	and [$1A.b]		; 27 1A
	and [$14.b]		; 27 14
	adc [$21.b]		; 67 21
	and [$22.b]		; 27 22
	and [$23.b]		; 27 23
	and [$24.b]		; 27 24
	and [$25.b]		; 27 25
	and [$26.b]		; 27 26
	and [$27.b]		; 27 27
	and [$21.b]		; 27 21
	adc [$2C.b]		; 67 2C
	and [$2D.b]		; 27 2D
	and [$2E.b]		; 27 2E
	and [$2F.b]		; 27 2F
	and [$30.b]		; 27 30
	and [$31.b]		; 27 31
	and [$32.b]		; 27 32
	and [$33.b]		; 27 33
	and [$38.b]		; 27 38
	and [$39.b]		; 27 39
	and [$3A.b]		; 27 3A
	and [$3B.b]		; 27 3B
	and [$3C.b]		; 27 3C
	and [$3D.b]		; 27 3D
	and [$3E.b]		; 27 3E
	and [$00.b]		; 27 00
	and [$43.b]		; 27 43
	and [$44.b]		; 27 44
	and [$45.b]		; 27 45
	and [$46.b]		; 27 46
	and [$47.b]		; 27 47
	and [$48.b]		; 27 48
	and [$49.b]		; 27 49
	and [$00.b]		; 27 00
	and [$00.b]		; 27 00
	and [$00.b]		; 27 00
	and [$4A.b]		; 27 4A
	and [$4B.b]		; 27 4B
	and [$4B.b]		; 27 4B
	adc [$4A.b]		; 67 4A
	adc [$00.b]		; 67 00
	and [$00.b]		; 27 00
	and [$4C.b]		; 27 4C
	ror $0010.w,X		; 7E 10 00
	php		; 08
	brk $00.b		; 00 00
	and [$00.b]		; 27 00
	and [$0E.b]		; 27 0E
	and [$4E.b]		; 27 4E
	and [$4E.b]		; 27 4E
	adc [$0E.b]		; 67 0E
	adc [$00.b]		; 67 00
	and [$00.b]		; 27 00
	and [$00.b]		; 27 00
	and [$54.b]		; 27 54
	and [$55.b]		; 27 55
	and [$56.b]		; 27 56
	and [$57.b]		; 27 57
	and [$58.b]		; 27 58
	and [$54.b]		; 27 54
	adc [$00.b]		; 67 00
	and [$60.b]		; 27 60
	and [$61.b]		; 27 61
	and [$62.b]		; 27 62
	and [$63.b]		; 27 63
	and [$64.b]		; 27 64
	and [$65.b]		; 27 65
	and [$66.b]		; 27 66
	and [$60.b]		; 27 60
	adc [$6E.b]		; 67 6E
	and [$6F.b]		; 27 6F
	and [$70.b]		; 27 70
	and [$71.b]		; 27 71
	and [$72.b]		; 27 72
	and [$73.b]		; 27 73
	and [$74.b]		; 27 74
	and [$6E.b]		; 27 6E
	adc [$7D.b]		; 67 7D
	and [$7E.b]		; 27 7E
	and [$7F.b]		; 27 7F
	and [$80.b]		; 27 80
	and [$81.b]		; 27 81
	and [$82.b]		; 27 82
	and [$83.b]		; 27 83
	and [$7D.b]		; 27 7D
	adc [$00.b]		; 67 00
	and [$8A.b]		; 27 8A
	and [$8B.b]		; 27 8B
	and [$8C.b]		; 27 8C
	and [$8D.b]		; 27 8D
	and [$8E.b]		; 27 8E
	and [$8F.b]		; 27 8F
	and [$00.b]		; 27 00
	and [$00.b]		; 27 00
	and [$96.b]		; 27 96
	and [$97.b]		; 27 97
	and [$98.b]		; 27 98
	and [$99.b]		; 27 99
	and [$9A.b]		; 27 9A
	and [$9B.b]		; 27 9B
	and [$00.b]		; 27 00
	and [$00.b]		; 27 00
	and [$9F.b]		; 27 9F
	and [$A0.b]		; 27 A0
	and [$A1.b]		; 27 A1
	and [$A1.b]		; 27 A1
	adc [$A2.b]		; 67 A2
	and [$9F.b]		; 27 9F
	adc [$00.b]		; 67 00
	and [$03.b]		; 27 03
	pea $F1FC.w		; F4 FC F1
	php		; 08
	brk $48.b		; 00 48
	tsb $F4.b		; 04 F4
	sbc ($00.b),Y		; F1 00
	rol $0440.w		; 2E 40 04
	pea $00F9.w		; F4 F9 00
	and $F40340.l		; 2F 40 03 F4
	jsr ($08F1.w,X)		; FC F1 08
	cop $48.b		; 02 48
	tsb $F4.b		; 04 F4
	sbc ($00.b),Y		; F1 00
	rol $0440.w,X		; 3E 40 04
	pea $00F9.w		; F4 F9 00
	and $F40340.l,X		; 3F 40 03 F4
	jsr ($08F1.w,X)		; FC F1 08
	tsb $48.b		; 04 48
	tsb $F4.b		; 04 F4
	sbc ($00.b),Y		; F1 00
	rti		; 40

	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $4100.w,Y		; F9 00 41
	rti		; 40

	ora $F4.b,S		; 03 F4
	jsr ($08F1.w,X)		; FC F1 08
	asl $48.b		; 06 48
	tsb $F4.b		; 04 F4
	sbc ($00.b),Y		; F1 00
	.db $42, $40		; 42 40
	tsb $F4.b		; 04 F4
	sbc $4300.w,Y		; F9 00 43
	rti		; 40

	ora $F4.b,S		; 03 F4
	jsr ($08F1.w,X)		; FC F1 08
	php		; 08
	pha		; 48
	tsb $F4.b		; 04 F4
	sbc ($00.b),Y		; F1 00
	mvp $04,$40		; 44 40 04
	pea $00F9.w		; F4 F9 00
	eor $40.b		; 45 40
	ora $F4.b,S		; 03 F4
	jsr ($08F1.w,X)		; FC F1 08
	asl A		; 0A
	pha		; 48
	tsb $F4.b		; 04 F4
	sbc ($00.b),Y		; F1 00
	lsr $40.b		; 46 40
	tsb $F4.b		; 04 F4
	sbc $4700.w,Y		; F9 00 47
	rti		; 40

	ora $F4.b,S		; 03 F4
	jsr ($08F1.w,X)		; FC F1 08
	tsb $0448.w		; 0C 48 04
	pea $00F1.w		; F4 F1 00
	pha		; 48
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $4900.w,Y		; F9 00 49
	rti		; 40

	ora $F4.b,S		; 03 F4
	jsr ($08F1.w,X)		; FC F1 08
	asl $0448.w		; 0E 48 04
	pea $00F1.w		; F4 F1 00
	lsr A		; 4A
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $4B00.w,Y		; F9 00 4B
	rti		; 40

	ora $F4.b,S		; 03 F4
	jsr ($08F1.w,X)		; FC F1 08
	jsr $0448.w		; 20 48 04
	pea $00F1.w		; F4 F1 00
	jmp $0440.w		; 4C 40 04
	pea $00F9.w		; F4 F9 00
	eor $0140.w		; 4D 40 01
	sed		; F8
	sed		; F8
	sed		; F8
	php		; 08
	jsl $F40548.l		; 22 48 05 F4
	jsr ($08F8.w,X)		; FC F8 08
	bit $48.b		; 24 48
	jsr ($08FC.w,X)		; FC FC 08
	brk $4E.b		; 00 4E
	rti		; 40

	jsr ($F0FC.w,X)		; FC FC F0
	bra  78.b		; 80 4E
	cpy #$04.b		; C0 04
	pea $40F8.w		; F4 F8 40
	bit $00.b		; 24 00
	tsb $F4.b		; 04 F4
	brk $40.b		; 00 40
	bit $00.b,X		; 34 00
	tsb $F0.b		; 04 F0
	brk $F0.b		; 00 F0
	php		; 08
	rol $48.b		; 26 48
	brk $F0.b		; 00 F0
	beq   8.b		; F0 08
	plp		; 28
	pha		; 48
	beq   0.b		; F0 00
	brk $08.b		; 00 08
	rol A		; 2A
	pha		; 48
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	bit $0848.w		; 2C 48 08
	jsr ($F1FC.w,X)		; FC FC F1
	brk $4F.b		; 00 4F
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc ($00.b),Y		; F1 00
	bvc  64.b		; 50 40
	sbc $F9FB.w,X		; FD FB F9
	brk $51.b		; 00 51
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $5200.w,Y		; F9 00 52
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc #$5300.w		; E9 00 53
	rti		; 40

	sbc $00E9F9.l,X		; FF F9 E9 00
	mvn $F8,$40		; 54 40 F8
	brk $E1.b		; 00 E1
	brk $55.b		; 00 55
	rti		; 40

	brk $F8.b		; 00 F8
	sbc ($00.b,X)		; E1 00
	lsr $40.b,X		; 56 40
	ora $02.b		; 05 02
	inc $E9.b,X		; F6 E9
	brk $57.b		; 00 57
	rti		; 40

	brk $F8.b		; 00 F8
	sbc ($00.b),Y		; F1 00
	cli		; 58
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $5900.w,Y		; F9 00 59
	rti		; 40

	sed		; F8
	brk $F2.b		; 00 F2
	brk $5A.b		; 00 5A
	rti		; 40

	sed		; F8
	brk $FA.b		; 00 FA
	brk $5B.b		; 00 5B
	rti		; 40

	asl $F3.b		; 06 F3
	ora $F1.b		; 05 F1
	brk $5C.b		; 00 5C
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b),Y		; F1 00
	eor $F340.w,X		; 5D 40 F3
	ora $F9.b		; 05 F9
	brk $5E.b		; 00 5E
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc $5F00.w,Y		; F9 00 5F
	rti		; 40

	xce		; FB
	sbc $00F2.w,X		; FD F2 00
	rts		; 60

	rti		; 40

	xce		; FB
	sbc $00FA.w,X		; FD FA 00
	adc ($40.b,X)		; 61 40
	asl $F4.b		; 06 F4
	tsb $F1.b		; 04 F1
	brk $62.b		; 00 62
	rti		; 40

	jsr ($F1FC.w,X)		; FC FC F1
	brk $63.b		; 00 63
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc ($00.b),Y		; F1 00
	stz $40.b		; 64 40
	sbc $03.b,X		; F5 03
	sbc $6500.w,Y		; F9 00 65
	rti		; 40

	sbc $F9FB.w,X		; FD FB F9
	brk $66.b		; 00 66
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $6700.w,Y		; F9 00 67
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $00.b		; 00 00
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $01.b		; 00 01
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0200.w		; E9 00 02
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	ora $40.b,S		; 03 40
	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	tsb $40.b		; 04 40
	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	ora $40.b		; 05 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $06.b		; 00 06
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $07.b		; 00 07
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0800.w		; E9 00 08
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	ora #$FB40.w		; 09 40 FB
	sbc $00E1.w,X		; FD E1 00
	asl A		; 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	phd		; 0B
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0E00.w		; E9 00 0E
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	ora $FDFB40.l		; 0F 40 FB FD
	sbc ($00.b,X)		; E1 00
	bpl  64.b		; 10 40
	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	ora ($40.b),Y		; 11 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $12.b		; 00 12
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $13.b		; 00 13
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$1400.w		; E9 00 14
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	ora $40.b,X		; 15 40
	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	asl $40.b,X		; 16 40
	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	ora [$40.b],Y		; 17 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $18.b		; 00 18
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $19.b		; 00 19
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$1A00.w		; E9 00 1A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	tas		; 1B
	rti		; 40

	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	trb $0340.w		; 1C 40 03
	sbc $E1.b,X		; F5 E1
	brk $1D.b		; 00 1D
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $1E.b		; 00 1E
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $1F.b		; 00 1F
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$2000.w		; E9 00 20
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	and ($40.b,X)		; 21 40
	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	jsl $F50340.l		; 22 40 03 F5
	sbc ($00.b,X)		; E1 00
	and $40.b,S		; 23 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $24.b		; 00 24
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $25.b		; 00 25
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$2600.w		; E9 00 26
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	and [$40.b]		; 27 40
	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	plp		; 28
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	and #$0640.w		; 29 40 06
	sbc $03.b,X		; F5 03
	sbc #$0000.w		; E9 00 00
	rti		; 40

	sbc $E9FB.w,X		; FD FB E9
	brk $01.b		; 00 01
	rti		; 40

	ora $F3.b		; 05 F3
	sbc #$0200.w		; E9 00 02
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	ora $40.b,S		; 03 40
	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	tsb $40.b		; 04 40
	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	ora $40.b		; 05 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $06.b		; 00 06
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $07.b		; 00 07
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0800.w		; E9 00 08
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	ora #$FB40.w		; 09 40 FB
	sbc $00E1.w,X		; FD E1 00
	asl A		; 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	phd		; 0B
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0E00.w		; E9 00 0E
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	ora $FBFD40.l		; 0F 40 FD FB
	sbc ($00.b,X)		; E1 00
	bpl  64.b		; 10 40
	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	ora ($40.b),Y		; 11 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $12.b		; 00 12
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $13.b		; 00 13
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$1400.w		; E9 00 14
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	ora $40.b,X		; 15 40
	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	asl $40.b,X		; 16 40
	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	ora [$40.b],Y		; 17 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $18.b		; 00 18
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $19.b		; 00 19
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$1A00.w		; E9 00 1A
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	tas		; 1B
	rti		; 40

	sbc $E1FB.w,X		; FD FB E1
	brk $1C.b		; 00 1C
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	ora $0640.w,X		; 1D 40 06
	pea $E904.w		; F4 04 E9
	brk $1E.b		; 00 1E
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $1F.b		; 00 1F
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$2000.w		; E9 00 20
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	and ($40.b,X)		; 21 40
	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	jsl $F50340.l		; 22 40 03 F5
	sbc ($00.b,X)		; E1 00
	and $40.b,S		; 23 40
	asl $F5.b		; 06 F5
	ora $E1.b,S		; 03 E1
	brk $24.b		; 00 24
	rti		; 40

	sbc $E1FB.w,X		; FD FB E1
	brk $25.b		; 00 25
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	rol $40.b		; 26 40
	sbc ($05.b,S),Y		; F3 05
	sbc #$2700.w		; E9 00 27
	rti		; 40

	xce		; FB
	sbc $00E9.w,X		; FD E9 00
	plp		; 28
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc #$2900.w		; E9 00 29
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $00.b		; 00 00
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $01.b		; 00 01
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0200.w		; E9 00 02
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	ora $40.b,S		; 03 40
	sbc $E1FB.w,X		; FD FB E1
	brk $04.b		; 00 04
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	ora $40.b		; 05 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $06.b		; 00 06
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $07.b		; 00 07
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0800.w		; E9 00 08
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	ora #$FB40.w		; 09 40 FB
	sbc $00E1.w,X		; FD E1 00
	asl A		; 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	phd		; 0B
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0E00.w		; E9 00 0E
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	ora $FBFD40.l		; 0F 40 FD FB
	sbc ($00.b,X)		; E1 00
	bpl  64.b		; 10 40
	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	ora ($40.b),Y		; 11 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $12.b		; 00 12
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $13.b		; 00 13
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$1400.w		; E9 00 14
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	ora $40.b,X		; 15 40
	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	asl $40.b,X		; 16 40
	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	ora [$40.b],Y		; 17 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $18.b		; 00 18
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $19.b		; 00 19
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$1A00.w		; E9 00 1A
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	tas		; 1B
	rti		; 40

	sbc $E1FB.w,X		; FD FB E1
	brk $1C.b		; 00 1C
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	ora $0640.w,X		; 1D 40 06
	pea $E904.w		; F4 04 E9
	brk $1E.b		; 00 1E
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $1F.b		; 00 1F
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$2000.w		; E9 00 20
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	and ($40.b,X)		; 21 40
	sbc $E1FB.w,X		; FD FB E1
	brk $22.b		; 00 22
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	and $40.b,S		; 23 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $24.b		; 00 24
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $25.b		; 00 25
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$2600.w		; E9 00 26
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	and [$40.b]		; 27 40
	sbc $E1FB.w,X		; FD FB E1
	brk $28.b		; 00 28
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	and #$0640.w		; 29 40 06
	pea $E904.w		; F4 04 E9
	brk $00.b		; 00 00
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $01.b		; 00 01
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0200.w		; E9 00 02
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	ora $40.b,S		; 03 40
	sbc $E1FB.w,X		; FD FB E1
	brk $04.b		; 00 04
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	ora $40.b		; 05 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $06.b		; 00 06
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $07.b		; 00 07
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0800.w		; E9 00 08
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	ora #$FD40.w		; 09 40 FD
	xce		; FB
	sbc ($00.b,X)		; E1 00
	asl A		; 0A
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	phd		; 0B
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0E00.w		; E9 00 0E
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	ora $FBFD40.l		; 0F 40 FD FB
	sbc ($00.b,X)		; E1 00
	bpl  64.b		; 10 40
	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	ora ($40.b),Y		; 11 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $12.b		; 00 12
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $13.b		; 00 13
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$1400.w		; E9 00 14
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	ora $40.b,X		; 15 40
	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	asl $40.b,X		; 16 40
	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	ora [$40.b],Y		; 17 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $18.b		; 00 18
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $19.b		; 00 19
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$1A00.w		; E9 00 1A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	tas		; 1B
	rti		; 40

	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	trb $0340.w		; 1C 40 03
	sbc $E1.b,X		; F5 E1
	brk $1D.b		; 00 1D
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $1E.b		; 00 1E
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $1F.b		; 00 1F
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$2000.w		; E9 00 20
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	and ($40.b,X)		; 21 40
	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	jsl $F50340.l		; 22 40 03 F5
	sbc ($00.b,X)		; E1 00
	and $40.b,S		; 23 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $24.b		; 00 24
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $25.b		; 00 25
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$2600.w		; E9 00 26
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	and [$40.b]		; 27 40
	sbc $E1FB.w,X		; FD FB E1
	brk $28.b		; 00 28
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	and #$0640.w		; 29 40 06
	pea $E904.w		; F4 04 E9
	brk $00.b		; 00 00
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $01.b		; 00 01
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0200.w		; E9 00 02
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	ora $40.b,S		; 03 40
	sbc $E1FB.w,X		; FD FB E1
	brk $04.b		; 00 04
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	ora $40.b		; 05 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $06.b		; 00 06
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $07.b		; 00 07
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0800.w		; E9 00 08
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	ora #$FD40.w		; 09 40 FD
	xce		; FB
	sbc ($00.b,X)		; E1 00
	asl A		; 0A
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	phd		; 0B
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0E00.w		; E9 00 0E
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	ora $FBFD40.l		; 0F 40 FD FB
	sbc ($00.b,X)		; E1 00
	bpl  64.b		; 10 40
	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	ora ($40.b),Y		; 11 40
	asl $F4.b		; 06 F4
	tsb $E1.b		; 04 E1
	brk $12.b		; 00 12
	rti		; 40

	jsr ($E1FC.w,X)		; FC FC E1
	brk $13.b		; 00 13
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc ($00.b,X)		; E1 00
	trb $40.b		; 14 40
	sbc ($05.b,S),Y		; F3 05
	sbc #$1500.w		; E9 00 15
	rti		; 40

	xce		; FB
	sbc $00E9.w,X		; FD E9 00
	asl $40.b,X		; 16 40
	ora $F5.b,S		; 03 F5
	sbc #$1700.w		; E9 00 17
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $18.b		; 00 18
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $19.b		; 00 19
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$1A00.w		; E9 00 1A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	tas		; 1B
	rti		; 40

	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	trb $0340.w		; 1C 40 03
	sbc $E1.b,X		; F5 E1
	brk $1D.b		; 00 1D
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $1E.b		; 00 1E
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $1F.b		; 00 1F
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$2000.w		; E9 00 20
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	and ($40.b,X)		; 21 40
	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	jsl $F50340.l		; 22 40 03 F5
	sbc ($00.b,X)		; E1 00
	and $40.b,S		; 23 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $24.b		; 00 24
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $25.b		; 00 25
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$2600.w		; E9 00 26
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	and [$40.b]		; 27 40
	sbc $E1FB.w,X		; FD FB E1
	brk $28.b		; 00 28
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	and #$0740.w		; 29 40 07
	pea $E904.w		; F4 04 E9
	brk $00.b		; 00 00
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $01.b		; 00 01
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0040.w		; E9 40 00
	brk $ED.b		; 00 ED
	phd		; 0B
	sbc ($00.b,X)		; E1 00
	cop $40.b		; 02 40
	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	ora $40.b,S		; 03 40
	sbc $E1FB.w,X		; FD FB E1
	brk $04.b		; 00 04
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	ora $40.b		; 05 40
	ora [$F4.b]		; 07 F4
	tsb $E1.b		; 04 E1
	brk $06.b		; 00 06
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc ($40.b,X)		; E1 40
	asl $00.b		; 06 00
	pea $E904.w		; F4 04 E9
	brk $07.b		; 00 07
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0800.w		; E9 00 08
	rti		; 40

	jsr ($E2FC.w,X)		; FC FC E2
	brk $09.b		; 00 09
	rti		; 40

	jsr ($EAFC.w,X)		; FC FC EA
	brk $0A.b		; 00 0A
	rti		; 40

	jsr ($DDFC.w,X)		; FC FC DD
	brk $0B.b		; 00 0B
	rti		; 40

	ora [$F4.b]		; 07 F4
	tsb $E9.b		; 04 E9
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0C40.w		; E9 40 0C
	brk $F1.b		; 00 F1
	ora [$E1.b]		; 07 E1
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $E1FF.w,Y		; F9 FF E1
	brk $0F.b		; 00 0F
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b,X)		; E1 00
	bpl  64.b		; 10 40
	ora #$E1EF.w		; 09 EF E1
	brk $11.b		; 00 11
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E1.b		; 04 E1
	brk $12.b		; 00 12
	rti		; 40

	jsr ($E1FC.w,X)		; FC FC E1
	brk $13.b		; 00 13
	rti		; 40

	tsb $F4.b		; 04 F4
	sep #$00		; E2 00
	trb $40.b		; 14 40
	sbc ($05.b,S),Y		; F3 05
	sbc #$1500.w		; E9 00 15
	rti		; 40

	xce		; FB
	sbc $00E9.w,X		; FD E9 00
	asl $40.b,X		; 16 40
	ora $F5.b,S		; 03 F5
	sbc #$1700.w		; E9 00 17
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $18.b		; 00 18
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $19.b		; 00 19
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$1A00.w		; E9 00 1A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	tas		; 1B
	rti		; 40

	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	trb $0340.w		; 1C 40 03
	sbc $E1.b,X		; F5 E1
	brk $1D.b		; 00 1D
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $1E.b		; 00 1E
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $1F.b		; 00 1F
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$2000.w		; E9 00 20
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	and ($40.b,X)		; 21 40
	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	jsl $F50340.l		; 22 40 03 F5
	sbc ($00.b,X)		; E1 00
	and $40.b,S		; 23 40
	ora [$F4.b]		; 07 F4
	tsb $E9.b		; 04 E9
	brk $24.b		; 00 24
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $25.b		; 00 25
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$2440.w		; E9 40 24
	brk $ED.b		; 00 ED
	phd		; 0B
	sbc ($00.b,X)		; E1 00
	rol $40.b		; 26 40
	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	and [$40.b]		; 27 40
	sbc $E1FB.w,X		; FD FB E1
	brk $28.b		; 00 28
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	and #$0640.w		; 29 40 06
	pea $E104.w		; F4 04 E1
	brk $00.b		; 00 00
	rti		; 40

	jsr ($E1FC.w,X)		; FC FC E1
	brk $01.b		; 00 01
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc ($00.b,X)		; E1 00
	cop $40.b		; 02 40
	sbc $03.b,X		; F5 03
	sbc #$0300.w		; E9 00 03
	rti		; 40

	sbc $E9FB.w,X		; FD FB E9
	brk $04.b		; 00 04
	rti		; 40

	ora $F3.b		; 05 F3
	sbc #$0500.w		; E9 00 05
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $06.b		; 00 06
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $07.b		; 00 07
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0800.w		; E9 00 08
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	ora #$FB40.w		; 09 40 FB
	sbc $00E1.w,X		; FD E1 00
	asl A		; 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	phd		; 0B
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0E00.w		; E9 00 0E
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	ora $FDFB40.l		; 0F 40 FB FD
	sbc ($00.b,X)		; E1 00
	bpl  64.b		; 10 40
	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	ora ($40.b),Y		; 11 40
	asl $F4.b		; 06 F4
	tsb $E1.b		; 04 E1
	brk $12.b		; 00 12
	rti		; 40

	jsr ($E1FC.w,X)		; FC FC E1
	brk $13.b		; 00 13
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc ($00.b,X)		; E1 00
	trb $40.b		; 14 40
	sbc ($05.b,S),Y		; F3 05
	sbc #$1500.w		; E9 00 15
	rti		; 40

	xce		; FB
	sbc $00E9.w,X		; FD E9 00
	asl $40.b,X		; 16 40
	ora $F5.b,S		; 03 F5
	sbc #$1700.w		; E9 00 17
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $18.b		; 00 18
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $19.b		; 00 19
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$1A00.w		; E9 00 1A
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	tas		; 1B
	rti		; 40

	sbc $E1FB.w,X		; FD FB E1
	brk $1C.b		; 00 1C
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	ora $0640.w,X		; 1D 40 06
	pea $E904.w		; F4 04 E9
	brk $1E.b		; 00 1E
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $1F.b		; 00 1F
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$2000.w		; E9 00 20
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	and ($40.b,X)		; 21 40
	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	jsl $F50340.l		; 22 40 03 F5
	sbc ($00.b,X)		; E1 00
	and $40.b,S		; 23 40
	asl $F4.b		; 06 F4
	tsb $E1.b		; 04 E1
	brk $24.b		; 00 24
	rti		; 40

	jsr ($E1FC.w,X)		; FC FC E1
	brk $25.b		; 00 25
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc ($00.b,X)		; E1 00
	rol $40.b		; 26 40
	sbc $03.b,X		; F5 03
	sbc #$2700.w		; E9 00 27
	rti		; 40

	sbc $E9FB.w,X		; FD FB E9
	brk $28.b		; 00 28
	rti		; 40

	ora $F3.b		; 05 F3
	sbc #$2900.w		; E9 00 29
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E1.b		; 04 E1
	brk $00.b		; 00 00
	rti		; 40

	jsr ($E1FC.w,X)		; FC FC E1
	brk $01.b		; 00 01
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc ($00.b,X)		; E1 00
	cop $40.b		; 02 40
	sbc $03.b,X		; F5 03
	sbc #$0300.w		; E9 00 03
	rti		; 40

	sbc $E9FB.w,X		; FD FB E9
	brk $04.b		; 00 04
	rti		; 40

	ora $F3.b		; 05 F3
	sbc #$0500.w		; E9 00 05
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $06.b		; 00 06
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $07.b		; 00 07
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0800.w		; E9 00 08
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	ora #$FB40.w		; 09 40 FB
	sbc $00E1.w,X		; FD E1 00
	asl A		; 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	phd		; 0B
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0E00.w		; E9 00 0E
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	ora $FBFD40.l		; 0F 40 FD FB
	sbc ($00.b,X)		; E1 00
	bpl  64.b		; 10 40
	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	ora ($40.b),Y		; 11 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $12.b		; 00 12
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $13.b		; 00 13
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$1400.w		; E9 00 14
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	ora $40.b,X		; 15 40
	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	asl $40.b,X		; 16 40
	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	ora [$40.b],Y		; 17 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $18.b		; 00 18
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $19.b		; 00 19
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$1A00.w		; E9 00 1A
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	tas		; 1B
	rti		; 40

	sbc $E1FB.w,X		; FD FB E1
	brk $1C.b		; 00 1C
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	ora $0640.w,X		; 1D 40 06
	pea $E904.w		; F4 04 E9
	brk $1E.b		; 00 1E
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $1F.b		; 00 1F
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$2000.w		; E9 00 20
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	and ($40.b,X)		; 21 40
	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	jsl $F50340.l		; 22 40 03 F5
	sbc ($00.b,X)		; E1 00
	and $40.b,S		; 23 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $24.b		; 00 24
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $25.b		; 00 25
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$2600.w		; E9 00 26
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b,X)		; E1 00
	and [$40.b]		; 27 40
	sbc $E1FB.w,X		; FD FB E1
	brk $28.b		; 00 28
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	and #$0640.w		; 29 40 06
	pea $E904.w		; F4 04 E9
	brk $00.b		; 00 00
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $01.b		; 00 01
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0200.w		; E9 00 02
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	ora $40.b,S		; 03 40
	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	tsb $40.b		; 04 40
	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	ora $40.b		; 05 40
	asl $F2.b		; 06 F2
	asl $E1.b		; 06 E1
	brk $06.b		; 00 06
	rti		; 40

	plx		; FA
	inc $00E1.w,X		; FE E1 00
	ora [$40.b]		; 07 40
	cop $F6.b		; 02 F6
	sbc ($00.b,X)		; E1 00
	php		; 08
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc #$0900.w		; E9 00 09
	rti		; 40

	xce		; FB
	sbc $00E9.w,X		; FD E9 00
	asl A		; 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc #$0B00.w		; E9 00 0B
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$0E00.w		; E9 00 0E
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	ora $FDFB40.l		; 0F 40 FB FD
	sbc ($00.b,X)		; E1 00
	bpl  64.b		; 10 40
	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	ora ($40.b),Y		; 11 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $12.b		; 00 12
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $13.b		; 00 13
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$1400.w		; E9 00 14
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	ora $40.b,X		; 15 40
	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	asl $40.b,X		; 16 40
	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	ora [$40.b],Y		; 17 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $18.b		; 00 18
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $19.b		; 00 19
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$1A00.w		; E9 00 1A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	tas		; 1B
	rti		; 40

	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	trb $0340.w		; 1C 40 03
	sbc $E1.b,X		; F5 E1
	brk $1D.b		; 00 1D
	rti		; 40

	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $1E.b		; 00 1E
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $1F.b		; 00 1F
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$2000.w		; E9 00 20
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	and ($40.b,X)		; 21 40
	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	jsl $F50340.l		; 22 40 03 F5
	sbc ($00.b,X)		; E1 00
	and $40.b,S		; 23 40
	asl $F4.b		; 06 F4
	tsb $E9.b		; 04 E9
	brk $24.b		; 00 24
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $25.b		; 00 25
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$2600.w		; E9 00 26
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	and [$40.b]		; 27 40
	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	plp		; 28
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	and #$E040.w		; 29 40 E0
	jmp ($0020.w,X)		; 7C 20 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($20.b,X)		; 01 20
	cop $20.b		; 02 20
	ora $20.b,S		; 03 20
	tsb $20.b		; 04 20
	ora $20.b		; 05 20
	asl $20.b		; 06 20
	ora [$20.b]		; 07 20
	brk $00.b		; 00 00
	lsr A		; 4A
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($20.b),Y		; 11 20
	ora ($20.b)		; 12 20
	ora ($20.b,S),Y		; 13 20
	trb $20.b		; 14 20
	ora $20.b,X		; 15 20
	asl $20.b,X		; 16 20
	ora [$20.b],Y		; 17 20
	brk $00.b		; 00 00
	phy		; 5A
	jsr $7CE0.w		; 20 E0 7C
	jsr $0200.w		; 20 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $2021.w		; 20 21 20
	jsl $202320.l		; 22 20 23 20
	bit $20.b		; 24 20
	and $20.b		; 25 20
	rol $20.b		; 26 20
	and [$20.b]		; 27 20
	plp		; 28
	jsr $2029.w		; 20 29 20
	brk $00.b		; 00 00
	lsr A		; 4A
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  32.b		; 30 20
	and ($20.b),Y		; 31 20
	and ($20.b)		; 32 20
	and ($20.b,S),Y		; 33 20
	bit $20.b,X		; 34 20
	and $20.b,X		; 35 20
	rol $20.b,X		; 36 20
	and [$20.b],Y		; 37 20
	sec		; 38
	jsr $2039.w		; 20 39 20
	brk $00.b		; 00 00
	phy		; 5A
	jsr $7CE0.w		; 20 E0 7C
	jsr $0200.w		; 20 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	jsr $2041.w		; 20 41 20
	.db $42, $20		; 42 20
	eor $20.b,S		; 43 20
	mvp $45,$20		; 44 20 45
	jsr $2046.w		; 20 46 20
	brk $00.b		; 00 00
	lsr A		; 4A
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc  32.b		; 50 20
	eor ($20.b),Y		; 51 20
	eor ($20.b)		; 52 20
	eor ($20.b,S),Y		; 53 20
	mvn $55,$20		; 54 20 55
	jsr $2056.w		; 20 56 20
	brk $00.b		; 00 00
	phy		; 5A
	jsr $7CE0.w		; 20 E0 7C
	jsr $0200.w		; 20 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $2021.w		; 20 21 20
	.db $62, $20, $63		; 62 20 63
	jsr $2064.w		; 20 64 20
	adc $20.b		; 65 20
	ror $20.b		; 66 20
	adc [$20.b]		; 67 20
	pla		; 68
	jsr $0000.w		; 20 00 00
	lsr A		; 4A
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  32.b		; 30 20
	and ($20.b),Y		; 31 20
	adc ($20.b)		; 72 20
	adc ($20.b,S),Y		; 73 20
	stz $20.b,X		; 74 20
	adc $20.b,X		; 75 20
	ror $20.b,X		; 76 20
	adc [$20.b],Y		; 77 20
	sei		; 78
	jsr $0000.w		; 20 00 00
	phy		; 5A
	jsr $7CE0.w		; 20 E0 7C
	jsr $0200.w		; 20 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	jsr $2081.w		; 20 81 20
	.db $82, $20, $83		; 82 20 83
	jsr $2084.w		; 20 84 20
	sta $20.b		; 85 20
	stx $20.b		; 86 20
	sta [$20.b]		; 87 20
	dey		; 88
	jsr $0000.w		; 20 00 00
	lsr A		; 4A
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc  32.b		; 90 20
	sta ($20.b),Y		; 91 20
	sta ($20.b)		; 92 20
	sta ($20.b,S),Y		; 93 20
	sty $20.b,X		; 94 20
	sta $20.b,X		; 95 20
	stx $20.b,Y		; 96 20
	sta [$20.b],Y		; 97 20
	tya		; 98
	jsr $0000.w		; 20 00 00
	phy		; 5A
	jsr $7CE0.w		; 20 E0 7C
	jsr $0200.w		; 20 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	jsr $20A1.w		; 20 A1 20
	ldx #$20.b		; A2 20
	lda $20.b,S		; A3 20
	ldy $20.b		; A4 20
	lda $20.b		; A5 20
	ldx $20.b		; A6 20
	lda [$20.b]		; A7 20
	tay		; A8
	jsr $0000.w		; 20 00 00
	lsr A		; 4A
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs  32.b		; B0 20
	lda ($20.b),Y		; B1 20
	lda ($20.b)		; B2 20
	lda ($20.b,S),Y		; B3 20
	ldy $20.b,X		; B4 20
	lda $20.b,X		; B5 20
	ldx $20.b,Y		; B6 20
	lda [$20.b],Y		; B7 20
	clv		; B8
	jsr $0000.w		; 20 00 00
	phy		; 5A
	jsr $7CE0.w		; 20 E0 7C
	jsr $0200.w		; 20 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	jsr $20C1.w		; 20 C1 20
.ACCU 16
	rep #$20		; C2 20
	cmp $20.b,S		; C3 20
	cpy $20.b		; C4 20
	cmp $20.b		; C5 20
	dec $20.b		; C6 20
	cmp [$20.b]		; C7 20
	brk $00.b		; 00 00
	lsr A		; 4A
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  32.b		; D0 20
	cmp ($20.b),Y		; D1 20
	cmp ($20.b)		; D2 20
	cmp ($20.b,S),Y		; D3 20
	pei ($20.b)		; D4 20
	cmp $20.b,X		; D5 20
	dec $20.b,X		; D6 20
	cmp [$20.b],Y		; D7 20
	brk $00.b		; 00 00
	phy		; 5A
	jsr $7CE0.w		; 20 E0 7C
	jsr $0200.w		; 20 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $2021.w		; 20 21 20
.ACCU 8
	sep #$20		; E2 20
	sbc $20.b,S		; E3 20
	cpx $20.b		; E4 20
	sbc $20.b		; E5 20
	inc $20.b		; E6 20
	sbc [$20.b]		; E7 20
	inx		; E8
	jsr $20E9.w		; 20 E9 20
	brk $00.b		; 00 00
	lsr A		; 4A
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  32.b		; 30 20
	and ($20.b),Y		; 31 20
	sbc ($20.b)		; F2 20
	sbc ($20.b,S),Y		; F3 20
	pea $F520.w		; F4 20 F5
	jsr $20F6.w		; 20 F6 20
	sbc [$20.b],Y		; F7 20
	sed		; F8
	jsr $20F9.w		; 20 F9 20
	brk $00.b		; 00 00
	phy		; 5A
	jsr $7CE0.w		; 20 E0 7C
	jsr $0200.w		; 20 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	jsr $2009.w		; 20 09 20
	asl A		; 0A
	jsr $200B.w		; 20 0B 20
	tsb $0D20.w		; 0C 20 0D
	jsr $200E.w		; 20 0E 20
	ora $000020.l		; 0F 20 00 00
	lsr A		; 4A
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	jsr $2019.w		; 20 19 20
	inc A		; 1A
	jsr $201B.w		; 20 1B 20
	trb $1D20.w		; 1C 20 1D
	jsr $201E.w		; 20 1E 20
	ora $000020.l,X		; 1F 20 00 00
	phy		; 5A
	jsr $7CF0.w		; 20 F0 7C
	jsr $0200.w		; 20 00 02
	brk $4B.b		; 00 4B
	jsr $204C.w		; 20 4C 20
	brk $00.b		; 00 00
	ora ($20.b,X)		; 01 20
	cop $20.b		; 02 20
	ora $20.b,S		; 03 20
	tsb $20.b		; 04 20
	ora $20.b		; 05 20
	asl $20.b		; 06 20
	ora [$20.b]		; 07 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tad		; 5B
	jsr $205C.w		; 20 5C 20
	brk $00.b		; 00 00
	ora ($20.b),Y		; 11 20
	ora ($20.b)		; 12 20
	ora ($20.b,S),Y		; 13 20
	trb $20.b		; 14 20
	ora $20.b,X		; 15 20
	asl $20.b,X		; 16 20
	ora [$20.b],Y		; 17 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq 124.b		; F0 7C
	jsr $0200.w		; 20 00 02
	brk $4B.b		; 00 4B
	jsr $204C.w		; 20 4C 20
	brk $00.b		; 00 00
	jsr $2120.w		; 20 20 21
	jsr $2022.w		; 20 22 20
	and $20.b,S		; 23 20
	bit $20.b		; 24 20
	and $20.b		; 25 20
	rol $20.b		; 26 20
	and [$20.b]		; 27 20
	plp		; 28
	jsr $2029.w		; 20 29 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tad		; 5B
	jsr $205C.w		; 20 5C 20
	brk $00.b		; 00 00
	bmi  32.b		; 30 20
	and ($20.b),Y		; 31 20
	and ($20.b)		; 32 20
	and ($20.b,S),Y		; 33 20
	bit $20.b,X		; 34 20
	and $20.b,X		; 35 20
	rol $20.b,X		; 36 20
	and [$20.b],Y		; 37 20
	sec		; 38
	jsr $2039.w		; 20 39 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq 124.b		; F0 7C
	jsr $0200.w		; 20 00 02
	brk $4B.b		; 00 4B
	jsr $204C.w		; 20 4C 20
	brk $00.b		; 00 00
	rti		; 40

	jsr $2041.w		; 20 41 20
	.db $42, $20		; 42 20
	eor $20.b,S		; 43 20
	mvp $45,$20		; 44 20 45
	jsr $2046.w		; 20 46 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tad		; 5B
	jsr $205C.w		; 20 5C 20
	brk $00.b		; 00 00
	bvc  32.b		; 50 20
	eor ($20.b),Y		; 51 20
	eor ($20.b)		; 52 20
	eor ($20.b,S),Y		; 53 20
	mvn $55,$20		; 54 20 55
	jsr $2056.w		; 20 56 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq 124.b		; F0 7C
	jsr $0200.w		; 20 00 02
	brk $4B.b		; 00 4B
	jsr $204C.w		; 20 4C 20
	brk $00.b		; 00 00
	rts		; 60

	jsr $2061.w		; 20 61 20
	.db $62, $20, $63		; 62 20 63
	jsr $2064.w		; 20 64 20
	adc $20.b		; 65 20
	ror $20.b		; 66 20
	adc [$20.b]		; 67 20
	pla		; 68
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tad		; 5B
	jsr $205C.w		; 20 5C 20
	brk $00.b		; 00 00
	bvs  32.b		; 70 20
	adc ($20.b),Y		; 71 20
	adc ($20.b)		; 72 20
	adc ($20.b,S),Y		; 73 20
	stz $20.b,X		; 74 20
	adc $20.b,X		; 75 20
	ror $20.b,X		; 76 20
	adc [$20.b],Y		; 77 20
	sei		; 78
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq 124.b		; F0 7C
	jsr $0200.w		; 20 00 02
	brk $4B.b		; 00 4B
	jsr $204C.w		; 20 4C 20
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	sta ($20.b,X)		; 81 20
	.db $82, $20, $83		; 82 20 83
	jsr $2084.w		; 20 84 20
	sta $20.b		; 85 20
	stx $20.b		; 86 20
	sta [$20.b]		; 87 20
	dey		; 88
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tad		; 5B
	jsr $205C.w		; 20 5C 20
	brk $00.b		; 00 00
	bcc  32.b		; 90 20
	sta ($20.b),Y		; 91 20
	sta ($20.b)		; 92 20
	sta ($20.b,S),Y		; 93 20
	sty $20.b,X		; 94 20
	sta $20.b,X		; 95 20
	stx $20.b,Y		; 96 20
	sta [$20.b],Y		; 97 20
	tya		; 98
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq 124.b		; F0 7C
	jsr $0200.w		; 20 00 02
	brk $4B.b		; 00 4B
	jsr $204C.w		; 20 4C 20
	brk $00.b		; 00 00
	ldy #$20.b		; A0 20
	lda ($20.b,X)		; A1 20
	ldx #$20.b		; A2 20
	lda $20.b,S		; A3 20
	ldy $20.b		; A4 20
	lda $20.b		; A5 20
	ldx $20.b		; A6 20
	lda [$20.b]		; A7 20
	tay		; A8
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tad		; 5B
	jsr $205C.w		; 20 5C 20
	brk $00.b		; 00 00
	bcs  32.b		; B0 20
	lda ($20.b),Y		; B1 20
	lda ($20.b)		; B2 20
	lda ($20.b,S),Y		; B3 20
	ldy $20.b,X		; B4 20
	lda $20.b,X		; B5 20
	ldx $20.b,Y		; B6 20
	lda [$20.b],Y		; B7 20
	clv		; B8
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq 124.b		; F0 7C
	jsr $0200.w		; 20 00 02
	brk $4B.b		; 00 4B
	jsr $204C.w		; 20 4C 20
	brk $00.b		; 00 00
	cpy #$20.b		; C0 20
	cmp ($20.b,X)		; C1 20
.ACCU 16
	rep #$20		; C2 20
	cmp $20.b,S		; C3 20
	cpy $20.b		; C4 20
	cmp $20.b		; C5 20
	dec $20.b		; C6 20
	cmp [$20.b]		; C7 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tad		; 5B
	jsr $205C.w		; 20 5C 20
	brk $00.b		; 00 00
	bne  32.b		; D0 20
	cmp ($20.b),Y		; D1 20
	cmp ($20.b)		; D2 20
	cmp ($20.b,S),Y		; D3 20
	pei ($20.b)		; D4 20
	cmp $20.b,X		; D5 20
	dec $20.b,X		; D6 20
	cmp [$20.b],Y		; D7 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq 124.b		; F0 7C
	jsr $0200.w		; 20 00 02
	brk $4B.b		; 00 4B
	jsr $204C.w		; 20 4C 20
	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	sbc ($20.b,X)		; E1 20
.ACCU 8
	sep #$20		; E2 20
	sbc $20.b,S		; E3 20
	cpx $20.b		; E4 20
	sbc $20.b		; E5 20
	inc $20.b		; E6 20
	sbc [$20.b]		; E7 20
	inx		; E8
	jsr $20E9.w		; 20 E9 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tad		; 5B
	jsr $205C.w		; 20 5C 20
	brk $00.b		; 00 00
	beq  32.b		; F0 20
	sbc ($20.b),Y		; F1 20
	sbc ($20.b)		; F2 20
	sbc ($20.b,S),Y		; F3 20
	pea $F520.w		; F4 20 F5
	jsr $20F6.w		; 20 F6 20
	sbc [$20.b],Y		; F7 20
	sed		; F8
	jsr $20F9.w		; 20 F9 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq 124.b		; F0 7C
	jsr $0200.w		; 20 00 02
	brk $4B.b		; 00 4B
	jsr $204C.w		; 20 4C 20
	brk $00.b		; 00 00
	php		; 08
	jsr $2009.w		; 20 09 20
	asl A		; 0A
	jsr $200B.w		; 20 0B 20
	tsb $0D20.w		; 0C 20 0D
	jsr $200E.w		; 20 0E 20
	ora $000020.l		; 0F 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tad		; 5B
	jsr $205C.w		; 20 5C 20
	brk $00.b		; 00 00
	clc		; 18
	jsr $2019.w		; 20 19 20
	inc A		; 1A
	jsr $201B.w		; 20 1B 20
	trb $1D20.w		; 1C 20 1D
	jsr $201E.w		; 20 1E 20
	ora $000020.l,X		; 1F 20 00 00
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
	sbc $FFFF9F.l,X		; FF 9F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	cmp $FFFFF8.l,X		; DF F8 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
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
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFEDDB.l,X		; FF DB ED FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $20FFFF.l,X		; FF FF FF 20
	brk $A2.b		; 00 A2
	bpl  76.b		; 10 4C
	brk $82.b		; 00 82
	ora ($04.b,X)		; 01 04
	tsb $20.b		; 04 20
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	rti		; 40

	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $10.b		; 00 10
	bpl  32.b		; 10 20
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	jsr $2000.w		; 20 00 20
	php		; 08
	bpl   4.b		; 10 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $A1.b		; 00 A1
	brk $20.b		; 00 20
	clc		; 18
	brk $04.b		; 00 04
	cop $22.b		; 02 22
	brk $00.b		; 00 00
	rti		; 40

	brk $20.b		; 00 20
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	brk $40.b		; 00 40
	brk $48.b		; 00 48
	php		; 08
	bpl  32.b		; 10 20
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $88.b		; 00 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra  12.b		; 80 0C
	bra   0.b		; 80 00
	cop $00.b		; 02 00
	jsl $220000.l		; 22 00 00 22
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	rti		; 40

	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bpl   0.b		; 10 00
	brk $51.b		; 00 51
	rts		; 60

	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	rti		; 40

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
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	bpl  32.b		; 10 20
	tsb $00.b		; 04 00
	rti		; 40

	brk $40.b		; 00 40
	.db $82, $10, $00		; 82 10 00
	bra  16.b		; 80 10
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
	brk $80.b		; 00 80
	brk $20.b		; 00 20
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
	brk $02.b		; 00 02
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
	brk $02.b		; 00 02
	brk $84.b		; 00 84
	cop $00.b		; 02 00
	pha		; 48
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
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
	ora ($00.b,X)		; 01 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	brk $06.b		; 00 06
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	sty $00.b		; 84 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
	php		; 08
	brk $06.b		; 00 06
	asl A		; 0A
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
	brk $40.b		; 00 40
	plp		; 28
	rti		; 40

	bpl  18.b		; 10 12
	ora ($01.b),Y		; 11 01
	ora ($20.b,X)		; 01 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	bit $00.b		; 24 00
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
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	tsb $00.b		; 04 00
	bit $08.b		; 24 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	asl $00.b,X		; 16 00
	cop $06.b		; 02 06
	tsb $04.b		; 04 04
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	bra   2.b		; 80 02
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $48.b		; 00 48
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
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFEFF.l,X		; FF FF FE FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
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
	sbc $FFFFFD.l,X		; FF FD FF FF
	inc $FFF7.w,X		; FE F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FEFFF.l,X		; FF FF EF 7F
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
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
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
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF5.l,X		; FF F5 FF FF
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
	sbc $7EFFFF.l,X		; FF FF FF 7E
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7DFFFF.l,X		; FF FF FF 7D
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	adc $FFFFFD.l,X		; 7F FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora ($00.b,X)		; 01 00
	php		; 08
	jsr $1060.w		; 20 60 10
	brk $10.b		; 00 10
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	cop $80.b		; 02 80
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
	rti		; 40

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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	asl $01.b		; 06 01
	stx APUIO0.w		; 8E 40 21
	brk $50.b		; 00 50
	ora ($00.b),Y		; 11 00
	cop $22.b		; 02 22
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
	cop $00.b		; 02 00
	bra   4.b		; 80 04
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	bpl   0.b		; 10 00
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
	brk $A8.b		; 00 A8
	sta ($80.b,X)		; 81 80
	sty $20.b,X		; 94 20
	brk $80.b		; 00 80
	.db $82, $10, $00		; 82 10 00
	tsb $00.b		; 04 00
	tsb $84.b		; 04 84
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $02.b		; 00 02
	rti		; 40

	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $08.b		; 00 08
	brk $02.b		; 00 02
	brk $80.b		; 00 80
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
	rts		; 60

	ora $00.b		; 05 00
	brk $24.b		; 00 24
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	brk $84.b		; 00 84
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
	eor ($40.b,X)		; 41 40
	brk $00.b		; 00 00
	jsr $0800.w		; 20 00 08
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
	cop $00.b		; 02 00
	sty $08.b		; 84 08
	bcc   8.b		; 90 08
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	rti		; 40

	php		; 08
	cop $00.b		; 02 00
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
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
	jsr $0801.w		; 20 01 08
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
	jsr $8200.w		; 20 00 82
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cpy #$10.b		; C0 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $02.b		; 00 02
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
	cop $00.b		; 02 00
	brk $04.b		; 00 04
	dey		; 88
	jsr $0000.w		; 20 00 00
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
	bpl   0.b		; 10 00
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
	ora ($00.b)		; 12 00
	php		; 08
	php		; 08
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $80.b		; 00 80
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
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($00.b,X)		; 41 00
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	php		; 08
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ldx $80.b		; A6 80
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne   0.b		; D0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	sbc ($00.b,X)		; E1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $0000.w,X		; BC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $59.b		; 00 59
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
	.db $00		; Opcode 00 overrunning bank boundry at 1FFFFE. Skipping.
	.db $E5		; Opcode E5 overrunning bank boundry at 1FFFFF. Skipping.
.ENDS
