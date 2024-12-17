_DepositEGG:
	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	ld a, [wStateFlags]
	push af
	xor a
	ld [wStateFlags], a
	ldh a, [hInMenu]
	push af
	ld a, $1
	ldh [hInMenu], a
	xor a
	ldh [hMapAnims], a
	call ElmsPC_InitRAM
	xor a
	ld [wBillsPC_LoadedBox], a
	call DelayFrame
.loop
	call JoyTextDelay
	ld a, [wJumptableIndex]
	bit 7, a
	jr nz, .done
	call .RunJumptable
	call DelayFrame
	jr .loop
.done
	call ClearSprites
	pop af
	ldh [hInMenu], a
	pop af
	ld [wStateFlags], a
	pop af
	ld [wOptions], a
	ret

.RunJumptable:
	ld a, [wJumptableIndex]
	ld hl, .Jumptable
	call ElmsPC_Jumptable
	jp hl

.Jumptable:
	dw .Init
	dw .HandleJoypad
	dw .WhatsUp
	dw .Submenu
	dw ElmsPC_EndJumptableLoop

.Init:
	xor a
	ldh [hBGMapMode], a
	call ClearSprites
	call ElmCopyBoxmonSpecies
	call ElmsPC_BoxName
	ld de, EPCString_WhatsUp
	call ElmsPC_PlaceString
	ld a, $5
	ld [wBillsPC_NumMonsOnScreen], a
	call ElmsPC_RefreshTextboxes
	call ElmsPCMonInfo
	ld a, $ff
	ld [wCurPartySpecies], a
	ld a, SCGB_BILLS_PC
	call ElmsPC_ApplyPalettes
	call WaitBGMap
	call ElmsPC_UpdateSelectionCursor
	call ElmsPC_IncrementJumptableIndex
	ret

.HandleJoypad:
	ld hl, hJoyPressed
	ld a, [hl]
	and B_BUTTON
	jr nz, .b_button
	ld a, [hl]
	and A_BUTTON
	jr nz, .a_button
	call Elm_Withdraw_UpDown
	and a
	ret z
	call ElmsPC_UpdateSelectionCursor
	xor a
	ldh [hBGMapMode], a
	call ElmsPC_RefreshTextboxes
	call ElmsPCMonInfo
	ld a, $1
	ldh [hBGMapMode], a
	call DelayFrame
	call DelayFrame
	ret

.a_button
	call ElmsPC_GetSelectedPokemonSpecies
	and a
	ret z
	cp -1
	jr z, .b_button
	ld a, $2
	ld [wJumptableIndex], a
	ret

.go_back ; unreferenced
	ld hl, wJumptableIndex
	dec [hl]
	ret

.b_button
	ld a, $4
	ld [wJumptableIndex], a
	ret

.WhatsUp:
	xor a
	ldh [hBGMapMode], a
	call ClearSprites
	call ElmsPC_GetSelectedPokemonSpecies
	ld [wCurPartySpecies], a
	ld a, SCGB_BILLS_PC
	call ElmsPC_ApplyPalettes
	ld de, EPCString_WhatsUp
	call ElmsPC_PlaceString
	ld a, $1
	ld [wMenuCursorY], a
	call ElmsPC_IncrementJumptableIndex
	ret

.Submenu:
	ld hl, ElmsPCDepositMenuHeader
	call CopyMenuHeader
	ld a, [wMenuCursorY]
	call StoreMenuCursorPosition
	call VerticalMenu
	jp c, ElmsPCDepositFuncCancel
	ld a, [wMenuCursorY]
	dec a
	and %11
	ld e, a
	ld d, 0
	ld hl, ElmsPCDepositJumptable
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

ElmsPCDepositJumptable:
	dw ElmsPCDepositFuncDeposit ; Deposit egg
	dw ElmsPCDepositFuncCancel ; Cancel

ElmsPCDepositFuncDeposit:
	call ElmsPC_CheckMail_PreventBlackout
	jp c, ElmsPCDepositFuncCancel
	call ElmsPC_CheckEgg
	jr c, ElmsPCDepositFuncCancel
	call DepositEgg
	jr c, .box_full
	ld a, $0
	ld [wJumptableIndex], a
	xor a
	ld [wBillsPC_CursorPosition], a
	ld [wBillsPC_ScrollPosition], a
	ret

.box_full
	ld de, EPCString_WhatsUp
	call ElmsPC_PlaceString
	ret

ElmsPCDepositFuncCancel:
	ld a, $0
	ld [wJumptableIndex], a
	ret

ElmsPCDepositMenuHeader:
	db MENU_BACKUP_TILES ; flags
if !DEF(_CRYSTAL_EU)
	menu_coords 9, 4, SCREEN_WIDTH - 1, 13
elif DEF(_CRYSTAL_DE)
	menu_coords 7, 4, SCREEN_WIDTH - 1, 13
elif DEF(_CRYSTAL_ES)
	menu_coords 11, 4, SCREEN_WIDTH - 1, 13
endc
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 2 ; items
if !DEF(_CRYSTAL_EU)
	db "DEPOSIT@"
	db "CANCEL@"
elif DEF(_CRYSTAL_DE)
	db "ABLEGEN@"
	db "ZURÜCK@"
elif DEF(_CRYSTAL_ES)
	db "DEJAR@"
	db "SALIR@"
endc

