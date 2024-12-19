	object_const_def
	const ECRUTEAKPOLTCHAGEISTHOUSE_GIRL

EcruteakPoltchageistHouse_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakPoltchageistHouseGirlScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_POLTCHAGEIST
	iftrue .gotalready
	writetext EcruteakPoltchageistHouseGirl_Explain
	waitbutton
	closetext
	pokepic POLTCHAGEIST
	waitbutton
	closepokepic
	opentext
	writetext EcruteakPoltchageistHouseGirl_AskKeepSafe
	yesorno
	iffalse .refused
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .noroom
	writetext EcruteakPoltchageistHouseGirl_ReceivedPoltchageist
	cry POLTCHAGEIST
	waitsfx
	givepoke POLTCHAGEIST, 25
	setevent EVENT_GOT_POLTCHAGEIST
.gotalready:
	writetext EcruteakPoltchageistHouseGirl_Thanks
	waitbutton
	closetext
	end

.refused:
	writetext EcruteakPoltchageistHouseGirl_Refused
	waitbutton
	closetext
	end

.noroom:
	writetext EcruteakPoltchageistHouseGirl_NoRoom
	waitbutton
	closetext
	end

EcruteakPoltchageistHouseRadio:
	jumpstd Radio2Script

EcruteakPoltchageistHouseGirl_Explain:
	text "What ever shall"
	line "I do?"

	para "Grandmother be-"
	line "queathed this tea"
	cont "caddy to me,"

	para "but there's some-"
	line "thing eerie about"
	cont "it…"
	done

EcruteakPoltchageistHouseGirl_AskKeepSafe:
	text "Sometimes in the"
	line "morning I find it"

	para "in a different"
	line "place than where I"
	cont "put it at night!"

	para "…Would you perhaps"
	line "like to take it?"
	done

EcruteakPoltchageistHouseGirl_ReceivedPoltchageist:
	text "<PLAYER> received"
	line "POLTCHAGEIST!"
	done

EcruteakPoltchageistHouseGirl_Thanks:
	text "Thanks you so"
	line "much for taking"

	para "grandmother's tea"
	line "caddy into your"
	cont "care!"
	done

EcruteakPoltchageistHouseGirl_Refused:
	text "But I can't just"
	line "dispose of grand-"

	para "mother's tea"
	line "caddy…"
	done

EcruteakPoltchageistHouseGirl_NoRoom:
	text "Are you sure?"
	line "You don't seem to"
	cont "have room for it…"
	done

EcruteakPoltchageistHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 16
	warp_event  4,  7, ECRUTEAK_CITY, 16

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, EcruteakPoltchageistHouseRadio

	def_object_events
	object_event  2,  3, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakPoltchageistHouseGirlScript, -1
