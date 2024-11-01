GetMoveAttribute::
; Return attribute a of move l in a; clobbers hl.
; Replaces the old GetMoveAttr (renamed to avoid confusion).
	push bc
	call GetMoveAttributeClobberBC
	pop bc
	ret

GetMoveType::
; Clobbers af and hl
	push bc
	ld a, MOVE_TYPE_AND_CAT
	call GetMoveAttributeClobberBC
	sra a
        pop bc
        ret

GetMoveAttributeClobberBC::
	sub 1
	ld c, a
	ld a, l
	ret c
	call GetMoveAddress
	ld b, 0
	add hl, bc
	jp GetFarByte

GetMoveAddress::
; Get the far address for move a's attributes in a:hl.
; This structure will not contain the animation byte! All MOVE_* constants must be reduced by 1 when indexing.
	push bc
	call GetMoveIndexFromID
	ld b, h
	ld c, l
	ld hl, Moves
	ld a, BANK(Moves)
	call LoadIndirectPointer
	pop bc
	ret

GetMoveData::
; Copy move struct a to de.
	ld [de], a
	inc de
	call GetMoveAddress
	ld bc, MOVE_LENGTH - 1
	jp FarCopyBytes