_WithdrawEGG:
	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	ld a, [wStateFlags]
	push af
	xor a
	ld [wStateFlags], a
	ldh a, [hInMenu]
	push af
	ld a, $1
	ldh [hInMenu], a
	xor a
	ldh [hMapAnims], a
	call ElmsPC_InitRAM
	ld a, NUM_BOXES + 1
	ld [wBillsPC_LoadedBox], a
	call DelayFrame
.loop
	call JoyTextDelay
	ld a, [wJumptableIndex]
	bit 7, a
	jr nz, .done
	call .RunJumptable
	call DelayFrame
	jr .loop
.done
	call ClearSprites
	pop af
	ldh [hInMenu], a
	pop af
	ld [wStateFlags], a
	pop af
	ld [wOptions], a
	ret

.RunJumptable:
	ld a, [wJumptableIndex]
	ld hl, .Jumptable
	call ElmsPC_Jumptable
	jp hl

.Jumptable:
	dw .Init
	dw .Joypad
	dw .PrepSubmenu
	dw ElmsPC_Withdraw
	dw ElmsPC_EndJumptableLoop

.Init:
	ld a, NUM_BOXES + 1
	ld [wBillsPC_LoadedBox], a
	xor a
	ldh [hBGMapMode], a
	call ClearSprites
	call ElmCopyBoxmonSpecies
	call ElmsPC_BoxName
	ld de, EPCString_WhatsUp
	call ElmsPC_PlaceString
	ld a, $5
	ld [wBillsPC_NumMonsOnScreen], a
	call ElmsPC_RefreshTextboxes
	call ElmsPCMonInfo
	ld a, $ff
	ld [wCurPartySpecies], a
	ld a, SCGB_BILLS_PC
	call ElmsPC_ApplyPalettes
	call WaitBGMap
	call ElmsPC_UpdateSelectionCursor
	call ElmsPC_IncrementJumptableIndex
	ret

.Joypad:
	ld hl, hJoyPressed
	ld a, [hl]
	and B_BUTTON
	jr nz, .b_button
	ld a, [hl]
	and A_BUTTON
	jr nz, .a_button
	call Elm_Withdraw_UpDown
	and a
	ret z
	call ElmsPC_UpdateSelectionCursor
	xor a
	ldh [hBGMapMode], a
	call ElmsPC_RefreshTextboxes
	call ElmsPCMonInfo
	ld a, $1
	ldh [hBGMapMode], a
	call DelayFrame
	call DelayFrame
	ret
.a_button
	call ElmsPC_GetSelectedPokemonSpecies
	and a
	ret z
	cp -1
	jr z, .b_button
	ld a, $2
	ld [wJumptableIndex], a
	ret

.go_back ; unreferenced
	ld hl, wJumptableIndex
	dec [hl]
	ret

.b_button
	ld a, $4
	ld [wJumptableIndex], a
	ret

.PrepSubmenu:
	xor a
	ldh [hBGMapMode], a
	call ClearSprites
	call ElmsPC_GetSelectedPokemonSpecies
	ld [wCurPartySpecies], a
	ld a, SCGB_BILLS_PC
	call ElmsPC_ApplyPalettes
	ld de, EPCString_WhatsUp
	call ElmsPC_PlaceString
	ld a, $1
	ld [wMenuCursorY], a
	call ElmsPC_IncrementJumptableIndex
	ret

ElmsPC_Withdraw:
	ld hl, .MenuHeader
	call CopyMenuHeader
	ld a, [wMenuCursorY]
	call StoreMenuCursorPosition
	call VerticalMenu
	jp c, .cancel
	ld a, [wMenuCursorY]
	dec a
	and %11
	ld e, a
	ld d, 0
	ld hl, .dw
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.dw
	dw .withdraw ; Withdraw
	dw .cancel ; Cancel

.withdraw
	call ElmsPC_CheckMail_PreventBlackout
	jp c, .cancel
	call TryWithdrawEgg
	jr c, .FailedWithdraw
	ld a, $0
	ld [wJumptableIndex], a
	xor a
	ld [wBillsPC_CursorPosition], a
	ld [wBillsPC_ScrollPosition], a
	ret
.FailedWithdraw:
	ld de, EPCString_WhatsUp
	call ElmsPC_PlaceString
	ret

.cancel
	ld a, $0
	ld [wJumptableIndex], a
	ret

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
if !DEF(_CRYSTAL_EU)
	menu_coords 9, 4, SCREEN_WIDTH - 1, 13
elif DEF(_CRYSTAL_DE)
	menu_coords 7, 4, SCREEN_WIDTH - 1, 13
elif DEF(_CRYSTAL_ES)
	menu_coords 11, 4, SCREEN_WIDTH - 1, 13
endc
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 2 ; items
if !DEF(_CRYSTAL_EU)
	db "WITHDRAW@"
	db "CANCEL@"
elif DEF(_CRYSTAL_DE)
	db "MITNEHMEN@"
	db "ZURÜCK@"
elif DEF(_CRYSTAL_ES)
	db "SACAR@"
	db "SALIR@"
endc

