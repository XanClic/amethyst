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
	dw SandygastEvosAttacks
	dw PalossandEvosAttacks
	dw ZoruaEvosAttacks
	dw ZoroarkEvosAttacks
	dw PhantumpEvosAttacks
	dw TrevenantEvosAttacks
	dw DreepyEvosAttacks
	dw DrakloakEvosAttacks
	dw DragapultEvosAttacks
	dw HonedgeEvosAttacks
	dw DoubladeEvosAttacks
	dw AegislashEvosAttacks
	dw SnoruntEvosAttacks
	dw FroslassEvosAttacks
	dw GreavardEvosAttacks
	dw HoundstoneEvosAttacks
	dw MarshadowEvosAttacks
	dw RotomEvosAttacks
	dw GolettEvosAttacks
	dw GolurkEvosAttacks
	dw FrillishEvosAttacks
	dw JellicentEvosAttacks
	dw PumpkabooEvosAttacks
	dw GourgeistEvosAttacks
	dw PoltchageistEvosAttacks
	dw SinistchaEvosAttacks
.IndirectEnd::

MimikyuEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WOOD_HAMMER
	dbw 1, SPLASH
	dbw 1, SCRATCH
	dbw 1, ASTONISH
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

SandygastEvosAttacks:
	dbbw EVOLVE_LEVEL, 42, PALOSSAND
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 1, ABSORB
	dbw 5, ASTONISH
	dbw 9, SAND_ATTACK
	dbw 14, MUD_SLAP
	dbw 18, MEGA_DRAIN
	dbw 23, MAGNITUDE
	dbw 27, HYPNOSIS
	dbw 32, ANCIENTPOWER
	dbw 36, GIGA_DRAIN
	dbw 41, SHADOW_BALL
	dbw 45, EARTH_POWER
	dbw 50, SANDSTORM
	db 0 ; no more level-up moves

PalossandEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 1, ABSORB
	dbw 1, ASTONISH
	dbw 1, MUD_SLAP
	dbw 5, ASTONISH
	dbw 9, SAND_ATTACK
	dbw 14, MUD_SLAP
	dbw 18, MEGA_DRAIN
	dbw 23, MAGNITUDE
	dbw 27, HYPNOSIS
	dbw 32, ANCIENTPOWER
	dbw 36, GIGA_DRAIN
	dbw 41, SHADOW_BALL
	dbw 47, EARTH_POWER
	dbw 52, SANDSTORM
	db 0 ; no more level-up moves

ZoruaEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, ZOROARK
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 4, HONE_CLAWS
	dbw 7, SHADOW_SNEAK
	dbw 11, SWIFT
	dbw 15, CURSE
	dbw 19, THIEF
	dbw 23, SLASH
	dbw 27, SPITE
	dbw 32, AGILITY
	dbw 34, BODY_SLAM
	dbw 37, SHADOW_BALL
	dbw 41, TAKE_DOWN
	db 0 ; no more level-up moves

ZoroarkEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 4, HONE_CLAWS
	dbw 7, SHADOW_SNEAK
	dbw 11, SWIFT
	dbw 15, CURSE
	dbw 19, THIEF
	dbw 23, SLASH
	dbw 27, SPITE
	dbw 30, SHADOW_CLAW
	dbw 34, AGILITY
	dbw 37, BODY_SLAM
	dbw 40, SHADOW_BALL
	dbw 46, TAKE_DOWN
	db 0 ; no more level-up moves

PhantumpEvosAttacks:
	dbbw EVOLVE_TRADE, -1, TREVENANT
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, CONFUSE_RAY
	dbw 5, ASTONISH
	dbw 8, GROWTH
	dbw 13, MOONLIGHT
	dbw 19, FAINT_ATTACK
	dbw 23, LEECH_SEED
	dbw 28, CURSE
	dbw 31, WILL_O_WISP
	dbw 35, DISABLE
	dbw 39, DESTINY_BOND
	dbw 45, SHADOW_CLAW
	dbw 49, WOOD_HAMMER
	dbw 54, HORN_LEECH
	db 0 ; no more level-up moves

TrevenantEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, CONFUSE_RAY
	dbw 5, ASTONISH
	dbw 8, GROWTH
	dbw 13, MOONLIGHT
	dbw 19, FAINT_ATTACK
	dbw 23, LEECH_SEED
	dbw 28, CURSE
	dbw 31, WILL_O_WISP
	dbw 35, DISABLE
	dbw 39, DESTINY_BOND
	dbw 45, SHADOW_CLAW
	dbw 49, WOOD_HAMMER
	dbw 54, HORN_LEECH
	db 0 ; no more level-up moves

DreepyEvosAttacks:
	dbbw EVOLVE_LEVEL, 50, DRAKLOAK
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, WHIRLPOOL
	dbw 1, QUICK_ATTACK
	dbw 1, BITE
	dbw 6, LOCK_ON
	dbw 12, PURSUIT
	dbw 18, HEX
	dbw 24, AGILITY
	dbw 30, DOUBLESLAP
	dbw 36, FALSE_SWIPE
	dbw 42, DRAGON_DANCE
	dbw 48, SHADOW_CLAW
	dbw 54, TAKE_DOWN
	dbw 61, DRAGON_RUSH
	dbw 66, DOUBLE_EDGE
	dbw 72, OUTRAGE
	db 0 ; no more level-up moves

DrakloakEvosAttacks:
	dbbw EVOLVE_LEVEL, 60, DRAGAPULT
	db 0 ; no more evolutions
	dbw 1, DRAGONBREATH
	dbw 1, ASTONISH
	dbw 1, QUICK_ATTACK
	dbw 1, BITE
	dbw 6, LOCK_ON
	dbw 12, PURSUIT
	dbw 18, HEX
	dbw 24, AGILITY
	dbw 30, DOUBLESLAP
	dbw 36, FALSE_SWIPE
	dbw 42, DRAGON_DANCE
	dbw 48, SHADOW_CLAW
	dbw 50, DRAGONBREATH
	dbw 54, TAKE_DOWN
	dbw 61, DRAGON_RUSH
	dbw 66, DOUBLE_EDGE
	dbw 72, OUTRAGE
	db 0 ; no more level-up moves

DragapultEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, DRAGON_DARTS
	dbw 1, DRAGONBREATH
	dbw 1, ASTONISH
	dbw 1, QUICK_ATTACK
	dbw 6, LOCK_ON
	dbw 12, PURSUIT
	dbw 18, HEX
	dbw 24, AGILITY
	dbw 30, DOUBLESLAP
	dbw 36, FALSE_SWIPE
	dbw 42, DRAGON_DANCE
	dbw 48, SHADOW_CLAW
	dbw 54, TAKE_DOWN
	dbw 60, DRAGON_DARTS
	dbw 63, DRAGON_RUSH
	dbw 70, DOUBLE_EDGE
	dbw 78, OUTRAGE
	db 0 ; no more level-up moves

HonedgeEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, DOUBLADE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SWORDS_DANCE
	dbw 5, FURY_CUTTER
	dbw 8, SCREECH
	dbw 13, PURSUIT
	dbw 18, AGILITY
	dbw 20, SHADOW_SNEAK
	dbw 26, COUNTER
	dbw 29, SLASH
	dbw 35, SHADOW_CLAW
	dbw 39, IRON_TAIL
	dbw 42, CROSS_CHOP
	db 0 ; no more level-up moves

DoubladeEvosAttacks:
	dbbw EVOLVE_LEVEL, 48, AEGISLASH
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SWORDS_DANCE
	dbw 5, FURY_CUTTER
	dbw 8, SCREECH
	dbw 13, PURSUIT
	dbw 18, AGILITY
	dbw 20, SHADOW_SNEAK
	dbw 26, COUNTER
	dbw 29, SLASH
	dbw 36, SHADOW_CLAW
	dbw 41, IRON_TAIL
	dbw 45, CROSS_CHOP
	db 0 ; no more level-up moves

AegislashEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SWORDS_DANCE
	dbw 1, PROTECT
	dbw 5, FURY_CUTTER
	dbw 8, SCREECH
	dbw 13, PURSUIT
	dbw 18, AGILITY
	dbw 20, SHADOW_SNEAK
	dbw 26, COUNTER
	dbw 29, SLASH
	dbw 36, SHADOW_CLAW
	dbw 41, IRON_TAIL
	dbw 45, CROSS_CHOP
	dbw 48, PROTECT
	db 0 ; no more level-up moves

SnoruntEvosAttacks:
	dbbw EVOLVE_LEVEL, 42, FROSLASS
	db 0 ; no more evolutions
	dbw 1, POWDER_SNOW
	dbw 1, LEER
	dbw 7, DOUBLE_TEAM
	dbw 10, BITE
	dbw 16, ICY_WIND
	dbw 19, HEADBUTT
	dbw 25, PROTECT
	dbw 28, CRUNCH
	dbw 34, AURORA_BEAM
	dbw 37, ICE_BEAM
	dbw 43, BLIZZARD
	db 0 ; no more level-up moves

FroslassEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POWDER_SNOW
	dbw 1, LEER
	dbw 7, DOUBLE_TEAM
	dbw 10, BITE
	dbw 16, ICY_WIND
	dbw 19, HEADBUTT
	dbw 25, PROTECT
	dbw 28, CRUNCH
	dbw 34, AURORA_BEAM
	dbw 37, ICE_BEAM
	dbw 43, BLIZZARD
	dbw 48, ATTRACT
	dbw 53, LOVELY_KISS
	dbw 59, DESTINY_BOND
	db 0 ; no more level-up moves

GreavardEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, HOUNDSTONE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, TAIL_WHIP
	dbw 3, LICK
	dbw 6, BITE
	dbw 9, ROAR
	dbw 12, HEADBUTT
	dbw 16, DIG
	dbw 24, REST
	dbw 28, CRUNCH
	dbw 32, PLAY_ROUGH
	dbw 37, PAIN_SPLIT
	dbw 41, SHADOW_CLAW
	dbw 46, CHARM
	dbw 52, DOUBLE_EDGE
	db 0 ; no more level-up moves

HoundstoneEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, TAIL_WHIP
	dbw 3, LICK
	dbw 6, BITE
	dbw 9, ROAR
	dbw 12, HEADBUTT
	dbw 16, DIG
	dbw 24, REST
	dbw 28, CRUNCH
	dbw 36, PLAY_ROUGH
	dbw 41, PAIN_SPLIT
	dbw 46, SHADOW_CLAW
	dbw 51, CHARM
	dbw 58, DOUBLE_EDGE
	db 0 ; no more level-up moves

MarshadowEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FIRE_PUNCH
	dbw 1, THUNDERPUNCH
	dbw 1, ICE_PUNCH
	dbw 1, SHADOW_SNEAK
	dbw 11, FAINT_ATTACK
	dbw 15, ROLLING_KICK
	dbw 20, MACH_PUNCH
	dbw 26, SHADOW_CLAW
	dbw 30, VITAL_THROW
	dbw 35, JUMP_KICK
	dbw 41, PSYCH_UP
	dbw 45, CROSS_CHOP
	dbw 50, TRIPLE_KICK
	dbw 56, PURSUIT
	dbw 60, HI_JUMP_KICK
	db 0 ; no more level-up moves

RotomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, DOUBLE_TEAM
	dbw 5, THUNDERSHOCK
	dbw 10, CONFUSE_RAY
	dbw 15, SPARK
	dbw 20, CONVERSION
	dbw 25, THUNDER_WAVE
	dbw 35, HEX
	dbw 40, SUBSTITUTE
	dbw 45, THIEF
	dbw 50, CONVERSION2
	dbw 55, THUNDERBOLT
	db 0 ; no more level-up moves

