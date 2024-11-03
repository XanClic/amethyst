SECTION "Egg Moves 3", ROMX

EggMovePointers3::
	dw MimikyuEggMoves
	dw LitwickEggMoves
	dw NoEggMoves3
	dw NoEggMoves3
	dw DrifloonEggMoves
	dw NoEggMoves3
.IndirectEnd::

MimikyuEggMoves:
	dw DESTINY_BOND
	dw CURSE
	dw NIGHTMARE
	dw -1 ; end

LitwickEggMoves:
	dw HAZE
	dw ACID_ARMOR
	dw ENDURE
	dw ACID
	dw -1 ; end

DrifloonEggMoves:
	dw BODY_SLAM
	dw DESTINY_BOND
	dw DISABLE
	dw HAZE
	dW HYPNOSIS
NoEggMoves3:
	dw -1 ; end