ElmsPC_InitRAM:
	call ClearBGPalettes
	call ClearSprites
	call ClearTilemap
	call ElmsPC_InitGFX
	ld hl, wBillsPCData
	ld bc, wBillsPCDataEnd - wBillsPCData
	xor a
	call ByteFill
	xor a
	ld [wJumptableIndex], a
	ld [wUnusedBillsPCData], a
	ld [wUnusedBillsPCData+1], a
	ld [wUnusedBillsPCData+2], a
	ld [wBillsPC_CursorPosition], a
	ld [wBillsPC_ScrollPosition], a
	ret

ElmsPC_IncrementJumptableIndex:
	ld hl, wJumptableIndex
	inc [hl]
	ret

ElmsPC_EndJumptableLoop:
	ld hl, wJumptableIndex
	set 7, [hl]
	ret

Elm_Withdraw_UpDown:
	ld hl, hJoyLast
	ld a, [wBillsPC_NumMonsOnScreen]
	ld d, a
	ld a, [wBillsPC_NumMonsInBox]
	ld e, a
	and a
	jr z, .empty
	ld a, [hl]
	and D_UP
	jr nz, ElmsPC_PressUp
	ld a, [hl]
	and D_DOWN
	jr nz, ElmsPC_PressDown
.empty
	jp ElmsPC_JoypadDidNothing

ElmsPC_PressUp:
	ld hl, wBillsPC_CursorPosition
	ld a, [hl]
	and a
	jr z, .top
	dec [hl]
	jr ElmsPC_UpDownDidSomething

.top
	ld hl, wBillsPC_ScrollPosition
	ld a, [hl]
	and a
	jr z, ElmsPC_JoypadDidNothing
	dec [hl]
	jr ElmsPC_UpDownDidSomething

ElmsPC_PressDown:
	ld a, [wBillsPC_CursorPosition]
	ld hl, wBillsPC_ScrollPosition
	add [hl]
	inc a
	cp e
	jr nc, ElmsPC_JoypadDidNothing

	ld hl, wBillsPC_CursorPosition
	ld a, [hl]
	inc a
	cp d
	jr nc, .not_bottom
	inc [hl]
	jr ElmsPC_UpDownDidSomething

.not_bottom
	ld hl, wBillsPC_ScrollPosition
	inc [hl]
	jr ElmsPC_UpDownDidSomething

ElmsPC_JoypadDidNothing:
	xor a
	and a
	ret

ElmsPC_UpDownDidSomething:
	ld a, TRUE
	and a
	ret

ElmsPC_PlaceString:
	push de
	hlcoord 0, 15
	lb bc, 1, 18
	call Textbox
	pop de
	hlcoord 1, 16
	call PlaceString
	ret

ElmsPC_BoxName:
	hlcoord 8, 0
	lb bc, 1, 10
	call Textbox

	ld de, .EggBankName
	ld a, [wBillsPC_LoadedBox]
	and a
	jr nz, .print
	ld de, .PartyPKMN
.print
if !DEF(_CRYSTAL_EU)
	hlcoord 10, 1
elif DEF(_CRYSTAL_DE)
	hlcoord 9, 1
elif DEF(_CRYSTAL_ES)
	hlcoord 10, 1
endc
	call PlaceString
	ret

.PartyPKMN:
if !DEF(_CRYSTAL_EU)
	db "PARTY <PK><MN>@"
elif DEF(_CRYSTAL_DE)
	db "Dein Team@"
elif DEF(_CRYSTAL_ES)
	db "EQUIPO@"
endc

.EggBankName:
if !DEF(_CRYSTAL_EU)
	db "ARK@"
elif DEF(_CRYSTAL_DE)
	db "ARCHE@"
elif DEF(_CRYSTAL_ES)
	db "ARCA@"
endc

ElmsPCMonInfo:
; Display a monster's pic and
; attributes when highlighting
; it in a PC menu.

; Includes the neat cascading
; effect when showing the pic.

; Example: Species, level, gender,
; whether it's holding an item.

	hlcoord 0, 0
	lb bc, 15, 8
	call ClearBox

	hlcoord 8, 14
	lb bc, 1, 3
	call ClearBox

	call ElmsPC_GetSelectedPokemonSpecies
	and a
	ret z
	cp -1
	ret z

	ld [wTempSpecies], a
	hlcoord 1, 4
	xor a
	ld b, 7
.row
	ld c, 7
	push af
	push hl
.col
	ld [hli], a
	add 7
	dec c
	jr nz, .col
	pop hl
	ld de, SCREEN_WIDTH
	add hl, de
	pop af
	inc a
	dec b
	jr nz, .row

	call ElmsPC_LoadMonStats
	ld a, [wTempSpecies]
	ld [wCurPartySpecies], a
	ld [wCurSpecies], a
	ld hl, wTempMonDVs
	predef GetUnownLetter
	call GetBaseData
	ld de, vTiles2 tile $00
	predef GetMonFrontpic
	xor a
	ld [wBillsPC_MonHasMail], a
	ld a, [wCurPartySpecies]
	ld [wTempSpecies], a
	cp EGG
	ret z

	call GetBasePokemonName
	hlcoord 1, 14
	call PlaceString

	hlcoord 1, 12
	call PrintLevel

	ld a, TEMPMON
	ld [wMonType], a
	farcall GetGender
	jr c, .skip_gender
	ld a, "♂"
	jr nz, .printgender
	ld a, "♀"
.printgender
	hlcoord 5, 12
	ld [hl], a
.skip_gender

	ld a, [wTempMonItem]
	and a
	ret z

	ld d, a
	callfar ItemIsMail
	jr c, .mail
	ld a, $5d ; item icon
	jr .printitem
