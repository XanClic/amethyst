_DeleteSaveData:
	farcall BlankScreen
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	call LoadStandardFont
	call LoadFontsExtra
	ld de, MUSIC_MAIN_MENU
	call PlayMusic
	ld hl, .ClearAllSaveDataText
	call PrintText
	ld hl, .NoYesMenuHeader
	call CopyMenuHeader
	call VerticalMenu
	ret c
	ld a, [wMenuCursorY]
	cp 1
	ret z
	farcall EmptyAllSRAMBanks
	ret

.ClearAllSaveDataText:
	text_far _ClearAllSaveDataText
	text_end

.NoYesMenuHeader:
	db 0 ; flags
if !DEF(_CRYSTAL_EU)
	menu_coords 14, 7, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
elif DEF(_CRYSTAL_DE)
	menu_coords 13, 7, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
elif DEF(_CRYSTAL_ES)
	menu_coords 15, 7, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
endc
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_NO_TOP_SPACING ; flags
	db 2 ; items
if !DEF(_CRYSTAL_EU)
	db "NO@"
	db "YES@"
elif DEF(_CRYSTAL_DE)
	db "NEIN@"
	db "JA@"
elif DEF(_CRYSTAL_ES)
	db "NO@"
	db "SÍ@"
endc
