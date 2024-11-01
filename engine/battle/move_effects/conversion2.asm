BattleCommand_Conversion2:
	ld a, [wAttackMissed]
	and a
	jr nz, .failed
	ld hl, wBattleMonType1
	ldh a, [hBattleTurn]
	and a
	jr z, .got_type
	ld hl, wEnemyMonType1
.got_type
	ld a, BATTLE_VARS_LAST_COUNTER_MOVE_OPP
	call GetBattleVar
	and a
	jr z, .failed
	push hl
	ld l, a
	ld a, MOVE_TYPE_AND_CAT
	call GetMoveAttribute
	ld d, a ; includes category
	pop hl
	cp CURSE_TYPE
	jr z, .failed
	call AnimateCurrentMove
	call BattleCommand_SwitchTurn

; `d` is last move type+cat
; “iterates” over types, using a random `a` each iteration
; `hl` is &[type1, type2] of the using pokémon
.loop
	call BattleRandom
	maskbits TYPES_END
	cp UNUSED_TYPES
	jr c, .okay
	cp UNUSED_TYPES_END
	jr c, .loop
	cp TYPES_END
	jr nc, .loop
.okay
	ld [hli], a
	ld [hld], a
	push hl
	ld a, BATTLE_VARS_MOVE_TYPE_AND_CAT
	call GetBattleVarAddr
	; type+cat is just stored for later restoring, will not be used
	push af
	push hl
	ld a, d
	; simulates move to be of type+cat `d` (last used move)
	; (BattleCheckTypeMatchup doesn’t care about phys/spcl)
	ld [hl], a
	call BattleCheckTypeMatchup
	pop hl
	pop af
	ld [hl], a ; restores type+cat info
	pop hl
	ld a, [wTypeMatchup]
	cp EFFECTIVE
	jr nc, .loop
	call BattleCommand_SwitchTurn

	ld a, [hl]
	ld [wNamedObjectIndex], a
	predef GetTypeName
	ld hl, TransformedTypeText
	jp StdBattleTextbox

.failed
	jp FailMove