.mail
	ld a, $1
	ld [wBillsPC_MonHasMail], a
	ld a, $5c ; mail icon
.printitem
	hlcoord 7, 12
	ld [hl], a
	ret

ElmsPC_LoadMonStats:
	ld a, [wBillsPC_CursorPosition]
	ld hl, wBillsPC_ScrollPosition
	add [hl]
	ld e, a
	add a, a
	add a, a
	ld c, a
	ld b, 0
	ld hl, wBillsPCPokemonList + 2 ; box number
	add hl, bc
	ld a, [hl]
	and a
	jr nz, .sEggBank

	ld hl, wPartyMon1Level
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, e
	call AddNTimes
	ld a, [hl]
	ld [wTempMonLevel], a
	ld hl, wPartyMon1Item
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, e
	call AddNTimes
	ld a, [hl]
	ld [wTempMonItem], a
	ld hl, wPartyMon1DVs
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, e
	call AddNTimes
	ld de, wTempMonDVs
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	ret

.sEggBank
	ld a, BANK(sEggBank)
	call OpenSRAM
	ld hl, sEggBankMon1Level
	ld bc, EGGBANK_STRUCT_LENGTH
	ld a, e
	call AddNTimes
	ld a, [hl]
	ld [wTempMonLevel], a

	xor a
	ld [wTempMonItem], a

	ld hl, sEggBankMon1DVs
	ld bc, EGGBANK_STRUCT_LENGTH
	ld a, e
	call AddNTimes
	ld de, wTempMonDVs
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a

	call CloseSRAM
	ret

ElmsPC_RefreshTextboxes:
	hlcoord 8, 2
	lb bc, 10, 10
	call Textbox

	hlcoord 8, 2
	ld [hl], "└"
	hlcoord 19, 2
	ld [hl], "┘"

	ld a, [wBillsPC_ScrollPosition]
	add a, a
	add a, a
	ld e, a
	ld d, 0
	ld hl, wBillsPCPokemonList
	add hl, de
	ld e, l
	ld d, h
	hlcoord 9, 4
	ld a, [wBillsPC_NumMonsOnScreen]
.loop
	push af
	push de
	push hl
	call .PlaceNickname
	pop hl
	ld de, 2 * SCREEN_WIDTH
	add hl, de
	pop de
	inc de
	inc de
	inc de
	inc de
	pop af
	dec a
	jr nz, .loop
	ret

.CancelString:
if !DEF(_CRYSTAL_EU)
	db "CANCEL@"
elif DEF(_CRYSTAL_DE)
	db "ZURÜCK@"
elif DEF(_CRYSTAL_ES)
	db "SALIR@"
endc

.PlaceNickname:
	ld a, [de]
	ld b, a
	inc de
	ld a, [de]
	cp b
	; both $0000 and $FFFF have two identical bytes, so this check works
	jr nz, .get_nickname
	and a
	ret z
	cp -1
	jr nz, .get_nickname
	ld de, .CancelString
	call PlaceString
	ret

.get_nickname
	inc de
	ld a, [de]
	ld b, a
	inc de
	ld a, [de]
	ld e, a
	ld a, b
	and a
	jr nz, .sEggBank

.party
	push hl
	ld hl, wPartySpecies
	ld d, $0
	add hl, de
	ld a, [hl]
	and a
	jr z, .partyfail
	ld hl, wPartyMonNicknames
	ld bc, MON_NAME_LENGTH
	ld a, e
	call AddNTimes
	ld de, wStringBuffer1
	ld bc, MON_NAME_LENGTH
	call CopyBytes
	pop hl
	ld de, wStringBuffer1
	call PlaceString
	ret

.partyfail
	pop hl
	jr .placeholder_string

.sEggBank
	push hl
	ld hl, Elm_String_Egg
	ld bc, MON_NAME_LENGTH
	ld de, wStringBuffer1
	call CopyBytes
	pop hl
	ld de, wStringBuffer1
	call PlaceString
	ret

.sEggBankFail
	pop hl
.placeholder_string
	ld de, .Placeholder
	call PlaceString
	ret

.Placeholder:
	db "-----@"

ElmCopyBoxmonSpecies:
	xor a
	ld hl, wBillsPCPokemonList
	ld bc, 4 * 30
	push hl
	call ByteFill
	pop hl
	ld a, [wBillsPC_LoadedBox]
	ld b, a
	ld c, 0
	and a
	jr z, .party

.sEggBank
	ld a, BANK(sEggBank)
	call OpenSRAM
	ld a, [sEggBankCount]
	ld [wBillsPC_NumMonsInBox], a

.sEggBankLoop
	ld a, [wBillsPC_NumMonsInBox]
	cp c
	jr z, .sEggBankDone

	; It’s all eggs.
	ld a, EGG
	ld [hli], a
	ld a, $ff
	ld [hli], a
	ld a, b
	ld [hli], a
	ld a, c
	ld [hli], a
	inc c

	jr .sEggBankLoop
.sEggBankDone
	call CloseSRAM
	jr .list_done

.party
	ld a, [wPartyCount]
	ld [wBillsPC_NumMonsInBox], a
	ld de, wPartySpecies
