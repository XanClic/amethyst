Do_BattleCommand_StoredPowerDamage:
	push bc

	ld c, 7 ; 7 stat levels
	ld hl, wPlayerStatLevels
	ld a, [hBattleTurn]
	and a
	jr z, .check_stat_level
	ld hl, wEnemyStatLevels
.check_stat_level:
	ld a, [hli]
	sub BASE_STAT_LEVEL
	jr c, .next_stat_level ; negative
	jr z, .next_stat_level ; zero
	ld b, a
.inc:
	ld a, d
	add 20
	ld d, a
	jr c, .cap
	dec b
	jr nz, .inc
.next_stat_level:
	dec c
	jr nz, .check_stat_level

	pop bc
	ret

.cap:
	ld d, $ff ; maximum value
	pop bc
	ret
