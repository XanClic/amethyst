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
	db "FALK@", TRAINERTYPE_MOVES
	db 7
	dw PIDGEY
	dw TACKLE, MUD_SLAP, NO_MOVE, NO_MOVE
	db 9
	dw PIDGEOTTO
	dw TACKLE, MUD_SLAP, GUST, NO_MOVE
	db -1 ; end

	end_list_items

WhitneyGroup:
	next_list_item ; WHITNEY (1)
	db "BIANKA@", TRAINERTYPE_MOVES
	db 18
	dw CLEFAIRY
	dw DOUBLESLAP, MIMIC, ENCORE, METRONOME
	db 20
	dw MILTANK
	dw ROLLOUT, ATTRACT, STOMP, MILK_DRINK
	db -1 ; end

	end_list_items

BugsyGroup:
	next_list_item ; BUGSY (1)
	db "KAI@", TRAINERTYPE_MOVES
	db 14
	dw METAPOD
	dw TACKLE, STRING_SHOT, HARDEN, NO_MOVE
	db 14
	dw KAKUNA
	dw POISON_STING, STRING_SHOT, HARDEN, NO_MOVE
	db 16
	dw SCYTHER
	dw QUICK_ATTACK, LEER, FURY_CUTTER, NO_MOVE
	db -1 ; end

	end_list_items

MortyGroup:
	next_list_item ; MORTY (1)
	db "JENS@", TRAINERTYPE_MOVES
	db 21
	dw GASTLY
	dw LICK, SPITE, MEAN_LOOK, CURSE
	db 21
	dw HAUNTER
	dw HYPNOSIS, MIMIC, CURSE, NIGHT_SHADE
	db 25
	dw GENGAR
	dw HYPNOSIS, SHADOW_BALL, MEAN_LOOK, DREAM_EATER
	db 23
	dw MIMIKYU
	dw DISGUISE, FAINT_ATTACK, SHADOW_BALL, SHADOW_SNEAK
	db -1 ; end

	end_list_items

PryceGroup:
	next_list_item ; PRYCE (1)
	db "NORBERT@", TRAINERTYPE_MOVES
	db 27
	dw SEEL
	dw HEADBUTT, ICY_WIND, AURORA_BEAM, REST
	db 29
	dw DEWGONG
	dw HEADBUTT, ICY_WIND, AURORA_BEAM, REST
	db 31
	dw PILOSWINE
	dw ICY_WIND, FURY_ATTACK, MIST, BLIZZARD
	db -1 ; end

	end_list_items

JasmineGroup:
	next_list_item ; JASMINE (1)
	db "JASMIN@", TRAINERTYPE_MOVES
	db 30
	dw MAGNEMITE
	dw THUNDERBOLT, SUPERSONIC, SONICBOOM, THUNDER_WAVE
	db 30
	dw MAGNEMITE
	dw THUNDERBOLT, SUPERSONIC, SONICBOOM, THUNDER_WAVE
	db 35
	dw STEELIX
	dw SCREECH, SUNNY_DAY, ROCK_THROW, IRON_TAIL
	db -1 ; end

	end_list_items

ChuckGroup:
	next_list_item ; CHUCK (1)
	db "HARTWIG@", TRAINERTYPE_MOVES
	db 27
	dw PRIMEAPE
	dw LEER, RAGE, KARATE_CHOP, FURY_SWIPES
	db 30
	dw POLIWRATH
	dw HYPNOSIS, MIND_READER, SURF, DYNAMICPUNCH
	db -1 ; end

	end_list_items

ClairGroup:
	next_list_item ; CLAIR (1)
	db "SANDRA@", TRAINERTYPE_MOVES
	db 37
	dw DRAGONAIR
	dw THUNDER_WAVE, SURF, SLAM, DRAGONBREATH
	db 37
	dw DRAGONAIR
	dw THUNDER_WAVE, THUNDERBOLT, SLAM, DRAGONBREATH
	db 37
	dw DRAGONAIR
	dw THUNDER_WAVE, ICE_BEAM, SLAM, DRAGONBREATH
	db 40
	dw KINGDRA
	dw SMOKESCREEN, SURF, HYPER_BEAM, DRAGONBREATH
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
	db 12
	dw GASTLY
	db 14
	dw ZUBAT
	db 16
	dw BAYLEEF
	db -1 ; end

	next_list_item ; RIVAL1 (5)
	db "?@", TRAINERTYPE_NORMAL
	db 12
	dw GASTLY
	db 14
	dw ZUBAT
	db 16
	dw QUILAVA
	db -1 ; end

	next_list_item ; RIVAL1 (6)
	db "?@", TRAINERTYPE_NORMAL
	db 12
	dw GASTLY
	db 14
	dw ZUBAT
	db 16
	dw CROCONAW
	db -1 ; end

	next_list_item ; RIVAL1 (7)
	db "?@", TRAINERTYPE_MOVES
	db 20
	dw HAUNTER
	dw LICK, SPITE, MEAN_LOOK, CURSE
	db 18
	dw MAGNEMITE
	dw TACKLE, THUNDERSHOCK, SUPERSONIC, SONICBOOM
	db 20
	dw ZUBAT
	dw LEECH_LIFE, SUPERSONIC, BITE, CONFUSE_RAY
	db 22
	dw BAYLEEF
	dw GROWL, REFLECT, RAZOR_LEAF, POISONPOWDER
	db -1 ; end

	next_list_item ; RIVAL1 (8)
	db "?@", TRAINERTYPE_MOVES
	db 20
	dw HAUNTER
	dw LICK, SPITE, MEAN_LOOK, CURSE
	db 18
	dw MAGNEMITE
	dw TACKLE, THUNDERSHOCK, SUPERSONIC, SONICBOOM
	db 20
	dw ZUBAT
	dw LEECH_LIFE, SUPERSONIC, BITE, CONFUSE_RAY
	db 22
	dw QUILAVA
	dw LEER, SMOKESCREEN, EMBER, QUICK_ATTACK
	db -1 ; end

	next_list_item ; RIVAL1 (9)
	db "?@", TRAINERTYPE_MOVES
	db 20
	dw HAUNTER
	dw LICK, SPITE, MEAN_LOOK, CURSE
	db 18
	dw MAGNEMITE
	dw TACKLE, THUNDERSHOCK, SUPERSONIC, SONICBOOM
	db 20
	dw ZUBAT
	dw LEECH_LIFE, SUPERSONIC, BITE, CONFUSE_RAY
	db 22
	dw CROCONAW
	dw LEER, RAGE, WATER_GUN, BITE
	db -1 ; end

	next_list_item ; RIVAL1 (10)
	db "?@", TRAINERTYPE_MOVES
	db 30
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 28
	dw MAGNEMITE
	dw TACKLE, THUNDERSHOCK, SONICBOOM, THUNDER_WAVE
	db 30
	dw HAUNTER
	dw LICK, MEAN_LOOK, CURSE, SHADOW_BALL
	db 32
	dw SNEASEL
	dw LEER, QUICK_ATTACK, SCREECH, FAINT_ATTACK
	db 32
	dw MEGANIUM
	dw REFLECT, RAZOR_LEAF, POISONPOWDER, BODY_SLAM
	db -1 ; end

	next_list_item ; RIVAL1 (11)
	db "?@", TRAINERTYPE_MOVES
	db 30
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 28
	dw MAGNEMITE
	dw TACKLE, THUNDERSHOCK, SONICBOOM, THUNDER_WAVE
	db 30
	dw HAUNTER
	dw LICK, MEAN_LOOK, CURSE, SHADOW_BALL
	db 32
	dw SNEASEL
	dw LEER, QUICK_ATTACK, SCREECH, FAINT_ATTACK
	db 32
	dw QUILAVA
	dw SMOKESCREEN, EMBER, QUICK_ATTACK, FLAME_WHEEL
	db -1 ; end

	next_list_item ; RIVAL1 (12)
	db "?@", TRAINERTYPE_MOVES
	db 30
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 28
	dw MAGNEMITE
	dw TACKLE, THUNDERSHOCK, SONICBOOM, THUNDER_WAVE
	db 30
	dw HAUNTER
	dw LICK, MEAN_LOOK, CURSE, SHADOW_BALL
	db 32
	dw SNEASEL
	dw LEER, QUICK_ATTACK, SCREECH, FAINT_ATTACK
	db 32
	dw FERALIGATR
	dw RAGE, WATER_GUN, BITE, SCARY_FACE
	db -1 ; end

	next_list_item ; RIVAL1 (13)
	db "?@", TRAINERTYPE_MOVES
	db 34
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 36
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 35
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 35
	dw HAUNTER
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 35
	dw KADABRA
	dw DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
	db 38
	dw MEGANIUM
	dw REFLECT, RAZOR_LEAF, POISONPOWDER, BODY_SLAM
	db -1 ; end

	next_list_item ; RIVAL1 (14)
	db "?@", TRAINERTYPE_MOVES
	db 34
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 36
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 35
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 35
	dw HAUNTER
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 35
	dw KADABRA
	dw DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
	db 38
	dw TYPHLOSION
	dw SMOKESCREEN, EMBER, QUICK_ATTACK, FLAME_WHEEL
	db -1 ; end

	next_list_item ; RIVAL1 (15)
	db "?@", TRAINERTYPE_MOVES
	db 34
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 36
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 34
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 35
	dw HAUNTER
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 35
	dw KADABRA
	dw DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
	db 38
	dw FERALIGATR
	dw RAGE, WATER_GUN, SCARY_FACE, SLASH
	db -1 ; end

	end_list_items

PokemonProfGroup:

WillGroup:
	next_list_item ; WILL (1)
	db "WILLI@", TRAINERTYPE_MOVES
	db 40
	dw XATU
	dw QUICK_ATTACK, FUTURE_SIGHT, CONFUSE_RAY, PSYCHIC_M
	db 41
	dw JYNX
	dw DOUBLESLAP, LOVELY_KISS, ICE_PUNCH, PSYCHIC_M
	db 41
	dw EXEGGUTOR
	dw REFLECT, LEECH_SEED, EGG_BOMB, PSYCHIC_M
	db 41
	dw SLOWBRO
	dw CURSE, AMNESIA, BODY_SLAM, PSYCHIC_M
	db 42
	dw XATU
	dw QUICK_ATTACK, FUTURE_SIGHT, CONFUSE_RAY, PSYCHIC_M
	db -1 ; end

	end_list_items

PKMNTrainerGroup:
	next_list_item ; CAL (1)
	db "HERMANN@", TRAINERTYPE_NORMAL
	db 10
	dw CHIKORITA
	db 10
	dw CYNDAQUIL
	db 10
	dw TOTODILE
	db -1 ; end

	next_list_item ; CAL (2)
	db "HERMANN@", TRAINERTYPE_NORMAL
	db 30
	dw BAYLEEF
	db 30
	dw QUILAVA
	db 30
	dw CROCONAW
	db -1 ; end

	next_list_item ; CAL (3)
	db "HERMANN@", TRAINERTYPE_NORMAL
	db 50
	dw MEGANIUM
	db 50
	dw TYPHLOSION
	db 50
	dw FERALIGATR
	db -1 ; end

	end_list_items

BrunoGroup:
	next_list_item ; BRUNO (1)
	db "BRUNO@", TRAINERTYPE_MOVES
	db 42
	dw HITMONTOP
	dw PURSUIT, QUICK_ATTACK, DIG, DETECT
	db 42
	dw HITMONLEE
	dw SWAGGER, DOUBLE_KICK, HI_JUMP_KICK, FORESIGHT
	db 42
	dw HITMONCHAN
	dw THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH, MACH_PUNCH
	db 43
	dw ONIX
	dw BIND, EARTHQUAKE, SANDSTORM, ROCK_SLIDE
	db 46
	dw MACHAMP
	dw ROCK_SLIDE, FORESIGHT, VITAL_THROW, CROSS_CHOP
	db -1 ; end

	end_list_items

KarenGroup:
	next_list_item ; KAREN (1)
	db "MELANIE@", TRAINERTYPE_MOVES
	db 42
	dw UMBREON
	dw SAND_ATTACK, CONFUSE_RAY, FAINT_ATTACK, MEAN_LOOK
	db 42
	dw VILEPLUME
	dw STUN_SPORE, ACID, MOONLIGHT, PETAL_DANCE
	db 45
	dw MIMIKYU
	dw PLAY_ROUGH, DISGUISE, SWORDS_DANCE, SHADOW_BALL
	db 44
	dw MURKROW
	dw QUICK_ATTACK, WHIRLWIND, PURSUIT, FAINT_ATTACK
	db 47
	dw HOUNDOOM
	dw ROAR, PURSUIT, FLAMETHROWER, CRUNCH
	db -1 ; end

	end_list_items

KogaGroup:
	next_list_item ; KOGA (1)
	db "KOGA@", TRAINERTYPE_MOVES
	db 40
	dw ARIADOS
	dw DOUBLE_TEAM, SPIDER_WEB, BATON_PASS, GIGA_DRAIN
	db 41
	dw VENOMOTH
	dw SUPERSONIC, GUST, PSYCHIC_M, TOXIC
	db 43
	dw FORRETRESS
	dw PROTECT, SWIFT, EXPLOSION, SPIKES
	db 42
	dw MUK
	dw MINIMIZE, ACID_ARMOR, SLUDGE_BOMB, TOXIC
	db 44
	dw CROBAT
	dw DOUBLE_TEAM, QUICK_ATTACK, WING_ATTACK, TOXIC
	db -1 ; end

	end_list_items

ChampionGroup:
	next_list_item ; CHAMPION (1)
	db "SIEGFRIED@", TRAINERTYPE_MOVES
	db 44
	dw GYARADOS
	dw FLAIL, RAIN_DANCE, SURF, HYPER_BEAM
	db 47
	dw DRAGONITE
	dw THUNDER_WAVE, TWISTER, THUNDER, HYPER_BEAM
	db 47
	dw DRAGONITE
	dw THUNDER_WAVE, TWISTER, BLIZZARD, HYPER_BEAM
	db 46
	dw AERODACTYL
	dw WING_ATTACK, ANCIENTPOWER, ROCK_SLIDE, HYPER_BEAM
	db 46
	dw CHARIZARD
	dw FLAMETHROWER, WING_ATTACK, SLASH, HYPER_BEAM
	db 50
	dw DRAGONITE
	dw FIRE_BLAST, SAFEGUARD, OUTRAGE, HYPER_BEAM
	db -1 ; end

	end_list_items

BrockGroup:
	next_list_item ; BROCK (1)
	db "ROCKO@", TRAINERTYPE_MOVES
	db 41
	dw GRAVELER
	dw DEFENSE_CURL, ROCK_SLIDE, ROLLOUT, EARTHQUAKE
	db 41
	dw RHYHORN
	dw FURY_ATTACK, SCARY_FACE, EARTHQUAKE, HORN_DRILL
	db 42
	dw OMASTAR
	dw BITE, SURF, PROTECT, SPIKE_CANNON
	db 44
	dw ONIX
	dw BIND, ROCK_SLIDE, BIDE, SANDSTORM
	db 42
	dw KABUTOPS
	dw SLASH, SURF, ENDURE, GIGA_DRAIN
	db -1 ; end

	end_list_items

MistyGroup:
	next_list_item ; MISTY (1)
	db "MISTY@", TRAINERTYPE_MOVES
	db 42
	dw GOLDUCK
	dw SURF, DISABLE, PSYCH_UP, PSYCHIC_M
	db 42
	dw QUAGSIRE
	dw SURF, AMNESIA, EARTHQUAKE, RAIN_DANCE
	db 44
	dw LAPRAS
	dw SURF, PERISH_SONG, BLIZZARD, RAIN_DANCE
	db 47
	dw STARMIE
	dw SURF, CONFUSE_RAY, RECOVER, ICE_BEAM
	db -1 ; end

	end_list_items