.load_list
	ld a, [wBillsPC_NumMonsInBox]
	cp c
	jr z, .list_done

	ld a, [de]
	cp -1
	jr z, .list_done
	inc de
	push hl
	call GetPokemonIndexFromID
	ld a, h
	ldh [hTemp], a
	ld a, l
	pop hl
	ld [hli], a
	ldh a, [hTemp]
	ld [hli], a
	ld a, b
	ld [hli], a
	ld a, c
	ld [hli], a
	inc c
	jr .load_list

.list_done
	ld a, -1
	ld [hli], a
	ld [hl], a
	ld a, c
	inc a
	ld [wBillsPC_NumMonsInBox], a
	ret

ElmsPC_GetSelectedPokemonSpecies:
	ld a, [wBillsPC_CursorPosition]
	ld hl, wBillsPC_ScrollPosition
	add [hl]
	add a, a
	add a, a
	ld e, a
	ld d, 0
	ld hl, wBillsPCPokemonList
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp GetPokemonIDFromIndex

ElmsPC_UpdateSelectionCursor:
	ld a, [wBillsPC_NumMonsInBox]
	and a
	jr nz, .place_cursor
	call ClearSprites
	ret

.place_cursor
	ld hl, .OAM
	ld de, wShadowOAMSprite00
.loop
	ld a, [hl]
	cp -1
	ret z
	ld a, [wBillsPC_CursorPosition]
	and $7
	swap a
	add [hl]
	inc hl
	ld [de], a ; y
	inc de
rept SPRITEOAMSTRUCT_LENGTH - 1
	ld a, [hli]
	ld [de], a
	inc de
endr
	jr .loop

.OAM:
	dbsprite 10, 4, 0, 6, $00, 0
	dbsprite 11, 4, 0, 6, $00, 0
	dbsprite 12, 4, 0, 6, $00, 0
	dbsprite 13, 4, 0, 6, $00, 0
	dbsprite 14, 4, 0, 6, $00, 0
	dbsprite 15, 4, 0, 6, $00, 0
	dbsprite 16, 4, 0, 6, $00, 0
	dbsprite 17, 4, 0, 6, $00, 0
	dbsprite 18, 4, 0, 6, $00, 0
	dbsprite 18, 4, 7, 6, $00, 0
	dbsprite 10, 7, 0, 1, $00, 0 | Y_FLIP
	dbsprite 11, 7, 0, 1, $00, 0 | Y_FLIP
	dbsprite 12, 7, 0, 1, $00, 0 | Y_FLIP
	dbsprite 13, 7, 0, 1, $00, 0 | Y_FLIP
	dbsprite 14, 7, 0, 1, $00, 0 | Y_FLIP
	dbsprite 15, 7, 0, 1, $00, 0 | Y_FLIP
	dbsprite 16, 7, 0, 1, $00, 0 | Y_FLIP
	dbsprite 17, 7, 0, 1, $00, 0 | Y_FLIP
	dbsprite 18, 7, 0, 1, $00, 0 | Y_FLIP
	dbsprite 18, 7, 7, 1, $00, 0 | Y_FLIP
	dbsprite  9, 5, 6, 6, $01, 0
	dbsprite  9, 6, 6, 1, $01, 0 | Y_FLIP
	dbsprite 19, 5, 1, 6, $01, 0 | X_FLIP
	dbsprite 19, 6, 1, 1, $01, 0 | X_FLIP | Y_FLIP
	db -1

ElmsPC_CheckMail_PreventBlackout:
	ld a, [wBillsPC_LoadedBox]
	and a
	jr nz, .Okay
	ld a, [wBillsPC_NumMonsInBox]
	cp $3
	jr c, .ItsYourLastPokemon
	ld a, [wBillsPC_CursorPosition]
	ld hl, wBillsPC_ScrollPosition
	add [hl]
	ld [wCurPartyMon], a
	farcall CheckCurPartyMonFainted
	jr c, .AllOthersFainted
	ld a, [wBillsPC_MonHasMail]
	and a
	jr nz, .HasMail
.Okay:
	and a
	ret

.HasMail:
	ld de, EPCString_RemoveMail
	jr .NotOkay

.AllOthersFainted:
	ld de, EPCString_NoMoreUsablePKMN
	jr .NotOkay

.ItsYourLastPokemon:
	ld de, EPCString_ItsYourLastPKMN
.NotOkay:
	call ElmsPC_PlaceString
	ld de, SFX_WRONG
	call WaitPlaySFX
	call WaitSFX
	ld c, 50
	call DelayFrames
	scf
	ret

Elm_String_Egg:
if !DEF(_CRYSTAL_EU)
	db "EGG@@@@@@@@"
elif DEF(_CRYSTAL_DE)
	db "EI@@@@@@@@@"
elif DEF(_CRYSTAL_ES)
	db "HUEVO@@@@@@"
endc

DepositEgg:
	ld a, [wBillsPC_CursorPosition]
	ld hl, wBillsPC_ScrollPosition
	add [hl]
	ld [wCurPartyMon], a
	ld hl, wPartyMonNicknames
	ld a, [wCurPartyMon]
	call GetNickname
	ld a, PC_DEPOSIT
	ld [wPokemonWithdrawDepositParameter], a
	call SendGetEggIntoFromBank
	jr c, .BoxFull
	xor a ; REMOVE_PARTY
	ld [wPokemonWithdrawDepositParameter], a
	farcall RemoveMonFromPartyOrBox
	farcall SaveAfterLinkTrade
	ld a, [wCurPartySpecies]
	call PlayMonCry
