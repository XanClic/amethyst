	db 2 ; 258 -- FIXME

	db  40,  45,  45,  50,  74,  54
	;   hp, atk, def, spd, sat, sdf

	db GHOST, GHOST
	db 120 ; catch rate
	db 62 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sinistea/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm REST, SNORE, PROTECT, GIGA_DRAIN, PSYCHIC_M, ENDURE, SLEEP_TALK, SHADOW_BALL, RETURN, FRUSTRATION
	;end