LtSurgeGroup:
	next_list_item ; LT_SURGE (1)
	db "MAJOR BOB@", TRAINERTYPE_MOVES
	db 44
	dw RAICHU
	dw THUNDER_WAVE, QUICK_ATTACK, THUNDERBOLT, THUNDER
	db 40
	dw ELECTRODE
	dw SCREECH, DOUBLE_TEAM, SWIFT, EXPLOSION
	db 40
	dw MAGNETON
	dw LOCK_ON, DOUBLE_TEAM, SWIFT, ZAP_CANNON
	db 40
	dw ELECTRODE
	dw SCREECH, DOUBLE_TEAM, SWIFT, EXPLOSION
	db 46
	dw ELECTABUZZ
	dw QUICK_ATTACK, THUNDERPUNCH, LIGHT_SCREEN, THUNDER
	db -1 ; end

	end_list_items

ScientistGroup:
	next_list_item ; SCIENTIST (1)
	db "MARTIN@", TRAINERTYPE_NORMAL
	db 22
	dw KOFFING
	db 22
	dw KOFFING
	db -1 ; end

	next_list_item ; SCIENTIST (2)
	db "HASSO@", TRAINERTYPE_NORMAL
	db 24
	dw DITTO
	db -1 ; end

	next_list_item ; SCIENTIST (3)
	db "THEODOR@", TRAINERTYPE_NORMAL
	db 20
	dw MAGNEMITE
	db 20
	dw MAGNEMITE
	db 20
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SCIENTIST (4)
	db "INGO@", TRAINERTYPE_NORMAL
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SCIENTIST (5)
	db "RASSO@", TRAINERTYPE_MOVES
	db 30
	dw PORYGON
	dw CONVERSION, CONVERSION2, RECOVER, TRI_ATTACK
	db -1 ; end

	end_list_items

ErikaGroup:
	next_list_item ; ERIKA (1)
	db "ERIKA@", TRAINERTYPE_MOVES
	db 42
	dw TANGELA
	dw VINE_WHIP, BIND, GIGA_DRAIN, SLEEP_POWDER
	db 41
	dw JUMPLUFF
	dw MEGA_DRAIN, LEECH_SEED, COTTON_SPORE, GIGA_DRAIN
	db 46
	dw VICTREEBEL
	dw SUNNY_DAY, SYNTHESIS, ACID, RAZOR_LEAF
	db 46
	dw BELLOSSOM
	dw SUNNY_DAY, SYNTHESIS, PETAL_DANCE, SOLARBEAM
	db -1 ; end

	end_list_items

YoungsterGroup:
	next_list_item ; YOUNGSTER (1)
	db "JULIAN@", TRAINERTYPE_NORMAL
	db 4
	dw RATTATA
	db -1 ; end

	next_list_item ; YOUNGSTER (2)
	db "BURKARD@", TRAINERTYPE_NORMAL
	db 2
	dw PIDGEY
	db 4
	dw RATTATA
	db -1 ; end

	next_list_item ; YOUNGSTER (3)
	db "NIELS@", TRAINERTYPE_NORMAL
	db 6
	dw RATTATA
	db 8
	dw ZUBAT
	db -1 ; end

	next_list_item ; YOUNGSTER (4)
	db "EINAR@", TRAINERTYPE_NORMAL
	db 10
	dw WOOPER
	db -1 ; end

	next_list_item ; YOUNGSTER (5)
	db "GUIDO@", TRAINERTYPE_NORMAL
	db 7
	dw RATTATA
	db 10
	dw SANDSHREW
	db 8
	dw SPEAROW
	db 8
	dw SPEAROW
	db -1 ; end

	next_list_item ; YOUNGSTER (6)
	db "LORENZ@", TRAINERTYPE_NORMAL
	db 10
	dw MANKEY
	db 12
	dw DIGLETT
	db -1 ; end

	next_list_item ; YOUNGSTER (7)
	db "JULIAN@", TRAINERTYPE_NORMAL
	db 15
	dw RATTATA
	db -1 ; end

	next_list_item ; YOUNGSTER (8)
	db "JULIAN@", TRAINERTYPE_MOVES
	db 21
	dw RATICATE
	dw TAIL_WHIP, QUICK_ATTACK, HYPER_FANG, SCARY_FACE
	db -1 ; end

	next_list_item ; YOUNGSTER (9)
	db "JOHANNES@", TRAINERTYPE_NORMAL
	db 35
	dw FEAROW
	db -1 ; end

	next_list_item ; YOUNGSTER (10)
	db "EDMUND@", TRAINERTYPE_NORMAL
	db 33
	dw RATICATE
	db 33
	dw ARBOK
	db -1 ; end

	next_list_item ; YOUNGSTER (11)
	db "FRIEDER@", TRAINERTYPE_NORMAL
	db 35
	dw GROWLITHE
	db -1 ; end

	next_list_item ; YOUNGSTER (12)
	db "WERNER@", TRAINERTYPE_NORMAL
	db 33
	dw SANDSLASH
	db 33
	dw CROBAT
	db -1 ; end

	next_list_item ; YOUNGSTER (13)
	db "JULIAN@", TRAINERTYPE_MOVES
	db 30
	dw RATICATE
	dw TAIL_WHIP, QUICK_ATTACK, HYPER_FANG, PURSUIT
	db -1 ; end

	next_list_item ; YOUNGSTER (14)
	db "JULIAN@", TRAINERTYPE_MOVES
	db 37
	dw RATICATE
	dw HYPER_BEAM, QUICK_ATTACK, HYPER_FANG, PURSUIT
	db -1 ; end

	end_list_items

SECTION "Enemy Trainer Parties 2", ROMX

SchoolboyGroup:
	next_list_item ; SCHOOLBOY (1)
	db "JULIUS@", TRAINERTYPE_NORMAL
	db 12
	dw ODDISH
	db 15
	dw VOLTORB
	db -1 ; end

	next_list_item ; SCHOOLBOY (2)
	db "MICHEL@", TRAINERTYPE_NORMAL
	db 27
	dw VOLTORB
	db 27
	dw MAGNEMITE
	db 31
	dw VOLTORB
	db 31
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (3)
	db "HOLGER@", TRAINERTYPE_NORMAL
	db 16
	dw TANGELA
	db -1 ; end

	next_list_item ; SCHOOLBOY (4)
	db "NIKLAS@", TRAINERTYPE_NORMAL
	db 29
	dw BELLSPROUT
	db 31
	dw WEEPINBELL
	db 33
	dw VICTREEBEL
	db -1 ; end

	next_list_item ; SCHOOLBOY (5)
	db "BJÖRN@", TRAINERTYPE_NORMAL
	db 31
	dw JYNX
	db 31
	dw ELECTABUZZ
	db 31
	dw MAGMAR
	db -1 ; end

	next_list_item ; SCHOOLBOY (6)
	db "TORBEN@", TRAINERTYPE_NORMAL
	db 32
	dw XATU
	db 34
	dw ALAKAZAM
	db -1 ; end

	next_list_item ; SCHOOLBOY (7)
	db "FLAVIO@", TRAINERTYPE_NORMAL
	db 35
	dw ODDISH
	db -1 ; end

	next_list_item ; SCHOOLBOY (8)
	db "KONRAD@", TRAINERTYPE_NORMAL
	db 33
	dw TANGELA
	db 33
	dw VAPOREON
	db -1 ; end

	next_list_item ; SCHOOLBOY (9)
	db "SANDRO@", TRAINERTYPE_NORMAL
	db 27
	dw PARAS
	db 27
	dw PARAS
	db 27
	dw POLIWHIRL
	db 35
	dw DITTO
	db -1 ; end

	next_list_item ; SCHOOLBOY (10)
	db "LUTZ@", TRAINERTYPE_NORMAL
	db 19
	dw MR__MIME
	db -1 ; end

	next_list_item ; SCHOOLBOY (11)
	db "RUDOLF@", TRAINERTYPE_NORMAL
	db 32
	dw LEDIAN
	db 32
	dw EXEGGUTOR
	db -1 ; end

	next_list_item ; SCHOOLBOY (12)
	db "ENRICO@", TRAINERTYPE_NORMAL
	db 32
	dw AIPOM
	db 32
	dw DITTO
	db -1 ; end

	next_list_item ; SCHOOLBOY (13)
	db "JULIUS@", TRAINERTYPE_NORMAL
	db 14
	dw ODDISH
	db 17
	dw VOLTORB
	db -1 ; end

	next_list_item ; SCHOOLBOY (14)
	db "JULIUS@", TRAINERTYPE_NORMAL
	db 28
	dw GLOOM
	db 31
	dw ELECTRODE
	db -1 ; end

	next_list_item ; SCHOOLBOY (15)
	db "HOLGER@", TRAINERTYPE_NORMAL
	db 17
	dw TANGELA
	db 17
	dw YANMA
	db -1 ; end

	next_list_item ; SCHOOLBOY (16)
	db "HOLGER@", TRAINERTYPE_NORMAL
	db 20
	dw NATU
	db 22
	dw TANGELA
	db 20
	dw QUAGSIRE
	db 25
	dw YANMA
	db -1 ; end

	next_list_item ; SCHOOLBOY (17)
	db "LUTZ@", TRAINERTYPE_NORMAL
	db 19
	dw MR__MIME
	db 19
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SCHOOLBOY (18)
	db "LUTZ@", TRAINERTYPE_NORMAL
	db 27
	dw MR__MIME
	db 31
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (19)
	db "JULIUS@", TRAINERTYPE_NORMAL
	db 30
	dw GLOOM
	db 33
	dw GROWLITHE
	db 33
	dw ELECTRODE
	db -1 ; end

	next_list_item ; SCHOOLBOY (20)
	db "JULIUS@", TRAINERTYPE_MOVES
	db 35
	dw ELECTRODE
	dw SCREECH, SONICBOOM, ROLLOUT, LIGHT_SCREEN
	db 35
	dw GROWLITHE
	dw SUNNY_DAY, LEER, TAKE_DOWN, FLAME_WHEEL
	db 37
	dw VILEPLUME
	dw SOLARBEAM, SLEEP_POWDER, ACID, MOONLIGHT
	db -1 ; end

	next_list_item ; SCHOOLBOY (21)
	db "HOLGER@", TRAINERTYPE_NORMAL
	db 27
	dw NATU
	db 27
	dw TANGELA
	db 30
	dw QUAGSIRE
	db 30
	dw YANMA
	db -1 ; end

	next_list_item ; SCHOOLBOY (22)
	db "HOLGER@", TRAINERTYPE_MOVES
	db 35
	dw XATU
	dw PECK, NIGHT_SHADE, SWIFT, FUTURE_SIGHT
	db 32
	dw TANGELA
	dw POISONPOWDER, VINE_WHIP, BIND, MEGA_DRAIN
	db 32
	dw YANMA
	dw QUICK_ATTACK, DOUBLE_TEAM, SONICBOOM, SUPERSONIC
	db 35
	dw QUAGSIRE
	dw TAIL_WHIP, SLAM, AMNESIA, EARTHQUAKE
	db -1 ; end

	next_list_item ; SCHOOLBOY (23)
	db "LUTZ@", TRAINERTYPE_NORMAL
	db 30
	dw MR__MIME
	db 34
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (24)
	db "LUTZ@", TRAINERTYPE_MOVES
	db 34
	dw MR__MIME
	dw PSYCHIC_M, LIGHT_SCREEN, REFLECT, ENCORE
	db 38
	dw MAGNETON
	dw ZAP_CANNON, THUNDER_WAVE, LOCK_ON, SWIFT
	db -1 ; end

	end_list_items

BirdKeeperGroup:
	next_list_item ; BIRD_KEEPER (1)
	db "KLAUS@", TRAINERTYPE_NORMAL
	db 7
	dw PIDGEY
	db 7
	dw PIDGEY
	db -1 ; end

	next_list_item ; BIRD_KEEPER (2)
	db "LEO@", TRAINERTYPE_NORMAL
	db 9
	dw SPEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (3)
	db "OTTO@", TRAINERTYPE_NORMAL
	db 12
	dw PIDGEY
	db 14
	dw PIDGEOTTO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (4)
	db "EUGEN@", TRAINERTYPE_NORMAL
	db 17
	dw PIDGEY
	db 15
	dw PIDGEY
	db 19
	dw PIDGEY
	db 15
	dw PIDGEY
	db 15
	dw PIDGEY
	db -1 ; end

	next_list_item ; BIRD_KEEPER (5)
	db "TIMO@", TRAINERTYPE_NORMAL
	db 15
	dw DODUO
	db 16
	dw DODUO
	db 17
	dw DODUO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (6)
	db "BENNO@", TRAINERTYPE_NORMAL
	db 18
	dw SPEAROW
	db 20
	dw FEAROW
	db 18
	dw SPEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (7)
	db "ARNO@", TRAINERTYPE_NORMAL
	db 25
	dw PIDGEOTTO
	db 25
	dw PIDGEOTTO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (8)
	db "JIM@", TRAINERTYPE_NORMAL
	db 12
	dw PIDGEY
	db 34
	dw PIDGEOT
	db -1 ; end

	next_list_item ; BIRD_KEEPER (9)
	db "CHRIS@", TRAINERTYPE_NORMAL
	db 29
	dw FEAROW
	db 35
	dw FEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (10)
	db "FRANK@", TRAINERTYPE_NORMAL
	db 30
	dw DODUO
	db 28
	dw DODUO
	db 32
	dw DODRIO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (11)
	db "EGON@", TRAINERTYPE_NORMAL
	db 34
	dw NOCTOWL
	db -1 ; end

	next_list_item ; BIRD_KEEPER (12)
	db "ELMAR@", TRAINERTYPE_NORMAL
	db 36
	dw FARFETCH_D
	db -1 ; end

	next_list_item ; BIRD_KEEPER (13)
	db "RICO@", TRAINERTYPE_NORMAL
	db 6
	dw PIDGEY
	db 6
	dw PIDGEY
	db 8
	dw SPEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (14)
	db "ELMAR@", TRAINERTYPE_NORMAL
	db 34
	dw FARFETCH_D
	db -1 ; end

	next_list_item ; BIRD_KEEPER (15)
	db "MARKO@", TRAINERTYPE_NORMAL
	db 34
	dw FARFETCH_D
	db -1 ; end

	next_list_item ; BIRD_KEEPER (16)
	db "WOLF@", TRAINERTYPE_NORMAL
	db 32
	dw PIDGEOTTO
	db 32
	dw FEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (17)
	db "ELMAR@", TRAINERTYPE_MOVES
	db 40
	dw FARFETCH_D
	dw FURY_ATTACK, DETECT, FLY, SLASH
	db -1 ; end

	next_list_item ; BIRD_KEEPER (18)
	db "ARNO@", TRAINERTYPE_NORMAL
	db 32
	dw PIDGEOTTO
	db 32
	dw PIDGEOTTO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (19)
	db "ARNO@", TRAINERTYPE_MOVES
	db 38
	dw PIDGEOT
	dw TOXIC, QUICK_ATTACK, WHIRLWIND, FLY
	db 38
	dw PIDGEOT
	dw SWIFT, DETECT, STEEL_WING, FLY
	db -1 ; end

	end_list_items