if !DEF(_CRYSTAL_DE)
	hlcoord 0, 0
	lb bc, 15, 8
	call ClearBox
else
	call ElmsPCClearThreeBoxes
endc
	hlcoord 8, 14
	lb bc, 1, 3
	call ClearBox
	hlcoord 0, 15
	lb bc, 1, 18
	call Textbox
	call WaitBGMap
	hlcoord 1, 16
	ld de, EPCString_Stored
	call PlaceString
	ld c, 50
	call DelayFrames
	and a
	ret

.BoxFull:
	ld de, EPCString_BoxFull
	call ElmsPC_PlaceString
	ld de, SFX_WRONG
	call WaitPlaySFX
	call WaitSFX
	ld c, 50
	call DelayFrames
	scf
	ret

TryWithdrawEgg:
	ld a, [wBillsPC_CursorPosition]
	ld hl, wBillsPC_ScrollPosition
	add [hl]
	ld [wCurPartyMon], a
	xor a
	ld [wPokemonWithdrawDepositParameter], a
	call SendGetEggIntoFromBank
	jr c, .PartyFull
	call RemoveEggFromBank
	farcall SaveAfterLinkTrade
	ld a, [wCurPartySpecies]
	call PlayMonCry
if !DEF(_CRYSTAL_DE)
	hlcoord 0, 0
	lb bc, 15, 8
	call ClearBox
else
	call ElmsPCClearThreeBoxes
endc
	hlcoord 8, 14
	lb bc, 1, 3
	call ClearBox
	hlcoord 0, 15
	lb bc, 1, 18
	call Textbox
	call WaitBGMap
	hlcoord 1, 16
	ld de, EPCString_Got
	call PlaceString
	ld c, 50
	call DelayFrames
	and a
	ret

.PartyFull:
	ld de, EPCString_PartyFull
	call ElmsPC_PlaceString
	ld de, SFX_WRONG
	call WaitPlaySFX
	call WaitSFX
	ld c, 50
	call DelayFrames
	scf
	ret

ElmCopySpeciesToTemp:
	ld a, [wCurPartyMon]
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hl]
	ld [wCurPartySpecies], a
	ld l, LOCKED_MON_ID_CURRENT_MENU
	jp LockPokemonID

ElmCopyNicknameToTemp:
	ld bc, MON_NAME_LENGTH
	ld a, [wCurPartyMon]
	call AddNTimes
	ld de, wBufferMonNickname
	ld bc, MON_NAME_LENGTH
	call CopyBytes
	ret

ElmCopyOTNameToTemp:
	ld bc, NAME_LENGTH
	ld a, [wCurPartyMon]
	call AddNTimes
	ld de, wBufferMonOT
	ld bc, NAME_LENGTH
	call CopyBytes
	ret

ElmCopyMonToTemp:
	ld a, [wCurPartyMon]
	call AddNTimes
	ld de, wBufferMon
	call CopyBytes
	ret

ElmsPC_ApplyPalettes:
	ld b, a
	call GetSGBLayout
	ld a, %11100100
	call DmgToCgbBGPals
	ld a, %11111100
	call DmgToCgbObjPal0
	ret

ElmsPC_Jumptable:
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

ElmsPC_InitGFX:
	call DisableLCD
	ld hl, vTiles2 tile $00
	ld bc, $31 tiles
	xor a
	call ByteFill
	call LoadStandardFont
	call LoadFontsBattleExtra
	ld hl, EPCMailGFX
	ld de, vTiles2 tile $5c
	ld bc, 4 tiles
	call CopyBytes
	ld hl, EPCSelectLZ
	ld de, vTiles0 tile $00
	call Decompress
	ld a, 6
	call SkipMusic
	call EnableLCD
	ret

EPCSelectLZ: INCBIN "gfx/pc/pc.2bpp.lz"
EPCMailGFX:  INCBIN "gfx/pc/pc_mail.2bpp"

if !DEF(_CRYSTAL_EU)
EPCString_WhatsUp: db "What's up?@"
EPCString_ItsYourLastPKMN: db "It's your last <PK><MN>!@"
EPCString_TheresNoRoom: db "There's no room!@"
EPCString_NoMoreUsablePKMN: db "No more usable <PK><MN>!@"
EPCString_RemoveMail: db "Remove MAIL.@"
EPCString_Stored: db "Stored EGG.@"
EPCString_Got: db "Got EGG.@"
EPCString_BoxFull: db "The PC is full.@"
EPCString_PartyFull: db "The party's full!@"
EPCString_OnlyDepositingEGGS: db "Not accepted!@"
elif DEF(_CRYSTAL_DE)
EPCString_WhatsUp: db "Wähle!@"
EPCString_ItsYourLastPKMN: db "Letztes #MON!@"
EPCString_TheresNoRoom: db "Der PC ist voll!@"
EPCString_NoMoreUsablePKMN: db "Nicht einsetzbar.@"
EPCString_RemoveMail: db "Entferne BRIEF.@"
EPCString_Stored: db "EI abgelegt!@"
EPCString_Got: db "EI erhalten!@"
EPCString_BoxFull: db "Der PC ist voll!@"
EPCString_PartyFull: db "Team ist voll!@"
EPCString_OnlyDepositingEGGS: db "Nicht akzeptiert!@"
elif DEF(_CRYSTAL_ES)
EPCString_WhatsUp: db "¿Qué hacer?@"
EPCString_ItsYourLastPKMN: db "Es tu último <PK><MN>.@"
EPCString_TheresNoRoom: db "¡No hay sitio!@"
EPCString_NoMoreUsablePKMN: db "¡No quedan <PK><MN>!@"
EPCString_RemoveMail: db "Debe ir sin CARTA.@"
EPCString_Stored: db "Dejado HUEVO.@"
EPCString_Got: db "Sacado HUEVO.@"
EPCString_BoxFull: db "PC llena.@"
EPCString_PartyFull: db "¡Equipo completo!@"
EPCString_OnlyDepositingEGGS: db "¡No aceptado!@"
endc

