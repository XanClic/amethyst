; strings correspond to UNOWNWORDS_* constants (see constants/script_constants.asm)
DEF UNOWNWORD_{d:UNOWNWORDS_ESCAPE} EQUS "FLUCHT"
DEF UNOWNWORD_{d:UNOWNWORDS_LIGHT}  EQUS "BLITZ"
DEF UNOWNWORD_{d:UNOWNWORDS_WATER}  EQUS "WASSER"
DEF UNOWNWORD_{d:UNOWNWORDS_HO_OH}  EQUS "HO-OH"

UnownWalls:
; entries correspond to UNOWNWORDS_* constants
	list_start UnownWalls
	for x, NUM_UNOWN_WALLS
		li "{UNOWNWORD_{d:x}}"
	endr
	assert_list_length NUM_UNOWN_WALLS

MenuHeaders_UnownWalls:
; entries correspond to UNOWNWORDS_* constants
	table_width UNOWN_WALL_MENU_HEADER_SIZE, MenuHeaders_UnownWalls
	for x, NUM_UNOWN_WALLS
		DEF n = CHARLEN("{UNOWNWORD_{d:x}}")
		db MENU_BACKUP_TILES ; flags
		menu_coords 9 - n, 4, 10 + n, 9
	endr
	assert_table_length NUM_UNOWN_WALLS
