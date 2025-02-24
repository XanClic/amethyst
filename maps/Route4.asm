	object_const_def
	const ROUTE4_YOUNGSTER
	const ROUTE4_LASS1
	const ROUTE4_LASS2
	const ROUTE4_POKE_BALL
	const ROUTE4_MEWTWO

Route4_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBirdKeeperHank:
	trainer BIRD_KEEPER, HANK, EVENT_BEAT_BIRD_KEEPER_HANK, BirdKeeperHankSeenText, BirdKeeperHankBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperHankAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerHope:
	trainer PICNICKER, HOPE, EVENT_BEAT_PICNICKER_HOPE, PicnickerHopeSeenText, PicnickerHopeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerHopeAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerSharon:
	trainer PICNICKER, SHARON, EVENT_BEAT_PICNICKER_SHARON, PicnickerSharonSeenText, PicnickerSharonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerSharonAfterBattleText
	waitbutton
	closetext
	end

MtMoonSquareSign:
	jumptext MtMoonSquareSignText

Route4HPUp:
	itemball HP_UP

Route4HiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_ROUTE_4_HIDDEN_ULTRA_BALL

Route4Mewtwo:
	opentext
	writetext Route4MewtwoCryText
	pause 15
	cry MEWTWO
	closetext
	loadwildmon MEWTWO, 60
	loadvar VAR_BATTLETYPE, BATTLETYPE_GENERIC_LEGENDARY
	startbattle
	disappear ROUTE4_MEWTWO
	reloadmapafterbattle
	end

BirdKeeperHankSeenText:
	text "Ich trainiere"
	line "#MON. Trittst"
	cont "du gegen mich an?"
	done

BirdKeeperHankBeatenText:
	text "Uff! Ich habe"
	line "verloren…"
	done

BirdKeeperHankAfterBattleText:
	text "Hast du ein spe-"
	line "zielles #MON,"

	para "das du trainieren"
	line "möchtest, setze es"

	para "an die erste Stel-"
	line "le und tausche es"
	cont "sofort aus."

	para "So funktioniert"
	line "das."
	done

PicnickerHopeSeenText:
	text "Ich spüre, dass"
	line "ich gewinnen kann."

	para "Mal sehen, ob"
	line "das stimmt!"
	done

PicnickerHopeBeatenText:
	text "Argh, du bist zu"
	line "stark."
	done

PicnickerHopeAfterBattleText:
	text "Ich hörte, dass"
	line "PIEPI am MONDBERG"

	para "auftauchen. Aber"
	line "wo soll das sein?"
	done

PicnickerSharonSeenText:
	text "Ähm…"
	line "Ich…"
	done

PicnickerSharonBeatenText:
	text "…"
	done

PicnickerSharonAfterBattleText:
	text "……Ich sollte"
	line "wohl noch mehr"
	cont "trainieren…"
	done

MtMoonSquareSignText:
	text "MONDBERGPLATZ"

	para "Geh die Treppe"
	line "hinauf"
	done

Route4MewtwoCryText:
	text "MEWTU: Garara!"
	done

Route4_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  5, MOUNT_MOON, 2

	def_coord_events

	def_bg_events
	bg_event  3,  7, BGEVENT_READ, MtMoonSquareSign
	bg_event 10,  3, BGEVENT_ITEM, Route4HiddenUltraBall

	def_object_events
	object_event 17,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperHank, -1
	object_event  9,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerPicnickerHope, -1
	object_event 21,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerPicnickerSharon, -1
	object_event 26,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route4HPUp, EVENT_ROUTE_4_HP_UP
	object_event 34,  2, SPRITE_JYNX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route4Mewtwo, EVENT_MEWTWO