LassGroup:
	next_list_item ; LASS (1)
	db "JENNIFER@", TRAINERTYPE_MOVES
	db 18
	dw SNUBBULL
	dw SCARY_FACE, CHARM, BITE, LICK
	db -1 ; end

	next_list_item ; LASS (2)
	db "BETTINA@", TRAINERTYPE_NORMAL
	db 15
	dw JIGGLYPUFF
	db 15
	dw JIGGLYPUFF
	db 15
	dw JIGGLYPUFF
	db -1 ; end

	next_list_item ; LASS (3)
	db "GABRIELE@", TRAINERTYPE_NORMAL
	db 30
	dw GLOOM
	db 34
	dw ARBOK
	db 30
	dw GLOOM
	db -1 ; end

	next_list_item ; LASS (4)
	db "MONIKA@", TRAINERTYPE_NORMAL
	db 12
	dw ODDISH
	db 15
	dw CUBONE
	db -1 ; end

	next_list_item ; LASS (5)
	db "RAMONA@", TRAINERTYPE_NORMAL
	db 21
	dw MARILL
	db -1 ; end

	next_list_item ; LASS (6)
	db "MECHTHILD@", TRAINERTYPE_NORMAL
	db 30
	dw BULBASAUR
	db 32
	dw IVYSAUR
	db 34
	dw VENUSAUR
	db -1 ; end

	next_list_item ; LASS (7)
	db "ADRIANE@", TRAINERTYPE_NORMAL
	db 28
	dw GLOOM
	db 31
	dw PIDGEOTTO
	db 31
	dw BELLOSSOM
	db -1 ; end

	next_list_item ; LASS (8)
	db "FRANZISKA@", TRAINERTYPE_NORMAL
	db 29
	dw PARAS
	db 29
	dw PARAS
	db 32
	dw PARASECT
	db -1 ; end

	next_list_item ; LASS (9)
	db "STEFANIE@", TRAINERTYPE_NORMAL
	db 32
	dw SKIPLOOM
	db 33
	dw HOPPIP
	db 34
	dw JUMPLUFF
	db -1 ; end

	next_list_item ; LASS (10)
	db "ROSEMARIE@", TRAINERTYPE_MOVES
	db 18
	dw FLAAFFY
	dw TACKLE, GROWL, THUNDERSHOCK, THUNDER_WAVE
	db 18
	dw PSYDUCK
	dw SCRATCH, TAIL_WHIP, DISABLE, CONFUSION
	db -1 ; end

	next_list_item ; LASS (11)
	db "VERENA@", TRAINERTYPE_NORMAL
	db 30
	dw WIGGLYTUFF
	db 34
	dw GRANBULL
	db -1 ; end

	next_list_item ; LASS (12)
	db "RAMONA@", TRAINERTYPE_NORMAL
	db 21
	dw MARILL
	db -1 ; end

	next_list_item ; LASS (13)
	db "RAMONA@", TRAINERTYPE_NORMAL
	db 21
	dw MARILL
	db -1 ; end

	next_list_item ; LASS (14)
	db "ROSEMARIE@", TRAINERTYPE_MOVES
	db 21
	dw FLAAFFY
	dw TACKLE, GROWL, THUNDERSHOCK, THUNDER_WAVE
	db 21
	dw PSYDUCK
	dw SCRATCH, TAIL_WHIP, DISABLE, CONFUSION
	db -1 ; end

	next_list_item ; LASS (15)
	db "ROSEMARIE@", TRAINERTYPE_MOVES
	db 29
	dw PSYDUCK
	dw SCRATCH, DISABLE, CONFUSION, SCREECH
	db 29
	dw AMPHAROS
	dw TACKLE, THUNDERSHOCK, THUNDER_WAVE, COTTON_SPORE
	db -1 ; end

	next_list_item ; LASS (16)
	db "ROSEMARIE@", TRAINERTYPE_MOVES
	db 32
	dw PSYDUCK
	dw SCRATCH, DISABLE, CONFUSION, SCREECH
	db 32
	dw AMPHAROS
	dw TACKLE, THUNDERPUNCH, THUNDER_WAVE, COTTON_SPORE
	db -1 ; end

	next_list_item ; LASS (17)
	db "ROSEMARIE@", TRAINERTYPE_MOVES
	db 36
	dw AMPHAROS
	dw SWIFT, THUNDERPUNCH, THUNDER_WAVE, COTTON_SPORE
	db 36
	dw GOLDUCK
	dw DISABLE, SURF, PSYCHIC_M, SCREECH
	db -1 ; end

	end_list_items

JanineGroup:
	next_list_item ; JANINE (1)
	db "JANINA@", TRAINERTYPE_MOVES
	db 36
	dw CROBAT
	dw SCREECH, SUPERSONIC, CONFUSE_RAY, WING_ATTACK
	db 36
	dw WEEZING
	dw SMOG, SLUDGE_BOMB, TOXIC, EXPLOSION
	db 36
	dw WEEZING
	dw SMOG, SLUDGE_BOMB, TOXIC, EXPLOSION
	db 33
	dw ARIADOS
	dw SCARY_FACE, GIGA_DRAIN, STRING_SHOT, NIGHT_SHADE
	db 39
	dw VENOMOTH
	dw FORESIGHT, DOUBLE_TEAM, GUST, PSYCHIC_M
	db -1 ; end

	end_list_items

CooltrainerMGroup:
	next_list_item ; COOLTRAINERM (1)
	db "LARS@", TRAINERTYPE_MOVES
	db 26
	dw CHARMANDER
	dw EMBER, SMOKESCREEN, RAGE, SCARY_FACE
	db 26
	dw SQUIRTLE
	dw WITHDRAW, WATER_GUN, BITE, CURSE
	db 26
	dw BULBASAUR
	dw LEECH_SEED, POISONPOWDER, SLEEP_POWDER, RAZOR_LEAF
	db -1 ; end

	next_list_item ; COOLTRAINERM (2)
	db "ERNO@", TRAINERTYPE_NORMAL
	db 24
	dw IVYSAUR
	db 24
	dw CHARMELEON
	db 24
	dw WARTORTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (3)
	db "PAUL@", TRAINERTYPE_NORMAL
	db 34
	dw DRATINI
	db 34
	dw DRATINI
	db 34
	dw DRATINI
	db -1 ; end

	next_list_item ; COOLTRAINERM (4)
	db "ARND@", TRAINERTYPE_NORMAL
	db 34
	dw HORSEA
	db 36
	dw SEADRA
	db -1 ; end

	next_list_item ; COOLTRAINERM (5)
	db "RALF@", TRAINERTYPE_NORMAL
	db 37
	dw DRAGONAIR
	db -1 ; end

	next_list_item ; COOLTRAINERM (6)
	db "MAIK@", TRAINERTYPE_MOVES
	db 35
	dw VICTREEBEL
	dw WRAP, TOXIC, ACID, RAZOR_LEAF
	db 35
	dw KINGLER
	dw BUBBLEBEAM, STOMP, GUILLOTINE, PROTECT
	db 35
	dw FLAREON
	dw SAND_ATTACK, QUICK_ATTACK, BITE, FIRE_SPIN
	db -1 ; end

	next_list_item ; COOLTRAINERM (7)
	db "MAIK@", TRAINERTYPE_ITEM_MOVES
	db 39
	dw VICTREEBEL
	db NO_ITEM
	dw GIGA_DRAIN, TOXIC, SLUDGE_BOMB, RAZOR_LEAF
	db 39
	dw KINGLER
	db KINGS_ROCK
	dw SURF, STOMP, GUILLOTINE, BLIZZARD
	db 39
	dw FLAREON
	db NO_ITEM
	dw FLAMETHROWER, QUICK_ATTACK, BITE, FIRE_SPIN
	db -1 ; end

	next_list_item ; COOLTRAINERM (8)
	db "ARNE@", TRAINERTYPE_MOVES
	db 25
	dw PIDGEOT
	dw SAND_ATTACK, QUICK_ATTACK, WHIRLWIND, WING_ATTACK
	db 27
	dw ELECTABUZZ
	dw THUNDERPUNCH, LIGHT_SCREEN, SWIFT, SCREECH
	db -1 ; end

	next_list_item ; COOLTRAINERM (9)
	db "FRED@", TRAINERTYPE_MOVES
	db 33
	dw PARASECT
	dw LEECH_LIFE, SPORE, SLASH, SWORDS_DANCE
	db 35
	dw GOLDUCK
	dw CONFUSION, SCREECH, PSYCH_UP, FURY_SWIPES
	db -1 ; end

	next_list_item ; COOLTRAINERM (10)
	db "MAIK@", TRAINERTYPE_MOVES
	db 32
	dw VICTREEBEL
	dw WRAP, TOXIC, ACID, RAZOR_LEAF
	db 32
	dw KINGLER
	dw BUBBLEBEAM, STOMP, GUILLOTINE, PROTECT
	db 32
	dw FLAREON
	dw SAND_ATTACK, QUICK_ATTACK, BITE, FIRE_SPIN
	db -1 ; end

	next_list_item ; COOLTRAINERM (11)
	db "ED@", TRAINERTYPE_MOVES
	db 33
	dw MAGNETON
	dw THUNDERBOLT, SUPERSONIC, SWIFT, SCREECH
	db 31
	dw QUAGSIRE
	dw WATER_GUN, SLAM, AMNESIA, EARTHQUAKE
	db 31
	dw EXEGGCUTE
	dw LEECH_SEED, CONFUSION, SLEEP_POWDER, SOLARBEAM
	db -1 ; end

	next_list_item ; COOLTRAINERM (12)
	db "ANDRO@", TRAINERTYPE_MOVES
	db 35
	dw SANDSLASH
	dw SAND_ATTACK, POISON_STING, SLASH, SWIFT
	db -1 ; end

	next_list_item ; COOLTRAINERM (13)
	db "ALF@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 10
	dw CHARMANDER
	db 10
	dw SQUIRTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (14)
	db "HIOB@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 10
	dw CHARMANDER
	db 10
	dw SQUIRTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (15)
	db "KNUT@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 10
	dw CHARMANDER
	db 10
	dw SQUIRTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (16)
	db "AMON@", TRAINERTYPE_NORMAL
	db 35
	dw FLAREON
	db 35
	dw TANGELA
	db 35
	dw TAUROS
	db -1 ; end

	next_list_item ; COOLTRAINERM (17)
	db "NICO@", TRAINERTYPE_NORMAL
	db 38
	dw RHYHORN
	db 35
	dw CHARMELEON
	db 35
	dw WARTORTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (18)
	db "ANNO@", TRAINERTYPE_NORMAL
	db 14
	dw BULBASAUR
	db 14
	dw CHARMANDER
	db 14
	dw SQUIRTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (19)
	db "STAN@", TRAINERTYPE_MOVES
	db 27
	dw CHARMELEON
	dw EMBER, SMOKESCREEN, RAGE, SCARY_FACE
	db -1 ; end

	next_list_item ; COOLTRAINERM (20)
	db "REMUS@", TRAINERTYPE_MOVES
	db 37
	dw DRAGONAIR
	dw WRAP, SURF, DRAGON_RAGE, SLAM
	db -1 ; end

	end_list_items

CooltrainerFGroup:
	next_list_item ; COOLTRAINERF (1)
	db "ANGI@", TRAINERTYPE_NORMAL
	db 26
	dw EEVEE
	db 22
	dw FLAREON
	db 22
	dw VAPOREON
	db 22
	dw JOLTEON
	db -1 ; end

	next_list_item ; COOLTRAINERF (2)
	db "KARO@", TRAINERTYPE_MOVES
	db 25
	dw SKIPLOOM
	dw SYNTHESIS, POISONPOWDER, MEGA_DRAIN, LEECH_SEED
	db 25
	dw NINETALES
	dw EMBER, QUICK_ATTACK, CONFUSE_RAY, SAFEGUARD
	db -1 ; end

	next_list_item ; COOLTRAINERF (3)
	db "ALMA@", TRAINERTYPE_NORMAL
	db 37
	dw SEADRA
	db -1 ; end

	next_list_item ; COOLTRAINERF (4)
	db "ROSI@", TRAINERTYPE_NORMAL
	db 34
	dw DRATINI
	db 36
	dw DRAGONAIR
	db -1 ; end

	next_list_item ; COOLTRAINERF (5)
	db "EDNA @", TRAINERTYPE_NORMAL
	db 26
	dw SHELLDER
	db 28
	dw CLOYSTER
	db -1 ; end

	next_list_item ; COOLTRAINERF (6)
	db "LOLA@", TRAINERTYPE_NORMAL
	db 22
	dw GOLDEEN
	db 24
	dw SEAKING
	db -1 ; end

	next_list_item ; COOLTRAINERF (7)
	db "MIRA@", TRAINERTYPE_NORMAL
	db 27
	dw MARILL
	db 24
	dw WARTORTLE
	db 24
	dw WARTORTLE
	db -1 ; end

	next_list_item ; COOLTRAINERF (8)
	db "SUSI@", TRAINERTYPE_MOVES
	db 36
	dw PIKACHU
	dw QUICK_ATTACK, DOUBLE_TEAM, THUNDERBOLT, THUNDER
	db 32
	dw BLASTOISE
	dw BITE, CURSE, SURF, RAIN_DANCE
	db -1 ; end

	next_list_item ; COOLTRAINERF (9)
	db "DEA@", TRAINERTYPE_MOVES
	db 36
	dw RAPIDASH
	dw STOMP, FIRE_SPIN, FURY_ATTACK, AGILITY
	db -1 ; end

	next_list_item ; COOLTRAINERF (10)
	db "BEA@", TRAINERTYPE_NORMAL
	db 31
	dw STARMIE
	db 33
	dw NIDOQUEEN
	db 31
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (11)
	db "MAJA@", TRAINERTYPE_MOVES
	db 32
	dw BULBASAUR
	dw GROWL, LEECH_SEED, POISONPOWDER, RAZOR_LEAF
	db 32
	dw IVYSAUR
	dw GROWL, LEECH_SEED, POISONPOWDER, RAZOR_LEAF
	db 32
	dw VENUSAUR
	dw BODY_SLAM, SLEEP_POWDER, RAZOR_LEAF, SWEET_SCENT
	db -1 ; end

	next_list_item ; COOLTRAINERF (12)
	db "DEA@", TRAINERTYPE_MOVES
	db 39
	dw RAPIDASH
	dw STOMP, FIRE_SPIN, FURY_ATTACK, AGILITY
	db -1 ; end

	next_list_item ; COOLTRAINERF (13)
	db "BINE@", TRAINERTYPE_NORMAL
	db 35
	dw ELECTRODE
	db 35
	dw STARMIE
	db 35
	dw NINETALES
	db -1 ; end

	next_list_item ; COOLTRAINERF (14)
	db "ILKA@", TRAINERTYPE_NORMAL
	db 38
	dw IVYSAUR
	db 38
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (15)
	db "ULLA@", TRAINERTYPE_NORMAL
	db 28
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; COOLTRAINERF (16)
	db "KORA@", TRAINERTYPE_MOVES
	db 25
	dw BUTTERFREE
	dw CONFUSION, SLEEP_POWDER, WHIRLWIND, GUST
	db 25
	dw BELLOSSOM
	dw ABSORB, STUN_SPORE, ACID, SOLARBEAM
	db -1 ; end

	next_list_item ; COOLTRAINERF (17)
	db "ELSE@", TRAINERTYPE_NORMAL
	db 24
	dw STARYU
	db 26
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (18)
	db "DEA@", TRAINERTYPE_ITEM_MOVES
	db 43
	dw RAPIDASH
	db FOCUS_BAND
	dw STOMP, FIRE_SPIN, FURY_ATTACK, FIRE_BLAST
	db -1 ; end

	next_list_item ; COOLTRAINERF (19)
	db "BEA@", TRAINERTYPE_NORMAL
	db 34
	dw STARMIE
	db 36
	dw NIDOQUEEN
	db 34
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (20)
	db "BEA@", TRAINERTYPE_ITEM_MOVES
	db 38
	dw STARMIE
	db NO_ITEM
	dw DOUBLE_TEAM, PSYCHIC_M, WATERFALL, CONFUSE_RAY
	db 40
	dw NIDOQUEEN
	db PINK_BOW
	dw EARTHQUAKE, DOUBLE_KICK, TOXIC, BODY_SLAM
	db 38
	dw STARMIE
	db NO_ITEM
	dw BLIZZARD, PSYCHIC_M, WATERFALL, RECOVER
	db -1 ; end

	next_list_item ; COOLTRAINERF (21)
	db "CARA@", TRAINERTYPE_MOVES
	db 33
	dw HORSEA
	dw SMOKESCREEN, LEER, WHIRLPOOL, TWISTER
	db 33
	dw HORSEA
	dw SMOKESCREEN, LEER, WHIRLPOOL, TWISTER
	db 35
	dw SEADRA
	dw SWIFT, LEER, WATERFALL, TWISTER
	db -1 ; end

	end_list_items

