	object_const_def
	const ECRUTEAKGYM_SOPHIE
	const ECRUTEAKGYM_SAGE1
	const ECRUTEAKGYM_SAGE2
	const ECRUTEAKGYM_GRANNY1
	const ECRUTEAKGYM_GRANNY2
	const ECRUTEAKGYM_GYM_GUIDE
	const ECRUTEAKGYM_GRAMPS

EcruteakGym_MapScripts:
	def_scene_scripts
	scene_script EcruteakGymForcedToLeaveScene, SCENE_ECRUTEAKGYM_FORCED_TO_LEAVE
	scene_script EcruteakGymNoopScene,          SCENE_ECRUTEAKGYM_NOOP

	def_callbacks

EcruteakGymForcedToLeaveScene:
	end

EcruteakGymNoopScene:
	end

EcruteakGymSophieScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .Rematch
	checkevent EVENT_BEAT_SOPHIE
	iftrue .FightDone
	writetext SophieIntroText
	waitbutton
	closetext
	winlosstext SophieWinLossText, 0
	loadtrainer SOPHIE, SOPHIE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SOPHIE
	opentext
	writetext Text_ReceivedFogBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_FOGBADGE
	readvar VAR_BADGES
	scall EcruteakGymActivateRockets
	setmapscene ECRUTEAK_TIN_TOWER_ENTRANCE, SCENE_ECRUTEAKTINTOWERENTRANCE_NOOP
	setevent EVENT_RANG_CLEAR_BELL_1
	setevent EVENT_RANG_CLEAR_BELL_2
.FightDone:
	checkevent EVENT_GOT_TM30_SHADOW_BALL
	iftrue .GotShadowBall
	setevent EVENT_BEAT_WITCHER_CHRISTIAN
	setevent EVENT_BEAT_SAGE_BLIH
	setevent EVENT_BEAT_HEX_MANIAC_FINE
	setevent EVENT_BEAT_HEX_MANIAC_CLARA
	writetext SophieText_FogBadgeSpeech
	promptbutton
	verbosegiveitem TM_SHADOW_BALL
	iffalse .NoRoomForShadowBall
	setevent EVENT_GOT_TM30_SHADOW_BALL
	writetext SophieText_ShadowBallSpeech
	waitbutton
	closetext
	end

.Rematch:
	checkflag ENGINE_SOPHIE_DAILY_REMATCH
	iftrue .RematchAlreadyDone
	writetext SophieRematchText
	yesorno
	iffalse .RematchLater
	closetext
	setflag ENGINE_SOPHIE_DAILY_REMATCH
	winlosstext SophieRematchWinLossText, 0
	loadtrainer SOPHIE, SOPHIE2
	startbattle
	reloadmapafterbattle
	opentext
	writetext SophiePostRematchText
	waitbutton
	closetext
	end

.RematchAlreadyDone:
	writetext SophieRematchTomorrowText
	waitbutton
	closetext
	end

.RematchLater:
	writetext SophieLaterRematchText
	waitbutton
	closetext
	end

.GotShadowBall:
	writetext SophieFightDoneText
	waitbutton
.NoRoomForShadowBall:
	closetext
	end

EcruteakGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

EcruteakGymClosed:
	applymovement PLAYER, EcruteakGymPlayerStepUpMovement
	applymovement ECRUTEAKGYM_GRAMPS, EcruteakGymGrampsSlowStepDownMovement
	opentext
	writetext EcruteakGymClosedText
	waitbutton
	closetext
	follow PLAYER, ECRUTEAKGYM_GRAMPS
	applymovement PLAYER, EcruteakGymPlayerSlowStepDownMovement
	stopfollow
	special FadeOutToWhite
	playsound SFX_ENTER_DOOR
	waitsfx
	warp ECRUTEAK_CITY, 6, 27
	end

TrainerWitcherChristian:
	trainer WITCHER, CHRISTIAN, EVENT_BEAT_WITCHER_CHRISTIAN, WitcherChristianSeenText, WitcherChristianBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext WitcherChristianAfterBattleText
	waitbutton
	closetext
	end

TrainerSageBlih:
	trainer SAGE, BLIH, EVENT_BEAT_SAGE_BLIH, SageBlihSeenText, SageBlihBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageBlihAfterBattleText
	waitbutton
	closetext
	end

