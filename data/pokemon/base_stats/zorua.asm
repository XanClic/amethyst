	db 7 ; 263 -- Is ignored anyway; used to be the basis for deriving the Pokédex bank index, which is no longer true

	db  35,  60,  40,  70,  85,  40
	;   hp, atk, def, spd, sat, sdf

	db NORMAL, GHOST
	db 75 ; catch rate
	db 66 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/zorua/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HIDDEN_POWER, PROTECT, FRUSTRATION, RETURN, THIEF, SWIFT, ENDURE, RAIN_DANCE, DIG, SLEEP_TALK, REST, SHADOW_BALL, SLUDGE_BOMB, CURSE
	;end
