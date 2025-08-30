TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_City ; unused

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_City:
TreeMonSet_Canyon:
; common
	dbbw 50, 20, SPEAROW
	dbbw 15, 20, SPEAROW
	dbbw 15, 20, SPEAROW
	dbbw 10, 20, AIPOM
	dbbw  5, 20, AIPOM
	dbbw  5, 20, AIPOM
	db -1
; rare
	dbbw 50, 20, SPEAROW
	dbbw 15, 20, HERACROSS
	dbbw 15, 20, HERACROSS
	dbbw 10, 20, AIPOM
	dbbw  5, 20, AIPOM
	dbbw  5, 20, AIPOM
	db -1

TreeMonSet_Town:
; common
	dbbw 50, 20, SPEAROW
	dbbw 15, 20, EKANS
	dbbw 15, 20, SPEAROW
	dbbw 10, 20, AIPOM
	dbbw  5, 20, AIPOM
	dbbw  5, 20, AIPOM
	db -1
; rare
	dbbw 50, 20, SPEAROW
	dbbw 15, 20, HERACROSS
	dbbw 15, 20, HERACROSS
	dbbw 10, 20, AIPOM
	dbbw  5, 20, AIPOM
	dbbw  5, 20, AIPOM
	db -1

TreeMonSet_Route:
; common
	dbbw 50, 20, HOOTHOOT
	dbbw 15, 20, SPINARAK
	dbbw 15, 20, LEDYBA
	dbbw 10, 20, EXEGGCUTE
	dbbw  5, 20, EXEGGCUTE
	dbbw  5, 20, EXEGGCUTE
	db -1
; rare
	dbbw 50, 20, HOOTHOOT
	dbbw 15, 20, PINECO
	dbbw 15, 20, PINECO
	dbbw 10, 20, EXEGGCUTE
	dbbw  5, 20, EXEGGCUTE
	dbbw  5, 20, EXEGGCUTE
	db -1

TreeMonSet_Kanto:
; common
	dbbw 50, 70, NOCTOWL
	dbbw 15, 70, ARBOK
	dbbw 15, 70, NOCTOWL
	dbbw 10, 70, EXEGGCUTE
	dbbw  5, 70, EXEGGCUTE
	dbbw  5, 70, EXEGGCUTE
	db -1
; rare
	dbbw 50, 70, NOCTOWL
	dbbw 15, 70, FORRETRESS
	dbbw 15, 70, FORRETRESS
	dbbw 10, 70, EXEGGCUTE
	dbbw  5, 70, EXEGGCUTE
	dbbw  5, 70, EXEGGCUTE
	db -1

TreeMonSet_Lake:
; common
	dbbw 50, 20, HOOTHOOT
	dbbw 15, 20, VENONAT
	dbbw 15, 20, HOOTHOOT
	dbbw 10, 20, EXEGGCUTE
	dbbw  5, 20, EXEGGCUTE
	dbbw  5, 20, EXEGGCUTE
	db -1
; rare
	dbbw 50, 20, HOOTHOOT
	dbbw 15, 20, PINECO
	dbbw 15, 20, PINECO
	dbbw 10, 20, EXEGGCUTE
	dbbw  5, 20, EXEGGCUTE
	dbbw  5, 20, EXEGGCUTE
	db -1

TreeMonSet_Forest:
; common
	dbbw 50, 20, HOOTHOOT
	dbbw 15, 20, PINECO
	dbbw 15, 20, PINECO
	dbbw 10, 20, NOCTOWL
	dbbw  5, 20, BUTTERFREE
	dbbw  5, 20, BEEDRILL
	db -1
; rare
	dbbw 50, 20, HOOTHOOT
	dbbw 15, 20, CATERPIE
	dbbw 15, 20, WEEDLE
	dbbw 10, 20, HOOTHOOT
	dbbw  5, 20, METAPOD
	dbbw  5, 20, KAKUNA
	db -1

TreeMonSet_Rock:
	dbbw 70, 25, KRABBY
	dbbw 20, 25, SANDYGAST
	dbbw 10, 25, SHUCKLE
	db -1
