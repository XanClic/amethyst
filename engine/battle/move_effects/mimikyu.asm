CheckMimikyu:
	ldh a, [hBattleTurn]
	and a
	jr z, .check_enemy_mimikyu

; opp. turn, check own mimikyu
	ld a, [wBattleMonSpecies]
	jr .check_mimikyu

.check_enemy_mimikyu:
; own turn, check opp. mimikyu
	ld a, [wEnemyMonSpecies]

.check_mimikyu:
	call GetPokemonIndexFromID
	ld a, l
	cp MIMIKYU
	ret nz

	ld a, h
	and a
	ret nz

	ld a, BATTLE_VARS_STATUS_OPP
	call GetBattleVarAddr
	ld b, (1 << BUSTED)
	ld c, a
	and b
	ret nz

	ld a, c
	or b
	ld [hl], a ; busted

	ld hl, BattleText_DisguisePreventedDamage
	call StdBattleTextbox

	call BattleCommand_SwitchTurn
	callfar GetEighthMaxHP
	callfar SubtractHPFromTarget
	call BattleCommand_SwitchTurn

	ld hl, BattleText_DisguiseBroken
	call StdBattleTextbox

	pop hl ; discard actual ret pc
	ret ; skip further damage taking
