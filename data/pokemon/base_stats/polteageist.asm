	db 3 ; 259 -- FIXME

	db  60,  65,  65,  70, 134, 114
	;   hp, atk, def, spd, sat, sdf

	db GHOST, GHOST
	db 60 ; catch rate
	db 178 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/polteageist/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm HYPER_BEAM, REST, SNORE, PROTECT, GIGA_DRAIN, PSYCHIC_M, ENDURE, SLEEP_TALK, SHADOW_BALL, RETURN, FRUSTRATION
	;end
