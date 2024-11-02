Do_BattleCommand_BellyDrum:
; BUG: Belly Drum sharply boosts Attack even with under 50% HP (see docs/bugs_and_glitches.md)
	callfar BattleCommand_AttackUp2
	ld a, [wAttackMissed]
	and a
	jr nz, .failed

	callfar GetHalfMaxHP
	callfar CheckUserHasEnoughHP
	jr nc, .failed

	push bc
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
	callfar AnimateFailedMove
	jp PrintButItFailed
