DisplayCaughtContestMonStats:
	call ClearBGPalettes
	call ClearTilemap
	call ClearSprites
	call LoadFontsBattleExtra

	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]

	hlcoord 0, 0
	ld b, 4
	ld c, 13
	call Textbox

	hlcoord 0, 6
	ld b, 4
	ld c, 13
	call Textbox

	hlcoord 2, 0
	ld de, .Stock
	call PlaceString

	hlcoord 2, 6
	ld de, .This
	call PlaceString

if !DEF(_CRYSTAL_EU)
	hlcoord 5, 4
else
	hlcoord 4, 4
endc
	ld de, .Health
	call PlaceString

if !DEF(_CRYSTAL_EU)
	hlcoord 5, 10
else
	hlcoord 4, 10
endc
	ld de, .Health
	call PlaceString

	ld a, [wContestMon]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld de, wStringBuffer1
	hlcoord 1, 2
	call PlaceString

	ld h, b
	ld l, c
	ld a, [wContestMonLevel]
	ld [wTempMonLevel], a
	call PrintLevel

	ld de, wEnemyMonNickname
	hlcoord 1, 8
	call PlaceString

	ld h, b
	ld l, c
	ld a, [wEnemyMonLevel]
	ld [wTempMonLevel], a
	call PrintLevel

if !DEF(_CRYSTAL_EU)
	hlcoord 11, 4
else
	hlcoord 10, 4
endc
	ld de, wContestMonMaxHP
	lb bc, 2, 3
	call PrintNum

if !DEF(_CRYSTAL_EU)
	hlcoord 11, 10
else
	hlcoord 10, 10
endc
	ld de, wEnemyMonMaxHP
	call PrintNum

	ld hl, ContestAskSwitchText
	call PrintText

	pop af
	ld [wOptions], a

	call WaitBGMap
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	call SetDefaultBGPAndOBP
	ret

if !DEF(_CRYSTAL_EU)
.Health: db "HEALTH@"
.Stock:  db " STOCK <PKMN> @"
.This:   db " THIS <PKMN>  @"
elif DEF(_CRYSTAL_DE)
.Health: db "  GESU@"
.Stock:  db " <PKMN> lagern @"
.This:   db " Dieses <PKMN> @"
elif DEF(_CRYSTAL_ES)
.Health: db " SALUD@"
.Stock:  db " GUARDA <PKMN> @"
.This:   db " ESTE <PKMN> @"
endc

ContestAskSwitchText:
	text_far _ContestAskSwitchText
	text_end

DisplayAlreadyCaughtText:
	call GetPokemonName
	ld hl, .ContestAlreadyCaughtText
	jp PrintText

.ContestAlreadyCaughtText:
	text_far _ContestAlreadyCaughtText
	text_end

DummyPredef2F:
DummyPredef38:
DummyPredef39:
	ret
