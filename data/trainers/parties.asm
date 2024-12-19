; Trainer data structure:
; - db "NAME@", TRAINERTYPE_* constant
; - 1 to 6 Pokémon:
;    * for TRAINERTYPE_NORMAL:     db level, species
;    * for TRAINERTYPE_MOVES:      db level, species, 4 moves
;    * for TRAINERTYPE_ITEM:       db level, species, item
;    * for TRAINERTYPE_ITEM_MOVES: db level, species, item, 4 moves
; - db -1 ; end

SECTION "Enemy Trainer Parties 1", ROMX

FalknerGroup:
	next_list_item ; FALKNER (1)
	db "FALKNER@", TRAINERTYPE_MOVES
	db 9
	dw PIDGEY
	dw TACKLE, MUD_SLAP, NO_MOVE, NO_MOVE
	db 10
	dw DRIFLOON
	dw CONSTRICT, MINIMIZE, ASTONISH, PROTECT
	db 11
	dw PIDGEOTTO
	dw TACKLE, MUD_SLAP, GUST, NO_MOVE
	db -1 ; end

	end_list_items

WhitneyGroup:
	next_list_item ; WHITNEY (1)
	db "WHITNEY@", TRAINERTYPE_MOVES
	db 23
	dw ZORUA
	dw CURSE, SWIFT, SHADOW_SNEAK, LEER
	db 25
	dw CLEFAIRY
	dw DOUBLESLAP, MIMIC, ENCORE, METRONOME
	db 27
	dw MILTANK
	dw ROLLOUT, ATTRACT, STOMP, MILK_DRINK
	db -1 ; end

	end_list_items

BugsyGroup:
	next_list_item ; BUGSY (1)
	db "BUGSY@", TRAINERTYPE_MOVES
	db 19
	dw METAPOD
	dw TACKLE, STRING_SHOT, HARDEN, NO_MOVE
	db 19
	dw PHANTUMP
	dw TOXIC, CONFUSE_RAY, ASTONISH, MOONLIGHT
	db 20
	dw SCYTHER
	dw QUICK_ATTACK, LEER, FURY_CUTTER, NO_MOVE
	db -1 ; end

	end_list_items

SophieGroup:
	next_list_item ; SOPHIE (1)
	db "SOPHIE@", TRAINERTYPE_MOVES
	db 31
	dw LITWICK
	dw WILL_O_WISP, HEX, CONFUSE_RAY, FIRE_SPIN
	db 33
	dw DRIFBLIM
	dw HEX, GUST, ASTONISH, MINIMIZE
	db 35
	dw GOURGEIST
	dw WILL_O_WISP, RAZOR_LEAF, LEECH_SEED, SHADOW_BALL
	db 33
	dw MIMIKYU
	dw DOUBLE_TEAM, FAINT_ATTACK, SWORDS_DANCE, SHADOW_SNEAK
	db -1 ; end

	next_list_item ; SOPHIE (2)
	db "SOPHIE@", TRAINERTYPE_ITEM_MOVES
	db 85
	dw ZOROARK
	db PINK_BOW
	dw SLUDGE_BOMB, HYPER_BEAM, CURSE, BODY_SLAM
	db 88
	dw POLTEAGEIST
	db FOCUS_BAND
	dw SHADOW_BALL, GIGA_DRAIN, SHELL_SMASH, STORED_POWER
	db 86
	dw DRIFBLIM
	db LEFTOVERS
	dw TOXIC, FLY, DOUBLE_TEAM, PROTECT
	db 86
	dw MISMAGIUS
	db SPELL_TAG
	dw PERISH_SONG, MEAN_LOOK, THUNDERBOLT, PSYCHIC_M
	db 89
	dw CHANDELURE
	db CHARCOAL
	dw FLAMETHROWER, HEX, WILL_O_WISP, HIDDEN_POWER
	db 90
	dw MIMIKYU
	db LIGHT_BALL
	dw PLAY_ROUGH, SHADOW_CLAW, SHADOW_SNEAK, SWORDS_DANCE
	db -1 ; end

	end_list_items

PryceGroup:
	next_list_item ; PRYCE (1)
	db "PRYCE@", TRAINERTYPE_MOVES
	db 41
	dw SNEASEL
	dw SLASH, ICY_WIND, METAL_CLAW, ICE_BEAM
	db 43
	dw DEWGONG
	dw HEADBUTT, ICY_WIND, AURORA_BEAM, REST
	db 45
	dw PILOSWINE
	dw ICE_BEAM, EARTHQUAKE, MIST, BLIZZARD
	db 43
	dw FROSLASS
	dw AURORA_BEAM, SHADOW_BALL, CRUNCH, DOUBLE_TEAM
	db -1 ; end

	end_list_items

JasmineGroup:
	next_list_item ; JASMINE (1)
	db "JASMINE@", TRAINERTYPE_MOVES
	db 42
	dw MAGNEMITE
	dw THUNDERBOLT, SUPERSONIC, SONICBOOM, THUNDER_WAVE
	db 47
	dw STEELIX
	dw SCREECH, SUNNY_DAY, ROCK_THROW, IRON_TAIL
	db 43
	dw DOUBLADE
	dw IRON_TAIL, SHADOW_CLAW, SHADOW_CLAW, SWORDS_DANCE
	db -1 ; end

	end_list_items

ChuckGroup:
	next_list_item ; CHUCK (1)
	db "CHUCK@", TRAINERTYPE_MOVES
	db 39
	dw MARSHADOW
	dw SHADOW_CLAW, MACH_PUNCH, FAINT_ATTACK, SWAGGER
	db 39
	dw PRIMEAPE
	dw LEER, RAGE, KARATE_CHOP, FURY_SWIPES
	db 42
	dw POLIWRATH
	dw HYPNOSIS, MIND_READER, SURF, DYNAMICPUNCH
	db -1 ; end

	end_list_items

ClairGroup:
	next_list_item ; CLAIR (1)
	db "CLAIR@", TRAINERTYPE_MOVES
	db 57
	dw DRAGONITE
	dw THUNDER_WAVE, SURF, SLAM, DRAGONBREATH
	db 57
	dw DRAGONITE
	dw THUNDER_WAVE, THUNDERBOLT, SLAM, DRAGONBREATH
	db 57
	dw DRAGONITE
	dw THUNDER_WAVE, ICE_BEAM, SLAM, DRAGONBREATH
	db 60
	dw KINGDRA
	dw SMOKESCREEN, SURF, HYPER_BEAM, DRAGONBREATH
	db 57
	dw DRAKLOAK
	dw DRAGON_RUSH, HEX, SHADOW_CLAW, DRAGON_DANCE
	db -1 ; end

	end_list_items

Rival1Group:
	next_list_item ; RIVAL1 (1)
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end

	next_list_item ; RIVAL1 (2)
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CYNDAQUIL
	db -1 ; end

	next_list_item ; RIVAL1 (3)
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw TOTODILE
	db -1 ; end

	next_list_item ; RIVAL1 (4)
	db "?@", TRAINERTYPE_NORMAL
	db 17
	dw GASTLY
	db 19
	dw ZUBAT
	db 20
	dw BAYLEEF
	db -1 ; end

	next_list_item ; RIVAL1 (5)
	db "?@", TRAINERTYPE_NORMAL
	db 17
	dw GASTLY
	db 19
	dw ZUBAT
	db 20
	dw QUILAVA
	db -1 ; end

	next_list_item ; RIVAL1 (6)
	db "?@", TRAINERTYPE_NORMAL
	db 17
	dw GASTLY
	db 19
	dw ZUBAT
	db 20
	dw CROCONAW
	db -1 ; end

	next_list_item ; RIVAL1 (7)
	db "?@", TRAINERTYPE_MOVES
	db 26
	dw HAUNTER
	dw LICK, SPITE, MEAN_LOOK, CURSE
	db 25
	dw MAGNEMITE
	dw TACKLE, THUNDERSHOCK, SUPERSONIC, SONICBOOM
	db 27
	dw ZUBAT
	dw LEECH_LIFE, SUPERSONIC, BITE, CONFUSE_RAY
	db 29
	dw BAYLEEF
	dw GROWL, REFLECT, RAZOR_LEAF, POISONPOWDER
	db -1 ; end

	next_list_item ; RIVAL1 (8)
	db "?@", TRAINERTYPE_MOVES
	db 26
	dw HAUNTER
	dw LICK, SPITE, MEAN_LOOK, CURSE
	db 25
	dw MAGNEMITE
	dw TACKLE, THUNDERSHOCK, SUPERSONIC, SONICBOOM
	db 27
	dw ZUBAT
	dw LEECH_LIFE, SUPERSONIC, BITE, CONFUSE_RAY
	db 29
	dw QUILAVA
	dw LEER, SMOKESCREEN, EMBER, QUICK_ATTACK
	db -1 ; end

	next_list_item ; RIVAL1 (9)
	db "?@", TRAINERTYPE_MOVES
	db 26
	dw HAUNTER
	dw LICK, SPITE, MEAN_LOOK, CURSE
	db 25
	dw MAGNEMITE
	dw TACKLE, THUNDERSHOCK, SUPERSONIC, SONICBOOM
	db 27
	dw ZUBAT
	dw LEECH_LIFE, SUPERSONIC, BITE, CONFUSE_RAY
	db 29
	dw CROCONAW
	dw LEER, RAGE, WATER_GUN, BITE
	db -1 ; end

	next_list_item ; RIVAL1 (10)
	db "?@", TRAINERTYPE_MOVES
	db 50
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 48
	dw MAGNETON
	dw TRI_ATTACK, THUNDERBOLT, SONICBOOM, THUNDER_WAVE
	db 50
	dw GENGAR
	dw SLUDGE_BOMB, MEAN_LOOK, CURSE, SHADOW_BALL
	db 52
	dw SNEASEL
	dw AGILITY, FURY_SWIPES, ICE_PUNCH, FAINT_ATTACK
	db 52
	dw MEGANIUM
	dw REFLECT, GIGA_DRAIN, POISONPOWDER, BODY_SLAM
	db -1 ; end

	next_list_item ; RIVAL1 (11)
	db "?@", TRAINERTYPE_MOVES
	db 50
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 48
	dw MAGNETON
	dw TRI_ATTACK, THUNDERBOLT, SONICBOOM, THUNDER_WAVE
	db 50
	dw GENGAR
	dw SLUDGE_BOMB, MEAN_LOOK, CURSE, SHADOW_BALL
	db 52
	dw SNEASEL
	dw AGILITY, FURY_SWIPES, ICE_PUNCH, FAINT_ATTACK
	db 52
	dw TYPHLOSION
	dw SMOKESCREEN, FLAMETHROWER, QUICK_ATTACK, FLAME_WHEEL
	db -1 ; end

	next_list_item ; RIVAL1 (12)
	db "?@", TRAINERTYPE_MOVES
	db 50
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 48
	dw MAGNETON
	dw TRI_ATTACK, THUNDERBOLT, SONICBOOM, THUNDER_WAVE
	db 50
	dw GENGAR
	dw SLUDGE_BOMB, MEAN_LOOK, CURSE, SHADOW_BALL
	db 52
	dw SNEASEL
	dw AGILITY, FURY_SWIPES, ICE_PUNCH, FAINT_ATTACK
	db 52
	dw FERALIGATR
	dw WATERFALL, SURF, BITE, SCARY_FACE
	db -1 ; end

	next_list_item ; RIVAL1 (13)
	db "?@", TRAINERTYPE_MOVES
	db 59
	dw SNEASEL
	dw AGILITY, FURY_SWIPES, ICE_PUNCH, FAINT_ATTACK
	db 61
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 59
	dw MAGNETON
	dw TRI_ATTACK, THUNDERBOLT, SWIFT, THUNDER_WAVE
	db 60
	dw GENGAR
	dw SLUDGE_BOMB, MEAN_LOOK, CURSE, SHADOW_BALL
	db 60
	dw ALAKAZAM
	dw DISABLE, PSYCHIC_M, RECOVER, FUTURE_SIGHT
	db 63
	dw MEGANIUM
	dw REFLECT, GIGA_DRAIN, POISONPOWDER, BODY_SLAM
	db -1 ; end

	next_list_item ; RIVAL1 (14)
	db "?@", TRAINERTYPE_MOVES
	db 59
	dw SNEASEL
	dw AGILITY, FURY_SWIPES, ICE_PUNCH, FAINT_ATTACK
	db 61
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 59
	dw MAGNETON
	dw TRI_ATTACK, THUNDERBOLT, SWIFT, THUNDER_WAVE
	db 60
	dw GENGAR
	dw SLUDGE_BOMB, MEAN_LOOK, CURSE, SHADOW_BALL
	db 60
	dw ALAKAZAM
	dw DISABLE, PSYCHIC_M, RECOVER, FUTURE_SIGHT
	db 63
	dw TYPHLOSION
	dw SMOKESCREEN, FLAMETHROWER, QUICK_ATTACK, FLAME_WHEEL
	db -1 ; end

	next_list_item ; RIVAL1 (15)
	db "?@", TRAINERTYPE_MOVES
	db 59
	dw SNEASEL
	dw AGILITY, FURY_SWIPES, ICE_PUNCH, FAINT_ATTACK
	db 61
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 59
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 60
	dw GENGAR
	dw SLUDGE_BOMB, MEAN_LOOK, CURSE, SHADOW_BALL
	db 60
	dw ALAKAZAM
	dw DISABLE, PSYCHIC_M, RECOVER, FUTURE_SIGHT
	db 63
	dw FERALIGATR
	dw WATERFALL, SURF, BITE, SCARY_FACE
	db -1 ; end

	end_list_items

PokemonProfGroup:

WillGroup:
	next_list_item ; WILL (1)
	db "WILL@", TRAINERTYPE_MOVES
	db 70
	dw DRIFBLIM
	dw TOXIC, MINIMIZE, BATON_PASS, PROTECT
	db 71
	dw JYNX
	dw DOUBLESLAP, LOVELY_KISS, ICE_PUNCH, PSYCHIC_M
	db 71
	dw EXEGGUTOR
	dw REFLECT, LEECH_SEED, EGG_BOMB, PSYCHIC_M
	db 71
	dw SLOWBRO
	dw CURSE, AMNESIA, BODY_SLAM, PSYCHIC_M
	db 72
	dw XATU
	dw QUICK_ATTACK, FUTURE_SIGHT, CONFUSE_RAY, PSYCHIC_M
	db -1 ; end

	end_list_items

PKMNTrainerGroup:
	next_list_item ; CAL (1)
	db "CAL@", TRAINERTYPE_NORMAL
	db 10
	dw CHIKORITA
	db 10
	dw CYNDAQUIL
	db 10
	dw TOTODILE
	db -1 ; end

	next_list_item ; CAL (2)
	db "CAL@", TRAINERTYPE_NORMAL
	db 30
	dw BAYLEEF
	db 30
	dw QUILAVA
	db 30
	dw CROCONAW
	db -1 ; end

	next_list_item ; CAL (3)
	db "CAL@", TRAINERTYPE_NORMAL
	db 90
	dw MEGANIUM
	db 90
	dw TYPHLOSION
	db 90
	dw FERALIGATR
	db 90
	dw VENUSAUR
	db 90
	dw CHARIZARD
	db 90
	dw BLASTOISE
	db -1 ; end

	end_list_items

BrunoGroup:
	next_list_item ; BRUNO (1)
	db "BRUNO@", TRAINERTYPE_MOVES
	db 72
	dw HITMONTOP
	dw PURSUIT, QUICK_ATTACK, DIG, DETECT
	db 72
	dw HITMONLEE
	dw SWAGGER, DOUBLE_KICK, HI_JUMP_KICK, FORESIGHT
	db 72
	dw HITMONCHAN
	dw THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH, MACH_PUNCH
	db 73
	dw GOLURK
	dw EARTHQUAKE, DYNAMICPUNCH, BARRIER, HYPER_BEAM
	db 76
	dw MACHAMP
	dw ROCK_SLIDE, FORESIGHT, VITAL_THROW, CROSS_CHOP
	db -1 ; end

	end_list_items

KarenGroup:
	next_list_item ; KAREN (1)
	db "KAREN@", TRAINERTYPE_MOVES
	db 72
	dw UMBREON
	dw SAND_ATTACK, CONFUSE_RAY, FAINT_ATTACK, MEAN_LOOK
	db 72
	dw VILEPLUME
	dw STUN_SPORE, MOONBLAST, MOONLIGHT, PETAL_DANCE
	db 76
	dw HOUNDSTONE
	dw PAIN_SPLIT, DESTINY_BOND, DIG, HYPER_BEAM
	db 74
	dw MURKROW
	dw QUICK_ATTACK, WHIRLWIND, PURSUIT, FAINT_ATTACK
	db 77
	dw HOUNDOOM
	dw ROAR, PURSUIT, FLAMETHROWER, CRUNCH
	db -1 ; end

	end_list_items

KogaGroup:
	next_list_item ; KOGA (1)
	db "KOGA@", TRAINERTYPE_MOVES
	db 70
	dw ARIADOS
	dw DOUBLE_TEAM, SPIDER_WEB, BATON_PASS, GIGA_DRAIN
	db 71
	dw VENOMOTH
	dw SUPERSONIC, GUST, PSYCHIC_M, TOXIC
	db 73
	dw FORRETRESS
	dw PROTECT, SWIFT, EXPLOSION, SPIKES
	db 72
	dw GENGAR
	dw SLUDGE_BOMB, TOXIC, SHADOW_BALL, CURSE
	db 74
	dw CROBAT
	dw DOUBLE_TEAM, QUICK_ATTACK, WING_ATTACK, TOXIC
	db -1 ; end

	end_list_items

