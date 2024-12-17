	db 18 ; 274 -- Is ignored anyway; used to be the basis for deriving the Pokédex bank index, which is no longer true

	db  70,  80,  70, 110,  80,  70
	;   hp, atk, def, spd, sat, sdf

	db ICE, GHOST
	db 75 ; catch rate
	db 168 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/froslass/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FAIRY, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, ICE_BEAM, PROTECT, FRUSTRATION, RETURN, SHADOW_BALL, DOUBLE_TEAM, REST, ATTRACT, ENDURE, FLASH, SLEEP_TALK, SWAGGER, HEADBUTT, BLIZZARD, HYPER_BEAM, THUNDERBOLT, THUNDER, PSYCHIC_M, THIEF, DREAM_EATER, PSYCH_UP
	;end
