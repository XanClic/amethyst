SECTION "Evolutions and Attacks 3", ROMX

EvosAttacksPointers3::
	dw MimikyuEvosAttacks
	dw LitwickEvosAttacks
	dw LampentEvosAttacks
	dw ChandelureEvosAttacks
.IndirectEnd::

MimikyuEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, SCRATCH
	dbw 1, LICK
	dbw 1, DISGUISE
	dbw 5, DOUBLE_TEAM
	dbw 14, SHADOW_SNEAK
	dbw 19, MIMIC
	dbw 23, FAINT_ATTACK
	dbw 28, CHARM
	dbw 32, SLASH
	dbw 37, SHADOW_CLAW
	dbw 41, HONE_CLAWS
	dbw 46, PLAY_ROUGH
	dbw 50, PAIN_SPLIT
	db 0 ; no more level-up moves

LitwickEvosAttacks:
	dbbw EVOLVE_LEVEL, 41, LAMPENT
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, ASTONISH
	dbw 3, MINIMIZE
	dbw 5, SMOG
	dbw 7, FIRE_SPIN
	dbw 10, CONFUSE_RAY
	dbw 13, NIGHT_SHADE
	dbw 16, WILL_O_WISP
	dbw 24, HEX
	dbw 28, FLAME_BURST
	dbw 33, DESTINY_BOND
	dbw 38, INFERNO
	dbw 43, CURSE
	dbw 49, SHADOW_BALL
	dbw 55, PAIN_SPLIT
	dbw 61, FIRE_BLAST
	db 0 ; no more level-up moves

LampentEvosAttacks:
	dbbw EVOLVE_LEVEL, 55, CHANDELURE
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, ASTONISH
	dbw 1, MINIMIZE
	dbw 1, SMOG
	dbw 3, MINIMIZE
	dbw 5, SMOG
	dbw 7, FIRE_SPIN
	dbw 10, CONFUSE_RAY
	dbw 13, NIGHT_SHADE
	dbw 16, WILL_O_WISP
	dbw 24, HEX
	dbw 28, FLAME_BURST
	dbw 33, DESTINY_BOND
	dbw 38, INFERNO
	dbw 45, CURSE
	dbw 53, SHADOW_BALL
	dbw 61, PAIN_SPLIT
	dbw 69, FIRE_BLAST
	db 0 ; no more level-up moves

ChandelureEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SMOG
	dbw 1, CONFUSE_RAY
	dbw 1, FLAME_BURST
	dbw 1, HEX
	db 0 ; no more level-up moves