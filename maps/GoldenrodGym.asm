	object_const_def
	const GOLDENRODGYM_WHITNEY
	const GOLDENRODGYM_LASS1
	const GOLDENRODGYM_LASS2
	const GOLDENRODGYM_BEAUTY1
	const GOLDENRODGYM_BEAUTY2
	const GOLDENRODGYM_GYM_GUIDE

GoldenrodGym_MapScripts:
	def_scene_scripts
	scene_script GoldenrodGymNoop1Scene, SCENE_GOLDENRODGYM_NOOP
	scene_script GoldenrodGymNoop2Scene, SCENE_GOLDENRODGYM_WHITNEY_STOPS_CRYING

	def_callbacks

GoldenrodGymNoop1Scene:
	end

GoldenrodGymNoop2Scene:
	end

GoldenrodGymWhitneyScript:
	faceplayer
	checkevent EVENT_BEAT_WHITNEY
	iftrue .FightDone
	opentext
	writetext WhitneyBeforeText
	waitbutton
	closetext
	winlosstext WhitneyShouldntBeSoSeriousText, 0
	loadtrainer WHITNEY, WHITNEY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_WHITNEY
	setevent EVENT_MADE_WHITNEY_CRY
	setscene SCENE_GOLDENRODGYM_WHITNEY_STOPS_CRYING
	setevent EVENT_BEAT_BEAUTY_VICTORIA
	setevent EVENT_BEAT_BEAUTY_SAMANTHA
	setevent EVENT_BEAT_LASS_CARRIE
	setevent EVENT_BEAT_LASS_BRIDGET
.FightDone:
	opentext
	checkevent EVENT_MADE_WHITNEY_CRY
	iffalse .StoppedCrying
	writetext WhitneyYouMeanieText
	waitbutton
	closetext
	end

.StoppedCrying:
	checkevent EVENT_GOT_POLKADOT_BOW
	iftrue .GotPolkadotBow
	checkevent EVENT_GOT_TM45_ATTRACT
	iftrue .GotAttract
	checkflag ENGINE_PLAINBADGE
	iftrue .GotPlainBadge
	writetext WhitneyWhatDoYouWantText
	promptbutton
	waitsfx
	writetext PlayerReceivedPlainBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_PLAINBADGE
	readvar VAR_BADGES
	scall GoldenrodGymActivateRockets
.GotPlainBadge:
	writetext WhitneyPlainBadgeText
	promptbutton
	verbosegiveitem TM_ATTRACT
	iffalse .NoRoom
	setevent EVENT_GOT_TM45_ATTRACT
	writetext WhitneyAttractText
	waitbutton
.GotAttract:
	writetext WhitneyPolkadotBowText
	promptbutton
	verbosegiveitem POLKADOT_BOW
	iffalse .NoRoom
	setevent EVENT_GOT_POLKADOT_BOW
	closetext
	end

.GotPolkadotBow:
	writetext WhitneyGoodCryText
	waitbutton
.NoRoom:
	closetext
	end

GoldenrodGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerLassCarrie:
	trainer LASS, CARRIE, EVENT_BEAT_LASS_CARRIE, LassCarrieSeenText, LassCarrieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassCarrieAfterBattleText
	waitbutton
	closetext
	end

WhitneyCriesScript:
	showemote EMOTE_SHOCK, GOLDENRODGYM_LASS2, 15
	applymovement GOLDENRODGYM_LASS2, BridgetWalksUpMovement
	turnobject PLAYER, DOWN
	opentext
	writetext BridgetWhitneyCriesText
	waitbutton
	closetext
	applymovement GOLDENRODGYM_LASS2, BridgetWalksAwayMovement
	setscene SCENE_GOLDENRODGYM_NOOP
	clearevent EVENT_MADE_WHITNEY_CRY
	end

TrainerLassBridget:
	trainer LASS, BRIDGET, EVENT_BEAT_LASS_BRIDGET, LassBridgetSeenText, LassBridgetBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassBridgetAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautyVictoria:
	trainer BEAUTY, VICTORIA, EVENT_BEAT_BEAUTY_VICTORIA, BeautyVictoriaSeenText, BeautyVictoriaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyVictoriaAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautySamantha:
	trainer BEAUTY, SAMANTHA, EVENT_BEAT_BEAUTY_SAMANTHA, BeautySamanthaSeenText, BeautySamanthaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautySamanthaAfterBattleText
	waitbutton
	closetext
	end

GoldenrodGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_WHITNEY
	iftrue .GoldenrodGymGuideWinScript
	opentext
	writetext GoldenrodGymGuideText
	waitbutton
	closetext
	end

.GoldenrodGymGuideWinScript:
	opentext
	writetext GoldenrodGymGuideWinText
	waitbutton
	closetext
	end

GoldenrodGymStatue:
	checkflag ENGINE_PLAINBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, WHITNEY, WHITNEY1
	jumpstd GymStatue2Script

BridgetWalksUpMovement:
	step LEFT
	turn_head UP
	step_end

BridgetWalksAwayMovement:
	step RIGHT
	turn_head LEFT
	step_end

WhitneyBeforeText:
	text "Ich bin BIANKA!"

	para "Jeder hat sich für"
	line "#MON inte-"
	cont "ressiert, also"
	cont "musste ich mit-"
	cont "machen!"

	para "#MON sind"
	line "superniedlich!"

	para "Willst du kämpfen?"
	line "Sei gewarnt, ich"
	cont "bin gut!"
	done

WhitneyShouldntBeSoSeriousText:
	text "Schluchz…"

	para "…Waaaaaaah!"
	line "Du bist gemein!"

	para "Du solltest nicht"
	line "so ernst sein! Du,"
	cont "du Kind, du!"
	done