TrainerHexManiacFine:
	trainer HEX_MANIAC, FINE, EVENT_BEAT_HEX_MANIAC_FINE, HexManiacFineSeenText, HexManiacFineBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HexManiacFineAfterBattleText
	waitbutton
	closetext
	end

TrainerHexManiacClara:
	trainer HEX_MANIAC, CLARA, EVENT_BEAT_HEX_MANIAC_CLARA, HexManiacClaraSeenText, HexManiacClaraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HexManiacClaraAfterBattleText
	waitbutton
	closetext
	end

EcruteakGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SOPHIE
	iftrue .EcruteakGymGuideWinScript
	writetext EcruteakGymGuideText
	waitbutton
	closetext
	end

.EcruteakGymGuideWinScript:
	writetext EcruteakGymGuideWinText
	waitbutton
	closetext
	end

EcruteakGymStatue:
	checkflag ENGINE_FOGBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, SOPHIE, SOPHIE1
	jumpstd GymStatue2Script

EcruteakGymMimikyu:
	opentext
	writetext EcruteakGymMimikyuCryText
	pause 5
	cry MIMIKYU
	waitbutton
	writetext EcruteakGymMimikyuCryContText
	waitbutton
	checkevent EVENT_BEAT_SOPHIE
	iffalse .End
	checkevent EVENT_GOT_LIGHT_BALL
	iftrue .End
	writetext EcruteakGymMimikyuGiveLightBallText
	promptbutton
	verbosegiveitem LIGHT_BALL
	iffalse .End
	setevent EVENT_GOT_LIGHT_BALL
.End:
	closetext
	end

EcruteakGymPlayerStepUpMovement:
	step UP
	step_end

EcruteakGymPlayerSlowStepDownMovement:
	fix_facing
	slow_step DOWN
	remove_fixed_facing
	step_end

EcruteakGymGrampsSlowStepDownMovement:
	slow_step DOWN
	step_end

SophieIntroText:
	text "Schön, dass du"
	line "gekommen bist!"

	para "Ich bin SOPHIE!"
	line "Mein Herz schlägt"
	cont "für Geist-#MON."

	para "Wusstest du, dass"
	line "sie sehr effektiv"
	cont "gegeneinander"
	cont "sind?"

	para "Je mehr Geister in"
	line "einem Kampf sind,"
	cont "desto besser ist"
	cont "es also!"

	para "…Finde ich jeden-"
	line "falls."

	para "Aber genug davon."

	para "Dass du in der"
	line "Turmruine einfach"
	cont "so durch den Boden"
	cont "gebrochen bist,"

	para "war schon richtig"
	line "großes Pech!"

	para "…Oder war es rich-"
	line "tig großes Glück?"

	para "Oder aber…"

	para "Man sagt, legen-"
	line "däre #MON er-"
	cont "scheinen nur wirk-"
	cont "lich starken"
	cont "Trainern."

	para "…"

	para "Ich glaube nicht"
	line "an Zufälle."

	para "Und du?"
	done

SophieWinLossText:
	text "Ich verstehe."

	para "Wirklich"
	line "beeindruckend!"

	para "Du bist dieses"
	line "ORDENs mehr als"
	cont "würdig!"
	done

Text_ReceivedFogBadge:
	text "<PLAYER> erhält"
	line "PHANTOMORDEN."
	done

SophieText_FogBadgeSpeech:
	text "Durch den PHANTOM-"
	line "ORDEN gehorchen"

	para "dir #MON bis zu"
	line "LV 50!"

	para "Außerdem kannst du"
	line "damit SURFER auch"
	cont "außerhalb eines"
	cont "Kampfes einsetzen."

	para "Bitte, nimm auch"
	line "dies."
	done

SophieText_ShadowBallSpeech:
	text "Das ist SPUKBALL!"

	para "Er verursacht"
	line "Schaden und ver-"
	cont "ringert die SPE-"
	cont "ZIAL-VERT."

	para "Eine feine Sache"
	line "für fast jedes"
	cont "Geister-#MON!"
	done

