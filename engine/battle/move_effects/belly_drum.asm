Do_BattleCommand_BellyDrum:
	callfar GetHalfMaxHP
	callfar CheckUserHasEnoughHP
	push bc
	jr nc, .failed

	callfar BattleCommand_AttackUp2
	ld a, [wAttackMissed]
	and a
	jr nz, .failed

	callfar AnimateCurrentMove
	pop bc
	callfar SubtractHPFromUser
	call UpdateUserInParty
	ld a, MAX_STAT_LEVEL - BASE_STAT_LEVEL - 1

.max_attack_loop
	push af
	callfar BattleCommand_AttackUp2
	pop af
	dec a
	jr nz, .max_attack_loop

	ld hl, BellyDrumText
	jp StdBattleTextbox

.failed
	pop bc
	callfar AnimateFailedMove
	jp PrintButItFailed
