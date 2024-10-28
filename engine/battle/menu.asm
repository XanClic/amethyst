LoadBattleMenu:
	ld hl, BattleMenuHeader
	call LoadMenuHeader
	ld a, [wBattleMenuCursorPosition]
	ld [wMenuCursorPosition], a
	call InterpretBattleMenu
	ld a, [wMenuCursorPosition]
	ld [wBattleMenuCursorPosition], a
	call ExitMenu
	ret

SafariBattleMenu: ; unreferenced
	ld hl, SafariBattleMenuHeader
	call LoadMenuHeader
	jr CommonBattleMenu

ContestBattleMenu:
	ld hl, ContestBattleMenuHeader
	call LoadMenuHeader
	; fallthrough

CommonBattleMenu:
	ld a, [wBattleMenuCursorPosition]
	ld [wMenuCursorPosition], a
	call _2DMenu
	ld a, [wMenuCursorPosition]
	ld [wBattleMenuCursorPosition], a
	call ExitMenu
	ret

BattleMenuHeader:
	db MENU_BACKUP_TILES ; flags
if !DEF(_CRYSTAL_EU)
	menu_coords 8, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
elif DEF(_CRYSTAL_DE)
	menu_coords 4, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
elif DEF(_CRYSTAL_ES)
	menu_coords 6, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
endc
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	dn 2, 2 ; rows, columns
if !DEF(_CRYSTAL_EU)
	db 6 ; spacing
elif DEF(_CRYSTAL_DE)
	db 7 ; spacing
elif DEF(_CRYSTAL_ES)
	db 8 ; spacing
endc
	dba .Text
	dbw BANK(@), NULL

.Text:
if !DEF(_CRYSTAL_EU)
	db "FIGHT@"
	db "<PKMN>@"
	db "PACK@"
	db "RUN@"
elif DEF(_CRYSTAL_DE)
	db "KMPF@"
	db "<PKMN>@"
	db "BEUTEL@"
	db "FLUCHT@"
elif DEF(_CRYSTAL_ES)
	db "LUCHA@"
	db "<PKMN>@"
	db "MOCHILA@"
	db "ESC@"
endc

SafariBattleMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	dn 2, 2 ; rows, columns
	db 11 ; spacing
	dba .Text
	dba .PrintSafariBallsRemaining

.Text:
	db "サファりボール×　　@" ; "SAFARI BALL×  @"
	db "エサをなげる@" ; "THROW BAIT"
	db "いしをなげる@" ; "THROW ROCK"
	db "にげる@" ; "RUN"

.PrintSafariBallsRemaining:
	hlcoord 17, 13
	ld de, wSafariBallsRemaining
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	ret

ContestBattleMenuHeader:
	db MENU_BACKUP_TILES ; flags
if !DEF(_CRYSTAL_EU)
	menu_coords 2, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
elif DEF(_CRYSTAL_DE)
	menu_coords 3, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
elif DEF(_CRYSTAL_ES)
	menu_coords 6, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
endc
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	dn 2, 2 ; rows, columns
if !DEF(_CRYSTAL_EU)
	db 12 ; spacing
elif DEF(_CRYSTAL_DE)
	db 8 ; spacing
elif DEF(_CRYSTAL_ES)
	db 8 ; spacing
endc
	dba .Text
	dba .PrintParkBallsRemaining

.Text:
if !DEF(_CRYSTAL_EU)
	db "FIGHT@"
	db "<PKMN>@"
	db "PARKBALL×  @"
	db "RUN@"
elif DEF(_CRYSTAL_DE)
	db "KMPF@"
	db "<PKMN>@"
	db "BALL×  @"
	db "FLUCHT@"
elif DEF(_CRYSTAL_ES)
	db "LUCHA@"
	db "<PKMN>@"
	db "BALL×  @"
	db "ESC@"
endc

.PrintParkBallsRemaining:
if !DEF(_CRYSTAL_DE)
	hlcoord 13, 16
else
	hlcoord 10, 16
endc
	ld de, wParkBallsRemaining
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	ret