GolettEvosAttacks:
	dbbw EVOLVE_LEVEL, 43, GOLURK
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, ASTONISH
	dbw 1, DEFENSE_CURL
	dbw 5, MUD_SLAP
	dbw 9, ROLLOUT
	dbw 13, SHADOW_SNEAK
	dbw 17, BARRIER
	dbw 21, MEGA_PUNCH
	dbw 25, MAGNITUDE
	dbw 30, DYNAMICPUNCH
	dbw 35, NIGHT_SHADE
	dbw 40, CURSE
	dbw 45, EARTHQUAKE
	dbw 50, CROSS_CHOP
	db 0 ; no more level-up moves

GolurkEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, ASTONISH
	dbw 1, DEFENSE_CURL
	dbw 5, MUD_SLAP
	dbw 9, ROLLOUT
	dbw 13, SHADOW_SNEAK
	dbw 17, BARRIER
	dbw 21, MEGA_PUNCH
	dbw 25, MAGNITUDE
	dbw 30, DYNAMICPUNCH
	dbw 35, NIGHT_SHADE
	dbw 40, CURSE
	dbw 43, METAL_CLAW
	dbw 50, EARTHQUAKE
	dbw 60, CROSS_CHOP
	db 0 ; no more level-up moves

FrillishEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, JELLICENT
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 5, ABSORB
	dbw 9, NIGHT_SHADE
	dbw 13, BUBBLEBEAM
	dbw 17, RECOVER
	dbw 22, WRAP
	dbw 27, ACID
	dbw 32, REFLECT
	dbw 37, RAIN_DANCE
	dbw 43, HEX
	dbw 49, HYDRO_PUMP
	db 0 ; no more level-up moves

JellicentEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 5, ABSORB
	dbw 9, NIGHT_SHADE
	dbw 13, BUBBLEBEAM
	dbw 17, RECOVER
	dbw 22, WRAP
	dbw 27, ACID
	dbw 32, REFLECT
	dbw 37, RAIN_DANCE
	dbw 45, HEX
	dbw 53, HYDRO_PUMP
	db 0 ; no more level-up moves

PumpkabooEvosAttacks:
	dbbw EVOLVE_TRADE, -1, GOURGEIST
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, CONFUSE_RAY
	dbw 4, SCARY_FACE
	dbw 6, WILL_O_WISP
	dbw 11, GROWTH
	dbw 16, VINE_WHIP
	dbw 20, LEECH_SEED
	dbw 26, RAZOR_LEAF
	dbw 30, SHADOW_SNEAK
	dbw 36, HEX
	dbw 40, PAIN_SPLIT
	dbw 44, FLAMETHROWER
	dbw 48, SELFDESTRUCT
	db 0 ; no more level-up moves

GourgeistEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, CONFUSE_RAY
	dbw 4, SCARY_FACE
	dbw 6, WILL_O_WISP
	dbw 11, GROWTH
	dbw 16, VINE_WHIP
	dbw 20, LEECH_SEED
	dbw 26, RAZOR_LEAF
	dbw 30, SHADOW_SNEAK
	dbw 36, HEX
	dbw 40, PAIN_SPLIT
	dbw 44, FLAMETHROWER
	dbw 48, EXPLOSION
	db 0 ; no more level-up moves

PoltchageistEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, SINISTCHA
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, WITHDRAW
	dbw 1, STUN_SPORE
	dbw 6, ABSORB
	dbw 12, MILK_DRINK
	dbw 18, SHADOW_SNEAK
	dbw 24, MEGA_DRAIN
	dbw 29, HEX
	dbw 34, PROTECT
	dbw 39, GIGA_DRAIN
	dbw 44, SHADOW_BALL
	dbw 49, PERISH_SONG
	dbw 54, PETAL_DANCE
	db 0 ; no more level-up moves

SinistchaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, WITHDRAW
	dbw 1, STUN_SPORE
	dbw 6, ABSORB
	dbw 12, MILK_DRINK
	dbw 18, SHADOW_SNEAK
	dbw 24, MEGA_DRAIN
	dbw 28, MATCHA_GOTCHA
	dbw 30, HEX
	dbw 36, PROTECT
	dbw 42, GIGA_DRAIN
	dbw 48, SHADOW_BALL
	dbw 54, PERISH_SONG
	dbw 60, PETAL_DANCE
	db 0 ; no more level-up moves
