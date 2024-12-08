	object_const_def
	const OLIVINELIGHTHOUSE6F_JASMINE
	const OLIVINELIGHTHOUSE6F_MONSTER
	const OLIVINELIGHTHOUSE6F_POKE_BALL

OlivineLighthouse6F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, OlivineLighthouse6FLoadReservedIDCallback

OlivineLighthouse6FLoadReservedIDCallback:
	loadmonindex 1, AMPHAROS
	endcallback

OlivineLighthouseJasmine:
	faceplayer
	opentext
	checkitem SECRETPOTION
	iftrue .BroughtSecretpotion
	checkevent EVENT_JASMINE_EXPLAINED_AMPHYS_SICKNESS
	iftrue .ExplainedSickness
	writetext JasmineCianwoodPharmacyText
	promptbutton
	setevent EVENT_JASMINE_EXPLAINED_AMPHYS_SICKNESS
.ExplainedSickness:
	writetext JasmineGetSomeMedicineText
	waitbutton
	closetext
	end

.BroughtSecretpotion:
	writetext JasmineCureAmphyText
	yesorno
	iffalse .Refused
	writetext PlayerHandedSecretpotionText
	promptbutton
	takeitem SECRETPOTION
	writetext JasmineDontBeOffendedText
	waitbutton
	closetext
	turnobject OLIVINELIGHTHOUSE6F_JASMINE, RIGHT
	pause 15
	turnobject OLIVINELIGHTHOUSE6F_MONSTER, LEFT
	opentext
	playmusic MUSIC_HEAL
	writetext JasmineAmphyHowAreYouFeelingText
	pause 60
	promptbutton
	closetext
	special RestartMapMusic
	cry AMPHAROS
	special FadeOutToWhite
	pause 10
	special FadeInFromWhite
	opentext
	writetext AmphyPaluPaluluText
	waitbutton
	closetext
	turnobject OLIVINELIGHTHOUSE6F_MONSTER, RIGHT
	pause 10
	turnobject OLIVINELIGHTHOUSE6F_MONSTER, LEFT
	pause 10
	turnobject OLIVINELIGHTHOUSE6F_MONSTER, RIGHT
	pause 10
	turnobject OLIVINELIGHTHOUSE6F_MONSTER, LEFT
	pause 10
	faceplayer
	opentext
	writetext JasmineThankYouText
	waitbutton
	closetext
	setevent EVENT_JASMINE_RETURNED_TO_GYM
	clearevent EVENT_OLIVINE_GYM_JASMINE
	readvar VAR_FACING
	ifequal DOWN, .FacingDown
	ifequal RIGHT, .FacingRight
	applymovement OLIVINELIGHTHOUSE6F_JASMINE, OlivineLighthouseJasmineLeavesUpMovement
	disappear OLIVINELIGHTHOUSE6F_JASMINE
	end

.FacingDown:
	applymovement OLIVINELIGHTHOUSE6F_JASMINE, OlivineLighthouseJasmineLeavesDownMovement
	disappear OLIVINELIGHTHOUSE6F_JASMINE
	end

.FacingRight:
	applymovement OLIVINELIGHTHOUSE6F_JASMINE, OlivineLighthouseJasmineLeavesRightMovement
	disappear OLIVINELIGHTHOUSE6F_JASMINE
	end

.Refused:
	writetext JasmineISeeText
	waitbutton
	closetext
	turnobject OLIVINELIGHTHOUSE6F_JASMINE, RIGHT
	pause 15
	turnobject OLIVINELIGHTHOUSE6F_MONSTER, LEFT
	opentext
	writetext JasmineAmphyHangOnText
	waitbutton
	closetext
	end

.Unused: ; unreferenced
	end

OlivineLighthouseAmphy:
	faceplayer
	opentext
	checkevent EVENT_JASMINE_RETURNED_TO_GYM
	iftrue .HealthyNow
	writetext AmphyPalPalooText
	loadmonindex 0, AMPHAROS
	special PlaySlowCry
	promptbutton
	writetext AmphyBreathingLaboredText
	waitbutton
	closetext
	end

