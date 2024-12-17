	db 14 ; 270 -- Is ignored anyway; used to be the basis for deriving the Pokédex bank index, which is no longer true

	db  45,  80, 100,  28,  35,  37
	;   hp, atk, def, spd, sat, sdf

	db STEEL, GHOST
	db 180 ; catch rate
	db 65 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/honedge/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, PROTECT, RAIN_DANCE, FRUSTRATION, RETURN, DOUBLE_TEAM, REST, ATTRACT, SWAGGER, SLEEP_TALK, CUT, ROCK_SMASH
	;end