BeautyGroup:
	next_list_item ; BEAUTY (1)
	db "MARTHA@", TRAINERTYPE_NORMAL
	db 9
	dw SENTRET
	db 13
	dw SENTRET
	db 17
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (2)
	db "TINA@", TRAINERTYPE_MOVES
	db 16
	dw MEOWTH
	dw SCRATCH, GROWL, BITE, PAY_DAY
	db 16
	dw MEOWTH
	dw SCRATCH, GROWL, BITE, SLASH
	db -1 ; end

	next_list_item ; BEAUTY (3)
	db "HEIKE@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (4)
	db "KAROLA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (5)
	db "ULRIKE@", TRAINERTYPE_NORMAL
	db 16
	dw FURRET
	db -1 ; end

	next_list_item ; BEAUTY (6)
	db "MIRJAM@", TRAINERTYPE_NORMAL
	db 28
	dw VILEPLUME
	db 34
	dw BUTTERFREE
	db -1 ; end

	next_list_item ; BEAUTY (7)
	db "ANNE@", TRAINERTYPE_NORMAL
	db 30
	dw MARILL
	db 32
	dw SEEL
	db 30
	dw MARILL
	db -1 ; end

	next_list_item ; BEAUTY (8)
	db "GERDA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (9)
	db "BETTINA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (10)
	db "ANJA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (11)
	db "DENISE@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (12)
	db "SIMONE@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (13)
	db "MARION@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (14)
	db "CORINNA@", TRAINERTYPE_NORMAL
	db 32
	dw PARAS
	db 32
	dw EXEGGCUTE
	db 35
	dw PARASECT
	db -1 ; end

	next_list_item ; BEAUTY (15)
	db "THERESA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (16)
	db "JUTTA@", TRAINERTYPE_MOVES
	db 17
	dw HOPPIP
	dw SYNTHESIS, TAIL_WHIP, TACKLE, POISONPOWDER
	db 17
	dw SKIPLOOM
	dw SYNTHESIS, TAIL_WHIP, TACKLE, STUN_SPORE
	db -1 ; end

	next_list_item ; BEAUTY (17)
	db "TIFFY@", TRAINERTYPE_NORMAL
	db 19
	dw CORSOLA
	db -1 ; end

	end_list_items

PokemaniacGroup:
	next_list_item ; POKEMANIAC (1)
	db "SATORU@", TRAINERTYPE_NORMAL
	db 10
	dw SLOWPOKE
	db -1 ; end

	next_list_item ; POKEMANIAC (2)
	db "KENJI@", TRAINERTYPE_NORMAL
	db 24
	dw MAROWAK
	db 24
	dw MAROWAK
	db -1 ; end

	next_list_item ; POKEMANIAC (3)
	db "KENGO@", TRAINERTYPE_NORMAL
	db 26
	dw KANGASKHAN
	db -1 ; end

	next_list_item ; POKEMANIAC (4)
	db "GORO@", TRAINERTYPE_NORMAL
	db 16
	dw NIDORINA
	db 16
	dw NIDORINO
	db -1 ; end

	next_list_item ; POKEMANIAC (5)
	db "KOUJI@", TRAINERTYPE_NORMAL
	db 19
	dw SLOWBRO
	db -1 ; end

	next_list_item ; POKEMANIAC (6)
	db "TARO@", TRAINERTYPE_NORMAL
	db 19
	dw LICKITUNG
	db -1 ; end

	next_list_item ; POKEMANIAC (7)
	db "HIRO@", TRAINERTYPE_NORMAL
	db 19
	dw NIDOKING
	db -1 ; end

	next_list_item ; POKEMANIAC (8)
	db "HIDE@", TRAINERTYPE_NORMAL
	db 31
	dw RHYHORN
	db 31
	dw RHYDON
	db -1 ; end

	next_list_item ; POKEMANIAC (9)
	db "TARO@", TRAINERTYPE_NORMAL
	db 25
	dw KANGASKHAN
	db -1 ; end

	next_list_item ; POKEMANIAC (10)
	db "TARO@", TRAINERTYPE_MOVES
	db 36
	dw PORYGON
	dw RECOVER, PSYCHIC_M, CONVERSION2, TRI_ATTACK
	db -1 ; end

	next_list_item ; POKEMANIAC (11)
	db "TAKAO@", TRAINERTYPE_MOVES
	db 12
	dw LICKITUNG
	dw LICK, SUPERSONIC, CUT, NO_MOVE
	db -1 ; end

	next_list_item ; POKEMANIAC (12)
	db "SHOYA@", TRAINERTYPE_NORMAL
	db 10
	dw SLOWPOKE
	db 10
	dw SLOWPOKE
	db -1 ; end

	next_list_item ; POKEMANIAC (13)
	db "AKIRA@", TRAINERTYPE_NORMAL
	db 27
	dw RHYHORN
	db -1 ; end

	next_list_item ; POKEMANIAC (14)
	db "TARO@", TRAINERTYPE_MOVES
	db 41
	dw CHANSEY
	dw ROLLOUT, ATTRACT, EGG_BOMB, SOFTBOILED
	db -1 ; end

	next_list_item ; POKEMANIAC (15)
	db "PELLE@", TRAINERTYPE_NORMAL
	db 17
	dw NIDOKING
	db 17
	dw NIDOQUEEN
	db -1 ; end

	end_list_items

GruntMGroup:
	next_list_item ; GRUNTM (1)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 14
	dw KOFFING
	db -1 ; end

	next_list_item ; GRUNTM (2)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 7
	dw RATTATA
	db 9
	dw ZUBAT
	db 9
	dw ZUBAT
	db -1 ; end

	next_list_item ; GRUNTM (3)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 24
	dw RATICATE
	db 24
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (4)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 23
	dw GRIMER
	db 23
	dw GRIMER
	db 25
	dw MUK
	db -1 ; end

	next_list_item ; GRUNTM (5)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 21
	dw RATTATA
	db 21
	dw RATTATA
	db 23
	dw RATTATA
	db 23
	dw RATTATA
	db 23
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (6)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 26
	dw ZUBAT
	db 26
	dw ZUBAT
	db -1 ; end

	next_list_item ; GRUNTM (7)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 23
	dw KOFFING
	db 23
	dw GRIMER
	db 23
	dw ZUBAT
	db 23
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (8)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 26
	dw WEEZING
	db -1 ; end

	next_list_item ; GRUNTM (9)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 24
	dw RATICATE
	db 26
	dw KOFFING
	db -1 ; end

	next_list_item ; GRUNTM (10)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 22
	dw ZUBAT
	db 24
	dw GOLBAT
	db 22
	dw GRIMER
	db -1 ; end

	next_list_item ; GRUNTM (11)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 23
	dw MUK
	db 23
	dw KOFFING
	db 25
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (12)
	db "VORSTAND@", TRAINERTYPE_NORMAL
	db 33
	dw HOUNDOUR
	db -1 ; end

	next_list_item ; GRUNTM (13)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 27
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (14)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 24
	dw RATICATE
	db 24
	dw GOLBAT
	db -1 ; end

	next_list_item ; GRUNTM (15)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 26
	dw GRIMER
	db 23
	dw WEEZING
	db -1 ; end

	next_list_item ; GRUNTM (16)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 16
	dw RATTATA
	db 16
	dw RATTATA
	db 16
	dw RATTATA
	db 16
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (17)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 18
	dw GOLBAT
	db -1 ; end

	next_list_item ; GRUNTM (18)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 17
	dw RATTATA
	db 17
	dw ZUBAT
	db 17
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (19)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 18
	dw VENONAT
	db 18
	dw VENONAT
	db -1 ; end

	next_list_item ; GRUNTM (20)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 17
	dw DROWZEE
	db 19
	dw ZUBAT
	db -1 ; end

	next_list_item ; GRUNTM (21)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 16
	dw ZUBAT
	db 17
	dw GRIMER
	db 18
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (22)
	db "VORSTAND@", TRAINERTYPE_NORMAL
	db 36
	dw GOLBAT
	db -1 ; end

	next_list_item ; GRUNTM (23)
	db "VORSTAND@", TRAINERTYPE_NORMAL
	db 30
	dw KOFFING
	db -1 ; end

	next_list_item ; GRUNTM (24)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 25
	dw KOFFING
	db 25
	dw KOFFING
	db -1 ; end

	next_list_item ; GRUNTM (25)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 24
	dw KOFFING
	db 24
	dw MUK
	db -1 ; end

	next_list_item ; GRUNTM (26)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 15
	dw RATTATA
	db 15
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (27)
	db "VORSTAND@", TRAINERTYPE_NORMAL
	db 22
	dw ZUBAT
	db -1 ; end

	next_list_item ; GRUNTM (28)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 19
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (29)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 9
	dw RATTATA
	db 9
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (30)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 25
	dw GOLBAT
	db 25
	dw GOLBAT
	db 30
	dw ARBOK
	db -1 ; end

	next_list_item ; GRUNTM (31)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 30
	dw GOLBAT
	db -1 ; end

	end_list_items

GentlemanGroup:
	next_list_item ; GENTLEMAN (1)
	db "FELIX@", TRAINERTYPE_NORMAL
	db 18
	dw GROWLITHE
	db 18
	dw GROWLITHE
	db -1 ; end

	next_list_item ; GENTLEMAN (2)
	db "CHARLES@", TRAINERTYPE_NORMAL
	db 33
	dw PERSIAN
	db -1 ; end

	next_list_item ; GENTLEMAN (3)
	db "ALFRED@", TRAINERTYPE_NORMAL
	db 37
	dw PIKACHU
	db 33
	dw FLAAFFY
	db -1 ; end

	next_list_item ; GENTLEMAN (4)
	db "KASPAR@", TRAINERTYPE_NORMAL
	db 20
	dw PONYTA
	db -1 ; end

	next_list_item ; GENTLEMAN (5)
	db "HUBERT@", TRAINERTYPE_NORMAL
	db 20
	dw NOCTOWL
	db -1 ; end

	end_list_items

SkierGroup:
	next_list_item ; SKIER (1)
	db "HELGA@", TRAINERTYPE_NORMAL
	db 28
	dw JYNX
	db -1 ; end

	next_list_item ; SKIER (2)
	db "SVENJA@", TRAINERTYPE_NORMAL
	db 28
	dw DEWGONG
	db -1 ; end

	end_list_items

TeacherGroup:
	next_list_item ; TEACHER (1)
	db "INCA@", TRAINERTYPE_NORMAL
	db 36
	dw CLEFAIRY
	db -1 ; end

	next_list_item ; TEACHER (2)
	db "SYLVIA@", TRAINERTYPE_NORMAL
	db 32
	dw AIPOM
	db 36
	dw CUBONE
	db -1 ; end

	next_list_item ; TEACHER (3)
	db "HILTRUD@", TRAINERTYPE_NORMAL
	db 35
	dw JIGGLYPUFF
	db -1 ; end

	end_list_items

SabrinaGroup:
	next_list_item ; SABRINA (1)
	db "SABRINA@", TRAINERTYPE_MOVES
	db 46
	dw ESPEON
	dw SAND_ATTACK, QUICK_ATTACK, SWIFT, PSYCHIC_M
	db 46
	dw MR__MIME
	dw BARRIER, REFLECT, BATON_PASS, PSYCHIC_M
	db 48
	dw ALAKAZAM
	dw RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db -1 ; end

	end_list_items

BugCatcherGroup:
	next_list_item ; BUG_CATCHER (1)
	db "ULI@", TRAINERTYPE_NORMAL
	db 3
	dw CATERPIE
	db 3
	dw CATERPIE
	db -1 ; end

	next_list_item ; BUG_CATCHER (2)
	db "GÖTZ@", TRAINERTYPE_NORMAL
	db 32
	dw BEEDRILL
	db 32
	dw BUTTERFREE
	db -1 ; end

	next_list_item ; BUG_CATCHER (3)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 30
	dw BEEDRILL
	db 30
	dw BEEDRILL
	db 30
	dw BEEDRILL
	db -1 ; end

	next_list_item ; BUG_CATCHER (4)
	db "GREG@", TRAINERTYPE_NORMAL
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
	db "AXEL@", TRAINERTYPE_NORMAL
	db 7
	dw WEEDLE
	db 9
	dw KAKUNA
	db 12
	dw BEEDRILL
	db -1 ; end

	next_list_item ; BUG_CATCHER (6)
	db "JÖRG@", TRAINERTYPE_NORMAL
	db 12
	dw CATERPIE
	db 12
	dw WEEDLE
	db -1 ; end

	next_list_item ; BUG_CATCHER (7)
	db "ENNO@", TRAINERTYPE_NORMAL
	db 13
	dw PARAS
	db -1 ; end

	next_list_item ; BUG_CATCHER (8)
	db "UDO@", TRAINERTYPE_NORMAL
	db 15
	dw VENONAT
	db -1 ; end

	next_list_item ; BUG_CATCHER (9)
	db "RUDI@", TRAINERTYPE_NORMAL
	db 30
	dw ARIADOS
	db 32
	dw PINSIR
	db -1 ; end

	next_list_item ; BUG_CATCHER (10)
	db "GREG@", TRAINERTYPE_NORMAL
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
	db "GREG@", TRAINERTYPE_NORMAL
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
	db "BERT@", TRAINERTYPE_NORMAL
	db 34
	dw ARIADOS
	db -1 ; end

	next_list_item ; BUG_CATCHER (13)
	db "UDO@", TRAINERTYPE_NORMAL
	db 19
	dw VENONAT
	db -1 ; end

	next_list_item ; BUG_CATCHER (14)
	db "UDO@", TRAINERTYPE_MOVES
	db 28
	dw VENOMOTH
	dw DISABLE, SUPERSONIC, CONFUSION, LEECH_LIFE
	db -1 ; end

	next_list_item ; BUG_CATCHER (15)
	db "GREG@", TRAINERTYPE_MOVES
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
	db "GREG@", TRAINERTYPE_MOVES
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
	db "UDO@", TRAINERTYPE_MOVES
	db 36
	dw VENOMOTH
	dw GUST, SUPERSONIC, PSYBEAM, LEECH_LIFE
	db -1 ; end

	next_list_item ; BUG_CATCHER (18)
	db "UDO@", TRAINERTYPE_MOVES
	db 40
	dw VENOMOTH
	dw GUST, SUPERSONIC, PSYCHIC_M, TOXIC
	db -1 ; end

	next_list_item ; BUG_CATCHER (19)
	db "THIS@", TRAINERTYPE_NORMAL
	db 8
	dw LEDYBA
	db 10
	dw PARAS
	db -1 ; end

	end_list_items