ChampionGroup:
	next_list_item ; CHAMPION (1)
	db "LANCE@", TRAINERTYPE_MOVES
	db 74
	dw GYARADOS
	dw FLAIL, RAIN_DANCE, SURF, HYPER_BEAM
	db 77
	dw DRAGONITE
	dw THUNDER_WAVE, TWISTER, THUNDER, HYPER_BEAM
	db 76
	dw AERODACTYL
	dw WING_ATTACK, ANCIENTPOWER, ROCK_SLIDE, HYPER_BEAM
	db 76
	dw CHARIZARD
	dw FLAMETHROWER, WING_ATTACK, SLASH, HYPER_BEAM
	db 77
	dw DRAGAPULT
	dw DRAGON_DARTS, SHADOW_CLAW, STEEL_WING, DRAGON_DANCE
	db 80
	dw DRAGONITE
	dw FIRE_BLAST, SAFEGUARD, OUTRAGE, HYPER_BEAM
	db -1 ; end

	end_list_items

BrockGroup:
	next_list_item ; BROCK (1)
	db "BROCK@", TRAINERTYPE_MOVES
	db 85
	dw PALOSSAND
	dw HARDEN, EARTH_POWER, SANDSTORM, GIGA_DRAIN
	db 85
	dw RHYHORN
	dw FURY_ATTACK, SCARY_FACE, EARTHQUAKE, HORN_DRILL
	db 86
	dw OMASTAR
	dw BITE, SURF, PROTECT, SPIKE_CANNON
	db 89
	dw ONIX
	dw BIND, ROCK_SLIDE, BIDE, SANDSTORM
	db 87
	dw KABUTOPS
	dw SLASH, SURF, ENDURE, GIGA_DRAIN
	db -1 ; end

	end_list_items

MistyGroup:
	next_list_item ; MISTY (1)
	db "MISTY@", TRAINERTYPE_MOVES
	db 82
	dw GOLDUCK
	dw SURF, DISABLE, PSYCH_UP, PSYCHIC_M
	db 83
	dw JELLICENT
	dw SLUDGE_BOMB, HYPER_BEAM, SHADOW_BALL, REFLECT
	db 82
	dw QUAGSIRE
	dw SURF, AMNESIA, EARTHQUAKE, RAIN_DANCE
	db 84
	dw LAPRAS
	dw SURF, PERISH_SONG, BLIZZARD, RAIN_DANCE
	db 87
	dw STARMIE
	dw SURF, CONFUSE_RAY, RECOVER, ICE_BEAM
	db -1 ; end

	end_list_items

LtSurgeGroup:
	next_list_item ; LT_SURGE (1)
	db "LT.SURGE@", TRAINERTYPE_MOVES
	db 79
	dw RAICHU
	dw THUNDER_WAVE, QUICK_ATTACK, THUNDERBOLT, THUNDER
	db 75
	dw ELECTRODE
	dw SCREECH, DOUBLE_TEAM, SWIFT, EXPLOSION
	db 75
	dw MAGNETON
	dw LOCK_ON, DOUBLE_TEAM, SWIFT, ZAP_CANNON
	db 77
	dw ROTOM
	dw THUNDERBOLT, CONVERSION2, THUNDER_WAVE, SUBSTITUTE
	db 81
	dw ELECTABUZZ
	dw QUICK_ATTACK, THUNDERPUNCH, LIGHT_SCREEN, THUNDER
	db -1 ; end

	end_list_items

ScientistGroup:
	next_list_item ; SCIENTIST (1)
	db "ROSS@", TRAINERTYPE_NORMAL
	db 34
	dw KOFFING
	db 39
	dw WEEZING
	db -1 ; end

	next_list_item ; SCIENTIST (2)
	db "MITCH@", TRAINERTYPE_NORMAL
	db 41
	dw DITTO
	db -1 ; end

	next_list_item ; SCIENTIST (3)
	db "JED@", TRAINERTYPE_NORMAL
	db 38
	dw MAGNEMITE
	db 40
	dw MAGNETON
	db 42
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCIENTIST (4)
	db "MARC@", TRAINERTYPE_NORMAL
	db 47
	dw MAGNETON
	db 47
	dw ELECTRODE
	db 47
	dw PORYGON
	db -1 ; end

	next_list_item ; SCIENTIST (5)
	db "RICH@", TRAINERTYPE_MOVES
	db 50
	dw PORYGON2
	dw CONVERSION, CONVERSION2, RECOVER, TRI_ATTACK
	db -1 ; end

	end_list_items

ErikaGroup:
	next_list_item ; ERIKA (1)
	db "ERIKA@", TRAINERTYPE_MOVES
	db 82
	dw TANGELA
	dw VINE_WHIP, BIND, GIGA_DRAIN, SLEEP_POWDER
	db 84
	dw GOURGEIST
	dw EXPLOSION, WILL_O_WISP, HEX, RAZOR_LEAF
	db 81
	dw JUMPLUFF
	dw MEGA_DRAIN, LEECH_SEED, COTTON_SPORE, GIGA_DRAIN
	db 86
	dw SINISTCHA
	dw MATCHA_GOTCHA, MILK_DRINK, SHADOW_BALL, PETAL_DANCE
	db 86
	dw BELLOSSOM
	dw SUNNY_DAY, SYNTHESIS, PETAL_DANCE, SOLARBEAM
	db -1 ; end

	end_list_items

YoungsterGroup:
	next_list_item ; YOUNGSTER (1)
	db "JOEY@", TRAINERTYPE_NORMAL
	db 4
	dw RATTATA
	db -1 ; end

	next_list_item ; YOUNGSTER (2)
	db "MIKEY@", TRAINERTYPE_NORMAL
	db 2
	dw PIDGEY
	db 4
	dw RATTATA
	db -1 ; end

	next_list_item ; YOUNGSTER (3)
	db "ALBERT@", TRAINERTYPE_NORMAL
	db 10
	dw RATTATA
	db 12
	dw ZUBAT
	db -1 ; end

	next_list_item ; YOUNGSTER (4)
	db "GORDON@", TRAINERTYPE_NORMAL
	db 13
	dw WOOPER
	db 12
	dw DRIFLOON
	db -1 ; end

	next_list_item ; YOUNGSTER (5)
	db "SAMUEL@", TRAINERTYPE_NORMAL
	db 17
	dw RATTATA
	db 20
	dw SANDSHREW
	db 18
	dw SPEAROW
	db 20
	dw FEAROW
	db -1 ; end

	next_list_item ; YOUNGSTER (6)
	db "IAN@", TRAINERTYPE_NORMAL
	db 20
	dw MANKEY
	db 22
	dw DIGLETT
	db -1 ; end

	next_list_item ; YOUNGSTER (7)
	db "JOEY@", TRAINERTYPE_NORMAL
	db 20
	dw RATTATA
	db -1 ; end

	next_list_item ; YOUNGSTER (8)
	db "JOEY@", TRAINERTYPE_MOVES
	db 29
	dw RATICATE
	dw TAIL_WHIP, QUICK_ATTACK, HYPER_FANG, SCARY_FACE
	db -1 ; end

	next_list_item ; YOUNGSTER (9)
	db "WARREN@", TRAINERTYPE_NORMAL
	db 85
	dw FEAROW
	db -1 ; end

	next_list_item ; YOUNGSTER (10)
	db "JIMMY@", TRAINERTYPE_NORMAL
	db 83
	dw RATICATE
	db 83
	dw ARBOK
	db -1 ; end

	next_list_item ; YOUNGSTER (11)
	db "OWEN@", TRAINERTYPE_NORMAL
	db 85
	dw ARCANINE
	db -1 ; end

	next_list_item ; YOUNGSTER (12)
	db "JASON@", TRAINERTYPE_NORMAL
	db 83
	dw KANGASKHAN
	db 83
	dw CROBAT
	db -1 ; end

	next_list_item ; YOUNGSTER (13)
	db "JOEY@", TRAINERTYPE_MOVES
	db 38
	dw RATICATE
	dw TAIL_WHIP, QUICK_ATTACK, HYPER_FANG, PURSUIT
	db -1 ; end

	next_list_item ; YOUNGSTER (14)
	db "JOEY@", TRAINERTYPE_MOVES
	db 45
	dw RATICATE
	dw HYPER_BEAM, QUICK_ATTACK, HYPER_FANG, PURSUIT
	db -1 ; end

	end_list_items

SECTION "Enemy Trainer Parties 2", ROMX

SchoolboyGroup:
	next_list_item ; SCHOOLBOY (1)
	db "JACK@", TRAINERTYPE_NORMAL
	db 22
	dw GLOOM
	db 25
	dw VOLTORB
	db -1 ; end

	next_list_item ; SCHOOLBOY (2)
	db "KIPP@", TRAINERTYPE_NORMAL
	db 77
	dw ROTOM
	db 77
	dw ELEKID
	db 81
	dw ELECTRODE
	db 83
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (3)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 26
	dw TANGELA
	db -1 ; end

	next_list_item ; SCHOOLBOY (4)
	db "JOHNNY@", TRAINERTYPE_NORMAL
	db 81
	dw VILEPLUME
	db 81
	dw VICTREEBEL
	db 81
	dw VENUSAUR
	db -1 ; end

	next_list_item ; SCHOOLBOY (5)
	db "DANNY@", TRAINERTYPE_NORMAL
	db 81
	dw JYNX
	db 81
	dw ELECTABUZZ
	db 81
	dw MAGMAR
	db -1 ; end

	next_list_item ; SCHOOLBOY (6)
	db "TOMMY@", TRAINERTYPE_NORMAL
	db 82
	dw XATU
	db 84
	dw ALAKAZAM
	db -1 ; end

	next_list_item ; SCHOOLBOY (7)
	db "DUDLEY@", TRAINERTYPE_NORMAL
	db 80
	dw ODDISH
	db -1 ; end

	next_list_item ; SCHOOLBOY (8)
	db "JOE@", TRAINERTYPE_NORMAL
	db 81
	dw TANGELA
	db 81
	dw VAPOREON
	db -1 ; end

	next_list_item ; SCHOOLBOY (9)
	db "BILLY@", TRAINERTYPE_NORMAL
	db 77
	dw PARASECT
	db 77
	dw YANMA
	db 77
	dw POLIWRATH
	db 85
	dw DITTO
	db -1 ; end

	next_list_item ; SCHOOLBOY (10)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 29
	dw MR__MIME
	db -1 ; end

	next_list_item ; SCHOOLBOY (11)
	db "NATE@", TRAINERTYPE_NORMAL
	db 82
	dw LEDIAN
	db 82
	dw EXEGGUTOR
	db -1 ; end

	next_list_item ; SCHOOLBOY (12)
	db "RICKY@", TRAINERTYPE_NORMAL
	db 82
	dw AIPOM
	db 82
	dw DITTO
	db -1 ; end

	next_list_item ; SCHOOLBOY (13)
	db "JACK@", TRAINERTYPE_NORMAL
	db 24
	dw GLOOM
	db 27
	dw VOLTORB
	db -1 ; end

	next_list_item ; SCHOOLBOY (14)
	db "JACK@", TRAINERTYPE_NORMAL
	db 38
	dw VILEPLUME
	db 41
	dw ELECTRODE
	db -1 ; end

	next_list_item ; SCHOOLBOY (15)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 30
	dw TANGELA
	db 30
	dw YANMA
	db -1 ; end

	next_list_item ; SCHOOLBOY (16)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 35
	dw NATU
	db 37
	dw TANGELA
	db 35
	dw QUAGSIRE
	db 40
	dw YANMA
	db -1 ; end

	next_list_item ; SCHOOLBOY (17)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 31
	dw MR__MIME
	db 31
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SCHOOLBOY (18)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 39
	dw MR__MIME
	db 43
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (19)
	db "JACK@", TRAINERTYPE_NORMAL
	db 42
	dw VILEPLUME
	db 45
	dw GROWLITHE
	db 45
	dw ELECTRODE
	db -1 ; end

	next_list_item ; SCHOOLBOY (20)
	db "JACK@", TRAINERTYPE_MOVES
	db 48
	dw ELECTRODE
	dw SCREECH, SONICBOOM, ROLLOUT, LIGHT_SCREEN
	db 48
	dw GROWLITHE
	dw SUNNY_DAY, LEER, TAKE_DOWN, FLAME_WHEEL
	db 50
	dw VILEPLUME
	dw SOLARBEAM, SLEEP_POWDER, MOONBLAST, MOONLIGHT
	db -1 ; end

	next_list_item ; SCHOOLBOY (21)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 40
	dw NATU
	db 40
	dw TANGELA
	db 43
	dw QUAGSIRE
	db 45
	dw YANMA
	db -1 ; end

	next_list_item ; SCHOOLBOY (22)
	db "ALAN@", TRAINERTYPE_MOVES
	db 50
	dw XATU
	dw PECK, NIGHT_SHADE, SWIFT, FUTURE_SIGHT
	db 52
	dw TANGELA
	dw POISONPOWDER, VINE_WHIP, BIND, MEGA_DRAIN
	db 52
	dw YANMA
	dw QUICK_ATTACK, DOUBLE_TEAM, SONICBOOM, SUPERSONIC
	db 55
	dw QUAGSIRE
	dw TAIL_WHIP, SLAM, AMNESIA, EARTHQUAKE
	db -1 ; end

	next_list_item ; SCHOOLBOY (23)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 45
	dw MR__MIME
	db 49
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (24)
	db "CHAD@", TRAINERTYPE_MOVES
	db 49
	dw MR__MIME
	dw PSYCHIC_M, LIGHT_SCREEN, REFLECT, ENCORE
	db 53
	dw MAGNETON
	dw ZAP_CANNON, THUNDER_WAVE, LOCK_ON, SWIFT
	db -1 ; end

	end_list_items

BirdKeeperGroup:
	next_list_item ; BIRD_KEEPER (1)
	db "ROD@", TRAINERTYPE_NORMAL
	db 10
	dw PIDGEY
	db 10
	dw PIDGEY
	db -1 ; end

	next_list_item ; BIRD_KEEPER (2)
	db "ABE@", TRAINERTYPE_NORMAL
	db 9
	dw SPEAROW
	db 11
	dw DRIFLOON
	db -1 ; end

	next_list_item ; BIRD_KEEPER (3)
	db "BRYAN@", TRAINERTYPE_NORMAL
	db 22
	dw PIDGEY
	db 24
	dw PIDGEOTTO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (4)
	db "THEO@", TRAINERTYPE_NORMAL
	db 29
	dw PIDGEOTTO
	db 27
	dw PIDGEOTTO
	db 31
	dw PIDGEOT
	db 27
	dw PIDGEOTTO
	db 27
	dw PIDGEOTTO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (5)
	db "TOBY@", TRAINERTYPE_NORMAL
	db 25
	dw DODUO
	db 26
	dw DODUO
	db 27
	dw DODUO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (6)
	db "DENIS@", TRAINERTYPE_NORMAL
	db 30
	dw FEAROW
	db 32
	dw FEAROW
	db 30
	dw GLIGAR
	db -1 ; end

	next_list_item ; BIRD_KEEPER (7)
	db "VANCE@", TRAINERTYPE_NORMAL
	db 55
	dw PIDGEOT
	db 55
	dw DRIFBLIM
	db -1 ; end

	next_list_item ; BIRD_KEEPER (8)
	db "HANK@", TRAINERTYPE_NORMAL
	db 12
	dw PIDGEY
	db 84
	dw PIDGEOT
	db -1 ; end

	next_list_item ; BIRD_KEEPER (9)
	db "ROY@", TRAINERTYPE_NORMAL
	db 79
	dw FEAROW
	db 81
	dw DRIFBLIM
	db 85
	dw FEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (10)
	db "BORIS@", TRAINERTYPE_NORMAL
	db 80
	dw DRIFBLIM
	db 78
	dw SKARMORY
	db 82
	dw DODRIO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (11)
	db "BOB@", TRAINERTYPE_NORMAL
	db 84
	dw NOCTOWL
	db -1 ; end

	next_list_item ; BIRD_KEEPER (12)
	db "JOSE@", TRAINERTYPE_NORMAL
	db 60
	dw FARFETCH_D
	db -1 ; end

	next_list_item ; BIRD_KEEPER (13)
	db "PETER@", TRAINERTYPE_NORMAL
	db 10
	dw PIDGEY
	db 11
	dw PIDGEY
	db 13
	dw SPEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (14)
	db "JOSE@", TRAINERTYPE_NORMAL
	db 60
	dw FARFETCH_D
	db -1 ; end

	next_list_item ; BIRD_KEEPER (15)
	db "PERRY@", TRAINERTYPE_NORMAL
	db 84
	dw FARFETCH_D
	db -1 ; end

	next_list_item ; BIRD_KEEPER (16)
	db "BRET@", TRAINERTYPE_NORMAL
	db 81
	dw DELIBIRD
	db 82
	dw TOGETIC
	db 82
	dw SKARMORY
	db -1 ; end

	next_list_item ; BIRD_KEEPER (17)
	db "JOSE@", TRAINERTYPE_MOVES
	db 66
	dw FARFETCH_D
	dw FURY_ATTACK, DETECT, FLY, SLASH
	db -1 ; end

	next_list_item ; BIRD_KEEPER (18)
	db "VANCE@", TRAINERTYPE_NORMAL
	db 62
	dw PIDGEOT
	db 62
	dw DRIFBLIM
	db -1 ; end

	next_list_item ; BIRD_KEEPER (19)
	db "VANCE@", TRAINERTYPE_MOVES
	db 68
	dw DRIFBLIM
	dw TOXIC, FLY, DOUBLE_TEAM, PROTECT
	db 68
	dw PIDGEOT
	dw SWIFT, DETECT, STEEL_WING, FLY
	db -1 ; end

	end_list_items