.HealthyNow:
	writetext AmphyPaluPaluluText
	cry AMPHAROS
	waitbutton
	closetext
	special FadeOutToWhite
	special FadeInFromWhite
	special FadeOutToWhite
	special FadeInFromWhite
	end

OlivineLighthouse6FSuperPotion:
	itemball SUPER_POTION

OlivineLighthouseJasmineLeavesUpMovement:
	slow_step UP
	slow_step UP
	slow_step RIGHT
	slow_step UP
	slow_step UP
	step_sleep 8
	step_sleep 8
	step_end

OlivineLighthouseJasmineLeavesDownMovement:
	slow_step DOWN
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	slow_step UP
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	step_end

OlivineLighthouseJasmineLeavesRightMovement:
	slow_step UP
	slow_step UP
	slow_step RIGHT
	slow_step UP
	slow_step UP
	slow_step UP
	step_sleep 8
	step_end

JasmineCianwoodPharmacyText:
	text "JASMIN: …Dieses"
	line "#MON hat"

	para "das Meer immer"
	line "erleuchtet."

	para "…Aber plötzlich"
	line "wurde es krank… Es"
	cont "schnappt nach"
	cont "Luft…"

	para "…Ich weiß, dass"
	line "es eine gut"

	para "sortierte APOTHEKE"
	line "in ANEMONIA CITY"
	cont "gibt…"

	para "Aber dafür musst"
	line "du über das Meer…"

	para "Und ich kann AMPHI"
	line "nicht unbeaufsich-"
	cont "tigt zurücklassen…"
	done

JasmineGetSomeMedicineText:
	text "…Vielleicht"
	line "könntest du die"
	cont "Medizin für mich"
	cont "besorgen? Bitte!"
	done

JasmineCureAmphyText:
	text "JASMIN: …Wird"
	line "diese Arznei AMPHI"
	cont "helfen?"
	done

PlayerHandedSecretpotionText:
	text "<PLAYER> übergibt"
	line "JASMIN den"
	cont "GEHEIMTRANK."
	done

JasmineDontBeOffendedText:
	text "JASMIN: …Hm,"
	line "sei bitte nicht"
	cont "beleidigt…"

	para "…AMPHI nimmt"
	line "die Arznei nur"
	cont "von mir…"
	done

JasmineAmphyHowAreYouFeelingText:
	text "JASMIN: …"

	para "AMPHI, wie geht"
	line "es dir?"
	done

JasmineThankYouText:
	text "JASMIN: …Oh, ich"
	line "bin erleichtert…"

	para "Das ist einfach"
	line "wundervoll…"

	para "Ich danke dir"
	line "vielmals."

	para "…Ich kehre in die"
	line "PKMN-ARENA zurück."
	done

JasmineISeeText:
	text "JASMIN: …Ich ver-"
	line "stehe…"
	done

JasmineAmphyHangOnText:
	text "…AMPHI, halte"
	line "durch!"
	done

AmphyPalPalooText:
	text "AMPHI: …"
	line "…Pa…Paluu…"
	done

AmphyBreathingLaboredText:
	text "Es hat Probleme"
	line "mit der Atmung…"
	done

AmphyPaluPaluluText:
	text "AMPHI: Palu!"
	line "Palulu!"
	done

OlivineLighthouse6F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 15, OLIVINE_LIGHTHOUSE_5F, 1
	warp_event 16,  5, OLIVINE_LIGHTHOUSE_5F, 6
	warp_event 17,  5, OLIVINE_LIGHTHOUSE_5F, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  8, SPRITE_JASMINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineLighthouseJasmine, EVENT_OLIVINE_LIGHTHOUSE_JASMINE
	object_event  9,  8, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, OlivineLighthouseAmphy, -1
	object_event  3,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, OlivineLighthouse6FSuperPotion, EVENT_OLIVINE_LIGHTHOUSE_6F_SUPER_POTION
