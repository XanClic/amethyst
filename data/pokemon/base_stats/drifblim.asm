	db 1 ; 257 -- Is ignored anyway; used to be the basis for deriving the Pokédex bank index, which is no longer true

	db 150,  80,  44,  80,  90,  54
	;   hp, atk, def, spd, sat, sdf

	db GHOST, FLYING
	db 60 ; catch rate
	db 174 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 30 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/drifblim/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, FRUSTRATION, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, REST, ATTRACT, THIEF, ENDURE, FLASH, SLEEP_TALK, CUT, FLY, SWAGGER, PSYCH_UP
	;end
