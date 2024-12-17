	db 25 ; 281 -- Is ignored anyway; used to be the basis for deriving the Pokédex bank index, which is no longer true

	db  55,  40,  50,  40,  65,  85
	;   hp, atk, def, spd, sat, sdf

	db WATER, GHOST
	db 190 ; catch rate
	db 67 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/frillish/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, FRUSTRATION, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SLUDGE_BOMB, REST, ATTRACT, FLASH, PSYCH_UP, DREAM_EATER, SWAGGER, SURF, WATERFALL, ICY_WIND, GIGA_DRAIN, SNORE, SLEEP_TALK, ENDURE, WHIRLPOOL
	;end
