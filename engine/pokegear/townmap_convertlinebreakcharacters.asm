TownMap_ConvertLineBreakCharacters:
	ld hl, wStringBuffer1
.loop
	ld a, [hl]
	cp "@"
	jr z, .end
	cp "%"
	jr z, .line_feed
	cp "<BSP>"
	jr z, .line_feed
if DEF(_CRYSTAL_EU)
	cp "<WBR>"
	jr z, .hyphen_split
endc
	inc hl
	jr .loop

if DEF(_CRYSTAL_EU)
.hyphen_split
	ld [hl], "<->"
	jr .end
endc

.line_feed
	ld [hl], "<LF>"

.end
	ld de, wStringBuffer1
	hlcoord 9, 0
	call PlaceString
	ret
