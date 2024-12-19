	object_const_def
	const ELMSHOUSE_ELMS_WIFE
	const ELMSHOUSE_ELMS_SON

ElmsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ElmsWife:
	jumptextfaceplayer ElmsWifeText

ElmsSon:
	jumptextfaceplayer ElmsSonText

ElmsHousePC:
	opentext
	writetext ElmsHousePCText
	yesorno
	iffalse .RatherNot
	writetext ElmsHousePCText_WhoWouldnt
	waitbutton
	special ElmsHousePC
	closetext
	end
.RatherNot:
	writetext ElmsHousePCText_RatherNot
	waitbutton
	closetext
	end

ElmsHouseBookshelf:
	jumpstd DifficultBookshelfScript

ElmsWifeText:
	text "Hi, <PLAY_G>! Mein"
	line "Mann ist immer so"

	para "beschäftigt. Ich"
	line "hoffe, es geht ihm"
	cont "gut."

	para "Wenn er sich in"
	line "seine #MON-"
	cont "Forschungen ver-"
	cont "tieft, vergisst er"
	cont "sogar zu essen."
	done

ElmsSonText:
	text "Wenn ich groß bin,"
	line "helfe ich meinem"
	cont "Papa!"

	para "Ich werde ein"
	line "großartiger #-"
	cont "MON-Professor!"
	done

ElmsHouseLabFoodText: ; unreferenced
; unused
	text "Hier ist etwas zu"
	line "essen. Es muss für"
	cont "das LABOR sein."
	done

ElmsHousePokemonFoodText: ; unreferenced
; unused
	text "Hier ist etwas zu"
	line "essen. Es muss für"
	cont "die #MON sein."
	done

ElmsHousePCText:
	text "Da klebt ein"
	line "Zettel am Bild-"
	cont "schirm:"

	para "NICHT FÜR #MON!"

	para "Trotzdem benutzen?"
	done

ElmsHousePCText_WhoWouldnt:
	text "Wer würde es nicht"
	line "tun?"
	done

ElmsHousePCText_RatherNot:
	text "Lieber nicht!"
	done

ElmsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, NEW_BARK_TOWN, 4
	warp_event  3,  7, NEW_BARK_TOWN, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_UP, ElmsHousePC
	bg_event  6,  1, BGEVENT_READ, ElmsHouseBookshelf
	bg_event  7,  1, BGEVENT_READ, ElmsHouseBookshelf

	def_object_events
	object_event  1,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ElmsWife, -1
	object_event  5,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ElmsSon, -1
