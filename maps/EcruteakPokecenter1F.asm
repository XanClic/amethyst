	object_const_def
	const ECRUTEAKPOKECENTER1F_NURSE
	const ECRUTEAKPOKECENTER1F_POKEFAN_M
	const ECRUTEAKPOKECENTER1F_COOLTRAINER_F
	const ECRUTEAKPOKECENTER1F_GYM_GUIDE
	const ECRUTEAKPOKECENTER1F_BILL

EcruteakPokecenter1F_MapScripts:
	def_scene_scripts
	scene_script EcruteakPokecenter1FMeetBillScene, SCENE_ECRUTEAKPOKECENTER1F_MEET_BILL
	scene_script EcruteakPokecenter1FNoopScene,     SCENE_ECRUTEAKPOKECENTER1F_NOOP

	def_callbacks

EcruteakPokecenter1FMeetBillScene:
	sdefer EcruteakPokcenter1FBillActivatesTimeCapsuleScript
	end

EcruteakPokecenter1FNoopScene:
	end

EcruteakPokcenter1FBillActivatesTimeCapsuleScript:
	pause 30
	playsound SFX_EXIT_BUILDING
	appear ECRUTEAKPOKECENTER1F_BILL
	waitsfx
	applymovement ECRUTEAKPOKECENTER1F_BILL, EcruteakPokecenter1FBillMovement1
	applymovement PLAYER, EcruteakPokecenter1FPlayerMovement1
	turnobject ECRUTEAKPOKECENTER1F_NURSE, UP
	pause 10
	turnobject ECRUTEAKPOKECENTER1F_NURSE, DOWN
	pause 30
	turnobject ECRUTEAKPOKECENTER1F_NURSE, UP
	pause 10
	turnobject ECRUTEAKPOKECENTER1F_NURSE, DOWN
	pause 20
	turnobject ECRUTEAKPOKECENTER1F_BILL, DOWN
	pause 10
	opentext
	writetext EcruteakPokecenter1F_BillText1
	promptbutton
	sjump .PointlessJump

.PointlessJump:
	writetext EcruteakPokecenter1F_BillText2
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement ECRUTEAKPOKECENTER1F_BILL, EcruteakPokecenter1FBillMovement2
	playsound SFX_EXIT_BUILDING
	disappear ECRUTEAKPOKECENTER1F_BILL
	clearevent EVENT_MET_BILL
	setflag ENGINE_TIME_CAPSULE
	setscene SCENE_ECRUTEAKPOKECENTER1F_NOOP
	waitsfx
	end

EcruteakPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

EcruteakPokecenter1FPokefanMScript:
	special CheckMobileAdapterStatusSpecial
	iftrue .mobile
	jumptextfaceplayer EcruteakPokecenter1FPokefanMText

.mobile
	jumptextfaceplayer EcruteakPokecenter1FPokefanMTextMobile

EcruteakPokecenter1FCooltrainerFScript:
	jumptextfaceplayer EcruteakPokecenter1FCooltrainerFText

EcruteakPokecenter1FGymGuideScript:
	jumptextfaceplayer EcruteakPokecenter1FGymGuideText

EcruteakPokecenter1FBillMovement1:
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

EcruteakPokecenter1FBillMovement2:
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

EcruteakPokecenter1FPlayerMovement1:
	step UP
	step UP
	step UP
	step_end

EcruteakPokecenter1F_BillText1:
	text "Hi, ich bin BILL."
	line "Und wer bist du?"

	para "Hmm, <PLAYER>?"
	line "Du bist gerade zum"
	cont "richtigen Zeit-"
	cont "punkt gekommen."
	done

EcruteakPokecenter1F_BillText2:
	text "Ich bin soeben mit"
	line "den Arbeiten an"
	cont "der ZEITKAPSEL"
	cont "fertig geworden."

	para "Du weißt doch,"
	line "dass man #MON"
	cont "tauschen kann?"

	para "Meine ZEITKAPSEL"
	line "ermöglicht auch"

	para "Tauschhandel in"
	line "der Vergangenheit."

	para "Aber du kannst"
	line "nichts in die Ver-"
	cont "gangenheit senden,"

	para "was damals nicht"
	line "existierte."

	para "Solltest du das"
	line "versuchen, erlei-"
	cont "det der PC in der"
	cont "Vergangenheit ei-"
	cont "nen Absturz."

	para "Also musst du al-"
	line "les entfernen, was"

	para "es in der Vergan-"
	line "genheit nicht gab."

	para "Einfach gesagt: Du"
	line "darfst keine neuen"

	para "Attacken oder"
	line "#MON mit der"

	para "ZEITKAPSEL ver-"
	line "schicken."

	para "Keine Sorge. Ich"
	line "bin jetzt fertig."

	para "Schon morgen wer-"
	line "den ZEITKAPSELN in"

	para "allen #MON-"
	line "CENTERN zur Verfü-"
	cont "gung stehen."

	para "Ich muss zurück"
	line "nach DUKATIA CITY,"
	cont "um meine Freunde"
	cont "zu besuchen."

	para "Tschü-hüs!"
	done

EcruteakPokecenter1FPokefanMText:
	text "Sowohl der Tanz"
	line "der KIMONO-GIRLS"

	para "als auch die Art,"
	line "wie sie ihre #-"
	cont "MON einsetzen, ist"
	cont "wunderbar!"
	done

EcruteakPokecenter1FPokefanMTextMobile:
	text "Du hoffst, hier"
	line "mehr Kämpfe zu er-"
	cont "leben, nicht wahr?"

	para "Es gibt offen-"
	line "sichtlich einen"

	para "Ort, an dem sich"
	line "Trainer treffen."

	para "Wo, fragst du?"

	para "Kurz nach"
	line "OLIVIANA CITY."
	done

EcruteakPokecenter1FCooltrainerFText:
	text "SOPHIE, die ARENA-"
	line "LEITERIN, ist sooo"
	cont "cool."

	para "Auch ihre #MON"
	line "sind sehr stark."
	done

EcruteakPokecenter1FGymGuideText:
	text "SEE DES ZORNS…"

	para "Das Erscheinen ei-"
	line "nes GARADOS-"
	cont "Schwarms…"

	para "Das riecht nach"
	line "Verschwörung!"
	done

EcruteakPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 6
	warp_event  4,  7, ECRUTEAK_CITY, 6
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FNurseScript, -1
	object_event  7,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FPokefanMScript, -1
	object_event  1,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FCooltrainerFScript, -1
	object_event  7,  1, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FGymGuideScript, -1
	object_event  0,  7, SPRITE_BILL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ECRUTEAK_POKE_CENTER_BILL
