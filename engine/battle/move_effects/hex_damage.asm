Do_BattleCommand_HexDamage:
	ld a, BATTLE_VARS_STATUS_OPP
	call GetBattleVar
	and ALL_STATUS
	ret z

	; Double move power
	sla d
	ret nc

	; Cap at 255
	ld d, $ff
	ret
