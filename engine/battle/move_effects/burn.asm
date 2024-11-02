Do_BattleCommand_PureBurn:
	callfar CheckSubstituteOpp
	jr nz, .no_effect
	ld a, BATTLE_VARS_STATUS_OPP
	call GetBattleVarAddr
	and ALL_STATUS
	jp nz, .defrost
	ld a, [wTypeModifier]
	and $7f
	jr z, .no_effect
	callfar CheckMoveTypeMatchesTarget ; Don't burn a Fire-type
	jr z, .no_effect
	callfar GetOpponentItem
	ld a, b
	cp HELD_PREVENT_BURN
	jr z, .no_effect
	ld a, [wEffectFailed]
	and a
	jr nz, .no_effect
	callfar SafeCheckSafeguard
	jr nz, .no_effect

	callfar AnimateCurrentMove

	ld a, BATTLE_VARS_STATUS_OPP
	call GetBattleVarAddr
	set BRN, [hl]
	call UpdateOpponentInParty
	callfar ApplyBrnEffectOnAttack
	ld de, ANIM_BRN
	callfar PlayOpponentBattleAnim
	call RefreshBattleHuds

	ld hl, WasBurnedText
	call StdBattleTextbox

	farcall UseHeldStatusHealingItem
	ret

.no_effect:
	ld hl, DoesntAffectText
	push hl
	callfar AnimateFailedMove
	pop hl
	jp StdBattleTextbox
	ret

.defrost:
	ld a, [hl]
	and 1 << FRZ
        jr z, .no_effect

	callfar AnimateCurrentMove
	callfar Defrost
        ret
