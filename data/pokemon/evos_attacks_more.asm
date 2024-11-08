SECTION "Evolutions and Attacks 3", ROMX

EvosAttacksPointers3::
	dw MimikyuEvosAttacks
	dw LitwickEvosAttacks
	dw LampentEvosAttacks
	dw ChandelureEvosAttacks
	dw DrifloonEvosAttacks
	dw DrifblimEvosAttacks
	dw SinisteaEvosAttacks
	dw PolteageistEvosAttacks
	dw MismagiusEvosAttacks
.IndirectEnd::

MimikyuEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, SCRATCH
	dbw 1, LICK
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

DrifloonEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, DRIFBLIM
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, MINIMIZE
	dbw 6, ASTONISH
	dbw 11, GUST
	dbw 14, FOCUS_ENERGY
	dbw 22, HEX
	dbw 29, SELFDESTRUCT
	dbw 33, BATON_PASS
	dbw 38, SHADOW_BALL
	dbw 43, EXPLOSION
	dbw 48, AEROBLAST
	db 0 ; no more level-up moves

DrifblimEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, MINIMIZE
	dbw 1, ASTONISH
	dbw 1, GUST
	dbw 6, ASTONISH
	dbw 11, GUST
	dbw 14, FOCUS_ENERGY
	dbw 22, HEX
	dbw 31, SELFDESTRUCT
	dbw 36, BATON_PASS
	dbw 44, SHADOW_BALL
	dbw 51, EXPLOSION
	dbw 59, AEROBLAST
	db 0 ; no more level-up moves

SinisteaEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, POLTEAGEIST
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, WITHDRAW
	dbw 6, SWEET_SCENT
	dbw 12, MEGA_DRAIN
	dbw 18, PROTECT
	dbw 24, RAZOR_LEAF
	dbw 29, MIST
	dbw 34, GIGA_DRAIN
	dbw 39, STORED_POWER
	dbw 44, SHADOW_BALL
	dbw 49, SHELL_SMASH
	db 0 ; no more level-up moves

PolteageistEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, WITHDRAW
	dbw 1, MEGA_DRAIN
	dbw 6, SWEET_SCENT
	dbw 12, MEGA_DRAIN
	dbw 18, PROTECT
	dbw 24, MEGA_DRAIN
	dbw 30, MIST
	dbw 36, GIGA_DRAIN
	dbw 42, STORED_POWER
	dbw 48, SHADOW_BALL
	dbw 54, SHELL_SMASH
	dbw 60, CURSE
	db 0 ; no more level-up moves

MismagiusEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, PSYWAVE
	dbw 1, SPITE
	dbw 1, ASTONISH
	dbw 6, SPITE
	dbw 10, ASTONISH
	dbw 12, CONFUSE_RAY
	dbw 19, MEAN_LOOK
	dbw 23, HEX
	dbw 27, PSYBEAM
	dbw 36, PAIN_SPLIT
	dbw 41, SHADOW_BALL
	dbw 48, PERISH_SONG
	db 0 ; no more level-up moves
