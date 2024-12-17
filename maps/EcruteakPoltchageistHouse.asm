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
	givepoke POLTCHAGEIST, 20
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
	text "Was soll ich nur"
	line "machen?"

	para "Meine Großmutter"
	line "hat mir diese Tee-"
	cont "dose vermacht,"

	para "aber irgendwie ist"
	line "sie mir unheim-"
	cont "lich…"
	done

EcruteakPoltchageistHouseGirl_AskKeepSafe:
	text "Manchmal ist sie"
	line "morgens nicht mehr"

	para "da, wo ich sie am"
	line "Abend hingestellt"
	cont "hatte!"

	para "…Würdest du sie"
	line "vielleicht nehmen?"
	done

EcruteakPoltchageistHouseGirl_ReceivedPoltchageist:
	text "<PLAYER> erhält"
	line "MORTCHA!"
	done

EcruteakPoltchageistHouseGirl_Thanks:
	text "Danke, dass du"
	line "dich um Groß-"

	para "mutters Teedose"
	line "kümmerst!"
	done

EcruteakPoltchageistHouseGirl_Refused:
	text "Aber ich kann doch"
	line "Großmutters Tee-"

	para "dose nicht einfach"
	line "wegwerfen…"
	done

EcruteakPoltchageistHouseGirl_NoRoom:
	text "Bist du sicher?"
	line "Du scheinst keinen"
	cont "Platz zu haben…"
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
