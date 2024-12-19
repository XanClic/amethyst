; Keep the egg bank in bank 0.
EmptyAllSRAMBanks:
	assert BANK(sEggBank) == 0

	xor a
	call OpenSRAM
	ld hl, STARTOF(SRAM)
	ld bc, sEggBank - STARTOF(SRAM)
	xor a
	call ByteFill
	ld hl, sEggEnd
	ld bc, STARTOF(SRAM) + SIZEOF(SRAM) - sEggEnd
	xor a
	call ByteFill

for x, 1, NUM_SRAM_BANKS - 1
	ld a, x
	call .EmptyFullBank
endr
	ret

.EmptyFullBank:
	ld bc, SIZEOF(SRAM)
	call OpenSRAM
	ld hl, STARTOF(SRAM)
	xor a
	call ByteFill
	call CloseSRAM
	ret