LassGroup:
	next_list_item ; LASS (1)
	db "CARRIE@", TRAINERTYPE_MOVES
	db 25
	dw GRANBULL
	dw SCARY_FACE, CHARM, BITE, LICK
	db -1 ; end

	next_list_item ; LASS (2)
	db "BRIDGET@", TRAINERTYPE_NORMAL
	db 21
	dw JIGGLYPUFF
	db 23
	dw JIGGLYPUFF
	db 25
	dw JIGGLYPUFF
	db -1 ; end

	next_list_item ; LASS (3)
	db "ALICE@", TRAINERTYPE_NORMAL
	db 78
	dw VILEPLUME
	db 82
	dw ARBOK
	db 78
	dw FORRETRESS
	db -1 ; end

	next_list_item ; LASS (4)
	db "KRISE@", TRAINERTYPE_NORMAL
	db 22
	dw GLOOM
	db 25
	dw CUBONE
	db -1 ; end

	next_list_item ; LASS (5)
	db "CONNIE@", TRAINERTYPE_NORMAL
	db 33
	dw AZUMARILL
	db -1 ; end

	next_list_item ; LASS (6)
	db "LINDA@", TRAINERTYPE_NORMAL
	db 78
	dw BULBASAUR
	db 80
	dw IVYSAUR
	db 82
	dw VENUSAUR
	db -1 ; end

	next_list_item ; LASS (7)
	db "LAURA@", TRAINERTYPE_NORMAL
	db 78
	dw GLOOM
	db 81
	dw POLTEAGEIST
	db 81
	dw BELLOSSOM
	db -1 ; end

	next_list_item ; LASS (8)
	db "SHANNON@", TRAINERTYPE_NORMAL
	db 79
	dw PARASECT
	db 79
	dw GOURGEIST
	db 82
	dw TREVENANT
	db -1 ; end

	next_list_item ; LASS (9)
	db "MICHELLE@", TRAINERTYPE_NORMAL
	db 79
	dw SUNFLORA
	db 80
	dw BELLOSSOM
	db 81
	dw JUMPLUFF
	db -1 ; end

	next_list_item ; LASS (10)
	db "DANA@", TRAINERTYPE_MOVES
	db 28
	dw FLAAFFY
	dw TACKLE, GROWL, THUNDERSHOCK, THUNDER_WAVE
	db 28
	dw PSYDUCK
	dw SCRATCH, TAIL_WHIP, DISABLE, CONFUSION
	db -1 ; end

	next_list_item ; LASS (11)
	db "ELLEN@", TRAINERTYPE_NORMAL
	db 80
	dw WIGGLYTUFF
	db 82
	dw GRANBULL
	db -1 ; end

	next_list_item ; LASS (12)
	db "CONNIE@", TRAINERTYPE_NORMAL
	db 35
	dw AZUMARILL
	db -1 ; end

	next_list_item ; LASS (13)
	db "CONNIE@", TRAINERTYPE_NORMAL
	db 39
	dw AZUMARILL
	db -1 ; end

	next_list_item ; LASS (14)
	db "DANA@", TRAINERTYPE_MOVES
	db 29
	dw FLAAFFY
	dw TACKLE, GROWL, THUNDERSHOCK, THUNDER_WAVE
	db 31
	dw PSYDUCK
	dw SCRATCH, TAIL_WHIP, DISABLE, CONFUSION
	db -1 ; end

	next_list_item ; LASS (15)
	db "DANA@", TRAINERTYPE_MOVES
	db 39
	dw GOLDUCK
	dw SCRATCH, DISABLE, CONFUSION, SCREECH
	db 39
	dw AMPHAROS
	dw TACKLE, THUNDERSHOCK, THUNDER_WAVE, COTTON_SPORE
	db -1 ; end

	next_list_item ; LASS (16)
	db "DANA@", TRAINERTYPE_MOVES
	db 42
	dw GOLDUCK
	dw SCRATCH, DISABLE, PSYCHIC_M, SCREECH
	db 42
	dw AMPHAROS
	dw TACKLE, THUNDERPUNCH, THUNDER_WAVE, COTTON_SPORE
	db -1 ; end

	next_list_item ; LASS (17)
	db "DANA@", TRAINERTYPE_MOVES
	db 50
	dw AMPHAROS
	dw SWIFT, THUNDERPUNCH, THUNDER_WAVE, COTTON_SPORE
	db 50
	dw GOLDUCK
	dw DISABLE, SURF, PSYCHIC_M, SCREECH
	db -1 ; end

	end_list_items

JanineGroup:
	next_list_item ; JANINE (1)
	db "JANINE@", TRAINERTYPE_MOVES
	db 83
	dw CROBAT
	dw SCREECH, SUPERSONIC, CONFUSE_RAY, WING_ATTACK
	db 83
	dw WEEZING
	dw SMOG, SLUDGE_BOMB, TOXIC, EXPLOSION
	db 83
	dw GENGAR
	dw SHADOW_BALL, SLUDGE_BOMB, TOXIC, CURSE
	db 80
	dw ARIADOS
	dw SCARY_FACE, GIGA_DRAIN, STRING_SHOT, NIGHT_SHADE
	db 86
	dw VENOMOTH
	dw FORESIGHT, DOUBLE_TEAM, GUST, PSYCHIC_M
	db -1 ; end

	end_list_items

CooltrainerMGroup:
	next_list_item ; COOLTRAINERM (1)
	db "NICK@", TRAINERTYPE_MOVES
	db 36
	dw CHARIZARD
	dw FLAMETHROWER, SMOKESCREEN, SLASH, SCARY_FACE
	db 36
	dw BLASTOISE
	dw WITHDRAW, SURF, BITE, CURSE
	db 36
	dw VENUSAUR
	dw LEECH_SEED, POISONPOWDER, SLEEP_POWDER, RAZOR_LEAF
	db -1 ; end

	next_list_item ; COOLTRAINERM (2)
	db "AARON@", TRAINERTYPE_NORMAL
	db 40
	dw VENUSAUR
	db 40
	dw CHARIZARD
	db 40
	dw BLASTOISE
	db -1 ; end

	next_list_item ; COOLTRAINERM (3)
	db "PAUL@", TRAINERTYPE_NORMAL
	db 51
	dw DRATINI
	db 54
	dw DRAGONAIR
	db 54
	dw DRAKLOAK
	db -1 ; end

	next_list_item ; COOLTRAINERM (4)
	db "CODY@", TRAINERTYPE_NORMAL
	db 54
	dw SEADRA
	db 56
	dw KINGDRA
	db -1 ; end

	next_list_item ; COOLTRAINERM (5)
	db "MIKE@", TRAINERTYPE_NORMAL
	db 57
	dw DRAGONITE
	db -1 ; end

	next_list_item ; COOLTRAINERM (6)
	db "GAVEN@", TRAINERTYPE_MOVES
	db 65
	dw VICTREEBEL
	dw WRAP, TOXIC, ACID, RAZOR_LEAF
	db 65
	dw KINGLER
	dw CRABHAMMER, STOMP, GUILLOTINE, PROTECT
	db 65
	dw FLAREON
	dw SAND_ATTACK, QUICK_ATTACK, BITE, FLAMETHROWER
	db -1 ; end

	next_list_item ; COOLTRAINERM (7)
	db "GAVEN@", TRAINERTYPE_ITEM_MOVES
	db 69
	dw VICTREEBEL
	db NO_ITEM
	dw GIGA_DRAIN, TOXIC, SLUDGE_BOMB, RAZOR_LEAF
	db 69
	dw KINGLER
	db KINGS_ROCK
	dw CRABHAMMER, STOMP, GUILLOTINE, BLIZZARD
	db 69
	dw FLAREON
	db NO_ITEM
	dw FLAMETHROWER, QUICK_ATTACK, BITE, SHADOW_BALL
	db -1 ; end

	next_list_item ; COOLTRAINERM (8)
	db "RYAN@", TRAINERTYPE_MOVES
	db 55
	dw PIDGEOT
	dw SAND_ATTACK, QUICK_ATTACK, WHIRLWIND, WING_ATTACK
	db 57
	dw ELECTABUZZ
	dw THUNDERPUNCH, LIGHT_SCREEN, SWIFT, SCREECH
	db -1 ; end

	next_list_item ; COOLTRAINERM (9)
	db "JAKE@", TRAINERTYPE_MOVES
	db 59
	dw PARASECT
	dw LEECH_LIFE, SPORE, SLASH, SWORDS_DANCE
	db 61
	dw GOLDUCK
	dw PSYCHIC_M, SCREECH, PSYCH_UP, FURY_SWIPES
	db -1 ; end

	next_list_item ; COOLTRAINERM (10)
	db "GAVEN@", TRAINERTYPE_MOVES
	db 60
	dw VICTREEBEL
	dw WRAP, TOXIC, ACID, RAZOR_LEAF
	db 60
	dw KINGLER
	dw CRABHAMMER, STOMP, GUILLOTINE, PROTECT
	db 60
	dw FLAREON
	dw SAND_ATTACK, QUICK_ATTACK, BITE, FLAMETHROWER
	db -1 ; end

	next_list_item ; COOLTRAINERM (11)
	db "BLAKE@", TRAINERTYPE_MOVES
	db 58
	dw MAGNETON
	dw THUNDERBOLT, SUPERSONIC, SWIFT, SCREECH
	db 56
	dw QUAGSIRE
	dw SURF, SLAM, AMNESIA, EARTHQUAKE
	db 60
	dw EXEGGUTOR
	dw LEECH_SEED, CONFUSION, SLEEP_POWDER, SOLARBEAM
	db -1 ; end

	next_list_item ; COOLTRAINERM (12)
	db "BRIAN@", TRAINERTYPE_MOVES
	db 61
	dw SANDSLASH
	dw EARTHQUAKE, POISON_STING, SLASH, SWIFT
	db -1 ; end

	next_list_item ; COOLTRAINERM (13)
	db "ERICK@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 10
	dw CHARMANDER
	db 10
	dw SQUIRTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (14)
	db "ANDY@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 10
	dw CHARMANDER
	db 10
	dw SQUIRTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (15)
	db "TYLER@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 10
	dw CHARMANDER
	db 10
	dw SQUIRTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (16)
	db "SEAN@", TRAINERTYPE_NORMAL
	db 80
	dw FLAREON
	db 80
	dw TANGELA
	db 80
	dw TAUROS
	db -1 ; end

	next_list_item ; COOLTRAINERM (17)
	db "KEVIN@", TRAINERTYPE_NORMAL
	db 83
	dw RHYDON
	db 81
	dw CHARIZARD
	db 81
	dw BLASTOISE
	db -1 ; end

	next_list_item ; COOLTRAINERM (18)
	db "STEVE@", TRAINERTYPE_NORMAL
	db 14
	dw BULBASAUR
	db 14
	dw CHARMANDER
	db 14
	dw SQUIRTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (19)
	db "ALLEN@", TRAINERTYPE_MOVES
	db 57
	dw CHARIZARD
	dw FLAMETHROWER, SMOKESCREEN, RAGE, SCARY_FACE
	db -1 ; end

	next_list_item ; COOLTRAINERM (20)
	db "DARIN@", TRAINERTYPE_MOVES
	db 57
	dw DRAGONAIR
	dw WRAP, SURF, DRAGON_RAGE, SLAM
	db -1 ; end

	end_list_items

CooltrainerFGroup:
	next_list_item ; COOLTRAINERF (1)
	db "GWEN@", TRAINERTYPE_NORMAL
	db 36
	dw EEVEE
	db 32
	dw FLAREON
	db 32
	dw VAPOREON
	db 32
	dw JOLTEON
	db -1 ; end

	next_list_item ; COOLTRAINERF (2)
	db "LOIS@", TRAINERTYPE_MOVES
	db 43
	dw JUMPLUFF
	dw SYNTHESIS, POISONPOWDER, GIGA_DRAIN, LEECH_SEED
	db 43
	dw NINETALES
	dw FLAMETHROWER, QUICK_ATTACK, CONFUSE_RAY, SAFEGUARD
	db -1 ; end

	next_list_item ; COOLTRAINERF (3)
	db "FRAN@", TRAINERTYPE_NORMAL
	db 57
	dw KINGDRA
	db -1 ; end

	next_list_item ; COOLTRAINERF (4)
	db "LOLA@", TRAINERTYPE_NORMAL
	db 54
	dw DRAGONAIR
	db 56
	dw DRAGONITE
	db -1 ; end

	next_list_item ; COOLTRAINERF (5)
	db "KATE@", TRAINERTYPE_NORMAL
	db 36
	dw SHELLDER
	db 38
	dw CLOYSTER
	db -1 ; end

	next_list_item ; COOLTRAINERF (6)
	db "IRENE@", TRAINERTYPE_NORMAL
	db 32
	dw GOLDEEN
	db 34
	dw SEAKING
	db -1 ; end

	next_list_item ; COOLTRAINERF (7)
	db "KELLY@", TRAINERTYPE_NORMAL
	db 57
	dw MARILL
	db 54
	dw BLASTOISE
	db 54
	dw MANTINE
	db -1 ; end

	next_list_item ; COOLTRAINERF (8)
	db "JOYCE@", TRAINERTYPE_MOVES
	db 59
	dw BLASTOISE
	dw BITE, CURSE, SURF, RAIN_DANCE
	db 61
	dw PIKACHU
	dw QUICK_ATTACK, DOUBLE_TEAM, THUNDERBOLT, THUNDER
	db -1 ; end

	next_list_item ; COOLTRAINERF (9)
	db "BETH@", TRAINERTYPE_MOVES
	db 61
	dw RAPIDASH
	dw TAKE_DOWN, FIRE_BLAST, FURY_ATTACK, AGILITY
	db -1 ; end

	next_list_item ; COOLTRAINERF (10)
	db "REENA@", TRAINERTYPE_NORMAL
	db 57
	dw STARMIE
	db 59
	dw NIDOQUEEN
	db 57
	dw FRILLISH
	db -1 ; end

	next_list_item ; COOLTRAINERF (11)
	db "MEGAN@", TRAINERTYPE_MOVES
	db 57
	dw BULBASAUR
	dw GROWL, LEECH_SEED, POISONPOWDER, RAZOR_LEAF
	db 57
	dw IVYSAUR
	dw GROWL, LEECH_SEED, POISONPOWDER, RAZOR_LEAF
	db 57
	dw VENUSAUR
	dw BODY_SLAM, SLEEP_POWDER, RAZOR_LEAF, SWEET_SCENT
	db -1 ; end

	next_list_item ; COOLTRAINERF (12)
	db "BETH@", TRAINERTYPE_MOVES
	db 65
	dw RAPIDASH
	dw TAKE_DOWN, FIRE_BLAST, FURY_ATTACK, AGILITY
	db -1 ; end

	next_list_item ; COOLTRAINERF (13)
	db "CAROL@", TRAINERTYPE_NORMAL
	db 80
	dw POLTEAGEIST
	db 80
	dw SINISTCHA
	db 80
	dw NINETALES
	db -1 ; end

	next_list_item ; COOLTRAINERF (14)
	db "QUINN@", TRAINERTYPE_NORMAL
	db 87
	dw VENUSAUR
	db 87
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (15)
	db "EMMA@", TRAINERTYPE_NORMAL
	db 38
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; COOLTRAINERF (16)
	db "CYBIL@", TRAINERTYPE_MOVES
	db 55
	dw BUTTERFREE
	dw CONFUSION, SLEEP_POWDER, WHIRLWIND, GUST
	db 55
	dw BELLOSSOM
	dw GIGA_DRAIN, STUN_SPORE, ACID, SOLARBEAM
	db -1 ; end

	next_list_item ; COOLTRAINERF (17)
	db "JENN@", TRAINERTYPE_NORMAL
	db 34
	dw STARYU
	db 36
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (18)
	db "BETH@", TRAINERTYPE_ITEM_MOVES
	db 70
	dw RAPIDASH
	db FOCUS_BAND
	dw TAKE_DOWN, FIRE_BLAST, FURY_ATTACK, AGILITY
	db -1 ; end

	next_list_item ; COOLTRAINERF (19)
	db "REENA@", TRAINERTYPE_NORMAL
	db 60
	dw STARMIE
	db 62
	dw NIDOQUEEN
	db 60
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (20)
	db "REENA@", TRAINERTYPE_ITEM_MOVES
	db 64
	dw STARMIE
	db NO_ITEM
	dw DOUBLE_TEAM, PSYCHIC_M, WATERFALL, CONFUSE_RAY
	db 66
	dw NIDOQUEEN
	db PINK_BOW
	dw EARTHQUAKE, DOUBLE_KICK, TOXIC, BODY_SLAM
	db 64
	dw STARMIE
	db NO_ITEM
	dw BLIZZARD, PSYCHIC_M, WATERFALL, RECOVER
	db -1 ; end

	next_list_item ; COOLTRAINERF (21)
	db "CARA@", TRAINERTYPE_MOVES
	db 53
	dw HORSEA
	dw SMOKESCREEN, LEER, WHIRLPOOL, TWISTER
	db 53
	dw SEADRA
	dw SMOKESCREEN, LEER, WHIRLPOOL, TWISTER
	db 55
	dw KINGDRA
	dw SWIFT, LEER, WATERFALL, TWISTER
	db -1 ; end

	end_list_items

