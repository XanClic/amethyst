	object_const_def
	const OLIVINEPOKECENTER1F_NURSE
	const OLIVINEPOKECENTER1F_FISHING_GURU
	const OLIVINEPOKECENTER1F_FISHER
	const OLIVINEPOKECENTER1F_TEACHER

OlivinePokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

OlivinePokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

OlivinePokecenter1FFishingGuruScript:
	jumpstd HappinessCheckScript

OlivinePokecenter1FFisherScript:
	jumptextfaceplayer OlivinePokecenter1FFisherText

OlivinePokecenter1FTeacherScript:
	jumptextfaceplayer OlivinePokecenter1FTeacherText

OlivinePokecenter1FFisherText:
	text "Der MATROSE im"
	line "OLIVIANA CITY-CAFE"
	cont "nebenan ist sehr"
	cont "großzügig."

	para "Er hat meinem"
	line "#MON STÄRKE"

	para "beigebracht. Jetzt"
	line "kann es Felsen be-"
	cont "wegen."
	done

OlivinePokecenter1FTeacherText:
	text "Da gibt es jeman-"
	line "den in ANEMONIA"
	cont "CITY jenseits des"
	cont "Meeres."

	para "Ich habe gehört,"
	line "wie er mit seinen"
	cont "seltenen #MON"
	cont "angegeben hat."
	done

OlivinePokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, OLIVINE_CITY, 1
	warp_event  4,  7, OLIVINE_CITY, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePokecenter1FNurseScript, -1
	object_event  8,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePokecenter1FFishingGuruScript, -1
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OlivinePokecenter1FFisherScript, -1
	object_event  7,  1, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePokecenter1FTeacherScript, -1
