	db 28 ; 284 -- Is ignored anyway; used to be the basis for deriving the Pokédex bank index, which is no longer true

	db  85, 100, 122,  54,  58,  75
	;   hp, atk, def, spd, sat, sdf

	db GHOST, GRASS
	db 60 ; catch rate
	db 173 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gourgeist/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, FRUSTRATION, RETURN, SOLARBEAM, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, FLAMETHROWER, SLUDGE_BOMB, FIRE_BLAST, REST, ATTRACT, THIEF, DREAM_EATER, SWAGGER, SLEEP_TALK, ROCK_SMASH, GIGA_DRAIN, ENDURE, HYPER_BEAM
	;end