BeautyGroup:
	next_list_item ; BEAUTY (1)
	db "VICTORIA@", TRAINERTYPE_NORMAL
	db 14
	dw SENTRET
	db 19
	dw FURRET
	db 23
	dw FURRET
	db -1 ; end

	next_list_item ; BEAUTY (2)
	db "SAMANTHA@", TRAINERTYPE_MOVES
	db 21
	dw MEOWTH
	dw SCRATCH, GROWL, BITE, PAY_DAY
	db 23
	dw MEOWTH
	dw SCRATCH, GROWL, BITE, SLASH
	db -1 ; end

	next_list_item ; BEAUTY (3)
	db "JULIE@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (4)
	db "JACLYN@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (5)
	db "BRENDA@", TRAINERTYPE_NORMAL
	db 16
	dw FURRET
	db -1 ; end

	next_list_item ; BEAUTY (6)
	db "CASSIE@", TRAINERTYPE_NORMAL
	db 78
	dw VILEPLUME
	db 84
	dw BUTTERFREE
	db 83
	dw POLTEAGEIST
	db -1 ; end

	next_list_item ; BEAUTY (7)
	db "CAROLINE@", TRAINERTYPE_NORMAL
	db 30
	dw MARILL
	db 32
	dw SEEL
	db 30
	dw MARILL
	db -1 ; end

	next_list_item ; BEAUTY (8)
	db "CARLENE@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (9)
	db "JESSICA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (10)
	db "RACHAEL@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (11)
	db "ANGELICA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (12)
	db "KENDRA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (13)
	db "VERONICA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (14)
	db "JULIA@", TRAINERTYPE_NORMAL
	db 79
	dw TREVENANT
	db 79
	dw EXEGGUTOR
	db 82
	dw PARASECT
	db 81
	dw POLTEAGEIST
	db -1 ; end

	next_list_item ; BEAUTY (15)
	db "THERESA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (16)
	db "VALERIE@", TRAINERTYPE_MOVES
	db 27
	dw SKIPLOOM
	dw SYNTHESIS, LEECH_SEED, TACKLE, POISONPOWDER
	db 28
	dw JUMPLUFF
	dw SYNTHESIS, LEECH_SEED, MEGA_DRAIN, STUN_SPORE
	db 29
	dw SINISTEA
	dw MEGA_DRAIN, ASTONISH, PROTECT, HEX
	db -1 ; end

	next_list_item ; BEAUTY (17)
	db "OLIVIA@", TRAINERTYPE_NORMAL
	db 29
	dw CORSOLA
	db -1 ; end

	end_list_items

PokemaniacGroup:
	next_list_item ; POKEMANIAC (1)
	db "LARRY@", TRAINERTYPE_NORMAL
	db 15
	dw SLOWPOKE
	db -1 ; end

	next_list_item ; POKEMANIAC (2)
	db "ANDREW@", TRAINERTYPE_NORMAL
	db 34
	dw MAROWAK
	db 34
	dw MAROWAK
	db -1 ; end

	next_list_item ; POKEMANIAC (3)
	db "CALVIN@", TRAINERTYPE_NORMAL
	db 36
	dw KANGASKHAN
	db -1 ; end

	next_list_item ; POKEMANIAC (4)
	db "SHANE@", TRAINERTYPE_NORMAL
	db 38
	dw NIDORINA
	db 38
	dw NIDORINO
	db -1 ; end

	next_list_item ; POKEMANIAC (5)
	db "BEN@", TRAINERTYPE_NORMAL
	db 39
	dw SLOWBRO
	db -1 ; end

	next_list_item ; POKEMANIAC (6)
	db "BRENT@", TRAINERTYPE_NORMAL
	db 39
	dw LICKITUNG
	db -1 ; end

	next_list_item ; POKEMANIAC (7)
	db "RON@", TRAINERTYPE_NORMAL
	db 39
	dw NIDOKING
	db -1 ; end

	next_list_item ; POKEMANIAC (8)
	db "ETHAN@", TRAINERTYPE_NORMAL
	db 81
	dw RHYHORN
	db 81
	dw RHYDON
	db -1 ; end

	next_list_item ; POKEMANIAC (9)
	db "BRENT@", TRAINERTYPE_NORMAL
	db 45
	dw KANGASKHAN
	db -1 ; end

	next_list_item ; POKEMANIAC (10)
	db "BRENT@", TRAINERTYPE_MOVES
	db 63
	dw PORYGON
	dw RECOVER, PSYCHIC_M, CONVERSION2, TRI_ATTACK
	db -1 ; end

	next_list_item ; POKEMANIAC (11)
	db "ISSAC@", TRAINERTYPE_MOVES
	db 24
	dw LICKITUNG
	dw LICK, SUPERSONIC, CUT, WRAP
	db -1 ; end

	next_list_item ; POKEMANIAC (12)
	db "DONALD@", TRAINERTYPE_NORMAL
	db 22
	dw SLOWPOKE
	db 22
	dw SLOWPOKE
	db -1 ; end

	next_list_item ; POKEMANIAC (13)
	db "ZACH@", TRAINERTYPE_NORMAL
	db 57
	dw RHYDON
	db -1 ; end

	next_list_item ; POKEMANIAC (14)
	db "BRENT@", TRAINERTYPE_MOVES
	db 67
	dw CHANSEY
	dw ROLLOUT, ATTRACT, EGG_BOMB, SOFTBOILED
	db -1 ; end

	next_list_item ; POKEMANIAC (15)
	db "MILLER@", TRAINERTYPE_NORMAL
	db 40
	dw NIDOKING
	db 40
	dw NIDOQUEEN
	db -1 ; end

	end_list_items

GruntMGroup:
	next_list_item ; GRUNTM (1)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 18
	dw KOFFING
	db -1 ; end

	next_list_item ; GRUNTM (2)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 11
	dw RATTATA
	db 13
	dw ZUBAT
	db 13
	dw ZUBAT
	db -1 ; end

	next_list_item ; GRUNTM (3)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 44
	dw RATICATE
	db 44
	dw ARCANINE
	db -1 ; end

	next_list_item ; GRUNTM (4)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 43
	dw MUK
	db 45
	dw MUK
	db 43
	dw DITTO
	db -1 ; end

	next_list_item ; GRUNTM (5)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 41
	dw RATTATA
	db 41
	dw RATTATA
	db 43
	dw RATTATA
	db 43
	dw RATTATA
	db 47
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (6)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 46
	dw GOLBAT
	db 46
	dw CROBAT
	db -1 ; end

	next_list_item ; GRUNTM (7)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 43
	dw WEEZING
	db 43
	dw MUK
	db 43
	dw GOLBAT
	db 43
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (8)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 46
	dw WEEZING
	db -1 ; end

	next_list_item ; GRUNTM (9)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 44
	dw RATICATE
	db 46
	dw WEEZING
	db -1 ; end

	next_list_item ; GRUNTM (10)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 42
	dw GOLBAT
	db 44
	dw PUPITAR
	db 42
	dw MUK
	db -1 ; end

	next_list_item ; GRUNTM (11)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 43
	dw MUK
	db 43
	dw WEEZING
	db 45
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (12)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 33
	dw HOUNDOUR
	db -1 ; end

	next_list_item ; GRUNTM (13)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 47
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (14)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 44
	dw RATICATE
	db 44
	dw GOLBAT
	db -1 ; end

	next_list_item ; GRUNTM (15)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 46
	dw MUK
	db 43
	dw WEEZING
	db -1 ; end

	next_list_item ; GRUNTM (16)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 36
	dw RATICATE
	db 36
	dw RATICATE
	db 36
	dw RATTATA
	db 36
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (17)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 40
	dw CROBAT
	db -1 ; end

	next_list_item ; GRUNTM (18)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 37
	dw RATICATE
	db 37
	dw GOLBAT
	db 37
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (19)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 35
	dw VENONAT
	db 39
	dw VENOMOTH
	db -1 ; end

	next_list_item ; GRUNTM (20)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 37
	dw HYPNO
	db 39
	dw GOLBAT
	db -1 ; end

	next_list_item ; GRUNTM (21)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 36
	dw GOLBAT
	db 37
	dw GRIMER
	db 38
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (22)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 36
	dw GOLBAT
	db -1 ; end

	next_list_item ; GRUNTM (23)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 30
	dw KOFFING
	db -1 ; end

	next_list_item ; GRUNTM (24)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 45
	dw WEEZING
	db 45
	dw CROBAT
	db -1 ; end

	next_list_item ; GRUNTM (25)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 44
	dw WEEZING
	db 44
	dw MUK
	db 44
	dw HOUNDOOM
	db -1 ; end

	next_list_item ; GRUNTM (26)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 15
	dw RATTATA
	db 15
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (27)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 22
	dw ZUBAT
	db -1 ; end

	next_list_item ; GRUNTM (28)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 39
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (29)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 14
	dw RATTATA
	db 14
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (30)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 25
	dw GOLBAT
	db 25
	dw GOLBAT
	db 30
	dw ARBOK
	db -1 ; end

	next_list_item ; GRUNTM (31)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 85
	dw CROBAT
	db -1 ; end

	end_list_items

GentlemanGroup:
	next_list_item ; GENTLEMAN (1)
	db "PRESTON@", TRAINERTYPE_NORMAL
	db 30
	dw GROWLITHE
	db 30
	dw ARCANINE
	db -1 ; end

	next_list_item ; GENTLEMAN (2)
	db "EDWARD@", TRAINERTYPE_NORMAL
	db 78
	dw PERSIAN
	db -1 ; end

	next_list_item ; GENTLEMAN (3)
	db "GREGORY@", TRAINERTYPE_NORMAL
	db 77
	dw RAICHU
	db 73
	dw AMPHAROS
	db -1 ; end

	next_list_item ; GENTLEMAN (4)
	db "VIRGIL@", TRAINERTYPE_NORMAL
	db 20
	dw PONYTA
	db -1 ; end

	next_list_item ; GENTLEMAN (5)
	db "ALFRED@", TRAINERTYPE_NORMAL
	db 32
	dw NOCTOWL
	db -1 ; end

	end_list_items

SkierGroup:
	next_list_item ; SKIER (1)
	db "ROXANNE@", TRAINERTYPE_NORMAL
	db 42
	dw JYNX
	db -1 ; end

	next_list_item ; SKIER (2)
	db "CLARISSA@", TRAINERTYPE_NORMAL
	db 42
	dw DEWGONG
	db -1 ; end

	end_list_items

TeacherGroup:
	next_list_item ; TEACHER (1)
	db "COLETTE@", TRAINERTYPE_NORMAL
	db 84
	dw CLEFABLE
	db -1 ; end

	next_list_item ; TEACHER (2)
	db "HILLARY@", TRAINERTYPE_NORMAL
	db 81
	dw AIPOM
	db 83
	dw MAROWAK
	db -1 ; end

	next_list_item ; TEACHER (3)
	db "SHIRLEY@", TRAINERTYPE_NORMAL
	db 85
	dw WIGGLYTUFF
	db -1 ; end

	end_list_items

SabrinaGroup:
	next_list_item ; SABRINA (1)
	db "SABRINA@", TRAINERTYPE_MOVES
	db 81
	dw ESPEON
	dw SAND_ATTACK, QUICK_ATTACK, SWIFT, PSYCHIC_M
	db 85
	dw MISMAGIUS
	dw PERISH_SONG, SHADOW_BALL, THUNDERBOLT, TOXIC
	db 81
	dw MR__MIME
	dw BARRIER, REFLECT, BATON_PASS, PSYCHIC_M
	db 83
	dw ALAKAZAM
	dw RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db -1 ; end

	end_list_items

BugCatcherGroup:
	next_list_item ; BUG_CATCHER (1)
	db "DON@", TRAINERTYPE_NORMAL
	db 3
	dw CATERPIE
	db 3
	dw CATERPIE
	db -1 ; end

	next_list_item ; BUG_CATCHER (2)
	db "ROB@", TRAINERTYPE_NORMAL
	db 82
	dw BEEDRILL
	db 82
	dw BUTTERFREE
	db -1 ; end

	next_list_item ; BUG_CATCHER (3)
	db "ED@", TRAINERTYPE_NORMAL
	db 80
	dw BEEDRILL
	db 80
	dw LEDIAN
	db 80
	dw GOURGEIST
	db -1 ; end

	next_list_item ; BUG_CATCHER (4)
	db "WADE@", TRAINERTYPE_NORMAL
	db 2
	dw CATERPIE
	db 2
	dw CATERPIE
	db 3
	dw WEEDLE
	db 2
	dw CATERPIE
	db -1 ; end

	next_list_item ; BUG_CATCHER (5)
	db "BENNY@", TRAINERTYPE_NORMAL
	db 12
	dw WEEDLE
	db 14
	dw KAKUNA
	db 17
	dw BEEDRILL
	db -1 ; end

	next_list_item ; BUG_CATCHER (6)
	db "AL@", TRAINERTYPE_NORMAL
	db 17
	dw CATERPIE
	db 17
	dw WEEDLE
	db -1 ; end

	next_list_item ; BUG_CATCHER (7)
	db "JOSH@", TRAINERTYPE_NORMAL
	db 18
	dw PARAS
	db -1 ; end

	next_list_item ; BUG_CATCHER (8)
	db "ARNIE@", TRAINERTYPE_NORMAL
	db 25
	dw VENONAT
	db -1 ; end

	next_list_item ; BUG_CATCHER (9)
	db "KEN@", TRAINERTYPE_NORMAL
	db 80
	dw ARIADOS
	db 82
	dw PINSIR
	db -1 ; end

	next_list_item ; BUG_CATCHER (10)
	db "WADE@", TRAINERTYPE_NORMAL
	db 9
	dw METAPOD
	db 9
	dw METAPOD
	db 10
	dw KAKUNA
	db 9
	dw METAPOD
	db -1 ; end

	next_list_item ; BUG_CATCHER (11)
	db "WADE@", TRAINERTYPE_NORMAL
	db 14
	dw BUTTERFREE
	db 14
	dw BUTTERFREE
	db 15
	dw BEEDRILL
	db 14
	dw BUTTERFREE
	db -1 ; end

	next_list_item ; BUG_CATCHER (12)
	db "DOUG@", TRAINERTYPE_NORMAL
	db 84
	dw ARIADOS
	db -1 ; end

	next_list_item ; BUG_CATCHER (13)
	db "ARNIE@", TRAINERTYPE_NORMAL
	db 29
	dw VENOMOTH
	db -1 ; end

	next_list_item ; BUG_CATCHER (14)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 38
	dw VENOMOTH
	dw DISABLE, SUPERSONIC, CONFUSION, LEECH_LIFE
	db -1 ; end

	next_list_item ; BUG_CATCHER (15)
	db "WADE@", TRAINERTYPE_MOVES
	db 24
	dw BUTTERFREE
	dw CONFUSION, POISONPOWDER, SUPERSONIC, WHIRLWIND
	db 24
	dw BUTTERFREE
	dw CONFUSION, STUN_SPORE, SUPERSONIC, WHIRLWIND
	db 25
	dw BEEDRILL
	dw FURY_ATTACK, FOCUS_ENERGY, TWINEEDLE, RAGE
	db 24
	dw BUTTERFREE
	dw CONFUSION, SLEEP_POWDER, SUPERSONIC, WHIRLWIND
	db -1 ; end

	next_list_item ; BUG_CATCHER (16)
	db "WADE@", TRAINERTYPE_MOVES
	db 30
	dw BUTTERFREE
	dw CONFUSION, POISONPOWDER, SUPERSONIC, GUST
	db 30
	dw BUTTERFREE
	dw CONFUSION, STUN_SPORE, SUPERSONIC, GUST
	db 32
	dw BEEDRILL
	dw FURY_ATTACK, PURSUIT, TWINEEDLE, DOUBLE_TEAM
	db 34
	dw BUTTERFREE
	dw PSYBEAM, SLEEP_POWDER, GUST, WHIRLWIND
	db -1 ; end

	next_list_item ; BUG_CATCHER (17)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 50
	dw VENOMOTH
	dw GUST, SUPERSONIC, PSYBEAM, LEECH_LIFE
	db -1 ; end

	next_list_item ; BUG_CATCHER (18)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 60
	dw VENOMOTH
	dw GUST, SUPERSONIC, PSYCHIC_M, TOXIC
	db -1 ; end

	next_list_item ; BUG_CATCHER (19)
	db "WAYNE@", TRAINERTYPE_NORMAL
	db 18
	dw LEDIAN
	db 20
	dw PARAS
	db -1 ; end

	end_list_items

