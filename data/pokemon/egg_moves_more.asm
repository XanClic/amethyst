SECTION "Egg Moves 3", ROMX

EggMovePointers3::
	dw MimikyuEggMoves
.IndirectEnd::

MimikyuEggMoves:
	dw DESTINY_BOND
	dw CURSE
	dw NIGHTMARE
NoEggMoves3:
	dw -1 ; end