FisherGroup:
	next_list_item ; FISHER (1)
	db "ALBRECHT@", TRAINERTYPE_NORMAL
	db 5
	dw MAGIKARP
	db 5
	dw MAGIKARP
	db 15
	dw MAGIKARP
	db 5
	dw MAGIKARP
	db -1 ; end

	next_list_item ; FISHER (2)
	db "ANGELO@", TRAINERTYPE_NORMAL
	db 10
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (3)
	db "ADAM@", TRAINERTYPE_NORMAL
	db 34
	dw TENTACRUEL
	db -1 ; end

	next_list_item ; FISHER (4)
	db "ALAIN@", TRAINERTYPE_NORMAL
	db 28
	dw SEAKING
	db 31
	dw POLIWHIRL
	db 31
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (5)
	db "ACHMED@", TRAINERTYPE_NORMAL
	db 8
	dw POLIWAG
	db 8
	dw POLIWAG
	db -1 ; end

	next_list_item ; FISHER (6)
	db "ANSELM@", TRAINERTYPE_NORMAL
	db 10
	dw MAGIKARP
	db 10
	dw GYARADOS
	db 15
	dw MAGIKARP
	db 15
	dw GYARADOS
	db -1 ; end

	next_list_item ; FISHER (7)
	db "AMADEUS@", TRAINERTYPE_NORMAL
	db 18
	dw QWILFISH
	db -1 ; end

	next_list_item ; FISHER (8)
	db "ALOIS@", TRAINERTYPE_NORMAL
	db 27
	dw GYARADOS
	db -1 ; end

	next_list_item ; FISHER (9)
	db "ALBERT@", TRAINERTYPE_NORMAL
	db 22
	dw MAGIKARP
	db 22
	dw MAGIKARP
	db 22
	dw MAGIKARP
	db 22
	dw MAGIKARP
	db -1 ; end

	next_list_item ; FISHER (10)
	db "ALFRIED@", TRAINERTYPE_NORMAL
	db 23
	dw GOLDEEN
	db 23
	dw GOLDEEN
	db 25
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (11)
	db "ALBIN@", TRAINERTYPE_MOVES
	db 25
	dw REMORAID
	dw LOCK_ON, PSYBEAM, AURORA_BEAM, BUBBLEBEAM
	db 25
	dw REMORAID
	dw LOCK_ON, PSYBEAM, AURORA_BEAM, BUBBLEBEAM
	db -1 ; end

	next_list_item ; FISHER (12)
	db "ANSGAR@", TRAINERTYPE_NORMAL
	db 25
	dw SHELLDER
	db 29
	dw OCTILLERY
	db 25
	dw REMORAID
	db 29
	dw CLOYSTER
	db -1 ; end

	next_list_item ; FISHER (13)
	db "ANTON@", TRAINERTYPE_NORMAL
	db 32
	dw REMORAID
	db 32
	dw REMORAID
	db -1 ; end

	next_list_item ; FISHER (14)
	db "ADRIAN@", TRAINERTYPE_NORMAL
	db 25
	dw MAGIKARP
	db 25
	dw MAGIKARP
	db 31
	dw QWILFISH
	db 31
	dw TENTACRUEL
	db -1 ; end

	next_list_item ; FISHER (15)
	db "ARMIN@", TRAINERTYPE_NORMAL
	db 30
	dw GYARADOS
	db 30
	dw GYARADOS
	db 30
	dw GYARADOS
	db -1 ; end

	next_list_item ; FISHER (16)
	db "ANGELO@", TRAINERTYPE_NORMAL
	db 17
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (17)
	db "ANGELO@", TRAINERTYPE_NORMAL
	db 17
	dw QWILFISH
	db 19
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (18)
	db "AMADEUS@", TRAINERTYPE_NORMAL
	db 23
	dw QWILFISH
	db -1 ; end

	next_list_item ; FISHER (19)
	db "AMADEUS@", TRAINERTYPE_NORMAL
	db 32
	dw GOLDEEN
	db 32
	dw GOLDEEN
	db 32
	dw QWILFISH
	db -1 ; end

	next_list_item ; FISHER (20)
	db "ALFRIED@", TRAINERTYPE_NORMAL
	db 29
	dw GOLDEEN
	db 29
	dw GOLDEEN
	db 32
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (21)
	db "ARTHUR@", TRAINERTYPE_NORMAL
	db 30
	dw QWILFISH
	db 30
	dw QWILFISH
	db 34
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (22)
	db "ALFRIED@", TRAINERTYPE_MOVES
	db 34
	dw SEAKING
	dw SUPERSONIC, WATERFALL, FLAIL, FURY_ATTACK
	db 34
	dw SEAKING
	dw SUPERSONIC, WATERFALL, FLAIL, FURY_ATTACK
	db 38
	dw REMORAID
	dw PSYBEAM, AURORA_BEAM, BUBBLEBEAM, HYPER_BEAM
	db -1 ; end

	next_list_item ; FISHER (23)
	db "ANGELO@", TRAINERTYPE_NORMAL
	db 30
	dw QWILFISH
	db 32
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (24)
	db "ANGELO@", TRAINERTYPE_MOVES
	db 35
	dw QWILFISH
	dw TOXIC, MINIMIZE, SURF, PIN_MISSILE
	db 39
	dw SEAKING
	dw ENDURE, FLAIL, FURY_ATTACK, WATERFALL
	db -1 ; end

	next_list_item ; FISHER (25)
	db "AMADEUS@", TRAINERTYPE_MOVES
	db 34
	dw SEAKING
	dw SUPERSONIC, RAIN_DANCE, WATERFALL, FURY_ATTACK
	db 34
	dw SEAKING
	dw SUPERSONIC, RAIN_DANCE, WATERFALL, FURY_ATTACK
	db 37
	dw QWILFISH
	dw ROLLOUT, SURF, PIN_MISSILE, TAKE_DOWN
	db -1 ; end

	end_list_items

SwimmerMGroup:
	next_list_item ; SWIMMERM (1)
	db "ANATOL@", TRAINERTYPE_NORMAL
	db 32
	dw REMORAID
	db 30
	dw SEADRA
	db -1 ; end

	next_list_item ; SWIMMERM (2)
	db "GRIGORY@", TRAINERTYPE_NORMAL
	db 20
	dw TENTACOOL
	db 20
	dw TENTACOOL
	db -1 ; end

	next_list_item ; SWIMMERM (3)
	db "MILOS@", TRAINERTYPE_NORMAL
	db 18
	dw SHELLDER
	db 20
	dw WARTORTLE
	db 18
	dw SHELLDER
	db -1 ; end

	next_list_item ; SWIMMERM (4)
	db "PAVEL@", TRAINERTYPE_NORMAL
	db 21
	dw SHELLDER
	db 19
	dw TENTACOOL
	db 19
	dw TENTACRUEL
	db -1 ; end

	next_list_item ; SWIMMERM (5)
	db "PETRU@", TRAINERTYPE_NORMAL
	db 16
	dw TENTACOOL
	db 17
	dw TENTACOOL
	db 16
	dw TENTACOOL
	db 19
	dw STARYU
	db 17
	dw TENTACOOL
	db 19
	dw REMORAID
	db -1 ; end

	next_list_item ; SWIMMERM (6)
	db "YEVGENY@", TRAINERTYPE_NORMAL
	db 23
	dw QWILFISH
	db -1 ; end

	next_list_item ; SWIMMERM (7)
	db "GENADI@", TRAINERTYPE_NORMAL
	db 20
	dw GYARADOS
	db 20
	dw GYARADOS
	db -1 ; end

	next_list_item ; SWIMMERM (8)
	db "ALEXEI@", TRAINERTYPE_NORMAL
	db 23
	dw KRABBY
	db -1 ; end

	next_list_item ; SWIMMERM (9)
	db "PIOTR@", TRAINERTYPE_NORMAL
	db 24
	dw SEEL
	db 25
	dw DEWGONG
	db 24
	dw SEEL
	db -1 ; end

	next_list_item ; SWIMMERM (10)
	db "IVAN@", TRAINERTYPE_NORMAL
	db 26
	dw PILOSWINE
	db 26
	dw PILOSWINE
	db -1 ; end

	next_list_item ; SWIMMERM (11)
	db "SERGEI@", TRAINERTYPE_NORMAL
	db 24
	dw SHELLDER
	db 25
	dw CLOYSTER
	db 24
	dw SHELLDER
	db -1 ; end

	next_list_item ; SWIMMERM (12)
	db "YURI@", TRAINERTYPE_NORMAL
	db 15
	dw HORSEA
	db 15
	dw HORSEA
	db 20
	dw SEADRA
	db -1 ; end

	next_list_item ; SWIMMERM (13)
	db "VITALI@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (14)
	db "IGOR@", TRAINERTYPE_NORMAL
	db 26
	dw SEADRA
	db 28
	dw TENTACOOL
	db 30
	dw TENTACRUEL
	db 28
	dw GOLDEEN
	db -1 ; end

	next_list_item ; SWIMMERM (15)
	db "VIKTOR@", TRAINERTYPE_NORMAL
	db 30
	dw SHELLDER
	db 34
	dw CLOYSTER
	db -1 ; end

	next_list_item ; SWIMMERM (16)
	db "BORIS@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (17)
	db "DIMITRI@", TRAINERTYPE_NORMAL
	db 34
	dw MARILL
	db -1 ; end

	next_list_item ; SWIMMERM (18)
	db "NICOLAI@", TRAINERTYPE_NORMAL
	db 29
	dw QUAGSIRE
	db 29
	dw OCTILLERY
	db 32
	dw QUAGSIRE
	db -1 ; end

	next_list_item ; SWIMMERM (19)
	db "OLEG@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (20)
	db "SPUTNIK@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (21)
	db "BOGDAN@", TRAINERTYPE_NORMAL
	db 32
	dw HORSEA
	db 32
	dw HORSEA
	db 35
	dw SEADRA
	db -1 ; end

	end_list_items

SwimmerFGroup:
	next_list_item ; SWIMMERF (1)
	db "KÄTE@", TRAINERTYPE_NORMAL
	db 21
	dw STARYU
	db -1 ; end

	next_list_item ; SWIMMERF (2)
	db "ELFI@", TRAINERTYPE_NORMAL
	db 19
	dw STARYU
	db 19
	dw SHELLDER
	db -1 ; end

	next_list_item ; SWIMMERF (3)
	db "KARIN@", TRAINERTYPE_NORMAL
	db 18
	dw GOLDEEN
	db 20
	dw GOLDEEN
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (4)
	db "THEKLA@", TRAINERTYPE_MOVES
	db 20
	dw PSYDUCK
	dw SCRATCH, TAIL_WHIP, DISABLE, CONFUSION
	db 22
	dw GOLDEEN
	dw PECK, TAIL_WHIP, SUPERSONIC, HORN_ATTACK
	db -1 ; end

	next_list_item ; SWIMMERF (5)
	db "MAGDA@", TRAINERTYPE_NORMAL
	db 22
	dw SEEL
	db -1 ; end

	next_list_item ; SWIMMERF (6)
	db "HEIKE@", TRAINERTYPE_NORMAL
	db 20
	dw STARYU
	db 20
	dw STARMIE
	db -1 ; end

	next_list_item ; SWIMMERF (7)
	db "GERDA@", TRAINERTYPE_MOVES
	db 21
	dw HORSEA
	dw BUBBLE, SMOKESCREEN, LEER, WATER_GUN
	db 21
	dw HORSEA
	dw DRAGON_RAGE, SMOKESCREEN, LEER, WATER_GUN
	db -1 ; end

	next_list_item ; SWIMMERF (8)
	db "ILSE@", TRAINERTYPE_NORMAL
	db 28
	dw JYNX
	db -1 ; end

	next_list_item ; SWIMMERF (9)
	db "AGNES@", TRAINERTYPE_NORMAL
	db 28
	dw DEWGONG
	db -1 ; end

	next_list_item ; SWIMMERF (10)
	db "ANITA@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (11)
	db "ANKE@", TRAINERTYPE_NORMAL
	db 33
	dw DEWGONG
	db -1 ; end

	next_list_item ; SWIMMERF (12)
	db "KLARA@", TRAINERTYPE_NORMAL
	db 34
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (13)
	db "RITA@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (14)
	db "ELKE@", TRAINERTYPE_NORMAL
	db 29
	dw MARILL
	db 29
	dw MARILL
	db 32
	dw LAPRAS
	db -1 ; end

	next_list_item ; SWIMMERF (15)
	db "DORIS@", TRAINERTYPE_NORMAL
	db 32
	dw STARMIE
	db 32
	dw STARMIE
	db -1 ; end

	next_list_item ; SWIMMERF (16)
	db "URSELA@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (17)
	db "THEA@", TRAINERTYPE_NORMAL
	db 28
	dw SEEL
	db 28
	dw SEEL
	db 28
	dw SEEL
	db 28
	dw DEWGONG
	db -1 ; end

	next_list_item ; SWIMMERF (18)
	db "HEIDI@", TRAINERTYPE_NORMAL
	db 37
	dw GOLDUCK
	db -1 ; end

	next_list_item ; SWIMMERF (19)
	db "HELENE@", TRAINERTYPE_NORMAL
	db 35
	dw SEAKING
	db 35
	dw SEAKING
	db -1 ; end

	end_list_items

SailorGroup:
	next_list_item ; SAILOR (1)
	db "JUSTUS@", TRAINERTYPE_NORMAL
	db 17
	dw POLIWHIRL
	db 17
	dw RATICATE
	db 19
	dw KRABBY
	db -1 ; end

	next_list_item ; SAILOR (2)
	db "NEPOMUK@", TRAINERTYPE_NORMAL
	db 18
	dw POLIWAG
	db 18
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; SAILOR (3)
	db "PEPE@", TRAINERTYPE_NORMAL
	db 20
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; SAILOR (4)
	db "FERDINAND@", TRAINERTYPE_MOVES
	db 18
	dw KRABBY
	dw BUBBLE, LEER, VICEGRIP, HARDEN
	db 20
	dw KRABBY
	dw BUBBLEBEAM, LEER, VICEGRIP, HARDEN
	db -1 ; end

	next_list_item ; SAILOR (5)
	db "KORNELIUS@", TRAINERTYPE_NORMAL
	db 18
	dw MACHOP
	db 18
	dw MACHOP
	db 18
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; SAILOR (6)
	db "OLE@", TRAINERTYPE_NORMAL
	db 32
	dw RATICATE
	db 32
	dw RATICATE
	db -1 ; end

	next_list_item ; SAILOR (7)
	db "KASIMIR@", TRAINERTYPE_NORMAL
	db 34
	dw KINGLER
	db -1 ; end

	next_list_item ; SAILOR (8)
	db "OLAF@", TRAINERTYPE_NORMAL
	db 28
	dw MACHOP
	db 28
	dw MACHOP
	db 28
	dw POLIWRATH
	db 28
	dw MACHOP
	db -1 ; end

	next_list_item ; SAILOR (9)
	db "PASCAL@", TRAINERTYPE_NORMAL
	db 31
	dw MACHOP
	db 33
	dw MACHOKE
	db 26
	dw PSYDUCK
	db -1 ; end

	next_list_item ; SAILOR (10)
	db "PIERRE@", TRAINERTYPE_NORMAL
	db 19
	dw WOOPER
	db -1 ; end

	next_list_item ; SAILOR (11)
	db "NEPOMUK@", TRAINERTYPE_NORMAL
	db 28
	dw POLIWHIRL
	db 28
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; SAILOR (12)
	db "NEPOMUK@", TRAINERTYPE_NORMAL
	db 34
	dw POLIWHIRL
	db 34
	dw POLIWRATH
	db -1 ; end

	next_list_item ; SAILOR (13)
	db "NEPOMUK@", TRAINERTYPE_MOVES
	db 38
	dw POLITOED
	dw WHIRLPOOL, RAIN_DANCE, BODY_SLAM, PERISH_SONG
	db 38
	dw POLIWRATH
	dw SURF, STRENGTH, ICE_PUNCH, SUBMISSION
	db -1 ; end

	end_list_items

SuperNerdGroup:
	next_list_item ; SUPER_NERD (1)
	db "GRIMBALD@", TRAINERTYPE_NORMAL
	db 20
	dw GRIMER
	db -1 ; end

	next_list_item ; SUPER_NERD (2)
	db "RAMON@", TRAINERTYPE_NORMAL
	db 11
	dw GRIMER
	db 11
	dw GRIMER
	db -1 ; end

	next_list_item ; SUPER_NERD (3)
	db "HERBERT@", TRAINERTYPE_NORMAL
	db 20
	dw MAGNEMITE
	db 20
	dw MAGNEMITE
	db 20
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (4)
	db "GEROLD@", TRAINERTYPE_NORMAL
	db 22
	dw KOFFING
	db 22
	dw KOFFING
	db -1 ; end

	next_list_item ; SUPER_NERD (5)
	db "SIMON@", TRAINERTYPE_NORMAL
	db 24
	dw DITTO
	db -1 ; end

	next_list_item ; SUPER_NERD (6)
	db "TORSTEN@", TRAINERTYPE_NORMAL
	db 34
	dw GRIMER
	db 34
	dw MUK
	db -1 ; end

	next_list_item ; SUPER_NERD (7)
	db "CHRISTIAN@", TRAINERTYPE_NORMAL
	db 32
	dw MAGNEMITE
	db 32
	dw MAGNEMITE
	db 32
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (8)
	db "THILO@", TRAINERTYPE_NORMAL
	db 36
	dw PORYGON
	db -1 ; end

	next_list_item ; SUPER_NERD (9)
	db "RAIMUND@", TRAINERTYPE_NORMAL
	db 31
	dw MAGNEMITE
	db 33
	dw MUK
	db 31
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (10)
	db "ROLF@", TRAINERTYPE_NORMAL
	db 7
	dw MAGNEMITE
	db 11
	dw VOLTORB
	db 7
	dw MAGNEMITE
	db 9
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (11)
	db "ALFONS@", TRAINERTYPE_NORMAL
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (12)
	db "EMIL@", TRAINERTYPE_MOVES
	db 30
	dw PORYGON
	dw CONVERSION, CONVERSION2, RECOVER, TRI_ATTACK
	db -1 ; end

	next_list_item ; SUPER_NERD (13)
	db "RANDALF@", TRAINERTYPE_MOVES
	db 39
	dw SEADRA
	dw SMOKESCREEN, TWISTER, SURF, WATERFALL
	db -1 ; end

	next_list_item ; SUPER_NERD (14)
	db "URBAN@", TRAINERTYPE_MOVES
	db 19
	dw SLOWPOKE
	dw CURSE, WATER_GUN, GROWL, STRENGTH
	db -1 ; end

	end_list_items

