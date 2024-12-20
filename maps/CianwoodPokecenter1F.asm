	object_const_def
	const CIANWOODPOKECENTER1F_NURSE
	const CIANWOODPOKECENTER1F_LASS
	const CIANWOODPOKECENTER1F_GYM_GUIDE
	const CIANWOODPOKECENTER1F_SUPER_NERD

CianwoodPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CianwoodPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

CianwoodPokecenter1FLassScript:
	jumptextfaceplayer CianwoodPokecenter1FLassText

CianwoodGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_CHUCK
	iftrue .CianwoodGymGuideWinScript
	opentext
	writetext CianwoodGymGuideText
	waitbutton
	closetext
	end

.CianwoodGymGuideWinScript:
	opentext
	writetext CianwoodGymGuideWinText
	waitbutton
	closetext
	end

CianwoodPokecenter1FSuperNerdScript:
	jumptextfaceplayer CianwoodPokecenter1FSuperNerdText

CianwoodPokecenter1FLassText:
	text "Hast du schon den"
	line "#MANIAC getrof-"
	cont "fen?"

	para "Er gibt immer mit"
	line "seinen seltenen"
	cont "#MON an."
	done

CianwoodGymGuideText:
	text "Die Trainer in"
	line "der PKMN-ARENA"

	para "sind richtige"
	line "Schlägertypen."

	para "Wenn ich dort rum-"
	line "stehe, schnappen"
	cont "sie mich."

	para "Ein Tipp: Der LEI-"
	line "TER setzt gerne"

	para "Kampf-#MON"
	line "ein."

	para "Du solltest ihn"
	line "mit Psycho-#-"
	cont "MON überraschen."

	para "Besiege seine"
	line "#MON, bevor sie"

	para "ihre Kraft ein-"
	line "setzen können."

	para "Und die Felsen"
	line "in der Mitte der"
	cont "PKMN-ARENA?"

	para "Räume sie aus dem"
	line "Weg, denn sonst"

	para "wirst du den"
	line "ARENALEITER nie"
	cont "erreichen."

	para "Hast du dich ver-"
	line "schoben, verlasse"
	cont "die PKMN-ARENA."
	done

CianwoodGymGuideWinText:
	text "<PLAYER>! Du hast"
	line "gewonnen! Das habe"
	cont "ich dir gleich an-"
	cont "gesehen!"
	done

CianwoodPokecenter1FUnusedText1: ; unreferenced
; unreferenced
	text "Überkommt dich"
	line "manchmal auch das"

	para "Verlangen, deine"
	line "#MON deinen"

	para "Freunden zeigen zu"
	line "müssen?"

	para "Ich wünschte, ich"
	line "könnte meine #-"
	cont "MON meinem Kame-"
	cont "raden in VIOLA"
	cont "CITY zeigen."
	done

CianwoodPokecenter1FUnusedText2: ; unreferenced
; unreferenced
	text_start
	done

CianwoodPokecenter1FSuperNerdText:
	text "Ich liebe es, mit"
	line "meinen trainierten"

	para "#MON anzugeben."
	line "Du etwa nicht?"

	para "Ich werde einige"
	line "Kämpfe bestreiten,"

	para "um mit meinen"
	line "#MON anzugeben!"
	done

CianwoodPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CIANWOOD_CITY, 3
	warp_event  4,  7, CIANWOOD_CITY, 3
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodPokecenter1FNurseScript, -1
	object_event  1,  5, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CianwoodPokecenter1FLassScript, -1
	object_event  5,  3, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CianwoodGymGuideScript, -1
	object_event  8,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CianwoodPokecenter1FSuperNerdScript, -1