FisherGroup:
	next_list_item ; FISHER (1)
	db "JUSTIN@", TRAINERTYPE_NORMAL
	db 9
	dw MAGIKARP
	db 13
	dw MAGIKARP
	db 19
	dw MAGIKARP
	db 14
	dw MAGIKARP
	db -1 ; end

	next_list_item ; FISHER (2)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 14
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (3)
	db "ARNOLD@", TRAINERTYPE_NORMAL
	db 84
	dw TENTACRUEL
	db -1 ; end

	next_list_item ; FISHER (4)
	db "KYLE@", TRAINERTYPE_NORMAL
	db 78
	dw SEAKING
	db 81
	dw POLITOED
	db 81
	dw KINGDRA
	db -1 ; end

	next_list_item ; FISHER (5)
	db "HENRY@", TRAINERTYPE_NORMAL
	db 13
	dw POLIWAG
	db 13
	dw POLIWAG
	db -1 ; end

	next_list_item ; FISHER (6)
	db "MARVIN@", TRAINERTYPE_NORMAL
	db 30
	dw MAGIKARP
	db 35
	dw GYARADOS
	db 35
	dw MAGIKARP
	db 40
	dw GYARADOS
	db -1 ; end

	next_list_item ; FISHER (7)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 39
	dw QWILFISH
	db -1 ; end

	next_list_item ; FISHER (8)
	db "ANDRE@", TRAINERTYPE_NORMAL
	db 45
	dw GYARADOS
	db -1 ; end

	next_list_item ; FISHER (9)
	db "RAYMOND@", TRAINERTYPE_NORMAL
	db 39
	dw GYARADOS
	db 41
	dw GYARADOS
	db 43
	dw GYARADOS
	db 43
	dw GYARADOS
	db -1 ; end

	next_list_item ; FISHER (10)
	db "WILTON@", TRAINERTYPE_NORMAL
	db 53
	dw SEAKING
	db 53
	dw TENTACRUEL
	db 55
	dw OCTILLERY
	db -1 ; end

	next_list_item ; FISHER (11)
	db "EDGAR@", TRAINERTYPE_MOVES
	db 55
	dw MANTINE
	dw BUBBLEBEAM, ICY_WIND, CONFUSE_RAY, RAIN_DANCE
	db 55
	dw OCTILLERY
	dw OCTAZOOKA, PSYBEAM, ICE_BEAM, SWIFT
	db -1 ; end

	next_list_item ; FISHER (12)
	db "JONAH@", TRAINERTYPE_NORMAL
	db 81
	dw LANTURN
	db 79
	dw OCTILLERY
	db 75
	dw QWILFISH
	db 79
	dw CLOYSTER
	db -1 ; end

	next_list_item ; FISHER (13)
	db "MARTIN@", TRAINERTYPE_NORMAL
	db 82
	dw OCTILLERY
	db 82
	dw AZUMARILL
	db -1 ; end

	next_list_item ; FISHER (14)
	db "STEPHEN@", TRAINERTYPE_NORMAL
	db 75
	dw GYARADOS
	db 81
	dw LANTURN
	db 81
	dw SEADRA
	db 81
	dw TENTACRUEL
	db -1 ; end

	next_list_item ; FISHER (15)
	db "BARNEY@", TRAINERTYPE_NORMAL
	db 80
	dw GYARADOS
	db 80
	dw GYARADOS
	db 80
	dw GYARADOS
	db -1 ; end

	next_list_item ; FISHER (16)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 25
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (17)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 29
	dw QWILFISH
	db 31
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (18)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 45
	dw QWILFISH
	db -1 ; end

	next_list_item ; FISHER (19)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 55
	dw SEAKING
	db 55
	dw SEAKING
	db 55
	dw QWILFISH
	db -1 ; end

	next_list_item ; FISHER (20)
	db "WILTON@", TRAINERTYPE_NORMAL
	db 58
	dw SEAKING
	db 58
	dw TENTACRUEL
	db 61
	dw OCTILLERY
	db -1 ; end

	next_list_item ; FISHER (21)
	db "SCOTT@", TRAINERTYPE_NORMAL
	db 56
	dw QWILFISH
	db 57
	dw OCTILLERY
	db 60
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (22)
	db "WILTON@", TRAINERTYPE_MOVES
	db 63
	dw SEAKING
	dw SUPERSONIC, WATERFALL, FLAIL, FURY_ATTACK
	db 63
	dw QWILFISH
	dw SUPERSONIC, WATERFALL, PIN_MISSILE, SLUDGE_BOMB
	db 67
	dw OCTILLERY
	dw PSYBEAM, AURORA_BEAM, OCTAZOOKA, HYPER_BEAM
	db -1 ; end

	next_list_item ; FISHER (23)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 50
	dw QWILFISH
	db 52
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (24)
	db "RALPH@", TRAINERTYPE_MOVES
	db 55
	dw QWILFISH
	dw TOXIC, MINIMIZE, SURF, PIN_MISSILE
	db 59
	dw SEAKING
	dw ENDURE, FLAIL, FURY_ATTACK, WATERFALL
	db -1 ; end

	next_list_item ; FISHER (25)
	db "TULLY@", TRAINERTYPE_MOVES
	db 58
	dw SEAKING
	dw SUPERSONIC, RAIN_DANCE, WATERFALL, FURY_ATTACK
	db 58
	dw SEAKING
	dw SUPERSONIC, RAIN_DANCE, WATERFALL, FURY_ATTACK
	db 61
	dw QWILFISH
	dw ROLLOUT, SURF, PIN_MISSILE, TAKE_DOWN
	db -1 ; end

	end_list_items

SwimmerMGroup:
	next_list_item ; SWIMMERM (1)
	db "HAROLD@", TRAINERTYPE_NORMAL
	db 82
	dw REMORAID
	db 80
	dw SEADRA
	db -1 ; end

	next_list_item ; SWIMMERM (2)
	db "SIMON@", TRAINERTYPE_NORMAL
	db 29
	dw TENTACOOL
	db 33
	dw TENTACRUEL
	db -1 ; end

	next_list_item ; SWIMMERM (3)
	db "RANDALL@", TRAINERTYPE_NORMAL
	db 30
	dw SHELLDER
	db 33
	dw WARTORTLE
	db 30
	dw CLOYSTER
	db -1 ; end

	next_list_item ; SWIMMERM (4)
	db "CHARLIE@", TRAINERTYPE_NORMAL
	db 35
	dw SHELLDER
	db 29
	dw TENTACOOL
	db 33
	dw TENTACRUEL
	db -1 ; end

	next_list_item ; SWIMMERM (5)
	db "GEORGE@", TRAINERTYPE_NORMAL
	db 29
	dw TENTACOOL
	db 31
	dw TENTACRUEL
	db 33
	dw TENTACRUEL
	db 31
	dw STARMIE
	db 29
	dw REMORAID
	db 32
	dw OCTILLERY
	db -1 ; end

	next_list_item ; SWIMMERM (6)
	db "BERKE@", TRAINERTYPE_NORMAL
	db 34
	dw QWILFISH
	db -1 ; end

	next_list_item ; SWIMMERM (7)
	db "KIRK@", TRAINERTYPE_NORMAL
	db 33
	dw GYARADOS
	db 35
	dw GYARADOS
	db -1 ; end

	next_list_item ; SWIMMERM (8)
	db "MATHEW@", TRAINERTYPE_NORMAL
	db 35
	dw KINGLER
	db -1 ; end

	next_list_item ; SWIMMERM (9)
	db "HAL@", TRAINERTYPE_NORMAL
	db 24
	dw SEEL
	db 25
	dw DEWGONG
	db 24
	dw SEEL
	db -1 ; end

	next_list_item ; SWIMMERM (10)
	db "PATON@", TRAINERTYPE_NORMAL
	db 26
	dw PILOSWINE
	db 26
	dw PILOSWINE
	db -1 ; end

	next_list_item ; SWIMMERM (11)
	db "DARYL@", TRAINERTYPE_NORMAL
	db 24
	dw SHELLDER
	db 25
	dw CLOYSTER
	db 24
	dw SHELLDER
	db -1 ; end

	next_list_item ; SWIMMERM (12)
	db "WALTER@", TRAINERTYPE_NORMAL
	db 15
	dw HORSEA
	db 15
	dw HORSEA
	db 20
	dw SEADRA
	db -1 ; end

	next_list_item ; SWIMMERM (13)
	db "TONY@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (14)
	db "JEROME@", TRAINERTYPE_NORMAL
	db 76
	dw MANTINE
	db 78
	dw TENTACRUEL
	db 80
	dw KINGDRA
	db 80
	dw JELLICENT
	db -1 ; end

	next_list_item ; SWIMMERM (15)
	db "TUCKER@", TRAINERTYPE_NORMAL
	db 80
	dw DEWGONG
	db 84
	dw CLOYSTER
	db -1 ; end

	next_list_item ; SWIMMERM (16)
	db "RICK@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (17)
	db "CAMERON@", TRAINERTYPE_NORMAL
	db 84
	dw MARILL
	db -1 ; end

	next_list_item ; SWIMMERM (18)
	db "SETH@", TRAINERTYPE_NORMAL
	db 79
	dw QUAGSIRE
	db 79
	dw OCTILLERY
	db 82
	dw POLITOED
	db -1 ; end

	next_list_item ; SWIMMERM (19)
	db "JAMES@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (20)
	db "LEWIS@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (21)
	db "PARKER@", TRAINERTYPE_NORMAL
	db 79
	dw OMASTAR
	db 79
	dw SEADRA
	db 81
	dw KINGDRA
	db -1 ; end

	end_list_items

SwimmerFGroup:
	next_list_item ; SWIMMERF (1)
	db "ELAINE@", TRAINERTYPE_NORMAL
	db 33
	dw STARMIE
	db -1 ; end

	next_list_item ; SWIMMERF (2)
	db "PAULA@", TRAINERTYPE_NORMAL
	db 31
	dw STARMIE
	db 33
	dw SHELLDER
	db -1 ; end

	next_list_item ; SWIMMERF (3)
	db "KAYLEE@", TRAINERTYPE_NORMAL
	db 32
	dw GOLDEEN
	db 34
	dw SEAKING
	db 35
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (4)
	db "SUSIE@", TRAINERTYPE_MOVES
	db 33
	dw GOLDUCK
	dw SURF, TAIL_WHIP, DISABLE, CONFUSION
	db 36
	dw SEAKING
	dw WATERFALL, TAIL_WHIP, SUPERSONIC, HORN_ATTACK
	db -1 ; end

	next_list_item ; SWIMMERF (5)
	db "DENISE@", TRAINERTYPE_NORMAL
	db 31
	dw SEEL
	db 35
	dw DEWGONG
	db -1 ; end

	next_list_item ; SWIMMERF (6)
	db "KARA@", TRAINERTYPE_NORMAL
	db 32
	dw STARYU
	db 34
	dw STARMIE
	db -1 ; end

	next_list_item ; SWIMMERF (7)
	db "WENDY@", TRAINERTYPE_MOVES
	db 31
	dw HORSEA
	dw BUBBLE, SMOKESCREEN, LEER, WATER_GUN
	db 34
	dw SEADRA
	dw DRAGON_RAGE, SMOKESCREEN, SURF, WATER_GUN
	db -1 ; end

	next_list_item ; SWIMMERF (8)
	db "LISA@", TRAINERTYPE_NORMAL
	db 28
	dw JYNX
	db -1 ; end

	next_list_item ; SWIMMERF (9)
	db "JILL@", TRAINERTYPE_NORMAL
	db 28
	dw DEWGONG
	db -1 ; end

	next_list_item ; SWIMMERF (10)
	db "MARY@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (11)
	db "KATIE@", TRAINERTYPE_NORMAL
	db 33
	dw DEWGONG
	db -1 ; end

	next_list_item ; SWIMMERF (12)
	db "DAWN@", TRAINERTYPE_NORMAL
	db 84
	dw AZUMARILL
	db -1 ; end

	next_list_item ; SWIMMERF (13)
	db "TARA@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (14)
	db "NICOLE@", TRAINERTYPE_NORMAL
	db 79
	dw OCTILLERY
	db 79
	dw AZUMARILL
	db 82
	dw LAPRAS
	db -1 ; end

	next_list_item ; SWIMMERF (15)
	db "LORI@", TRAINERTYPE_NORMAL
	db 82
	dw STARMIE
	db 82
	dw KINGDRA
	db -1 ; end

	next_list_item ; SWIMMERF (16)
	db "JODY@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (17)
	db "NIKKI@", TRAINERTYPE_NORMAL
	db 78
	dw DEWGONG
	db 78
	dw CLOYSTER
	db 78
	dw LAPRAS
	db 78
	dw KINGDRA
	db -1 ; end

	next_list_item ; SWIMMERF (18)
	db "DIANA@", TRAINERTYPE_NORMAL
	db 81
	dw POLITOED
	db -1 ; end

	next_list_item ; SWIMMERF (19)
	db "BRIANA@", TRAINERTYPE_NORMAL
	db 80
	dw SEAKING
	db 80
	dw KINGDRA
	db -1 ; end

	end_list_items

SailorGroup:
	next_list_item ; SAILOR (1)
	db "EUGENE@", TRAINERTYPE_NORMAL
	db 27
	dw POLIWHIRL
	db 29
	dw SANDYGAST
	db 31
	dw KINGLER
	db -1 ; end

	next_list_item ; SAILOR (2)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 30
	dw POLIWHIRL
	db 30
	dw SANDYGAST
	db -1 ; end

	next_list_item ; SAILOR (3)
	db "TERRELL@", TRAINERTYPE_NORMAL
	db 32
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; SAILOR (4)
	db "KENT@", TRAINERTYPE_MOVES
	db 27
	dw KRABBY
	dw BUBBLE, LEER, VICEGRIP, HARDEN
	db 33
	dw KINGLER
	dw BUBBLEBEAM, LEER, VICEGRIP, HARDEN
	db -1 ; end

	next_list_item ; SAILOR (5)
	db "ERNEST@", TRAINERTYPE_NORMAL
	db 30
	dw MACHOKE
	db 30
	dw SANDYGAST
	db 30
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; SAILOR (6)
	db "JEFF@", TRAINERTYPE_NORMAL
	db 72
	dw MANTINE
	db 72
	dw POLITOED
	db -1 ; end

	next_list_item ; SAILOR (7)
	db "GARRETT@", TRAINERTYPE_NORMAL
	db 84
	dw KINGLER
	db -1 ; end

	next_list_item ; SAILOR (8)
	db "KENNETH@", TRAINERTYPE_NORMAL
	db 78
	dw MACHOKE
	db 78
	dw MACHAMP
	db 78
	dw POLIWRATH
	db 78
	dw DONPHAN
	db -1 ; end

	next_list_item ; SAILOR (9)
	db "STANLY@", TRAINERTYPE_NORMAL
	db 71
	dw MARSHADOW
	db 73
	dw MACHAMP
	db 69
	dw GOLDUCK
	db -1 ; end

	next_list_item ; SAILOR (10)
	db "HARRY@", TRAINERTYPE_NORMAL
	db 29
	dw WOOPER
	db -1 ; end

	next_list_item ; SAILOR (11)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 38
	dw POLIWHIRL
	db 38
	dw SANDYGAST
	db -1 ; end

	next_list_item ; SAILOR (12)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 44
	dw POLIWHIRL
	db 44
	dw POLIWRATH
	db 44
	dw PALOSSAND
	db -1 ; end

	next_list_item ; SAILOR (13)
	db "HUEY@", TRAINERTYPE_MOVES
	db 48
	dw POLITOED
	dw WHIRLPOOL, RAIN_DANCE, BODY_SLAM, PERISH_SONG
	db 48
	dw POLIWRATH
	dw SURF, STRENGTH, ICE_PUNCH, SUBMISSION
	db 52
	dw PALOSSAND
	dw GIGA_DRAIN, SHADOW_BALL, EARTH_POWER, HYPNOSIS
	db -1 ; end

	end_list_items

SuperNerdGroup:
	next_list_item ; SUPER_NERD (1)
	db "STAN@", TRAINERTYPE_NORMAL
	db 20
	dw GRIMER
	db -1 ; end

	next_list_item ; SUPER_NERD (2)
	db "ERIC@", TRAINERTYPE_NORMAL
	db 23
	dw GRIMER
	db 23
	dw GRIMER
	db -1 ; end

	next_list_item ; SUPER_NERD (3)
	db "GREGG@", TRAINERTYPE_NORMAL
	db 20
	dw MAGNEMITE
	db 20
	dw MAGNEMITE
	db 20
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (4)
	db "JAY@", TRAINERTYPE_NORMAL
	db 22
	dw KOFFING
	db 22
	dw KOFFING
	db -1 ; end

	next_list_item ; SUPER_NERD (5)
	db "DAVE@", TRAINERTYPE_NORMAL
	db 24
	dw DITTO
	db -1 ; end

	next_list_item ; SUPER_NERD (6)
	db "SAM@", TRAINERTYPE_NORMAL
	db 80
	dw DITTO
	db 80
	dw MUK
	db -1 ; end

	next_list_item ; SUPER_NERD (7)
	db "TOM@", TRAINERTYPE_NORMAL
	db 77
	dw STEELIX
	db 79
	dw MAGNETON
	db 80
	dw SCIZOR
	db 78
	dw SKARMORY
	db -1 ; end

	next_list_item ; SUPER_NERD (8)
	db "PAT@", TRAINERTYPE_NORMAL
	db 83
	dw PORYGON2
	db -1 ; end

	next_list_item ; SUPER_NERD (9)
	db "SHAWN@", TRAINERTYPE_NORMAL
	db 79
	dw MAGNETON
	db 81
	dw MUK
	db 79
	dw ALAKAZAM
	db -1 ; end

	next_list_item ; SUPER_NERD (10)
	db "TERU@", TRAINERTYPE_NORMAL
	db 19
	dw MAGNEMITE
	db 23
	dw VOLTORB
	db 19
	dw MAGNEMITE
	db 21
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (11)
	db "RUSS@", TRAINERTYPE_NORMAL
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (12)
	db "NORTON@", TRAINERTYPE_MOVES
	db 30
	dw PORYGON
	dw CONVERSION, CONVERSION2, RECOVER, TRI_ATTACK
	db -1 ; end

	next_list_item ; SUPER_NERD (13)
	db "HUGH@", TRAINERTYPE_MOVES
	db 59
	dw SEADRA
	dw SMOKESCREEN, TWISTER, SURF, WATERFALL
	db -1 ; end

	next_list_item ; SUPER_NERD (14)
	db "MARKUS@", TRAINERTYPE_MOVES
	db 41
	dw SLOWBRO
	dw CURSE, SURF, PSYCHIC_M, STRENGTH
	db -1 ; end

	end_list_items

