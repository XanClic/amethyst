	db 8 ; 264 -- FIXME

	db  55, 100,  60, 110, 125,  60
	;   hp, atk, def, spd, sat, sdf

	db NORMAL, GHOST
	db 45 ; catch rate
	db 179 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/zoroark/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HIDDEN_POWER, PROTECT, FRUSTRATION, RETURN, THIEF, SWIFT, ICY_WIND, ENDURE, RAIN_DANCE, DIG, SLEEP_TALK, REST, SHADOW_BALL, PSYCHIC_M, FLAMETHROWER, SLUDGE_BOMB, HYPER_BEAM, CURSE
	;end