Rival2Group:
	next_list_item ; RIVAL2 (1)
	db "?@", TRAINERTYPE_MOVES
	db 41
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 42
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 41
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 43
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 43
	dw ALAKAZAM
	dw DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 45
	dw MEGANIUM
	dw RAZOR_LEAF, POISONPOWDER, BODY_SLAM, LIGHT_SCREEN
	db -1 ; end

	next_list_item ; RIVAL2 (2)
	db "?@", TRAINERTYPE_MOVES
	db 41
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 42
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 41
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 43
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 43
	dw ALAKAZAM
	dw DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 45
	dw TYPHLOSION
	dw SMOKESCREEN, QUICK_ATTACK, FLAME_WHEEL, SWIFT
	db -1 ; end

	next_list_item ; RIVAL2 (3)
	db "?@", TRAINERTYPE_MOVES
	db 41
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 42
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 41
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 43
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 43
	dw ALAKAZAM
	dw DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 45
	dw FERALIGATR
	dw RAGE, WATER_GUN, SCARY_FACE, SLASH
	db -1 ; end

	next_list_item ; RIVAL2 (4)
	db "?@", TRAINERTYPE_MOVES
	db 45
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 48
	dw CROBAT
	dw TOXIC, BITE, CONFUSE_RAY, WING_ATTACK
	db 45
	dw MAGNETON
	dw THUNDER, SONICBOOM, THUNDER_WAVE, SWIFT
	db 46
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 46
	dw ALAKAZAM
	dw RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db 50
	dw MEGANIUM
	dw GIGA_DRAIN, BODY_SLAM, LIGHT_SCREEN, SAFEGUARD
	db -1 ; end

	next_list_item ; RIVAL2 (5)
	db "?@", TRAINERTYPE_MOVES
	db 45
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 48
	dw CROBAT
	dw TOXIC, BITE, CONFUSE_RAY, WING_ATTACK
	db 45
	dw MAGNETON
	dw THUNDER, SONICBOOM, THUNDER_WAVE, SWIFT
	db 46
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 46
	dw ALAKAZAM
	dw RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db 50
	dw TYPHLOSION
	dw SMOKESCREEN, QUICK_ATTACK, FIRE_BLAST, SWIFT
	db -1 ; end

	next_list_item ; RIVAL2 (6)
	db "?@", TRAINERTYPE_MOVES
	db 45
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 48
	dw CROBAT
	dw TOXIC, BITE, CONFUSE_RAY, WING_ATTACK
	db 45
	dw MAGNETON
	dw THUNDER, SONICBOOM, THUNDER_WAVE, SWIFT
	db 46
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 46
	dw ALAKAZAM
	dw RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db 50
	dw FERALIGATR
	dw SURF, RAIN_DANCE, SLASH, SCREECH
	db -1 ; end

	end_list_items

GuitaristGroup:
	next_list_item ; GUITARIST (1)
	db "JIMMY@", TRAINERTYPE_NORMAL
	db 34
	dw ELECTABUZZ
	db -1 ; end

	next_list_item ; GUITARIST (2)
	db "JOE@", TRAINERTYPE_NORMAL
	db 27
	dw MAGNEMITE
	db 33
	dw VOLTORB
	db 32
	dw MAGNEMITE
	db 32
	dw MAGNEMITE
	db -1 ; end

	end_list_items

HikerGroup:
	next_list_item ; HIKER (1)
	db "TOM@", TRAINERTYPE_NORMAL
	db 16
	dw GEODUDE
	db 18
	dw MACHAMP
	db -1 ; end

	next_list_item ; HIKER (2)
	db "BURKARD@", TRAINERTYPE_NORMAL
	db 4
	dw GEODUDE
	db 6
	dw GEODUDE
	db 8
	dw GEODUDE
	db -1 ; end

	next_list_item ; HIKER (3)
	db "DOMINIK@", TRAINERTYPE_NORMAL
	db 23
	dw GEODUDE
	db 23
	dw GEODUDE
	db 23
	dw GRAVELER
	db -1 ; end

	next_list_item ; HIKER (4)
	db "WENDELIN@", TRAINERTYPE_NORMAL
	db 23
	dw GEODUDE
	db 25
	dw MACHOP
	db -1 ; end

	next_list_item ; HIKER (5)
	db "TOM@", TRAINERTYPE_NORMAL
	db 11
	dw GEODUDE
	db 11
	dw MACHOP
	db -1 ; end

	next_list_item ; HIKER (6)
	db "WOLFGANG@", TRAINERTYPE_NORMAL
	db 14
	dw DIGLETT
	db 14
	dw GEODUDE
	db 16
	dw DUGTRIO
	db -1 ; end

	next_list_item ; HIKER (7)
	db "WIELAND@", TRAINERTYPE_NORMAL
	db 24
	dw MACHOP
	db 27
	dw GRAVELER
	db 27
	dw MACHOP
	db -1 ; end

	next_list_item ; HIKER (8)
	db "PHILLIP@", TRAINERTYPE_NORMAL
	db 25
	dw GEODUDE
	db 25
	dw GRAVELER
	db 25
	dw GOLEM
	db -1 ; end

	next_list_item ; HIKER (9)
	db "GÜNTER@", TRAINERTYPE_NORMAL
	db 35
	dw ONIX
	db 33
	dw SWINUB
	db -1 ; end

	next_list_item ; HIKER (10)
	db "ROMAN@", TRAINERTYPE_MOVES
	db 27
	dw DIGLETT
	dw MAGNITUDE, DIG, SAND_ATTACK, SLASH
	db 27
	dw DUGTRIO
	dw MAGNITUDE, DIG, SAND_ATTACK, SLASH
	db -1 ; end

	next_list_item ; HIKER (11)
	db "LUDWIG@", TRAINERTYPE_NORMAL
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
	db "TOM@", TRAINERTYPE_NORMAL
	db 25
	dw GRAVELER
	db 27
	dw GRAVELER
	db 29
	dw MACHOKE
	db -1 ; end

	next_list_item ; HIKER (13)
	db "HARTMUT@", TRAINERTYPE_NORMAL
	db 31
	dw GRAVELER
	db 31
	dw GRAVELER
	db 31
	dw GRAVELER
	db -1 ; end

	next_list_item ; HIKER (14)
	db "THEODOR@", TRAINERTYPE_NORMAL
	db 31
	dw SANDSLASH
	db 33
	dw GOLEM
	db -1 ; end

	next_list_item ; HIKER (15)
	db "BERNWARD@", TRAINERTYPE_NORMAL
	db 34
	dw DUGTRIO
	db 32
	dw ONIX
	db -1 ; end

	next_list_item ; HIKER (16)
	db "HOLGER@", TRAINERTYPE_NORMAL
	db 27
	dw SANDSLASH
	db 29
	dw GRAVELER
	db 31
	dw GOLEM
	db 29
	dw GRAVELER
	db -1 ; end

	next_list_item ; HIKER (17)
	db "WILHELM@", TRAINERTYPE_NORMAL
	db 35
	dw MACHAMP
	db -1 ; end

	next_list_item ; HIKER (18)
	db "KAREL@", TRAINERTYPE_NORMAL
	db 11
	dw ONIX
	db -1 ; end

	next_list_item ; HIKER (19)
	db "GÜNTER@", TRAINERTYPE_MOVES
	db 35
	dw PILOSWINE
	dw EARTHQUAKE, BLIZZARD, REST, TAKE_DOWN
	db 35
	dw DUGTRIO
	dw MAGNITUDE, DIG, MUD_SLAP, SLASH
	db 38
	dw STEELIX
	dw DIG, IRON_TAIL, SANDSTORM, SLAM
	db -1 ; end

	next_list_item ; HIKER (20)
	db "GÜNTER@", TRAINERTYPE_NORMAL
	db 29
	dw ONIX
	db -1 ; end

	next_list_item ; HIKER (21)
	db "TOM@", TRAINERTYPE_NORMAL
	db 30
	dw GRAVELER
	db 30
	dw GRAVELER
	db 32
	dw MACHOKE
	db -1 ; end

	next_list_item ; HIKER (22)
	db "TOM@", TRAINERTYPE_MOVES
	db 34
	dw GRAVELER
	dw MAGNITUDE, SELFDESTRUCT, DEFENSE_CURL, ROLLOUT
	db 36
	dw GOLEM
	dw MAGNITUDE, SELFDESTRUCT, DEFENSE_CURL, ROLLOUT
	db 34
	dw MACHOKE
	dw KARATE_CHOP, VITAL_THROW, HEADBUTT, DIG
	db -1 ; end

	end_list_items

BikerGroup:
	next_list_item ; BIKER (1)
	db "AXEL@", TRAINERTYPE_NORMAL
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db -1 ; end

	next_list_item ; BIKER (2)
	db "GANGOLF@", TRAINERTYPE_NORMAL
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db -1 ; end

	next_list_item ; BIKER (3)
	db "ELERT@", TRAINERTYPE_NORMAL
	db 27
	dw KOFFING
	db 28
	dw KOFFING
	db 29
	dw KOFFING
	db 30
	dw KOFFING
	db -1 ; end

	next_list_item ; BIKER (4)
	db "GASTON@", TRAINERTYPE_NORMAL
	db 34
	dw FLAREON
	db -1 ; end

	next_list_item ; BIKER (5)
	db "EGIDIUS@", TRAINERTYPE_NORMAL
	db 32
	dw KOFFING
	db 32
	dw KOFFING
	db -1 ; end

	next_list_item ; BIKER (6)
	db "FRIDOLIN@", TRAINERTYPE_NORMAL
	db 30
	dw KOFFING
	db 30
	dw CHARMELEON
	db 30
	dw WEEZING
	db -1 ; end

	next_list_item ; BIKER (7)
	db "HANNES@", TRAINERTYPE_NORMAL
	db 34
	dw WEEZING
	db -1 ; end

	next_list_item ; BIKER (8)
	db "MANUEL@", TRAINERTYPE_NORMAL
	db 32
	dw MAGMAR
	db 32
	dw MAGMAR
	db -1 ; end

	next_list_item ; BIKER (9)
	db "HEKTOR@", TRAINERTYPE_NORMAL
	db 28
	dw KOFFING
	db 30
	dw MAGMAR
	db 32
	dw WEEZING
	db -1 ; end

	end_list_items

BlaineGroup:
	next_list_item ; BLAINE (1)
	db "PYRO@", TRAINERTYPE_MOVES
	db 45
	dw MAGCARGO
	dw CURSE, SMOG, FLAMETHROWER, ROCK_SLIDE
	db 45
	dw MAGMAR
	dw THUNDERPUNCH, FIRE_PUNCH, SUNNY_DAY, CONFUSE_RAY
	db 50
	dw RAPIDASH
	dw QUICK_ATTACK, FIRE_SPIN, FURY_ATTACK, FIRE_BLAST
	db -1 ; end

	end_list_items

BurglarGroup:
	next_list_item ; BURGLAR (1)
	db "PAOLO@", TRAINERTYPE_NORMAL
	db 23
	dw KOFFING
	db 25
	dw MAGMAR
	db 23
	dw KOFFING
	db -1 ; end

	next_list_item ; BURGLAR (2)
	db "FRANCO@", TRAINERTYPE_MOVES
	db 26
	dw GROWLITHE
	dw ROAR, EMBER, LEER, TAKE_DOWN
	db 24
	dw KOFFING
	dw TACKLE, SMOG, SLUDGE, SMOKESCREEN
	db -1 ; end

	next_list_item ; BURGLAR (3)
	db "EDUARD@", TRAINERTYPE_NORMAL
	db 25
	dw KOFFING
	db 28
	dw MAGMAR
	db 25
	dw KOFFING
	db 30
	dw KOFFING
	db -1 ; end

	end_list_items

FirebreatherGroup:
	next_list_item ; FIREBREATHER (1)
	db "BILL@", TRAINERTYPE_NORMAL
	db 29
	dw MAGMAR
	db 32
	dw WEEZING
	db 29
	dw MAGMAR
	db -1 ; end

	next_list_item ; FIREBREATHER (2)
	db "WULF@", TRAINERTYPE_NORMAL
	db 17
	dw CHARMELEON
	db -1 ; end

	next_list_item ; FIREBREATHER (3)
	db "SAM@", TRAINERTYPE_NORMAL
	db 15
	dw KOFFING
	db 16
	dw GROWLITHE
	db 15
	dw KOFFING
	db -1 ; end

	next_list_item ; FIREBREATHER (4)
	db "TONI@", TRAINERTYPE_NORMAL
	db 32
	dw KOFFING
	db 32
	dw SLUGMA
	db -1 ; end

	next_list_item ; FIREBREATHER (5)
	db "VEIT@", TRAINERTYPE_NORMAL
	db 6
	dw KOFFING
	db 6
	dw KOFFING
	db -1 ; end

	next_list_item ; FIREBREATHER (6)
	db "WOLF@", TRAINERTYPE_NORMAL
	db 11
	dw MAGMAR
	db 13
	dw MAGMAR
	db -1 ; end

	next_list_item ; FIREBREATHER (7)
	db "UDE@", TRAINERTYPE_NORMAL
	db 9
	dw VULPIX
	db -1 ; end

	next_list_item ; FIREBREATHER (8)
	db "WIM@", TRAINERTYPE_NORMAL
	db 28
	dw KOFFING
	db 31
	dw FLAREON
	db 28
	dw KOFFING
	db -1 ; end

	end_list_items

JugglerGroup:
	next_list_item ; JUGGLER (1)
	db "ERICH@", TRAINERTYPE_NORMAL
	db 2
	dw VOLTORB
	db 6
	dw VOLTORB
	db 10
	dw VOLTORB
	db 14
	dw VOLTORB
	db -1 ; end

	next_list_item ; JUGGLER (2)
	db "EIKE@", TRAINERTYPE_NORMAL
	db 29
	dw MR__MIME
	db 29
	dw MAGMAR
	db 29
	dw MACHOKE
	db -1 ; end

	next_list_item ; JUGGLER (3)
	db "IGNAZ@", TRAINERTYPE_NORMAL
	db 33
	dw ELECTRODE
	db 33
	dw ELECTRODE
	db 33
	dw ELECTRODE
	db 33
	dw ELECTRODE
	db -1 ; end

	next_list_item ; JUGGLER (4)
	db "ERICH@", TRAINERTYPE_NORMAL
	db 6
	dw VOLTORB
	db 10
	dw VOLTORB
	db 14
	dw VOLTORB
	db 18
	dw VOLTORB
	db -1 ; end

	next_list_item ; JUGGLER (5)
	db "ERICH@", TRAINERTYPE_NORMAL
	db 18
	dw VOLTORB
	db 22
	dw VOLTORB
	db 26
	dw VOLTORB
	db 30
	dw ELECTRODE
	db -1 ; end

	next_list_item ; JUGGLER (6)
	db "ERICH@", TRAINERTYPE_NORMAL
	db 18
	dw VOLTORB
	db 22
	dw VOLTORB
	db 26
	dw VOLTORB
	db 30
	dw ELECTRODE
	db -1 ; end

	end_list_items