Rival2Group:
	next_list_item ; RIVAL2 (1)
	db "?@", TRAINERTYPE_MOVES
	db 85
	dw SNEASEL
	dw AGILITY, BEAT_UP, FAINT_ATTACK, ICE_PUNCH
	db 86
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 85
	dw MAGNETON
	dw TRI_ATTACK, THUNDERBOLT, SWIFT, THUNDER_WAVE
	db 87
	dw GENGAR
	dw SLUDGE_BOMB, MEAN_LOOK, CURSE, SHADOW_BALL
	db 87
	dw ALAKAZAM
	dw DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 89
	dw MEGANIUM
	dw GIGA_DRAIN, POISONPOWDER, BODY_SLAM, LIGHT_SCREEN
	db -1 ; end

	next_list_item ; RIVAL2 (2)
	db "?@", TRAINERTYPE_MOVES
	db 85
	dw SNEASEL
	dw AGILITY, BEAT_UP, FAINT_ATTACK, ICE_PUNCH
	db 86
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 85
	dw MAGNETON
	dw TRI_ATTACK, THUNDERBOLT, SWIFT, THUNDER_WAVE
	db 87
	dw GENGAR
	dw SLUDGE_BOMB, MEAN_LOOK, CURSE, SHADOW_BALL
	db 87
	dw ALAKAZAM
	dw DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 89
	dw TYPHLOSION
	dw SMOKESCREEN, FLAMETHROWER, QUICK_ATTACK, FLAME_WHEEL
	db -1 ; end

	next_list_item ; RIVAL2 (3)
	db "?@", TRAINERTYPE_MOVES
	db 85
	dw SNEASEL
	dw AGILITY, BEAT_UP, FAINT_ATTACK, ICE_PUNCH
	db 86
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 85
	dw MAGNETON
	dw TRI_ATTACK, THUNDERBOLT, SWIFT, THUNDER_WAVE
	db 87
	dw GENGAR
	dw SLUDGE_BOMB, MEAN_LOOK, CURSE, SHADOW_BALL
	db 87
	dw ALAKAZAM
	dw DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 89
	dw FERALIGATR
	dw WATERFALL, SURF, SCARY_FACE, SLASH
	db -1 ; end

	next_list_item ; RIVAL2 (4)
	db "?@", TRAINERTYPE_MOVES
	db 90
	dw SNEASEL
	dw AGILITY, BEAT_UP, FAINT_ATTACK, ICE_PUNCH
	db 93
	dw CROBAT
	dw TOXIC, LEECH_LIFE, CONFUSE_RAY, WING_ATTACK
	db 90
	dw MAGNETON
	dw THUNDER, TRI_ATTACK, THUNDER_WAVE, SWIFT
	db 91
	dw GENGAR
	dw SLUDGE_BOMB, MEAN_LOOK, CURSE, SHADOW_BALL
	db 91
	dw ALAKAZAM
	dw RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db 95
	dw MEGANIUM
	dw GIGA_DRAIN, BODY_SLAM, LIGHT_SCREEN, SAFEGUARD
	db -1 ; end

	next_list_item ; RIVAL2 (5)
	db "?@", TRAINERTYPE_MOVES
	db 90
	dw SNEASEL
	dw AGILITY, BEAT_UP, FAINT_ATTACK, ICE_PUNCH
	db 93
	dw CROBAT
	dw TOXIC, LEECH_LIFE, CONFUSE_RAY, WING_ATTACK
	db 90
	dw MAGNETON
	dw THUNDER, TRI_ATTACK, THUNDER_WAVE, SWIFT
	db 91
	dw GENGAR
	dw SLUDGE_BOMB, MEAN_LOOK, CURSE, SHADOW_BALL
	db 91
	dw ALAKAZAM
	dw RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db 95
	dw TYPHLOSION
	dw SMOKESCREEN, QUICK_ATTACK, FIRE_BLAST, SWIFT
	db -1 ; end

	next_list_item ; RIVAL2 (6)
	db "?@", TRAINERTYPE_MOVES
	db 90
	dw SNEASEL
	dw AGILITY, BEAT_UP, FAINT_ATTACK, ICE_PUNCH
	db 93
	dw CROBAT
	dw TOXIC, LEECH_LIFE, CONFUSE_RAY, WING_ATTACK
	db 90
	dw MAGNETON
	dw THUNDER, TRI_ATTACK, THUNDER_WAVE, SWIFT
	db 91
	dw GENGAR
	dw SLUDGE_BOMB, MEAN_LOOK, CURSE, SHADOW_BALL
	db 91
	dw ALAKAZAM
	dw RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db 95
	dw FERALIGATR
	dw WATERFALL, SURF, RAIN_DANCE, SLASH
	db -1 ; end

	end_list_items

GuitaristGroup:
	next_list_item ; GUITARIST (1)
	db "CLYDE@", TRAINERTYPE_NORMAL
	db 84
	dw ELECTABUZZ
	db -1 ; end

	next_list_item ; GUITARIST (2)
	db "VINCENT@", TRAINERTYPE_NORMAL
	db 67
	dw RAICHU
	db 73
	dw ELECTABUZZ
	db 72
	dw ROTOM
	db 72
	dw MAGNETON
	db -1 ; end

	end_list_items

HikerGroup:
	next_list_item ; HIKER (1)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 16
	dw GEODUDE
	db 18
	dw MACHAMP
	db -1 ; end

	next_list_item ; HIKER (2)
	db "RUSSELL@", TRAINERTYPE_NORMAL
	db 9
	dw GEODUDE
	db 12
	dw GEODUDE
	db 13
	dw GEODUDE
	db -1 ; end

	next_list_item ; HIKER (3)
	db "PHILLIP@", TRAINERTYPE_NORMAL
	db 33
	dw GEODUDE
	db 35
	dw GRAVELER
	db 37
	dw GOLEM
	db -1 ; end

	next_list_item ; HIKER (4)
	db "LEONARD@", TRAINERTYPE_NORMAL
	db 33
	dw GEODUDE
	db 35
	dw MACHOP
	db -1 ; end

	next_list_item ; HIKER (5)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 16
	dw GEODUDE
	db 18
	dw MACHOP
	db -1 ; end

	next_list_item ; HIKER (6)
	db "BENJAMIN@", TRAINERTYPE_NORMAL
	db 37
	dw DUGTRIO
	db 38
	dw GEODUDE
	db 39
	dw GOLEM
	db -1 ; end

	next_list_item ; HIKER (7)
	db "ERIK@", TRAINERTYPE_NORMAL
	db 54
	dw MACHOKE
	db 57
	dw GRAVELER
	db 57
	dw MACHAMP
	db -1 ; end

	next_list_item ; HIKER (8)
	db "MICHAEL@", TRAINERTYPE_NORMAL
	db 55
	dw GEODUDE
	db 55
	dw GRAVELER
	db 55
	dw GOLEM
	db -1 ; end

	next_list_item ; HIKER (9)
	db "PARRY@", TRAINERTYPE_NORMAL
	db 59
	dw STEELIX
	db 57
	dw PILOSWINE
	db -1 ; end

	next_list_item ; HIKER (10)
	db "TIMOTHY@", TRAINERTYPE_MOVES
	db 57
	dw DIGLETT
	dw MAGNITUDE, DIG, SAND_ATTACK, SLASH
	db 57
	dw DUGTRIO
	dw EARTHQUAKE, DIG, SAND_ATTACK, SLASH
	db -1 ; end

	next_list_item ; HIKER (11)
	db "BAILEY@", TRAINERTYPE_NORMAL
	db 13
	dw GEODUDE
	db 13
	dw GEODUDE
	db 13
	dw GEODUDE
	db 13
	dw GEODUDE
	db 13
	dw GEODUDE
	db -1 ; end

	next_list_item ; HIKER (12)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 29
	dw GRAVELER
	db 31
	dw GRAVELER
	db 33
	dw MACHOKE
	db -1 ; end

	next_list_item ; HIKER (13)
	db "TIM@", TRAINERTYPE_NORMAL
	db 79
	dw GOLEM
	db 79
	dw GOLURK
	db 79
	dw RHYDON
	db -1 ; end

	next_list_item ; HIKER (14)
	db "NOLAND@", TRAINERTYPE_NORMAL
	db 71
	dw SANDSLASH
	db 73
	dw GOLEM
	db -1 ; end

	next_list_item ; HIKER (15)
	db "SIDNEY@", TRAINERTYPE_NORMAL
	db 80
	dw DUGTRIO
	db 78
	dw STEELIX
	db -1 ; end

	next_list_item ; HIKER (16)
	db "KENNY@", TRAINERTYPE_NORMAL
	db 77
	dw GOLURK
	db 79
	dw SUDOWOODO
	db 81
	dw GOLEM
	db 79
	dw PALOSSAND
	db -1 ; end

	next_list_item ; HIKER (17)
	db "JIM@", TRAINERTYPE_NORMAL
	db 80
	dw MACHAMP
	db -1 ; end

	next_list_item ; HIKER (18)
	db "DANIEL@", TRAINERTYPE_NORMAL
	db 15
	dw ONIX
	db -1 ; end

	next_list_item ; HIKER (19)
	db "PARRY@", TRAINERTYPE_MOVES
	db 62
	dw PILOSWINE
	dw EARTHQUAKE, BLIZZARD, REST, TAKE_DOWN
	db 62
	dw DUGTRIO
	dw MAGNITUDE, DIG, MUD_SLAP, SLASH
	db 65
	dw STEELIX
	dw DIG, IRON_TAIL, SANDSTORM, SLAM
	db -1 ; end

	next_list_item ; HIKER (20)
	db "PARRY@", TRAINERTYPE_NORMAL
	db 59
	dw STEELIX
	db -1 ; end

	next_list_item ; HIKER (21)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 35
	dw GRAVELER
	db 35
	dw GRAVELER
	db 37
	dw MACHOKE
	db -1 ; end

	next_list_item ; HIKER (22)
	db "ANTHONY@", TRAINERTYPE_MOVES
	db 39
	dw GRAVELER
	dw MAGNITUDE, SELFDESTRUCT, DEFENSE_CURL, ROLLOUT
	db 41
	dw GOLEM
	dw MAGNITUDE, SELFDESTRUCT, DEFENSE_CURL, ROLLOUT
	db 39
	dw MACHOKE
	dw KARATE_CHOP, VITAL_THROW, HEADBUTT, DIG
	db -1 ; end

	end_list_items

BikerGroup:
	next_list_item ; BIKER (1)
	db "BENNY@", TRAINERTYPE_NORMAL
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db -1 ; end

	next_list_item ; BIKER (2)
	db "KAZU@", TRAINERTYPE_NORMAL
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db -1 ; end

	next_list_item ; BIKER (3)
	db "DWAYNE@", TRAINERTYPE_NORMAL
	db 77
	dw WEEZING
	db 78
	dw WEEZING
	db 79
	dw WEEZING
	db 80
	dw WEEZING
	db -1 ; end

	next_list_item ; BIKER (4)
	db "HARRIS@", TRAINERTYPE_NORMAL
	db 80
	dw FLAREON
	db -1 ; end

	next_list_item ; BIKER (5)
	db "ZEKE@", TRAINERTYPE_NORMAL
	db 79
	dw MURKROW
	db 80
	dw UMBREON
	db 79
	dw MISMAGIUS
	db -1 ; end

	next_list_item ; BIKER (6)
	db "CHARLES@", TRAINERTYPE_NORMAL
	db 79
	dw ARIADOS
	db 79
	dw CHARIZARD
	db 79
	dw PINSIR
	db -1 ; end

	next_list_item ; BIKER (7)
	db "RILEY@", TRAINERTYPE_NORMAL
	db 82
	dw GLIGAR
	db -1 ; end

	next_list_item ; BIKER (8)
	db "JOEL@", TRAINERTYPE_NORMAL
	db 78
	dw MAGMAR
	db 78
	dw ELECTABUZZ
	db -1 ; end

	next_list_item ; BIKER (9)
	db "GLENN@", TRAINERTYPE_NORMAL
	db 76
	dw HOUNDOOM
	db 78
	dw GRANBULL
	db 80
	dw WEEZING
	db -1 ; end

	end_list_items

BlaineGroup:
	next_list_item ; BLAINE (1)
	db "BLAINE@", TRAINERTYPE_MOVES
	db 85
	dw MAGCARGO
	dw CURSE, SMOG, FLAMETHROWER, ROCK_SLIDE
	db 85
	dw MAGMAR
	dw THUNDERPUNCH, FIRE_PUNCH, SUNNY_DAY, CONFUSE_RAY
	db 90
	dw RAPIDASH
	dw QUICK_ATTACK, FIRE_SPIN, FURY_ATTACK, FIRE_BLAST
	db 88
	dw CHANDELURE
	dw SHADOW_BALL, FLAMETHROWER, WILL_O_WISP, HEX
	db -1 ; end

	end_list_items

BurglarGroup:
	next_list_item ; BURGLAR (1)
	db "DUNCAN@", TRAINERTYPE_NORMAL
	db 43
	dw WEEZING
	db 45
	dw MAGMAR
	db 43
	dw WEEZING
	db -1 ; end

	next_list_item ; BURGLAR (2)
	db "EDDIE@", TRAINERTYPE_MOVES
	db 46
	dw ARCANINE
	dw ROAR, FLAME_WHEEL, LEER, TAKE_DOWN
	db 44
	dw WEEZING
	dw FRUSTRATION, SMOG, SLUDGE, SMOKESCREEN
	db -1 ; end

	next_list_item ; BURGLAR (3)
	db "COREY@", TRAINERTYPE_NORMAL
	db 78
	dw SNEASEL
	db 78
	dw MAGMAR
	db 81
	dw MUK
	db 80
	dw WEEZING
	db -1 ; end

	end_list_items

FirebreatherGroup:
	next_list_item ; FIREBREATHER (1)
	db "OTIS@", TRAINERTYPE_NORMAL
	db 79
	dw MAGMAR
	db 82
	dw WEEZING
	db 79
	dw TYPHLOSION
	db -1 ; end

	next_list_item ; FIREBREATHER (2)
	db "DICK@", TRAINERTYPE_NORMAL
	db 27
	dw CHARMELEON
	db -1 ; end

	next_list_item ; FIREBREATHER (3)
	db "NED@", TRAINERTYPE_NORMAL
	db 25
	dw KOFFING
	db 26
	dw GROWLITHE
	db 25
	dw KOFFING
	db -1 ; end

	next_list_item ; FIREBREATHER (4)
	db "BURT@", TRAINERTYPE_NORMAL
	db 79
	dw CROBAT
	db 82
	dw MAGCARGO
	db -1 ; end

	next_list_item ; FIREBREATHER (5)
	db "BILL@", TRAINERTYPE_NORMAL
	db 10
	dw KOFFING
	db 11
	dw KOFFING
	db -1 ; end

	next_list_item ; FIREBREATHER (6)
	db "WALT@", TRAINERTYPE_NORMAL
	db 21
	dw MAGBY
	db 23
	dw MAGMAR
	db -1 ; end

	next_list_item ; FIREBREATHER (7)
	db "RAY@", TRAINERTYPE_NORMAL
	db 14
	dw VULPIX
	db -1 ; end

	next_list_item ; FIREBREATHER (8)
	db "LYLE@", TRAINERTYPE_NORMAL
	db 68
	dw WEEZING
	db 71
	dw FLAREON
	db 71
	dw MAGMAR
	db -1 ; end

	end_list_items

JugglerGroup:
	next_list_item ; JUGGLER (1)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 12
	dw VOLTORB
	db 16
	dw VOLTORB
	db 20
	dw VOLTORB
	db 24
	dw VOLTORB
	db -1 ; end

	next_list_item ; JUGGLER (2)
	db "FRITZ@", TRAINERTYPE_NORMAL
	db 69
	dw MR__MIME
	db 69
	dw MAGMAR
	db 69
	dw MACHAMP
	db -1 ; end

	next_list_item ; JUGGLER (3)
	db "HORTON@", TRAINERTYPE_NORMAL
	db 73
	dw ELECTRODE
	db 73
	dw ELECTRODE
	db 73
	dw ELECTRODE
	db 73
	dw ELECTRODE
	db -1 ; end

	next_list_item ; JUGGLER (4)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 16
	dw VOLTORB
	db 20
	dw VOLTORB
	db 24
	dw VOLTORB
	db 28
	dw VOLTORB
	db -1 ; end

	next_list_item ; JUGGLER (5)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 28
	dw VOLTORB
	db 32
	dw VOLTORB
	db 36
	dw VOLTORB
	db 40
	dw ELECTRODE
	db -1 ; end

	next_list_item ; JUGGLER (6)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 38
	dw VOLTORB
	db 42
	dw ELECTRODE
	db 46
	dw ELECTRODE
	db 50
	dw ELECTRODE
	db -1 ; end

	end_list_items