SophieFightDoneText:
	text "Ich hoffe, das"
	line "war nicht das"

	para "letzte Mal, dass"
	line "wir uns begegnet"
	cont "sind."

	para "Komm doch noch"
	line "einmal vorbei,"

	para "wenn du die TOP"
	line "VIER besiegt hast!"
	done

SophieRematchText:
	text "Schön, dass du es"
	line "dir einrichten"
	cont "konntest!"

	para "Ich sehe, du hast"
	line "viel erlebt."

	para "Bist du bereit?"
	done

SophieRematchWinLossText:
	text "Wow!"
	done

SophiePostRematchText:
	text "Das hat echt Spaß"
	line "gemacht."

	para "Komm doch wieder"
	line "vorbei!"
	done

SophieRematchTomorrowText:
	text "Komm doch bald"
	line "wieder vorbei!"
	done

SophieLaterRematchText:
	text "Na gut, aber"
	line "später!"
	done

WitcherChristianSeenText:
	text "Ich mag Hexen-"
	line "hüte!"

	para "Sie sind bequem"
	line "und einfach"
	cont "schick."
	done

WitcherChristianBeatenText:
	text "Normalisiert"
	line "Männer mit"
	cont "Hexenhüten!"
	done

WitcherChristianAfterBattleText:
	text "Nur leider rutscht"
	line "mein Hut mir"
	cont "immer vom Kopf…"
	done

SageBlihSeenText:
	text "Wie wärs mit"
	line "einem Kaffee?"
	done

SageBlihBeatenText:
	text "Ach, wär ich"
	line "jetzt gern zu"
	cont "Hause…"
	done

SageBlihAfterBattleText:
	text "Neben meiner Ar-"
	line "beit hier bin ich"
	cont "auch Barista!"
	done

HexManiacFineSeenText:
	text "Ich werde siegen!"
	done

HexManiacFineBeatenText:
	text "I-I-Ich habe"
	line "verloren!"
	done

HexManiacFineAfterBattleText:
	text "Wer siegen will,"
	line "wird es auch tun!"
	done

HexManiacClaraSeenText:
	text "Pass bloß auf!"
	done

HexManiacClaraBeatenText:
	text "W-Was?"
	done

HexManiacClaraAfterBattleText:
	text "Pass auf, wo du"
	line "hin trittst!"

	para "Im Dunkeln kann"
	line "man leicht etwas"
	cont "übersehen…"
	done

EcruteakGymGuideText:
	text "Die Trainer hier"
	line "haben geheime Mo-"
	cont "tive."

	para "Gewinnst du, so"
	line "verraten sie dir"

	para "vielleicht ein"
	line "paar Weisheiten."
	done

EcruteakGymGuideWinText:
	text "Wow, <PLAYER>."
	line "Du warst großar-"
	cont "tig!"

	para "Vor lauter Angst"
	line "habe ich mich in"
	cont "die Ecke gekauert!"
	done

EcruteakGymClosedText:
	text "SOPHIE, die ARENA-"
	line "LEITERIN ist nicht"
	cont "hier."

	para "Du musst leider"
	line "wieder gehen."

	para "Hohohoho."
	done

EcruteakGymMimikyuCryText:
	text "MIMIGMA: Pi-gma!"
	done

EcruteakGymMimikyuCryContText:
	text "Es ist wohl etwas"
	line "schüchtern…"
	done

EcruteakGymMimikyuGiveLightBallText:
	text "Es möchte dir"
	line "etwas geben!"
	done

EcruteakGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, ECRUTEAK_CITY, 10
	warp_event  5, 17, ECRUTEAK_CITY, 10

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, EcruteakGymStatue
	bg_event  6, 15, BGEVENT_READ, EcruteakGymStatue
	bg_event  3, 0, BGEVENT_READ, EcruteakGymMimikyu

	def_object_events
	object_event  5,  1, SPRITE_SOPHIE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, EcruteakGymSophieScript, -1
	object_event  2,  7, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerWitcherChristian, -1
	object_event  3, 13, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSageBlih, -1
	object_event  6,  4, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerHexManiacFine, -1
	object_event  3, 10, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerHexManiacClara, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakGymGuideScript, -1
	object_event  4, 14, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ECRUTEAK_GYM_GRAMPS