BlackbeltGroup:
	next_list_item ; BLACKBELT_T (1)
	db "UDO@", TRAINERTYPE_NORMAL
	db 27
	dw ONIX
	db 30
	dw HITMONLEE
	db 27
	dw ONIX
	db 32
	dw MACHOKE
	db -1 ; end

	next_list_item ; BLACKBELT_T (2)
	db "XAVER@", TRAINERTYPE_MOVES
	db 27
	dw HITMONLEE
	dw DOUBLE_KICK, MEDITATE, JUMP_KICK, FOCUS_ENERGY
	db -1 ; end

	next_list_item ; BLACKBELT_T (3)
	db "UDO@", TRAINERTYPE_MOVES
	db 33
	dw ONIX
	dw BIND, ROCK_THROW, TOXIC, DIG
	db 38
	dw MACHAMP
	dw HEADBUTT, SWAGGER, THUNDERPUNCH, VITAL_THROW
	db 33
	dw STEELIX
	dw EARTHQUAKE, ROCK_THROW, IRON_TAIL, SANDSTORM
	db 36
	dw HITMONLEE
	dw DOUBLE_TEAM, HI_JUMP_KICK, MUD_SLAP, SWIFT
	db -1 ; end

	next_list_item ; BLACKBELT_T (4)
	db "JEFF@", TRAINERTYPE_MOVES
	db 27
	dw HITMONCHAN
	dw COMET_PUNCH, THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH
	db -1 ; end

	next_list_item ; BLACKBELT_T (5)
	db "PETER@", TRAINERTYPE_MOVES
	db 25
	dw MACHOP
	dw LEER, FOCUS_ENERGY, KARATE_CHOP, SEISMIC_TOSS
	db 25
	dw MACHOKE
	dw LEER, KARATE_CHOP, SEISMIC_TOSS, ROCK_SLIDE
	db -1 ; end

	next_list_item ; BLACKBELT_T (6)
	db "LEIF@", TRAINERTYPE_NORMAL
	db 34
	dw HITMONLEE
	db 34
	dw HITMONCHAN
	db -1 ; end

	next_list_item ; BLACKBELT_T (7)
	db "TIM@", TRAINERTYPE_NORMAL
	db 23
	dw MANKEY
	db 23
	dw MANKEY
	db 25
	dw PRIMEAPE
	db -1 ; end

	next_list_item ; BLACKBELT_T (8)
	db "UDO@", TRAINERTYPE_NORMAL
	db 28
	dw MACHOKE
	db -1 ; end

	next_list_item ; BLACKBELT_T (9)
	db "ULF@", TRAINERTYPE_NORMAL
	db 30
	dw MACHOKE
	db 32
	dw MACHOKE
	db 34
	dw MACHOKE
	db -1 ; end

	end_list_items

ExecutiveMGroup:
	next_list_item ; EXECUTIVEM (1)
	db "VORSTAND@", TRAINERTYPE_MOVES
	db 33
	dw HOUNDOUR
	dw EMBER, ROAR, BITE, FAINT_ATTACK
	db 33
	dw KOFFING
	dw TACKLE, SLUDGE, SMOKESCREEN, HAZE
	db 35
	dw HOUNDOOM
	dw EMBER, SMOG, BITE, FAINT_ATTACK
	db -1 ; end

	next_list_item ; EXECUTIVEM (2)
	db "VORSTAND@", TRAINERTYPE_MOVES
	db 36
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db -1 ; end

	next_list_item ; EXECUTIVEM (3)
	db "VORSTAND@", TRAINERTYPE_MOVES
	db 30
	dw KOFFING
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 32
	dw WEEZING
	dw TACKLE, EXPLOSION, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	dw TACKLE, SMOG, SLUDGE, SMOKESCREEN
	db -1 ; end

	next_list_item ; EXECUTIVEM (4)
	db "VORSTAND@", TRAINERTYPE_NORMAL
	db 22
	dw ZUBAT
	db 24
	dw RATICATE
	db 22
	dw KOFFING
	db -1 ; end

	end_list_items

PsychicGroup:
	next_list_item ; PSYCHIC_T (1)
	db "LIONEL@", TRAINERTYPE_NORMAL
	db 26
	dw GIRAFARIG
	db -1 ; end

	next_list_item ; PSYCHIC_T (2)
	db "FREDERIC@", TRAINERTYPE_NORMAL
	db 37
	dw KADABRA
	db -1 ; end

	next_list_item ; PSYCHIC_T (3)
	db "MARCEL@", TRAINERTYPE_NORMAL
	db 30
	dw EXEGGCUTE
	db 30
	dw EXEGGCUTE
	db 30
	dw EXEGGUTOR
	db -1 ; end

	next_list_item ; PSYCHIC_T (4)
	db "JEAN@", TRAINERTYPE_NORMAL
	db 34
	dw XATU
	db -1 ; end

	next_list_item ; PSYCHIC_T (5)
	db "LAURENT@", TRAINERTYPE_MOVES
	db 17
	dw DROWZEE
	dw HYPNOSIS, DISABLE, DREAM_EATER, NO_MOVE
	db -1 ; end

	next_list_item ; PSYCHIC_T (6)
	db "ANDRE@", TRAINERTYPE_MOVES
	db 17
	dw SLOWPOKE
	dw TACKLE, GROWL, WATER_GUN, NO_MOVE
	db 20
	dw SLOWPOKE
	dw CURSE, BODY_SLAM, WATER_GUN, CONFUSION
	db -1 ; end

	next_list_item ; PSYCHIC_T (7)
	db "JAQUES@", TRAINERTYPE_MOVES
	db 13
	dw ABRA
	dw TELEPORT, FLASH, NO_MOVE, NO_MOVE
	db 13
	dw ABRA
	dw TELEPORT, FLASH, NO_MOVE, NO_MOVE
	db 15
	dw KADABRA
	dw TELEPORT, KINESIS, CONFUSION, NO_MOVE
	db -1 ; end

	next_list_item ; PSYCHIC_T (8)
	db "RENE@", TRAINERTYPE_MOVES
	db 24
	dw NATU
	dw LEER, NIGHT_SHADE, FUTURE_SIGHT, CONFUSE_RAY
	db 26
	dw KADABRA
	dw DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
	db -1 ; end

	next_list_item ; PSYCHIC_T (9)
	db "CEDRIC@", TRAINERTYPE_NORMAL
	db 36
	dw ESPEON
	db -1 ; end

	next_list_item ; PSYCHIC_T (10)
	db "CYRILLE@", TRAINERTYPE_NORMAL
	db 30
	dw STARMIE
	db 30
	dw EXEGGCUTE
	db 34
	dw GIRAFARIG
	db -1 ; end

	next_list_item ; PSYCHIC_T (11)
	db "RAINIER@", TRAINERTYPE_NORMAL
	db 32
	dw MR__MIME
	db 32
	dw EXEGGCUTE
	db 35
	dw EXEGGCUTE
	db -1 ; end

	next_list_item ; PSYCHIC_T (12)
	db "HENRY@", TRAINERTYPE_NORMAL
	db 29
	dw DROWZEE
	db 33
	dw HYPNO
	db -1 ; end

	end_list_items

PicnickerGroup:
	next_list_item ; PICNICKER (1)
	db "ANETTE@", TRAINERTYPE_NORMAL
	db 9
	dw NIDORAN_F
	db -1 ; end

	next_list_item ; PICNICKER (2)
	db "GUDRUN@", TRAINERTYPE_NORMAL
	db 9
	dw HOPPIP
	db 9
	dw HOPPIP
	db 12
	dw BULBASAUR
	db -1 ; end

	next_list_item ; PICNICKER (3)
	db "NINA@", TRAINERTYPE_MOVES
	db 16
	dw PIKACHU
	dw THUNDERSHOCK, GROWL, QUICK_ATTACK, DOUBLE_TEAM
	db -1 ; end

	next_list_item ; PICNICKER (4)
	db "EMILIE@", TRAINERTYPE_NORMAL
	db 15
	dw VULPIX
	db -1 ; end

	next_list_item ; PICNICKER (5)
	db "CINDY@", TRAINERTYPE_NORMAL
	db 36
	dw NIDOQUEEN
	db -1 ; end

	next_list_item ; PICNICKER (6)
	db "EVELYN@", TRAINERTYPE_NORMAL
	db 34
	dw FLAAFFY
	db -1 ; end

	next_list_item ; PICNICKER (7)
	db "ASTRID@", TRAINERTYPE_NORMAL
	db 31
	dw FURRET
	db 33
	dw RAPIDASH
	db -1 ; end

	next_list_item ; PICNICKER (8)
	db "HEDWIG@", TRAINERTYPE_NORMAL
	db 33
	dw SEAKING
	db -1 ; end

	next_list_item ; PICNICKER (9)
	db "GUDRUN@", TRAINERTYPE_NORMAL
	db 14
	dw HOPPIP
	db 14
	dw HOPPIP
	db 17
	dw IVYSAUR
	db -1 ; end

	next_list_item ; PICNICKER (10)
	db "LOTTE@", TRAINERTYPE_NORMAL
	db 16
	dw PONYTA
	db 16
	dw PONYTA
	db -1 ; end

	next_list_item ; PICNICKER (11)
	db "ANETTE@", TRAINERTYPE_NORMAL
	db 15
	dw WEEPINBELL
	db 15
	dw NIDORINA
	db -1 ; end

	next_list_item ; PICNICKER (12)
	db "ANETTE@", TRAINERTYPE_NORMAL
	db 19
	dw WEEPINBELL
	db 19
	dw NIDORINO
	db 21
	dw NIDOQUEEN
	db -1 ; end

	next_list_item ; PICNICKER (13)
	db "MARIKA@", TRAINERTYPE_NORMAL
	db 32
	dw SKIPLOOM
	db 32
	dw SKIPLOOM
	db -1 ; end

	next_list_item ; PICNICKER (14)
	db "KERSTIN@", TRAINERTYPE_NORMAL
	db 30
	dw NIDORINA
	db 34
	dw RAICHU
	db -1 ; end

	next_list_item ; PICNICKER (15)
	db "GUDRUN@", TRAINERTYPE_NORMAL
	db 26
	dw SKIPLOOM
	db 26
	dw SKIPLOOM
	db 29
	dw IVYSAUR
	db -1 ; end

	next_list_item ; PICNICKER (16)
	db "ILONA@", TRAINERTYPE_MOVES
	db 31
	dw CLEFAIRY
	dw ENCORE, SING, DOUBLESLAP, MINIMIZE
	db -1 ; end

	next_list_item ; PICNICKER (17)
	db "ILONA@", TRAINERTYPE_MOVES
	db 37
	dw CLEFAIRY
	dw ENCORE, DOUBLESLAP, MINIMIZE, METRONOME
	db -1 ; end

	next_list_item ; PICNICKER (18)
	db "LOTTE@", TRAINERTYPE_NORMAL
	db 32
	dw PONYTA
	db 32
	dw PONYTA
	db -1 ; end

	next_list_item ; PICNICKER (19)
	db "NICOLE@", TRAINERTYPE_NORMAL
	db 37
	dw EXEGGUTOR
	db -1 ; end

	next_list_item ; PICNICKER (20)
	db "ILONA@", TRAINERTYPE_MOVES
	db 20
	dw CLEFAIRY
	dw ENCORE, SING, DOUBLESLAP, MINIMIZE
	db -1 ; end

	next_list_item ; PICNICKER (21)
	db "LOTTE@", TRAINERTYPE_MOVES
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
	db "ANETTE@", TRAINERTYPE_NORMAL
	db 24
	dw WEEPINBELL
	db 26
	dw NIDORINO
	db 26
	dw NIDOQUEEN
	db -1 ; end

	next_list_item ; PICNICKER (23)
	db "ANETTE@", TRAINERTYPE_MOVES
	db 30
	dw WEEPINBELL
	dw SLEEP_POWDER, POISONPOWDER, STUN_SPORE, SLUDGE_BOMB
	db 32
	dw NIDOKING
	dw EARTHQUAKE, DOUBLE_KICK, POISON_STING, IRON_TAIL
	db 32
	dw NIDOQUEEN
	dw EARTHQUAKE, DOUBLE_KICK, TAIL_WHIP, BODY_SLAM
	db -1 ; end

	next_list_item ; PICNICKER (24)
	db "GUDRUN@", TRAINERTYPE_NORMAL
	db 30
	dw SKIPLOOM
	db 30
	dw SKIPLOOM
	db 32
	dw IVYSAUR
	db -1 ; end

	next_list_item ; PICNICKER (25)
	db "GUDRUN@", TRAINERTYPE_MOVES
	db 33
	dw JUMPLUFF
	dw STUN_SPORE, SUNNY_DAY, LEECH_SEED, COTTON_SPORE
	db 33
	dw JUMPLUFF
	dw SUNNY_DAY, SLEEP_POWDER, LEECH_SEED, COTTON_SPORE
	db 38
	dw VENUSAUR
	dw SOLARBEAM, RAZOR_LEAF, HEADBUTT, MUD_SLAP
	db -1 ; end

	next_list_item ; PICNICKER (26)
	db "ILONA@", TRAINERTYPE_MOVES
	db 43
	dw CLEFAIRY
	dw METRONOME, ENCORE, MOONLIGHT, MINIMIZE
	db -1 ; end

	end_list_items

CamperGroup:
	next_list_item ; CAMPER (1)
	db "ERWIN@", TRAINERTYPE_NORMAL
	db 9
	dw NIDORAN_M
	db -1 ; end

	next_list_item ; CAMPER (2)
	db "BODO@", TRAINERTYPE_NORMAL
	db 14
	dw PSYDUCK
	db -1 ; end

	next_list_item ; CAMPER (3)
	db "EWALD@", TRAINERTYPE_NORMAL
	db 10
	dw DIGLETT
	db 10
	dw ZUBAT
	db 14
	dw DIGLETT
	db -1 ; end

	next_list_item ; CAMPER (4)
	db "KILIAN@", TRAINERTYPE_NORMAL
	db 13
	dw SANDSHREW
	db 15
	dw MARILL
	db -1 ; end

	next_list_item ; CAMPER (5)
	db "TILL@", TRAINERTYPE_NORMAL
	db 36
	dw NIDOKING
	db -1 ; end

	next_list_item ; CAMPER (6)
	db "ANSGAR@", TRAINERTYPE_NORMAL
	db 34
	dw NIDOKING
	db -1 ; end

	next_list_item ; CAMPER (7)
	db "STEFFAN@", TRAINERTYPE_NORMAL
	db 33
	dw GOLDUCK
	db 31
	dw SANDSLASH
	db -1 ; end

	next_list_item ; CAMPER (8)
	db "KARL@", TRAINERTYPE_NORMAL
	db 32
	dw DUGTRIO
	db 29
	dw PRIMEAPE
	db 29
	dw POLIWRATH
	db -1 ; end

	next_list_item ; CAMPER (9)
	db "HORST@", TRAINERTYPE_NORMAL
	db 15
	dw NIDORINO
	db -1 ; end

	next_list_item ; CAMPER (10)
	db "HUGO@", TRAINERTYPE_NORMAL
	db 15
	dw NIDORINO
	db -1 ; end

	next_list_item ; CAMPER (11)
	db "PATRICK@", TRAINERTYPE_NORMAL
	db 17
	dw MANKEY
	db -1 ; end

	next_list_item ; CAMPER (12)
	db "BODO@", TRAINERTYPE_NORMAL
	db 17
	dw GEODUDE
	db 17
	dw GEODUDE
	db 23
	dw PSYDUCK
	db -1 ; end

	next_list_item ; CAMPER (13)
	db "BODO@", TRAINERTYPE_NORMAL
	db 23
	dw GEODUDE
	db 23
	dw GEODUDE
	db 26
	dw PSYDUCK
	db -1 ; end

	next_list_item ; CAMPER (14)
	db "AUGUST@", TRAINERTYPE_NORMAL
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
	db "TASSILO@", TRAINERTYPE_NORMAL
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
	db "FLORIAN@", TRAINERTYPE_NORMAL
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
	db "ROBERT@", TRAINERTYPE_NORMAL
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
	db "WALTER@", TRAINERTYPE_NORMAL
	db 37
	dw SANDSLASH
	db -1 ; end

	next_list_item ; CAMPER (19)
	db "MORITZ@", TRAINERTYPE_NORMAL
	db 17
	dw SANDSHREW
	db 17
	dw SANDSLASH
	db 19
	dw ZUBAT
	db -1 ; end

	next_list_item ; CAMPER (20)
	db "BODO@", TRAINERTYPE_NORMAL
	db 30
	dw GRAVELER
	db 30
	dw GRAVELER
	db 30
	dw SLUGMA
	db 32
	dw PSYDUCK
	db -1 ; end

	next_list_item ; CAMPER (21)
	db "BODO@", TRAINERTYPE_MOVES
	db 33
	dw GRAVELER
	dw SELFDESTRUCT, ROCK_THROW, HARDEN, MAGNITUDE
	db 33
	dw GRAVELER
	dw SELFDESTRUCT, ROCK_THROW, HARDEN, MAGNITUDE
	db 36
	dw MAGCARGO
	dw ROCK_THROW, HARDEN, AMNESIA, FLAMETHROWER
	db 34
	dw GOLDUCK
	dw DISABLE, PSYCHIC_M, SURF, PSYCH_UP
	db -1 ; end

	next_list_item ; CAMPER (22)
	db "QUENTIN@", TRAINERTYPE_NORMAL
	db 30
	dw FEAROW
	db 30
	dw PRIMEAPE
	db 30
	dw TAUROS
	db -1 ; end

	end_list_items

