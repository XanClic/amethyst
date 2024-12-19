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
	sdefer EcruteakGymClosed
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
	text "Happy to see you"
	line "have come!"

	para "I'm SOPHIE!"
	line "Ghost #MON are"
	cont "very dear to me."

	para "Did you know that"
	line "they're very"
	cont "effective against"
	cont "each other?"

	para "So the more ghosts"
	line "there are in a"
	cont "battle, the better"
	cont "it is!"

	para "…Or so I think,"
	line "at least."

	para "But enough of"
	line "that."

	para "That you just fell"
	line "through the Burned"

	para "Tower's floor was"
	line "quite bad luck!"

	para "…Or was it actual-"
	line "ly very good luck?"

	para "Or maybe…"

	para "They say that"
	line "legendary #MON"
	cont "will only appear"
	cont "before truly"
	cont "strong trainers."

	para "…"

	para "I don't believe"
	line "in chance."

	para "What about you?"
	done

SophieWinLossText:
	text "I see."

	para "Quite impressive!"

	para "You are more than"
	line "worthy of this"
	cont "BADGE!"
	done

Text_ReceivedFogBadge:
	text "<PLAYER> received"
	line "FOGBADGE."
	done

SophieText_FogBadgeSpeech:
	text "By having the FOG-"
	line "BADGE, #MON up"

	para "to L50 will obey"
	line "you!"

	para "Also, with it, you"
	line "can use SURF"
	cont "outside of battle."

	para "Please, take this,"
	line "too."
	done

SophieText_ShadowBallSpeech:
	text "This is SHADOW"
	line "BALL!"

	para "It causes damage"
	line "and reduces the"
	cont "SPECIAL DEF."

	para "A nice thing to"
	line "have for almost"
	cont "any ghost #MON!"
	done

SophieFightDoneText:
	text "I hope that wasn't"
	line "the last time we"
	cont "meet."

	para "Why don't you come"
	line "by another time"

	para "after you beat the"
	cont "ELITE FOUR?"
	done

SophieRematchText:
	text "Great that you"
	line "could make it!"

	para "I see you've been"
	line "around."

	para "Are you ready?"
	done

SophieRematchWinLossText:
	text "Wow!"
	done

SophiePostRematchText:
	text "That was really"
	line "fun."

	para "Please, come back"
	line "another time!"
	done

SophieRematchTomorrowText:
	para "Why don't you come"
	line "back another day?"
	done

SophieLaterRematchText:
	text "All right, if you"
	line "need some time…"
	done

WitcherChristianSeenText:
	text "I like witch hats!"

	para "They're comfy and"
	line "simply chic."
	done

WitcherChristianBeatenText:
	text "Normalize men"
	line "wearing witch"
	cont "hats!"
	done

WitcherChristianAfterBattleText:
	text "It's just that the"
	line "hat keeps slipping"
	cont "from my head…"
	done

SageBlihSeenText:
	text "How about a"
	line "coffee?"
	done

SageBlihBeatenText:
	text "Ah, how I wish I"
	line "were home right"
	cont "now…"
	done

SageBlihAfterBattleText:
	text "Besides my work"
	line "here I'm also a"
	cont "barista!"
	done

HexManiacFineSeenText:
	text "I shall win!"
	done

HexManiacFineBeatenText:
	text "I, I, I lost!"
	done

HexManiacFineAfterBattleText:
	text "The one who wants"
	line "to win most--will!"
	done

HexManiacClaraSeenText:
	text "Watch out!"
	done

HexManiacClaraBeatenText:
	text "Wha-what?"
	done

HexManiacClaraAfterBattleText:
	text "Watch your step!"

	para "It's easy to miss"
	line "something in the"
	cont "dark…"
	done

EcruteakGymGuideText:
	text "The trainers here"
	line "have secret mo-"
	cont "tives."

	para "If you win, they"
	line "may share a bit of"
	cont "their wisdom."
	done

EcruteakGymGuideWinText:
	text "Whew, <PLAYER>."
	line "You did great!"

	para "I was cowering in"
	line "the corner out of"
	cont "pure terror!"
	done

EcruteakGymClosedText:
	text "SOPHIE, the GYM"
	line "LEADER, is absent."

	para "Sorry, but you'll"
	line "have to leave."

	para "Hohohoho."
	done

EcruteakGymMimikyuCryText:
	text "MIMIKYU: Pi-kyu!"
	done

EcruteakGymMimikyuCryContText:
	text "It seems a little"
	line "timid…"
	done

EcruteakGymMimikyuGiveLightBallText:
	text "It wants to give"
	line "you something!"
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