ElmsPC_ClearTilemap:
	xor a
	ldh [hBGMapMode], a
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, " "
	call ByteFill
	ret

ElmsPCClearThreeBoxes:
	hlcoord 0, 0
	ld b, 4
	ld c, 8
	call ClearBox
	hlcoord 0, 4
	ld b, 10
if !DEF(_CRYSTAL_EU)
	ld c, 9
elif DEF(_CRYSTAL_DE)
	ld c, 7
elif DEF(_CRYSTAL_ES)
	ld c, 11
endc
	call ClearBox
	hlcoord 0, 14
	ld b, 2
	ld c, 8
	call ClearBox
	ret

SendGetEggIntoFromBank:
; Sents/Gets eggs into/from bank depending on Parameter
; wPokemonWithdrawDepositParameter == 0: get egg into Party
; wPokemonWithdrawDepositParameter == 1: send egg into Bank

	ld a, BANK(sEggBankCount)
	call OpenSRAM
	ld a, [wPokemonWithdrawDepositParameter]
	and a
	jr z, .check_IfPartyIsFull

	; we want to sent a mon into the Box
	; so check if there's enough space
	ld hl, sEggBankCount
	ld a, [hl]
	cp EGGS_PER_BANK
	jr nz, .there_is_room
	jp Elm_CloseSRAM_And_SetCarryFlag

.check_IfPartyIsFull
	ld hl, wPartyCount
	ld a, [hl]
	cp PARTY_LENGTH
	jp z, Elm_CloseSRAM_And_SetCarryFlag

.there_is_room
	inc a
	ld [hl], a ; increment count in target
	ld c, a
	ld b, 0
	add hl, bc ; go to target species byte (only valid for party!)

	ld a, [wPokemonWithdrawDepositParameter]
	and a
	jr z, .egg_into_party

	; egg into bank
	ld hl, wPartyMon1Species
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wCurPartyMon]
	call AddNTimes

	; load species ID from index
	ld a, [hli]
	push hl ; party struct after species (src)
	call GetPokemonIndexFromID
	push hl ; species ID

	ld hl, sEggBankMon1SpeciesFull
	ld bc, EGGBANK_STRUCT_LENGTH
	ld a, [sEggBankCount]
	dec a
	call AddNTimes ; go to last egg (which we are adding)

	pop bc ; species ID
	ld a, c
	ld [hli], a
	ld a, b
	ld [hli], a

	ld d, h ; egg bank after species (dst)
	ld e, l
	pop hl ; party struct after species (src)

	; skip item
	inc hl

	; “copy” moves
	ld c, 4
.copy_moves_to_bank
	ld a, [hli]
	push hl
	call GetMoveIndexFromID
	ld a, l
	ld [de], a
	inc de
	ld a, h
	ld [de], a
	inc de
	pop hl

	dec c
	jr nz, .copy_moves_to_bank

	; copy id and exp
	ld bc, MON_STAT_EXP - MON_OT_ID
	assert(MON_STAT_EXP - MON_OT_ID == 5)
	call CopyBytes

	; skip stat exp
	ld bc, MON_DVS - MON_STAT_EXP
	add hl, bc

	; copy dvs
	ld bc, MON_PP - MON_DVS
	assert(MON_PP - MON_DVS == 2)
	call CopyBytes

	; skip PP
	ld bc, MON_HAPPINESS - MON_PP
	add hl, bc

	; copy the whole rest (after pps)
	ld bc, BOXMON_STRUCT_LENGTH - MON_HAPPINESS
	assert(EGGBANK_HAPPINESS == 2 + 8 + 5 + 2) ; species, moves, id, exp, dvs
	assert(BOXMON_STRUCT_LENGTH - MON_HAPPINESS == EGGBANK_STRUCT_LENGTH - EGGBANK_HAPPINESS)
	call CopyBytes

	; and that’s it
	jp .CloseSRAM_And_ClearCarryFlag

.egg_into_party
	ld a, EGG ; always an egg!
	ld [hli], a ; store species in target
	ld [hl], $ff ; followed by -1

	ld hl, sEggBankMon1SpeciesFull
	ld bc, EGGBANK_STRUCT_LENGTH
	ld a, [wCurPartyMon]
	call AddNTimes

	; load species index from ID
	ld a, [hli]
	ld b, a
	ld a, [hli]
	push hl ; egg bank after species (src)
	ld l, b
	ld h, a
	call GetPokemonIDFromIndex

	push af ; species index

	ld hl, wPartyMon1Species
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wPartyCount]
	dec a
	call AddNTimes

	pop af ; species index
	push hl ; party struct (dst), including species
	ld [hli], a

	ld d, h ; party struct after species (dst)
	ld e, l
	pop bc ; party struct (dst), including species
	pop hl ; egg bank after species (src)
	push bc ; party struct (dst), including species

	; clear item (always none)
	xor a
	ld [de], a
	inc de

	; “copy” moves
	ld c, 4