ExecutiveFGroup:
	next_list_item ; EXECUTIVEF (1)
	db "VORSTAND@", TRAINERTYPE_MOVES
	db 32
	dw ARBOK
	dw WRAP, POISON_STING, BITE, GLARE
	db 32
	dw VILEPLUME
	dw ABSORB, SWEET_SCENT, SLEEP_POWDER, ACID
	db 32
	dw MURKROW
	dw PECK, PURSUIT, HAZE, NIGHT_SHADE
	db -1 ; end

	next_list_item ; EXECUTIVEF (2)
	db "VORSTAND@", TRAINERTYPE_MOVES
	db 23
	dw ARBOK
	dw WRAP, LEER, POISON_STING, BITE
	db 23
	dw GLOOM
	dw ABSORB, SWEET_SCENT, SLEEP_POWDER, ACID
	db 25
	dw MURKROW
	dw PECK, PURSUIT, HAZE, NO_MOVE
	db -1 ; end

	end_list_items

SageGroup:
	next_list_item ; SAGE (1)
	db "HELMUT@", TRAINERTYPE_NORMAL
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (2)
	db "ECKART@", TRAINERTYPE_NORMAL
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (3)
	db "DETLEV@", TRAINERTYPE_NORMAL
	db 6
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (4)
	db "INGOLF@", TRAINERTYPE_NORMAL
	db 7
	dw BELLSPROUT
	db 7
	dw HOOTHOOT
	db -1 ; end

	next_list_item ; SAGE (5)
	db "HERIBERT@", TRAINERTYPE_NORMAL
	db 22
	dw HAUNTER
	db -1 ; end

	next_list_item ; SAGE (6)
	db "MONTY@", TRAINERTYPE_NORMAL
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
	db "LUDGER@", TRAINERTYPE_NORMAL
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (8)
	db "LUKAS@", TRAINERTYPE_NORMAL
	db 6
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (9)
	db "MAREK@", TRAINERTYPE_NORMAL
	db 7
	dw BELLSPROUT
	db 7
	dw BELLSPROUT
	db 10
	dw HOOTHOOT
	db -1 ; end

	next_list_item ; SAGE (10)
	db "YORICK@", TRAINERTYPE_NORMAL
	db 32
	dw NOCTOWL
	db 32
	dw FLAREON
	db -1 ; end

	next_list_item ; SAGE (11)
	db "THURE@", TRAINERTYPE_NORMAL
	db 32
	dw NOCTOWL
	db 32
	dw JOLTEON
	db -1 ; end

	next_list_item ; SAGE (12)
	db "ERASMUS@", TRAINERTYPE_NORMAL
	db 32
	dw NOCTOWL
	db 32
	dw VAPOREON
	db -1 ; end

	end_list_items

MediumGroup:
	next_list_item ; MEDIUM (1)
	db "ZENOBIA@", TRAINERTYPE_NORMAL
	db 18
	dw GASTLY
	db 20
	dw HAUNTER
	db 20
	dw GASTLY
	db -1 ; end

	next_list_item ; MEDIUM (2)
	db "DOROTHEA@", TRAINERTYPE_NORMAL
	db 20
	dw HAUNTER
	db 20
	dw HAUNTER
	db -1 ; end

	next_list_item ; MEDIUM (3)
	db "THUSNELDA@", TRAINERTYPE_NORMAL
	db 25
	dw HAUNTER
	db -1 ; end

	next_list_item ; MEDIUM (4)
	db "PANDORA@", TRAINERTYPE_NORMAL
	db 25
	dw HAUNTER
	db -1 ; end

	next_list_item ; MEDIUM (5)
	db "ROLANDA@", TRAINERTYPE_NORMAL
	db 25
	dw HAUNTER
	db -1 ; end

	next_list_item ; MEDIUM (6)
	db "ANASTASIA@", TRAINERTYPE_NORMAL
	db 35
	dw DROWZEE
	db 35
	dw HYPNO
	db -1 ; end

	next_list_item ; MEDIUM (7)
	db "DAPHNE@", TRAINERTYPE_NORMAL
	db 34
	dw SLOWPOKE
	db 36
	dw SLOWBRO
	db -1 ; end

	end_list_items

BoarderGroup:
	next_list_item ; BOARDER (1)
	db "LOUIS@", TRAINERTYPE_NORMAL
	db 24
	dw SEEL
	db 25
	dw DEWGONG
	db 24
	dw SEEL
	db -1 ; end

	next_list_item ; BOARDER (2)
	db "KUNO@", TRAINERTYPE_NORMAL
	db 26
	dw SWINUB
	db 26
	dw SWINUB
	db -1 ; end

	next_list_item ; BOARDER (3)
	db "GEORG@", TRAINERTYPE_NORMAL
	db 24
	dw SHELLDER
	db 25
	dw CLOYSTER
	db 24
	dw SHELLDER
	db -1 ; end

	end_list_items

PokefanMGroup:
	next_list_item ; POKEFANM (1)
	db "WILHELM@", TRAINERTYPE_ITEM
	db 14
	dw RAICHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (2)
	db "SÖNCKE@", TRAINERTYPE_ITEM
	db 17
	dw PIKACHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (3)
	db "WINFRIED@", TRAINERTYPE_ITEM
	db 33
	dw QUAGSIRE
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (4)
	db "JÜRGEN@", TRAINERTYPE_ITEM
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (5)
	db "ERNST@", TRAINERTYPE_ITEM
	db 29
	dw BULBASAUR
	db BERRY
	db 29
	dw CHARMANDER
	db BERRY
	db 29
	dw SQUIRTLE
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (6)
	db "REINHOLD@", TRAINERTYPE_ITEM
	db 33
	dw PSYDUCK
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (7)
	db "MATTHIAS@", TRAINERTYPE_ITEM
	db 13
	dw SNUBBULL
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (8)
	db "OLIVER@", TRAINERTYPE_ITEM
	db 28
	dw MEOWTH
	db BERRY
	db 28
	dw MEOWTH
	db BERRY
	db 28
	dw MEOWTH
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (9)
	db "WOLFRAM@", TRAINERTYPE_ITEM
	db 32
	dw DELIBIRD
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (10)
	db "SÖNCKE@", TRAINERTYPE_ITEM
	db 19
	dw PIKACHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (11)
	db "SÖNCKE@", TRAINERTYPE_ITEM
	db 36
	dw PIKACHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (12)
	db "JOHANN@", TRAINERTYPE_ITEM
	db 29
	dw NIDOKING
	db BERRY
	db 29
	dw SLOWKING
	db BERRY
	db 29
	dw SEAKING
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (13)
	db "LASLO@", TRAINERTYPE_ITEM
	db 35
	dw PHANPY
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (14)
	db "ALLAN@", TRAINERTYPE_ITEM
	db 35
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
	db "EDITH@", TRAINERTYPE_NORMAL
	db 17
	dw FLAREON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (3)
	db "KEIKO@", TRAINERTYPE_NORMAL
	db 17
	dw ESPEON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (4)
	db "LINDA@", TRAINERTYPE_NORMAL
	db 17
	dw UMBREON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (5)
	db "WILMA@", TRAINERTYPE_NORMAL
	db 17
	dw VAPOREON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (6)
	db "LORE@", TRAINERTYPE_NORMAL
	db 17
	dw JOLTEON
	db -1 ; end

	end_list_items

TwinsGroup:
	next_list_item ; TWINS (1)
	db "EVA & UTE@", TRAINERTYPE_NORMAL
	db 10
	dw SPINARAK
	db 10
	dw LEDYBA
	db -1 ; end

	next_list_item ; TWINS (2)
	db "NORA & JO@", TRAINERTYPE_MOVES
	db 16
	dw CLEFAIRY
	dw GROWL, ENCORE, DOUBLESLAP, METRONOME
	db 16
	dw JIGGLYPUFF
	dw SING, DEFENSE_CURL, POUND, DISABLE
	db -1 ; end

	next_list_item ; TWINS (3)
	db "NORA & JO@", TRAINERTYPE_MOVES
	db 16
	dw JIGGLYPUFF
	dw SING, DEFENSE_CURL, POUND, DISABLE
	db 16
	dw CLEFAIRY
	dw GROWL, ENCORE, DOUBLESLAP, METRONOME
	db -1 ; end

	next_list_item ; TWINS (4)
	db "EVA & UTE@", TRAINERTYPE_NORMAL
	db 10
	dw LEDYBA
	db 10
	dw SPINARAK
	db -1 ; end

	next_list_item ; TWINS (5)
	db "LEA & IDA@", TRAINERTYPE_NORMAL
	db 35
	dw VICTREEBEL
	db 35
	dw VILEPLUME
	db -1 ; end

	next_list_item ; TWINS (6)
	db "LEA & IDA@", TRAINERTYPE_NORMAL
	db 35
	dw VILEPLUME
	db 35
	dw VICTREEBEL
	db -1 ; end

	next_list_item ; TWINS (7)
	db "ZOE & PIA@", TRAINERTYPE_NORMAL
	db 31
	dw TEDDIURSA
	db 31
	dw PHANPY
	db -1 ; end

	next_list_item ; TWINS (8)
	db "ZOE & PIA@", TRAINERTYPE_NORMAL
	db 31
	dw PHANPY
	db 31
	dw TEDDIURSA
	db -1 ; end

	next_list_item ; TWINS (9)
	db "JANA&NANA@", TRAINERTYPE_MOVES
	db 35
	dw DRATINI
	dw THUNDER_WAVE, TWISTER, FLAMETHROWER, HEADBUTT
	db 35
	dw DRATINI
	dw THUNDER_WAVE, TWISTER, ICE_BEAM, HEADBUTT
	db -1 ; end

	next_list_item ; TWINS (10)
	db "JANA&NANA@", TRAINERTYPE_MOVES
	db 38
	dw DRATINI
	dw THUNDER_WAVE, TWISTER, ICE_BEAM, HEADBUTT
	db 38
	dw DRATINI
	dw THUNDER_WAVE, TWISTER, FLAMETHROWER, HEADBUTT
	db -1 ; end

	end_list_items

PokefanFGroup:
	next_list_item ; POKEFANF (1)
	db "IRMGARD@", TRAINERTYPE_ITEM
	db 14
	dw SNUBBULL
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (2)
	db "RUTH@", TRAINERTYPE_ITEM
	db 17
	dw PIKACHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (3)
	db "IRMGARD@", TRAINERTYPE_ITEM
	db 18
	dw SNUBBULL
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (4)
	db "IRMGARD@", TRAINERTYPE_ITEM
	db 30
	dw GRANBULL
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (5)
	db "JULIANE@", TRAINERTYPE_ITEM
	db 23
	dw SENTRET
	db BERRY
	db 23
	dw SENTRET
	db BERRY
	db 23
	dw SENTRET
	db BERRY
	db 28
	dw FURRET
	db BERRY
	db 23
	dw SENTRET
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (6)
	db "JAIME@", TRAINERTYPE_ITEM
	db 16
	dw MEOWTH
	db BERRY
	db -1 ; end

	end_list_items

RedGroup:
	next_list_item ; RED (1)
	db "ROT@", TRAINERTYPE_MOVES
	db 81
	dw PIKACHU
	dw CHARM, QUICK_ATTACK, THUNDERBOLT, THUNDER
	db 73
	dw ESPEON
	dw MUD_SLAP, REFLECT, SWIFT, PSYCHIC_M
	db 75
	dw SNORLAX
	dw AMNESIA, SNORE, REST, BODY_SLAM
	db 77
	dw VENUSAUR
	dw SUNNY_DAY, GIGA_DRAIN, SYNTHESIS, SOLARBEAM
	db 77
	dw CHARIZARD
	dw FLAMETHROWER, WING_ATTACK, SLASH, FIRE_SPIN
	db 77
	dw BLASTOISE
	dw RAIN_DANCE, SURF, BLIZZARD, WHIRLPOOL
	db -1 ; end

	end_list_items

SECTION "Enemy Trainer Parties 3", ROMX

BlueGroup:
	next_list_item ; BLUE (1)
	db "BLAU@", TRAINERTYPE_MOVES
	db 56
	dw PIDGEOT
	dw QUICK_ATTACK, WHIRLWIND, WING_ATTACK, MIRROR_MOVE
	db 54
	dw ALAKAZAM
	dw DISABLE, RECOVER, PSYCHIC_M, REFLECT
	db 56
	dw RHYDON
	dw FURY_ATTACK, SANDSTORM, ROCK_SLIDE, EARTHQUAKE
	db 58
	dw GYARADOS
	dw TWISTER, HYDRO_PUMP, RAIN_DANCE, HYPER_BEAM
	db 58
	dw EXEGGUTOR
	dw SUNNY_DAY, LEECH_SEED, EGG_BOMB, SOLARBEAM
	db 58
	dw ARCANINE
	dw ROAR, SWIFT, FLAMETHROWER, EXTREMESPEED
	db -1 ; end

	end_list_items

OfficerGroup:
	next_list_item ; OFFICER (1)
	db "KLAUS@", TRAINERTYPE_NORMAL
	db 17
	dw GROWLITHE
	db -1 ; end

	next_list_item ; OFFICER (2)
	db "DIRK@", TRAINERTYPE_NORMAL
	db 14
	dw GROWLITHE
	db 14
	dw GROWLITHE
	db -1 ; end

	end_list_items

GruntFGroup:
	next_list_item ; GRUNTF (1)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 9
	dw ZUBAT
	db 11
	dw EKANS
	db -1 ; end

	next_list_item ; GRUNTF (2)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 26
	dw ARBOK
	db -1 ; end

	next_list_item ; GRUNTF (3)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 25
	dw GLOOM
	db 25
	dw GLOOM
	db -1 ; end

	next_list_item ; GRUNTF (4)
	db "RÜPEL@", TRAINERTYPE_NORMAL
	db 21
	dw EKANS
	db 23
	dw ODDISH
	db 21
	dw EKANS
	db 24
	dw GLOOM
	db -1 ; end

	next_list_item ; GRUNTF (5)
	db "RÜPEL@", TRAINERTYPE_MOVES
	db 18
	dw EKANS
	dw WRAP, LEER, POISON_STING, BITE
	db 18
	dw GLOOM
	dw ABSORB, SWEET_SCENT, STUN_SPORE, SLEEP_POWDER
	db -1 ; end

	end_list_items

MysticalmanGroup:
	next_list_item ; MYSTICALMAN (1)
	db "EUSIN@", TRAINERTYPE_MOVES
	db 23
	dw DROWZEE
	dw DREAM_EATER, HYPNOSIS, DISABLE, CONFUSION
	db 23
	dw HAUNTER
	dw LICK, HYPNOSIS, MEAN_LOOK, CURSE
	db 25
	dw ELECTRODE
	dw SCREECH, SONICBOOM, THUNDER, ROLLOUT
	db -1 ; end

	end_list_items
