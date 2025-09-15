	db 19 ; 275 -- Is ignored anyway; used to be the basis for deriving the Pokédex bank index, which is no longer true

	db  50,  61,  60,  34,  30,  55
	;   hp, atk, def, spd, sat, sdf

	db GHOST, GHOST
	db 120 ; catch rate
	db 58 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/greavard/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm MUD_SLAP, PROTECT, THIEF, ENDURE, SUNNY_DAY, RAIN_DANCE, SANDSTORM, DIG, SLEEP_TALK, REST, SHADOW_BALL, ROAR, RETURN, FRUSTRATION, SLEEP_TALK, HIDDEN_POWER, STRENGTH
	;end
