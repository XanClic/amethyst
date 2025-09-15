	db 21 ; 277 -- Is ignored anyway; used to be the basis for deriving the Pokédex bank index, which is no longer true

	db  99, 125,  80, 125,  90,  90
	;   hp, atk, def, spd, sat, sdf

	db FIGHTING, GHOST
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 120 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/marshadow/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, PROTECT, FRUSTRATION, RETURN, SLEEP_TALK, SHADOW_BALL, DOUBLE_TEAM, REST, THIEF, SWAGGER, STRENGTH, ENDURE, FIRE_PUNCH, ICE_PUNCH, THUNDERPUNCH, HYPER_BEAM, PSYCH_UP, ROCK_SMASH
	;end
