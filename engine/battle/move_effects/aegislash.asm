Aegislash_BladeForm:
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .check_aegislash

; enemy’s turn, check enemy’s aegislash
	ld a, [wEnemyMonSpecies]

.check_aegislash:
	; needed for GetBaseData
	ld [wCurSpecies], a

	call GetPokemonIndexFromID
	ld a, l
	cp AEGISLASH & $ff
	ret nz

	assert AEGISLASH >> 8 == 1
	ld a, h
	dec a
	ret nz

	ld a, BATTLE_VARS_MOVE_POWER
	call GetBattleVar
	and a
	ret z

	ld a, BATTLE_VARS_SUBSTATUS4
	call GetBattleVarAddr
	bit SUBSTATUS_BLADE_FORM, a
	ret nz

	set SUBSTATUS_BLADE_FORM, [hl]
	call Aegislash_DoBladeForm

	ld hl, BattleText_BladeForm
	call StdBattleTextbox

	ld de, SFX_GLASS_TING_2
	call WaitPlaySFX

	ldh a, [hBattleTurn]
	and a
	jr nz, Aegislash_ShowBladeForm_Enemy

Aegislash_ShowBladeForm_Player::
	ld b, BANK(AegislashAltBackpic)
	ld hl, AegislashAltBackpic
	jr ShowPlayerPic

Aegislash_ShowBladeForm_Enemy::
	ld b, BANK(AegislashAltFrontpic)
	ld hl, AegislashAltFrontpic
	jr ShowEnemyPic

Aegislash_ShieldForm:
	ld a, BATTLE_VARS_SUBSTATUS4
	call GetBattleVarAddr
	bit SUBSTATUS_BLADE_FORM, a
	ret z

	res SUBSTATUS_BLADE_FORM, [hl]
	call Aegislash_DoShieldForm

	ld hl, BattleText_ShieldForm
	call StdBattleTextbox

	ld de, SFX_SHINE
	call WaitPlaySFX

	ldh a, [hBattleTurn]
	and a
	jr nz, .enemy_pic

	ld b, BANK(AegislashBackpic)
	ld hl, AegislashBackpic
	jr ShowPlayerPic

.enemy_pic:
	ld b, BANK(AegislashFrontpic)
	ld hl, AegislashFrontpic
	jr ShowEnemyPic

; Show backpic b:hl
ShowPlayerPic:
	ld de, vTiles2 tile $31
	ld c, 6 * 6
	predef DecompressGet2bpp
	ret

; Show frontpic b:hl (7×7)
ShowEnemyPic:
	ld de, vTiles2
	ld c, 7 * 7
	predef DecompressGet2bpp
	ret

Aegislash_DoBladeForm:
	; wCurSpecies is set
	farcall GetBaseData

	; swap base attack and defense
	ld hl, wBaseAttack
	ld a, [hli]
	ld b, [hl]
	ld [hld], a
	ld [hl], b

	; swap base special attack and defense
	ld hl, wBaseSpecialAttack
	ld a, [hli]
	ld b, [hl]
	ld [hld], a
	ld [hl], b

	jr RecalcStats

Aegislash_DoShieldForm:
	; wCurSpecies is set
	farcall GetBaseData

RecalcStats:
	ldh a, [hBattleTurn]
	and a
	jr z, .player_recalc

	; needed by CalcMonStats
	ld a, [wEnemyMonLevel]
	ld [wCurPartyLevel], a

	; No EVs for enemy mons: We just set hl as if wEnemyMonDVs were in a
	; box_struct, so CalcMonStats will find the DVs (it will not try to read
	; EVs because b == FALSE).
	ld b, FALSE
	ld hl, wEnemyMonDVs - MON_DVS + MON_STAT_EXP - 1
	ld de, wEnemyStats
	call DoRecalcStats
	farcall CalcEnemyStats
	ret

.player_recalc:
	; needed by CalcMonStats
	ld a, [wBattleMonLevel]
	ld [wCurPartyLevel], a

	; EVs are not in wBattleMon, so we need to find the party mon struct
	ld hl, wPartyMon1StatExp - 1
	ld a, [wCurBattleMon]
	call GetPartyLocation

	ld b, TRUE
	ld de, wPlayerStats
	call DoRecalcStats
	farcall CalcPlayerStats
	ret

; b, hl need to be set up for CalcMonStats:
;  - b: TRUE to use EVs, FALSE for no EVs
;  - hl: StatExp pointer minus one (= DV pointer - MON_DVS + MON_STAT_EXP - 1)
; de should point to wPlayerStats or wEnemyStats
; After return, call CalcPlayerStats or CalcEnemyStats
DoRecalcStats:
	push de
	; Cannot store to wPlayerStats or wEnemyStats: Neither have an HP field,
	; but CalcMonStats will write it
	; Must not use wBufferMon, that shares its memory space with stuff like
	; wWinTextPointer, which must be preserved through battles.  wTempMon
	; however has exclusive memory space.
	ld de, wTempMonMaxHP
	predef CalcMonStats
	pop de
	ld hl, wTempMonAttack
	ld bc, 5 * 2 ; 5 stats (atk, def, spd, sat, sdf)
	call CopyBytes
	ret