BlackbeltGroup:
	next_list_item ; BLACKBELT_T (1)
	db "KENJI@", TRAINERTYPE_NORMAL
	db 57
	dw ONIX
	db 60
	dw HITMONLEE
	db 57
	dw ONIX
	db 62
	dw MACHOKE
	db -1 ; end

	next_list_item ; BLACKBELT_T (2)
	db "YOSHI@", TRAINERTYPE_MOVES
	db 39
	dw HITMONLEE
	dw DOUBLE_KICK, MEDITATE, JUMP_KICK, FOCUS_ENERGY
	db -1 ; end

	next_list_item ; BLACKBELT_T (3)
	db "KENJI@", TRAINERTYPE_MOVES
	db 63
	dw ONIX
	dw BIND, ROCK_THROW, TOXIC, DIG
	db 68
	dw MACHAMP
	dw HEADBUTT, SWAGGER, THUNDERPUNCH, VITAL_THROW
	db 63
	dw STEELIX
	dw EARTHQUAKE, ROCK_THROW, IRON_TAIL, SANDSTORM
	db 66
	dw HITMONLEE
	dw DOUBLE_TEAM, HI_JUMP_KICK, MUD_SLAP, SWIFT
	db -1 ; end

	next_list_item ; BLACKBELT_T (4)
	db "LAO@", TRAINERTYPE_MOVES
	db 39
	dw HITMONCHAN
	dw COMET_PUNCH, THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH
	db -1 ; end

	next_list_item ; BLACKBELT_T (5)
	db "NOB@", TRAINERTYPE_MOVES
	db 37
	dw MACHOKE
	dw LEER, FOCUS_ENERGY, KARATE_CHOP, SEISMIC_TOSS
	db 37
	dw MACHAMP
	dw LEER, KARATE_CHOP, SEISMIC_TOSS, ROCK_SLIDE
	db -1 ; end

	next_list_item ; BLACKBELT_T (6)
	db "KIYO@", TRAINERTYPE_NORMAL
	db 57
	dw HITMONLEE
	db 57
	dw HITMONCHAN
	db 57
	dw HITMONTOP
	db -1 ; end

	next_list_item ; BLACKBELT_T (7)
	db "LUNG@", TRAINERTYPE_NORMAL
	db 31
	dw TYROGUE
	db 35
	dw HITMONTOP
	db 37
	dw PRIMEAPE
	db -1 ; end

	next_list_item ; BLACKBELT_T (8)
	db "KENJI@", TRAINERTYPE_NORMAL
	db 58
	dw MACHAMP
	db -1 ; end

	next_list_item ; BLACKBELT_T (9)
	db "WAI@", TRAINERTYPE_NORMAL
	db 80
	dw MACHAMP
	db 82
	dw HERACROSS
	db 84
	dw HITMONTOP
	db -1 ; end

	end_list_items

ExecutiveMGroup:
	next_list_item ; EXECUTIVEM (1)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 53
	dw HOUNDOUR
	dw EMBER, ROAR, CRUNCH, FAINT_ATTACK
	db 53
	dw WEEZING
	dw HYPER_BEAM, HAZE, SLUDGE_BOMB, SMOKESCREEN
	db 55
	dw HOUNDOOM
	dw FLAMETHROWER, SLUDGE_BOMB, CRUNCH, FAINT_ATTACK
	db -1 ; end

	next_list_item ; EXECUTIVEM (2)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 56
	dw CROBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db -1 ; end

	next_list_item ; EXECUTIVEM (3)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 50
	dw WEEZING
	dw FRUSTRATION, EXPLOSION, SLUDGE, SMOKESCREEN
	db 50
	dw WEEZING
	dw THUNDER, EXPLOSION, SLUDGE, SMOKESCREEN
	db 50
	dw WEEZING
	dw TOXIC, EXPLOSION, SLUDGE, SMOKESCREEN
	db 52
	dw WEEZING
	dw HYPER_BEAM, EXPLOSION, SLUDGE, SMOKESCREEN
	db 50
	dw WEEZING
	dw FIRE_BLAST, EXPLOSION, SLUDGE, SMOKESCREEN
	db 50
	dw KOFFING
	dw DOUBLE_TEAM, SMOG, SLUDGE_BOMB, SMOKESCREEN
	db -1 ; end

	next_list_item ; EXECUTIVEM (4)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 39
	dw GOLBAT
	db 44
	dw RATICATE
	db 41
	dw WEEZING
	db -1 ; end

	end_list_items

PsychicGroup:
	next_list_item ; PSYCHIC_T (1)
	db "NATHAN@", TRAINERTYPE_NORMAL
	db 36
	dw GIRAFARIG
	db -1 ; end

	next_list_item ; PSYCHIC_T (2)
	db "FRANKLIN@", TRAINERTYPE_NORMAL
	db 79
	dw ALAKAZAM
	db -1 ; end

	next_list_item ; PSYCHIC_T (3)
	db "HERMAN@", TRAINERTYPE_NORMAL
	db 80
	dw EXEGGCUTE
	db 80
	dw EXEGGCUTE
	db 80
	dw EXEGGUTOR
	db -1 ; end

	next_list_item ; PSYCHIC_T (4)
	db "FIDEL@", TRAINERTYPE_NORMAL
	db 84
	dw XATU
	db -1 ; end

	next_list_item ; PSYCHIC_T (5)
	db "GREG@", TRAINERTYPE_MOVES
	db 27
	dw DROWZEE
	dw HYPNOSIS, DISABLE, DREAM_EATER, NO_MOVE
	db -1 ; end

	next_list_item ; PSYCHIC_T (6)
	db "NORMAN@", TRAINERTYPE_MOVES
	db 27
	dw SLOWPOKE
	dw TACKLE, GROWL, WATER_GUN, NO_MOVE
	db 30
	dw SLOWPOKE
	dw CURSE, BODY_SLAM, WATER_GUN, CONFUSION
	db -1 ; end

	next_list_item ; PSYCHIC_T (7)
	db "MARK@", TRAINERTYPE_MOVES
	db 14
	dw ABRA
	dw TELEPORT, FLASH, NO_MOVE, NO_MOVE
	db 15
	dw ABRA
	dw TELEPORT, FLASH, NO_MOVE, NO_MOVE
	db 25
	dw KADABRA
	dw TELEPORT, KINESIS, CONFUSION, NO_MOVE
	db -1 ; end

	next_list_item ; PSYCHIC_T (8)
	db "PHIL@", TRAINERTYPE_MOVES
	db 54
	dw XATU
	dw PSYCHIC_M, NIGHT_SHADE, FUTURE_SIGHT, CONFUSE_RAY
	db 56
	dw ALAKAZAM
	dw DISABLE, PSYCHIC_M, RECOVER, FUTURE_SIGHT
	db -1 ; end

	next_list_item ; PSYCHIC_T (9)
	db "RICHARD@", TRAINERTYPE_NORMAL
	db 61
	dw ESPEON
	db 61
	dw UMBREON
	db -1 ; end

	next_list_item ; PSYCHIC_T (10)
	db "GILBERT@", TRAINERTYPE_NORMAL
	db 57
	dw STARMIE
	db 57
	dw EXEGGUTOR
	db 59
	dw GIRAFARIG
	db -1 ; end

	next_list_item ; PSYCHIC_T (11)
	db "JARED@", TRAINERTYPE_NORMAL
	db 74
	dw MR__MIME
	db 74
	dw EXEGGUTOR
	db 77
	dw WOBBUFFET
	db -1 ; end

	next_list_item ; PSYCHIC_T (12)
	db "RODNEY@", TRAINERTYPE_NORMAL
	db 79
	dw XATU
	db 83
	dw HYPNO
	db -1 ; end

	end_list_items

PicnickerGroup:
	next_list_item ; PICNICKER (1)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 13
	dw NIDORAN_F
	db -1 ; end

	next_list_item ; PICNICKER (2)
	db "GINA@", TRAINERTYPE_NORMAL
	db 17
	dw HOPPIP
	db 19
	dw SKIPLOOM
	db 22
	dw IVYSAUR
	db -1 ; end

	next_list_item ; PICNICKER (3)
	db "BROOKE@", TRAINERTYPE_MOVES
	db 26
	dw PIKACHU
	dw THUNDERSHOCK, GROWL, QUICK_ATTACK, DOUBLE_TEAM
	db -1 ; end

	next_list_item ; PICNICKER (4)
	db "KIM@", TRAINERTYPE_NORMAL
	db 25
	dw VULPIX
	db -1 ; end

	next_list_item ; PICNICKER (5)
	db "CINDY@", TRAINERTYPE_NORMAL
	db 85
	dw NIDOQUEEN
	db -1 ; end

	next_list_item ; PICNICKER (6)
	db "HOPE@", TRAINERTYPE_NORMAL
	db 84
	dw AMPHAROS
	db -1 ; end

	next_list_item ; PICNICKER (7)
	db "SHARON@", TRAINERTYPE_NORMAL
	db 81
	dw FURRET
	db 83
	dw RAPIDASH
	db -1 ; end

	next_list_item ; PICNICKER (8)
	db "DEBRA@", TRAINERTYPE_NORMAL
	db 73
	dw KINGDRA
	db -1 ; end

	next_list_item ; PICNICKER (9)
	db "GINA@", TRAINERTYPE_NORMAL
	db 22
	dw SKIPLOOM
	db 22
	dw SKIPLOOM
	db 35
	dw VENUSAUR
	db -1 ; end

	next_list_item ; PICNICKER (10)
	db "ERIN@", TRAINERTYPE_NORMAL
	db 16
	dw PONYTA
	db 16
	dw PONYTA
	db -1 ; end

	next_list_item ; PICNICKER (11)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 15
	dw WEEPINBELL
	db 15
	dw NIDORINA
	db -1 ; end

	next_list_item ; PICNICKER (12)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 23
	dw WEEPINBELL
	db 23
	dw NIDORINO
	db 25
	dw NIDOQUEEN
	db -1 ; end

	next_list_item ; PICNICKER (13)
	db "HEIDI@", TRAINERTYPE_NORMAL
	db 80
	dw JUMPLUFF
	db 80
	dw SUNFLORA
	db 79
	dw BELLOSSOM
	db -1 ; end

	next_list_item ; PICNICKER (14)
	db "EDNA@", TRAINERTYPE_NORMAL
	db 78
	dw NIDOQUEEN
	db 82
	dw RAICHU
	db -1 ; end

	next_list_item ; PICNICKER (15)
	db "GINA@", TRAINERTYPE_NORMAL
	db 36
	dw SKIPLOOM
	db 36
	dw JUMPLUFF
	db 39
	dw VENUSAUR
	db -1 ; end

	next_list_item ; PICNICKER (16)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 51
	dw CLEFABLE
	dw ENCORE, SING, DOUBLESLAP, MINIMIZE
	db -1 ; end

	next_list_item ; PICNICKER (17)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 57
	dw CLEFABLE
	dw ENCORE, DOUBLESLAP, MINIMIZE, METRONOME
	db -1 ; end

	next_list_item ; PICNICKER (18)
	db "ERIN@", TRAINERTYPE_NORMAL
	db 32
	dw PONYTA
	db 32
	dw PONYTA
	db -1 ; end

	next_list_item ; PICNICKER (19)
	db "TANYA@", TRAINERTYPE_NORMAL
	db 80
	dw EXEGGUTOR
	db -1 ; end

	next_list_item ; PICNICKER (20)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 60
	dw CLEFABLE
	dw ENCORE, SING, DOUBLESLAP, MINIMIZE
	db -1 ; end

	next_list_item ; PICNICKER (21)
	db "ERIN@", TRAINERTYPE_MOVES
	db 36
	dw PONYTA
	dw DOUBLE_TEAM, STOMP, FIRE_SPIN, SUNNY_DAY
	db 34
	dw RAICHU
	dw SWIFT, MUD_SLAP, QUICK_ATTACK, THUNDERBOLT
	db 36
	dw PONYTA
	dw DOUBLE_TEAM, STOMP, FIRE_SPIN, SUNNY_DAY
	db -1 ; end

	next_list_item ; PICNICKER (22)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 30
	dw WEEPINBELL
	db 32
	dw NIDORINO
	db 32
	dw NIDOQUEEN
	db -1 ; end

	next_list_item ; PICNICKER (23)
	db "LIZ@", TRAINERTYPE_MOVES
	db 47
	dw VICTREEBEL
	dw SLEEP_POWDER, POISONPOWDER, STUN_SPORE, SLUDGE_BOMB
	db 49
	dw NIDOKING
	dw EARTHQUAKE, DOUBLE_KICK, POISON_STING, IRON_TAIL
	db 49
	dw NIDOQUEEN
	dw EARTHQUAKE, DOUBLE_KICK, TAIL_WHIP, BODY_SLAM
	db -1 ; end

	next_list_item ; PICNICKER (24)
	db "GINA@", TRAINERTYPE_NORMAL
	db 44
	dw JUMPLUFF
	db 44
	dw JUMPLUFF
	db 46
	dw VENUSAUR
	db -1 ; end

	next_list_item ; PICNICKER (25)
	db "GINA@", TRAINERTYPE_MOVES
	db 50
	dw JUMPLUFF
	dw STUN_SPORE, SUNNY_DAY, LEECH_SEED, COTTON_SPORE
	db 50
	dw JUMPLUFF
	dw SUNNY_DAY, SLEEP_POWDER, LEECH_SEED, COTTON_SPORE
	db 55
	dw VENUSAUR
	dw SOLARBEAM, RAZOR_LEAF, HEADBUTT, MUD_SLAP
	db -1 ; end

	next_list_item ; PICNICKER (26)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 63
	dw CLEFAIRY
	dw METRONOME, ENCORE, MOONLIGHT, MOONBLAST
	db -1 ; end

	end_list_items

CamperGroup:
	next_list_item ; CAMPER (1)
	db "ROLAND@", TRAINERTYPE_NORMAL
	db 13
	dw NIDORAN_M
	db -1 ; end

	next_list_item ; CAMPER (2)
	db "TODD@", TRAINERTYPE_NORMAL
	db 23
	dw PSYDUCK
	db -1 ; end

	next_list_item ; CAMPER (3)
	db "IVAN@", TRAINERTYPE_NORMAL
	db 20
	dw DIGLETT
	db 20
	dw ZUBAT
	db 24
	dw DIGLETT
	db -1 ; end

	next_list_item ; CAMPER (4)
	db "ELLIOT@", TRAINERTYPE_NORMAL
	db 23
	dw SANDSHREW
	db 25
	dw MARILL
	db -1 ; end

	next_list_item ; CAMPER (5)
	db "BARRY@", TRAINERTYPE_NORMAL
	db 85
	dw NIDOKING
	db -1 ; end

	next_list_item ; CAMPER (6)
	db "LLOYD@", TRAINERTYPE_NORMAL
	db 83
	dw NIDOKING
	db -1 ; end

	next_list_item ; CAMPER (7)
	db "DEAN@", TRAINERTYPE_NORMAL
	db 79
	dw GOLDUCK
	db 77
	dw SANDSLASH
	db -1 ; end

	next_list_item ; CAMPER (8)
	db "SID@", TRAINERTYPE_NORMAL
	db 80
	dw DUGTRIO
	db 77
	dw PRIMEAPE
	db 77
	dw POLIWRATH
	db -1 ; end

	next_list_item ; CAMPER (9)
	db "HARVEY@", TRAINERTYPE_NORMAL
	db 15
	dw NIDORINO
	db -1 ; end

	next_list_item ; CAMPER (10)
	db "DALE@", TRAINERTYPE_NORMAL
	db 15
	dw NIDORINO
	db -1 ; end

	next_list_item ; CAMPER (11)
	db "TED@", TRAINERTYPE_NORMAL
	db 17
	dw MANKEY
	db -1 ; end

	next_list_item ; CAMPER (12)
	db "TODD@", TRAINERTYPE_NORMAL
	db 24
	dw GEODUDE
	db 27
	dw GRAVELER
	db 32
	dw PSYDUCK
	db -1 ; end

	next_list_item ; CAMPER (13)
	db "TODD@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 33
	dw GRAVELER
	db 36
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (14)
	db "THOMAS@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLBAT
	db 42
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (15)
	db "LEROY@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLBAT
	db 42
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (16)
	db "DAVID@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLBAT
	db 42
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (17)
	db "JOHN@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLBAT
	db 42
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (18)
	db "JERRY@", TRAINERTYPE_NORMAL
	db 85
	dw SANDSLASH
	db -1 ; end

	next_list_item ; CAMPER (19)
	db "SPENCER@", TRAINERTYPE_NORMAL
	db 37
	dw SANDSHREW
	db 37
	dw SANDSLASH
	db 39
	dw ZUBAT
	db -1 ; end

	next_list_item ; CAMPER (20)
	db "TODD@", TRAINERTYPE_NORMAL
	db 40
	dw GRAVELER
	db 40
	dw GOLEM
	db 40
	dw SLUGMA
	db 42
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (21)
	db "TODD@", TRAINERTYPE_MOVES
	db 43
	dw GOLEM
	dw SELFDESTRUCT, ROCK_THROW, HARDEN, MAGNITUDE
	db 43
	dw GOLEM
	dw SELFDESTRUCT, ROCK_THROW, HARDEN, EARTHQUAKE
	db 46
	dw MAGCARGO
	dw ROCK_THROW, HARDEN, AMNESIA, FLAMETHROWER
	db 44
	dw GOLDUCK
	dw DISABLE, PSYCHIC_M, SURF, PSYCH_UP
	db -1 ; end

	next_list_item ; CAMPER (22)
	db "QUENTIN@", TRAINERTYPE_NORMAL
	db 60
	dw FEAROW
	db 60
	dw PRIMEAPE
	db 60
	dw TAUROS
	db -1 ; end

	end_list_items

