	db 22 ; 278 -- Is ignored anyway; used to be the basis for deriving the Pokédex bank index, which is no longer true

	db  50,  50,  77,  91,  95,  77
	;   hp, atk, def, spd, sat, sdf

	db ELECTRIC, GHOST
	db 45 ; catch rate
	db 154 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/rotom/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, FRUSTRATION, THUNDERBOLT, THUNDER, RETURN, SHADOW_BALL, DOUBLE_TEAM, REST, THIEF, ZAP_CANNON, ENDURE, FLASH, PSYCH_UP, SLEEP_TALK, DREAM_EATER, SWAGGER
	;end