WhitneyYouMeanieText:
	text "Waaaaah!"

	para "Waaaaah!"

	para "…Schnüff, japs…"
	line "…Du bist gemein!"
	done

WhitneyWhatDoYouWantText:
	text "…Schnüff…"

	para "Was? Was willst"
	line "du? Einen ORDEN?"

	para "Oh, stimmt, ich"
	line "vergaß. Hier ist"
	cont "der BASISORDEN."
	done

PlayerReceivedPlainBadgeText:
	text "<PLAYER> erhält"
	line "BASISORDEN."
	done

WhitneyPlainBadgeText:
	text "Mit Hilfe des BA-"
	line "SISORDENs können"

	para "deine #MON"
	line "STÄRKE auch außer-"
	cont "halb eines Kampfes"
	cont "einsetzen."

	para "Außerdem erhöht er"
	line "die INIT deiner"
	cont "#MON."

	para "Oh, das hier"
	line "kannst du auch"
	cont "haben!"
	done

WhitneyAttractText:
	text "Es ist ANZIEHUNG!"
	line "Es bringt den"

	para "Charme eines"
	line "#MON voll zur"
	cont "Geltung."

	para "Passt das nicht"
	line "perfekt zu einem"
	cont "süßen Ding wie"
	cont "mir?"
	done

WhitneyPolkadotBowText:
	text "Ach, und das hier"
	line "habe ich mir mal"

	para "geholt, aber ir-"
	line "gendwie passt es"
	cont "gar nicht zu mir…"

	para "Vielleicht kannst"
	line "du es ja besser"
	cont "gebrauchen!"
	done

WhitneyGoodCryText:
	text "Ah, die Flennerei"
	line "hat gut getan! Be-"

	para "suche mich mal"
	line "wieder! Tschüssi!"
	done

LassCarrieSeenText:
	text "Lass dich nicht"
	line "von dem netten"

	para "Äußeren meiner"
	line "#MON täuschen."

	para "Sie können dich"
	line "platt machen."
	done

LassCarrieBeatenText:
	text "Verflixt… Ich"
	line "dachte, du wärest"
	cont "schwach…"
	done

LassCarrieAfterBattleText:
	text "Denken meine #-"
	line "MON, dass ich"
	cont "niedlich bin?"
	done

LassBridgetSeenText:
	text "Ich mag niedliche"
	line "#MON lieber"
	cont "als starke."

	para "Aber ich habe"
	line "starke und nied-"
	cont "liche #MON!"
	done

LassBridgetBeatenText:
	text "Oh, nein, nein!"
	done

LassBridgetAfterBattleText:
	text "Ich trainiere, um"
	line "BIANKA zu besie-"
	cont "gen… aber es ist"
	cont "hoffnungslos."

	para "Wenn ich verliere,"
	line "werde ich einfach"

	para "härter trainieren!"
	done

BridgetWhitneyCriesText:
	text "Oh nein. Du hast"
	line "BIANKA zum Weinen"
	cont "gebracht."

	para "Keine Sorge. Sie"
	line "beruhigt sich bald"

	para "wieder. Sie weint"
	line "immer, wenn sie"
	cont "verloren hat."
	done

BeautyVictoriaSeenText:
	text "Oh, du musst wohl"
	line "noch etwas"

	para "wachsen! Ich mag"
	line "dich, aber ich"

	para "werde mich nicht"
	line "zurückhalten!"
	done

BeautyVictoriaBeatenText:
	text "Mal sehen… Ups,"
	line "schon vorbei?"
	done

BeautyVictoriaAfterBattleText:
	text "Wow, du musst gut"
	line "sein, wenn du es"
	cont "schaffst, mich zu"
	cont "schlagen. Mach"
	cont "weiter so!"
	done

BeautySamanthaSeenText:
	text "Schlag ordentlich"
	line "zu, sonst werde"
	cont "ich es tun!"
	done

BeautySamanthaBeatenText:
	text "Nein! Oh, MAUZI,"
	line "es tut mir Leid!"
	done

BeautySamanthaAfterBattleText:
	text "Ich habe MAUZI die"
	line "unterschiedlich-"
	cont "sten Attacken bei-"
	cont "gebracht…"
	done

GoldenrodGymGuideText:
	text "Yo! CHAMP in spe!"

	para "In dieser PKMN-"
	line "ARENA warten Trai-"
	cont "ner mit #MON"
	cont "des Typs Normal"

	para "auf dich. Ich rate"
	line "dir, Kampf-#MON"
	cont "einzusetzen."
	done

GoldenrodGymGuideWinText:
	text "Du hast gewonnen?"
	line "Toll! Ich war da-"
	cont "mit beschäftigt,"
	cont "die hübschen Damen"
	cont "hier zu bewundern."
	done

GoldenrodGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 17, GOLDENROD_CITY, 1
	warp_event  3, 17, GOLDENROD_CITY, 1

	def_coord_events
	coord_event  8,  5, SCENE_GOLDENRODGYM_WHITNEY_STOPS_CRYING, WhitneyCriesScript

	def_bg_events
	bg_event  1, 15, BGEVENT_READ, GoldenrodGymStatue
	bg_event  4, 15, BGEVENT_READ, GoldenrodGymStatue

	def_object_events
	object_event  8,  3, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGymWhitneyScript, -1
	object_event  9, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerLassCarrie, -1
	object_event  9,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassBridget, -1
	object_event  0,  2, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBeautyVictoria, -1
	object_event 19,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBeautySamantha, -1
	object_event  5, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGymGuideScript, -1
