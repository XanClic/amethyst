BattleCommand_ThunderAccuracy:
	ld a, BATTLE_VARS_MOVE_TYPE_AND_CAT
	call GetBattleVarAddr
	inc hl ; goes to MoveAccuracy
	ld a, [wBattleWeather]
	cp WEATHER_RAIN
	jr z, .rain
	cp WEATHER_SUN
	ret nz
	ld [hl], 50 percent + 1
	ret

.rain
	; Redundant with CheckHit guranteeing hit
	ld [hl], 100 percent
	ret
