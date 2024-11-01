SECTION "Evolutions and Attacks 3", ROMX

EvosAttacksPointers3::
	dw MimikyuEvosAttacks
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
	dbw 37, METAL_CLAW
	dbw 41, SWORDS_DANCE
	dbw 46, PLAY_ROUGH
	dbw 50, PAIN_SPLIT
	db 0 ; no more level-up moves
