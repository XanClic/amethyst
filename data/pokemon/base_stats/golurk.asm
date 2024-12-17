	db 24 ; 280 -- Is ignored anyway; used to be the basis for deriving the Pokédex bank index, which is no longer true

	db  89, 124,  80,  55,  55,  80
	;   hp, atk, def, spd, sat, sdf

	db GROUND, GHOST
	db 90 ; catch rate
	db 169 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/golurk/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, ICE_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, RETURN, EARTHQUAKE, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, REST, THIEF, SLEEP_TALK, FLASH, SWAGGER, STRENGTH, ROCK_SMASH, ICY_WIND, FIRE_PUNCH, ICE_PUNCH, THUNDERPUNCH, DIG, SNORE, ENDURE, SOLARBEAM, HYPER_BEAM, THUNDERBOLT
	;end
