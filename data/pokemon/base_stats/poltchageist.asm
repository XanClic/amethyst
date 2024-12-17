	db 29 ; 285 -- Is ignored anyway; used to be the basis for deriving the Pokédex bank index, which is no longer true

	db  40,  45,  45,  50,  74,  54
	;   hp, atk, def, spd, sat, sdf

	db GRASS, GHOST
	db 120 ; catch rate
	db 62 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/poltchageist/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm PROTECT, ENDURE, SLEEP_TALK, REST, RETURN, FRUSTRATION, GIGA_DRAIN, SHADOW_BALL, SOLARBEAM, PSYCH_UP, CURSE, TOXIC, HEADBUTT
	;end