ExecutiveFGroup:
	next_list_item ; EXECUTIVEF (1)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 52
	dw ARBOK
	dw DIG, SLUDGE_BOMB, BITE, GLARE
	db 52
	dw VILEPLUME
	dw GIGA_DRAIN, MOONLIGHT, SLEEP_POWDER, MOONBLAST
	db 52
	dw MURKROW
	dw FLY, PURSUIT, HAZE, FAINT_ATTACK
	db -1 ; end

	next_list_item ; EXECUTIVEF (2)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 41
	dw ARBOK
	dw WRAP, SLUDGE_BOMB, POISON_STING, BITE
	db 41
	dw GLOOM
	dw MEGA_DRAIN, SWEET_SCENT, SLEEP_POWDER, ACID
	db 43
	dw MURKROW
	dw FLY, PURSUIT, HAZE, FAINT_ATTACK
	db -1 ; end

	end_list_items

SageGroup:
	next_list_item ; SAGE (1)
	db "CHOW@", TRAINERTYPE_NORMAL
	db 6
	dw BELLSPROUT
	db 6
	dw BELLSPROUT
	db 6
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (2)
	db "NICO@", TRAINERTYPE_NORMAL
	db 6
	dw BELLSPROUT
	db 6
	dw BELLSPROUT
	db 6
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (3)
	db "JIN@", TRAINERTYPE_NORMAL
	db 10
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (4)
	db "TROY@", TRAINERTYPE_NORMAL
	db 9
	dw BELLSPROUT
	db 9
	dw HOOTHOOT
	db -1 ; end

	next_list_item ; SAGE (5)
	db "BLIH@", TRAINERTYPE_NORMAL
	db 26
	dw ZORUA
	db 26
	dw HONEDGE
	db 26
	dw GREAVARD
	db 26
	dw SANDYGAST
	db 26
	dw DREEPY
	db -1 ; end

	next_list_item ; SAGE (6)
	db "PING@", TRAINERTYPE_NORMAL
	db 16
	dw GASTLY
	db 16
	dw GASTLY
	db 16
	dw GASTLY
	db 16
	dw GASTLY
	db 16
	dw GASTLY
	db -1 ; end

	next_list_item ; SAGE (7)
	db "EDMOND@", TRAINERTYPE_NORMAL
	db 6
	dw BELLSPROUT
	db 6
	dw BELLSPROUT
	db 6
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (8)
	db "EDMOND@", TRAINERTYPE_NORMAL
	db 10
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (9)
	db "LI@", TRAINERTYPE_NORMAL
	db 9
	dw BELLSPROUT
	db 9
	dw BELLSPROUT
	db 11
	dw HOOTHOOT
	db -1 ; end

	next_list_item ; SAGE (10)
	db "GAKU@", TRAINERTYPE_NORMAL
	db 55
	dw NOCTOWL
	db 55
	dw FLAREON
	db -1 ; end

	next_list_item ; SAGE (11)
	db "MASA@", TRAINERTYPE_NORMAL
	db 55
	dw NOCTOWL
	db 55
	dw JOLTEON
	db -1 ; end

	next_list_item ; SAGE (12)
	db "KOJI@", TRAINERTYPE_NORMAL
	db 55
	dw NOCTOWL
	db 55
	dw VAPOREON
	db -1 ; end

	end_list_items

HexManiacGroup:
	next_list_item ; HEX_MANIAC (1)
	db "FINNY@", TRAINERTYPE_NORMAL
	db 28
	dw POLTEAGEIST
	db 30
	dw SINISTCHA
	db 30
	dw FRILLISH
	db -1 ; end

	next_list_item ; HEX_MANIAC (2)
	db "CLARA@", TRAINERTYPE_NORMAL
	db 30
	dw HAUNTER
	db 29
	dw TEDDIURSA
	db 29
	dw PUMPKABOO
	db -1 ; end

	next_list_item ; HEX_MANIAC (3)
	db "BETHANY@", TRAINERTYPE_NORMAL
	db 25
	dw HAUNTER
	db -1 ; end

	next_list_item ; HEX_MANIAC (4)
	db "MARGRET@", TRAINERTYPE_NORMAL
	db 25
	dw HAUNTER
	db -1 ; end

	next_list_item ; HEX_MANIAC (5)
	db "ETHEL@", TRAINERTYPE_NORMAL
	db 25
	dw HAUNTER
	db -1 ; end

	next_list_item ; HEX_MANIAC (6)
	db "REBECCA@", TRAINERTYPE_NORMAL
	db 75
	dw HYPNO
	db 75
	dw GENGAR
	db -1 ; end

	next_list_item ; HEX_MANIAC (7)
	db "DORIS@", TRAINERTYPE_NORMAL
	db 74
	dw SLOWBRO
	db 76
	dw SLOWKING
	db -1 ; end

	end_list_items

BoarderGroup:
	next_list_item ; BOARDER (1)
	db "RONALD@", TRAINERTYPE_NORMAL
	db 37
	dw SEEL
	db 41
	dw DEWGONG
	db 39
	dw DEWGONG
	db -1 ; end

	next_list_item ; BOARDER (2)
	db "BRAD@", TRAINERTYPE_NORMAL
	db 39
	dw SWINUB
	db 41
	dw PILOSWINE
	db -1 ; end

	next_list_item ; BOARDER (3)
	db "DOUGLAS@", TRAINERTYPE_NORMAL
	db 37
	dw SHELLDER
	db 41
	dw CLOYSTER
	db 39
	dw SHELLDER
	db -1 ; end

	end_list_items

PokefanMGroup:
	next_list_item ; POKEFANM (1)
	db "WILLIAM@", TRAINERTYPE_ITEM
	db 24
	dw RAICHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (2)
	db "DEREK@", TRAINERTYPE_ITEM
	db 29
	dw PIKACHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (3)
	db "ROBERT@", TRAINERTYPE_ITEM
	db 81
	dw QUAGSIRE
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (4)
	db "JOSHUA@", TRAINERTYPE_ITEM
	db 77
	dw PIKACHU
	db BERRY
	db 77
	dw PIKACHU
	db BERRY
	db 77
	dw PIKACHU
	db BERRY
	db 77
	dw PIKACHU
	db BERRY
	db 81
	dw MIMIKYU
	db BERRY
	db 77
	dw PIKACHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (5)
	db "CARTER@", TRAINERTYPE_ITEM
	db 79
	dw BULBASAUR
	db BERRY
	db 79
	dw CHARMANDER
	db BERRY
	db 79
	dw SQUIRTLE
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (6)
	db "TREVOR@", TRAINERTYPE_ITEM
	db 83
	dw PSYDUCK
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (7)
	db "BRANDON@", TRAINERTYPE_ITEM
	db 22
	dw SNUBBULL
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (8)
	db "JEREMY@", TRAINERTYPE_ITEM
	db 78
	dw MEOWTH
	db BERRY
	db 78
	dw MEOWTH
	db BERRY
	db 78
	dw MEOWTH
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (9)
	db "COLIN@", TRAINERTYPE_ITEM
	db 72
	dw DELIBIRD
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (10)
	db "DEREK@", TRAINERTYPE_ITEM
	db 31
	dw PIKACHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (11)
	db "DEREK@", TRAINERTYPE_ITEM
	db 42
	dw PICHU
	db BERRY
	db 48
	dw PIKACHU
	db BERRY
	db 50
	dw MIMIKYU
	db GOLD_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (12)
	db "ALEX@", TRAINERTYPE_ITEM
	db 79
	dw NIDOKING
	db BERRY
	db 79
	dw SLOWKING
	db BERRY
	db 79
	dw SEAKING
	db BERRY
	db 79
	dw KINGLER
	db BERRY
	db 79
	dw KINGDRA
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (13)
	db "REX@", TRAINERTYPE_ITEM
	db 80
	dw PHANPY
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (14)
	db "ALLAN@", TRAINERTYPE_ITEM
	db 80
	dw TEDDIURSA
	db BERRY
	db -1 ; end

	end_list_items

KimonoGirlGroup:
	next_list_item ; KIMONO_GIRL (1)
	db "NAOKO@", TRAINERTYPE_NORMAL
	db 20
	dw SKIPLOOM
	db 20
	dw VULPIX
	db 18
	dw SKIPLOOM
	db -1 ; end

	next_list_item ; KIMONO_GIRL (2)
	db "NAOKO@", TRAINERTYPE_NORMAL
	db 27
	dw FLAREON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (3)
	db "SAYO@", TRAINERTYPE_NORMAL
	db 27
	dw ESPEON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (4)
	db "ZUKI@", TRAINERTYPE_NORMAL
	db 27
	dw UMBREON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (5)
	db "KUNI@", TRAINERTYPE_NORMAL
	db 27
	dw VAPOREON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (6)
	db "MIKI@", TRAINERTYPE_NORMAL
	db 27
	dw JOLTEON
	db -1 ; end

	end_list_items

TwinsGroup:
	next_list_item ; TWINS (1)
	db "AMY & MAY@", TRAINERTYPE_NORMAL
	db 16
	dw SPINARAK
	db 16
	dw LEDYBA
	db -1 ; end

	next_list_item ; TWINS (2)
	db "ANN & ANNE@", TRAINERTYPE_MOVES
	db 26
	dw CLEFAIRY
	dw GROWL, ENCORE, DOUBLESLAP, METRONOME
	db 26
	dw JIGGLYPUFF
	dw SING, DEFENSE_CURL, POUND, DISABLE
	db -1 ; end

	next_list_item ; TWINS (3)
	db "ANN & ANNE@", TRAINERTYPE_MOVES
	db 26
	dw JIGGLYPUFF
	dw SING, DEFENSE_CURL, POUND, DISABLE
	db 26
	dw CLEFAIRY
	dw GROWL, ENCORE, DOUBLESLAP, METRONOME
	db -1 ; end

	next_list_item ; TWINS (4)
	db "AMY & MAY@", TRAINERTYPE_NORMAL
	db 16
	dw LEDYBA
	db 16
	dw SPINARAK
	db -1 ; end

	next_list_item ; TWINS (5)
	db "JO & ZOE@", TRAINERTYPE_NORMAL
	db 80
	dw VICTREEBEL
	db 80
	dw VILEPLUME
	db -1 ; end

	next_list_item ; TWINS (6)
	db "JO & ZOE@", TRAINERTYPE_NORMAL
	db 80
	dw VILEPLUME
	db 80
	dw VICTREEBEL
	db -1 ; end

	next_list_item ; TWINS (7)
	db "MEG & PEG@", TRAINERTYPE_NORMAL
	db 71
	dw URSARING
	db 71
	dw DONPHAN
	db -1 ; end

	next_list_item ; TWINS (8)
	db "MEG & PEG@", TRAINERTYPE_NORMAL
	db 71
	dw DONPHAN
	db 71
	dw URSARING
	db -1 ; end

	next_list_item ; TWINS (9)
	db "LEA & PIA@", TRAINERTYPE_MOVES
	db 55
	dw DRAGONAIR
	dw THUNDER_WAVE, TWISTER, FLAMETHROWER, HEADBUTT
	db 55
	dw DRAGONITE
	dw THUNDER_WAVE, TWISTER, ICE_BEAM, HEADBUTT
	db -1 ; end

	next_list_item ; TWINS (10)
	db "LEA & PIA@", TRAINERTYPE_MOVES
	db 58
	dw DRAGONAIR
	dw THUNDER_WAVE, TWISTER, ICE_BEAM, HEADBUTT
	db 58
	dw DRAGONITE
	dw THUNDER_WAVE, TWISTER, FLAMETHROWER, HEADBUTT
	db -1 ; end

	end_list_items

PokefanFGroup:
	next_list_item ; POKEFANF (1)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 23
	dw GRANBULL
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (2)
	db "RUTH@", TRAINERTYPE_ITEM
	db 29
	dw MIMIKYU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (3)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 28
	dw GRANBULL
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (4)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 40
	dw GRANBULL
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (5)
	db "GEORGIA@", TRAINERTYPE_ITEM
	db 73
	dw SENTRET
	db BERRY
	db 73
	dw SENTRET
	db BERRY
	db 73
	dw SENTRET
	db BERRY
	db 78
	dw FURRET
	db BERRY
	db 73
	dw SENTRET
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (6)
	db "JAIME@", TRAINERTYPE_ITEM
	db 27
	dw MEOWTH
	db BERRY
	db -1 ; end

	end_list_items

SECTION "Enemy Trainer Parties 3", ROMX

RedGroup:
	next_list_item ; RED (1)
	db "RED@", TRAINERTYPE_MOVES
	db 100
	dw PIKACHU
	dw CHARM, QUICK_ATTACK, THUNDERBOLT, THUNDER
	db 93
	dw ESPEON
	dw MUD_SLAP, REFLECT, SWIFT, PSYCHIC_M
	db 95
	dw SNORLAX
	dw AMNESIA, SNORE, REST, BODY_SLAM
	db 97
	dw VENUSAUR
	dw SUNNY_DAY, GIGA_DRAIN, SYNTHESIS, SOLARBEAM
	db 97
	dw CHARIZARD
	dw FLAMETHROWER, WING_ATTACK, SLASH, FIRE_SPIN
	db 97
	dw BLASTOISE
	dw RAIN_DANCE, SURF, BLIZZARD, WHIRLPOOL
	db -1 ; end

	end_list_items

BlueGroup:
	next_list_item ; BLUE (1)
	db "BLUE@", TRAINERTYPE_MOVES
	db 91
	dw AEGISLASH
	dw PROTECT, SWORDS_DANCE, SHADOW_CLAW, IRON_TAIL
	db 89
	dw ALAKAZAM
	dw DISABLE, RECOVER, PSYCHIC_M, REFLECT
	db 91
	dw RHYDON
	dw FURY_ATTACK, SANDSTORM, ROCK_SLIDE, EARTHQUAKE
	db 93
	dw GYARADOS
	dw TWISTER, HYDRO_PUMP, RAIN_DANCE, HYPER_BEAM
	db 93
	dw EXEGGUTOR
	dw SUNNY_DAY, LEECH_SEED, EGG_BOMB, SOLARBEAM
	db 93
	dw ARCANINE
	dw ROAR, SWIFT, FLAMETHROWER, EXTREMESPEED
	db -1 ; end

	end_list_items

OfficerGroup:
	next_list_item ; OFFICER (1)
	db "KEITH@", TRAINERTYPE_NORMAL
	db 23
	dw GROWLITHE
	db -1 ; end

	next_list_item ; OFFICER (2)
	db "DIRK@", TRAINERTYPE_NORMAL
	db 24
	dw GROWLITHE
	db 24
	dw GROWLITHE
	db -1 ; end

	end_list_items

GruntFGroup:
	next_list_item ; GRUNTF (1)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 14
	dw ZUBAT
	db 16
	dw EKANS
	db -1 ; end

	next_list_item ; GRUNTF (2)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 46
	dw ARBOK
	db -1 ; end

	next_list_item ; GRUNTF (3)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 45
	dw GLOOM
	db 45
	dw VILEPLUME
	db -1 ; end

	next_list_item ; GRUNTF (4)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 41
	dw ARBOK
	db 43
	dw GLOOM
	db 41
	dw ARBOK
	db 44
	dw VILEPLUME
	db -1 ; end

	next_list_item ; GRUNTF (5)
	db "GRUNT@", TRAINERTYPE_MOVES
	db 34
	dw ARBOK
	dw WRAP, LEER, POISON_STING, BITE
	db 36
	dw GLOOM
	dw MEGA_DRAIN, SWEET_SCENT, STUN_SPORE, SLEEP_POWDER
	db -1 ; end

	end_list_items

MysticalmanGroup:
	next_list_item ; MYSTICALMAN (1)
	db "EUSINE@", TRAINERTYPE_MOVES
	db 35
	dw HYPNO
	dw DREAM_EATER, HYPNOSIS, DISABLE, CONFUSION
	db 35
	dw HAUNTER
	dw SHADOW_BALL, HYPNOSIS, MEAN_LOOK, CURSE
	db 37
	dw ELECTRODE
	dw SCREECH, SONICBOOM, THUNDER, ROLLOUT
	db -1 ; end

	end_list_items

WitcherGroup:
	next_list_item ; WITCHER (1)
	db "CHRISTIAN@", TRAINERTYPE_ITEM_MOVES
	db 33
	dw MISMAGIUS
	db BERRY
	dw HEX, WILL_O_WISP, CONFUSE_RAY, SWIFT
	db 33
	dw KINGLER
	db MINT_BERRY
	dw CRABHAMMER, STOMP, METAL_CLAW, ICE_PUNCH
	db -1 ; end

	end_list_items