.copy_moves_to_party
	ld a, [hli]
	ld b, a
	ld a, [hli]
	push hl
	ld h, a
	ld l, b
	call GetMoveIDFromIndex
	ld [de], a

	; fill up PP for this move
	push de
	ld l, a
	ld a, MOVE_PP
	call GetMoveAttribute
	ld h, d
	ld l, e
	ld de, MON_PP - MON_MOVES
	add hl, de
	ld [hl], a
	pop de

	inc de

	pop hl
	dec c
	jr nz, .copy_moves_to_party

	assert(MON_OT_ID == 1 + 1 + 4) ; species, item, moves

	; copy id and exp
	ld bc, MON_STAT_EXP - MON_OT_ID
	assert(MON_STAT_EXP - MON_OT_ID == 5)
	call CopyBytes

	; clear stat exp
	push hl
	ld bc, MON_DVS - MON_STAT_EXP
	ld h, d
	ld l, e
	xor a
	call ByteFill
	ld d, h
	ld e, l
	pop hl

	; copy dvs
	ld bc, MON_PP - MON_DVS
	assert(MON_PP - MON_DVS == 2)
	call CopyBytes

	; skip PP (filled above)
	ld a, e
	add MON_HAPPINESS - MON_PP
	ld e, a
	ld a, d
	adc 0
	ld d, a

	; copy the whole rest (after pps)
	ld bc, BOXMON_STRUCT_LENGTH - MON_HAPPINESS
	assert(EGGBANK_HAPPINESS == 2 + 8 + 5 + 2) ; species, item, moves, id, exp
	assert(BOXMON_STRUCT_LENGTH - MON_HAPPINESS == EGGBANK_STRUCT_LENGTH - EGGBANK_HAPPINESS)
	call CopyBytes

	; main struct copied, do names and stats

	ld hl, wPartyMonOTs
	ld a, [wPartyCount]
	dec a
	push af ; last mon in party
	call SkipNames

	ld d, h
	ld e, l
	ld hl, wPlayerName
	ld bc, MON_NAME_LENGTH
	call CopyBytes

	ld hl, wPartyMonNicknames
	ld bc, MON_NAME_LENGTH
	pop af ; last mon in party
	call AddNTimes

	ld d, h
	ld e, l
	ld hl, Elm_String_Egg
	ld bc, NAME_LENGTH
	call CopyBytes

	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	call GetBaseData

	pop hl ; party struct including species
	push hl ; party struct including species

	ld de, wTempMon
	ld bc, BOXMON_STRUCT_LENGTH
	call CopyBytes

	callfar CalcLevel
	ld a, d
	ld [wCurPartyLevel], a

	pop bc ; party struct including species

	ld hl, MON_LEVEL
	add hl, bc
	ld [hl], a
	ld hl, MON_MAXHP
	add hl, bc
	ld d, h
	ld e, l
	ld hl, MON_STAT_EXP - 1
	add hl, bc

	push bc ; party struct including species
	ld b, TRUE
	predef CalcMonStats
	pop bc ; party struct including species

	ld hl, MON_STATUS
	add hl, bc
	xor a
	ld [hl], a
	ld hl, MON_HP
	add hl, bc
	ld d, h
	ld e, l
	ld a, [wCurPartySpecies]
	cp EGG
	jr z, .egg
	inc hl
	inc hl
	ld a, [hli]
	ld [de], a
	ld a, [hl]
	inc de
	ld [de], a
	jr .CloseSRAM_And_ClearCarryFlag

.egg
	xor a
	ld [de], a
	inc de
	ld [de], a
	jr .CloseSRAM_And_ClearCarryFlag

.CloseSRAM_And_ClearCarryFlag:
	call CloseSRAM
	and a
	ret

Elm_CloseSRAM_And_SetCarryFlag:
	call CloseSRAM
	scf
	ret

RemoveEggFromBank:
	ld a, BANK(sEggBankCount)
	call OpenSRAM
	ld hl, sEggBankCount

	dec [hl]

	; If this is not the last mon in the bank,
	; shift all the other mons up to close the gap.
	ld a, [wCurPartyMon]
	cp [hl]
	jr z, .finish

.delete_inside
	ld hl, sEggBankMons
	ld bc, EGGBANK_STRUCT_LENGTH
	ld a, [wCurPartyMon]
	call AddNTimes
	ld d, h
	ld e, l
	ld bc, EGGBANK_STRUCT_LENGTH
	add hl, bc
	ld bc, sEggEnd
	call CopyDataUntil

.finish
	jp CloseSRAM

ElmsPC_CheckEgg:
	ld a, [wCurPartySpecies]
	cp EGG
	jr nz, .notegg
	and a
	ret

.notegg
	ld de, EPCString_OnlyDepositingEGGS
	call ElmsPC_PlaceString
	ld de, SFX_WRONG
	call WaitPlaySFX
	call WaitSFX
	ld c, 50
	call DelayFrames
	scf
	ret
