	object_const_def
	const DAYCARE_GRAMPS
	const DAYCARE_GRANNY

DayCare_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, DayCareEggCheckCallback

DayCareEggCheckCallback:
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue .PutDayCareManOutside
	clearevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	setevent EVENT_DAY_CARE_MAN_ON_ROUTE_34
	endcallback

.PutDayCareManOutside:
	setevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	clearevent EVENT_DAY_CARE_MAN_ON_ROUTE_34
	endcallback

DayCareManScript_Inside:
	faceplayer
	opentext
	checkevent EVENT_GOT_ODD_EGG
	iftrue .AlreadyHaveOddEgg
	writetext DayCareManText_GiveOddEgg
	promptbutton
	closetext
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	special GiveOddEgg
	opentext
	writetext DayCareText_GotOddEgg
	playsound SFX_KEY_ITEM
	waitsfx
	writetext DayCareText_DescribeOddEgg
	waitbutton
	closetext
	setevent EVENT_GOT_ODD_EGG
	end

.PartyFull:
	opentext
	writetext DayCareText_PartyFull
	waitbutton
	closetext
	end

.AlreadyHaveOddEgg:
	special DayCareMan
	waitbutton
	closetext
	end

DayCareLadyScript:
	faceplayer
	opentext
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue .HusbandWasLookingForYou
	special DayCareLady
	waitbutton
	closetext
	end

.HusbandWasLookingForYou:
	writetext Text_GrampsLookingForYou
	waitbutton
	closetext
	end

DayCareBookshelf:
	jumpstd DifficultBookshelfScript

Text_GrampsLookingForYou:
	text "Opa hat nach dir"
	line "gesucht."
	done

Text_DayCareManTalksAboutEggTicket: ; unreferenced
	text "Ich bin der"
	line "PENSIONSLEITER."

	para "In DUKATIA CITY"
	line "gibt es etwas"

	para "Neues, das man"
	line "TAUSCHECKE nennt."

	para "Ich erhielt ein"
	line "EI-TICKET, dass"

	para "man gegen ein"
	line "KURIOS-EI eintau-"
	cont "schen kann."

	para "Aber da wir eine"
	line "PENSION leiten,"

	para "brauchen wir es"
	line "nicht. Du kannst"

	para "es haben."
	done

DayCareManText_GiveOddEgg:
	text "Ich bin der"
	line "PENSIONSLEITER."

	para "Kennst du dich"
	line "mit EIERN aus?"

	para "Ich habe #MON"
	line "mit meiner"
	cont "Frau aufgezogen."

	para "Wir waren ent-"
	line "setzt, als wir ein"
	cont "EI fanden!"

	para "Das ist doch"
	line "unglaublich, oder?"

	para "Nun, möchtest du"
	line "das EI? Gut, nimm"

	para "es, du darfst es"
	line "behalten!"
	done

DayCareText_ComeAgain: ; unreferenced
	text "Komm wieder."
	done

DayCareText_GotOddEgg:
	text "<PLAYER> erhält"
	line "KURIOS-EI!"
	done

DayCareText_DescribeOddEgg:
	text "Ich fand dies, als"
	line "ich mich um ein"

	para "#MON eines"
	line "anderen Trainers"

	para "kümmerte. Aber der"
	line "Trainer wollte das"

	para "EI nicht, also"
	line "habe ich es"
	cont "behalten."
	done

DayCareText_PartyFull:
	text "Du hast dafür"
	line "keinen Platz."
	done

DayCare_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  5, ROUTE_34, 3
	warp_event  0,  6, ROUTE_34, 4
	warp_event  2,  7, ROUTE_34, 5
	warp_event  3,  7, ROUTE_34, 5

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, DayCareBookshelf
	bg_event  1,  1, BGEVENT_READ, DayCareBookshelf

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayCareManScript_Inside, EVENT_DAY_CARE_MAN_IN_DAY_CARE
	object_event  5,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DayCareLadyScript, -1
