	object_const_def
	const ROUTE19FUCHSIAGATE_OFFICER

Route19FuchsiaGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route19FuchsiaGateOfficerScript:
	faceplayer
	opentext
	checkevent EVENT_CINNABAR_ROCKS_CLEARED
	iftrue .RocksCleared
	writetext Route19FuchsiaGateOfficerText
	waitbutton
	closetext
	end

.RocksCleared:
	writetext Route19FuchsiaGateOfficerText_RocksCleared
	waitbutton
	closetext
	end

Route19FuchsiaGateOfficerText:
	text "Der Vulkan auf"
	line "der ZINNOBERINSEL"
	cont "ist ausgebrochen."

	para "Durch die Eruption"
	line "wurde die ROUTE 19"
	cont "durch Felsbrocken"
	cont "zugeschüttet."

	para "Ich frage mich,"
	line "ob die Einwohner"
	cont "der ZINNOBERINSEL"
	cont "in Sicherheit"
	cont "sind…"
	done

Route19FuchsiaGateOfficerText_RocksCleared:
	text "Auf der ZINNOBER-"
	line "INSEL wurde"

	para "niemand verletzt."
	line "Das ist großartig!"
	done

Route19FuchsiaGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, FUCHSIA_CITY, 10
	warp_event  5,  0, FUCHSIA_CITY, 11
	warp_event  4,  7, ROUTE_19, 1
	warp_event  5,  7, ROUTE_19, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route19FuchsiaGateOfficerScript, -1
