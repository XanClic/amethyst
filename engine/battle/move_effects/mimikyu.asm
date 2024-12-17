CheckMimikyu:
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr nz, .check_mimikyu

; own turn, check opp. mimikyu
	ld a, [wEnemyMonSpecies]

.check_mimikyu:
	call GetPokemonIndexFromID
	ld a, l
	cp MIMIKYU
	ret nz

	assert MIMIKYU >> 8 == 0
	ld a, h
	and a
	ret nz

	ld a, BATTLE_VARS_STATUS_OPP
	call GetBattleVarAddr
	bit BUSTED, a
	ret nz

	set BUSTED, [hl]

	ld hl, BattleText_DisguisePreventedDamage
	call StdBattleTextbox

	call BattleCommand_SwitchTurn
	callfar GetEighthMaxHP
	callfar SubtractHPFromTarget
	call BattleCommand_SwitchTurn

	ld de, SFX_BONE_CLUB
	call WaitPlaySFX
	call Mimikyu_ShowBusted

	ld hl, BattleText_DisguiseBroken
	call StdBattleTextbox

	pop hl ; discard actual ret pc
	ret ; skip further damage taking

Mimikyu_ShowBusted:
	ldh a, [hBattleTurn]
	and a
	jr z, Mimikyu_ShowBusted_Enemy ; always that whose turn it is not

Mimikyu_ShowBusted_Player::
	ld b, BANK(MimikyuAltBackpic)
	ld hl, MimikyuAltBackpic
	ld de, vTiles2 tile $31
	ld c, 6 * 6
	predef DecompressGet2bpp
	ret

Mimikyu_ShowBusted_Enemy::
	ld b, BANK(MimikyuAltFrontpic)
	ld hl, MimikyuAltFrontpic
	ld de, vTiles2
	ld c, 7 * 7 ; if this were not this size, we’d have to pad (which isn’t easily accessible)
	predef DecompressGet2bpp
	ret
