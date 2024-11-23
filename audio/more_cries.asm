Cry_Mimikyu:
	channel_count 1
	channel 5, Cry_Mimikyu_Ch5

Cry_Mimikyu_Ch5:
	duty_cycle_pattern 0, 1, 2, 1
	pitch_sweep 3, 5
	square_note 5, 10, -1, 1910
	pitch_sweep 15, 0
	square_note 15, 15, 1, 1970
	square_note 5, 0, 0, 0
	duty_cycle_pattern 2, 2, 1, 1
	pitch_sweep 4, 7
	square_note 15, 10, -1, 1930
	pitch_sweep 15, 0
	square_note 15, 15, 1, 1950
	square_note 30, 0, 0, 0
	duty_cycle 1
	pitch_sweep 3, 7
	square_note 20, 10, 7, 1930
	pitch_sweep 3, -7
	square_note 30, 8, 2, 1950
	sound_ret

Cry_Litwick:
	channel_count 3
	channel 5, Cry_Litwick_Ch5
	channel 6, Cry_Litwick_Ch6
	channel 8, Cry_Litwick_Ch8

Cry_Litwick_Ch5:
	duty_cycle 1
	pitch_sweep 15, 7
	square_note 12, 8, -1, 1844
	pitch_sweep 15, -7
	square_note 12, 15, 1, 1844
	pitch_sweep 15, 7
	square_note 10, 3, -1, 1770
	pitch_sweep 15, 0
	square_note 10, 5, 0, 1770
	square_note 10, 3, 0, 1760
	square_note 10, 2, 0, 1770
	square_note 5, 1, 0, 1780
	square_note 10, 1, 0, 1770
	square_note 5, 1, 1, 1770
	sound_ret

Cry_Litwick_Ch6:
	duty_cycle 1
.loop1
	square_note 2, 1, -1, 1820
	square_note 1, 2, 2, 1820
	sound_loop 10, .loop1
.loop2
	square_note 2, 0, -1, 1820
	square_note 1, 1, 2, 1820
	sound_loop 5, .loop2
	sound_ret

Cry_Litwick_Ch8:
	noise_note 14, 15, 2, 101
	noise_note 13, 10, 2, 85
	noise_note 14, 8, 2, 86
	noise_note 12, 10, 1, 102
	sound_ret

Cry_Lampent:
	channel_count 3
	channel 5, Cry_Lampent_Ch5
	channel 6, Cry_Litwick_Ch6
	channel 8, Cry_Lampent_Ch8

Cry_Lampent_Ch5:
	duty_cycle 1
	pitch_sweep 15, 7
	square_note 10, 7, 0, 1750
	pitch_sweep 15, 7
	square_note 10, 7, -1, 1820
	pitch_sweep 15, 0
	square_note 10, 10, -1, 1920
	duty_cycle_pattern 1, 0, 2, 0
	square_note 30, 13, -1, 1920
	square_note 2, 9, 8, 1913
	square_note 4, 7, 8, 1856
	square_note 4, 5, 8, 1852
	square_note 8, 3, 8, 1852
	pitch_sweep 15, -7
	duty_cycle_pattern 0, 2, 0, 2
	square_note 3, 4, 7, 1700
	square_note 3, 6, 7, 1600
	square_note 3, 8, 7, 1500
	square_note 3, 10, 7, 1450
	pitch_sweep 15, 7
	square_note 3, 14, 7, 1450
	square_note 3, 15, -7, 1400
	square_note 3, 10, -7, 1300
	sound_ret

Cry_Lampent_Ch8:
	noise_note 15, 2, 0, 0
	noise_note 10, 5, -1, 0
	noise_note 15, 10, 0, 1
	noise_note 10, 10, 7, 1
	noise_note 13, 0, 0, 0
	noise_note 5, 0, -1, 18
	noise_note 5, 5, 0, 18
	noise_note 15, 5, 7, 18
	sound_ret

Cry_Chandelure:
	channel_count 3
	channel 5, Cry_Chandelure_Ch5
	channel 6, Cry_Chandelure_Ch6
	channel 8, Cry_Chandelure_Ch8

Cry_Chandelure_Ch5:
	duty_cycle_pattern 2, 0, 1, 0
	pitch_sweep 11, 7
	square_note 15, 0, -7, 500
	pitch_sweep 11, 7
	square_note 15, 3, -7, 700
	pitch_sweep 11, 5
	square_note 10, 6, 3, 900
	pitch_sweep 15, 0
	duty_cycle 2
	square_note 15, 2, -7, 300
	square_note 15, 5, 7, 200
	square_note 25, 3, 4, 100
	square_note 25, 1, 1, 50
	sound_ret

Cry_Chandelure_Ch6:
	duty_cycle_pattern 2, 1, 2, 1
	square_note 15, 4, -7, 2002
	square_note 15, 8, 0, 2002
	square_note 15, 8, 7, 2001
	square_note 25, 4, 7, 2000
	square_note 25, 2, 1, 2000
	sound_ret

Cry_Chandelure_Ch8:
	noise_note 20, 4, -7, 16
	noise_note 20, 8, 7, 48
	noise_note 20, 4, -7, 49
	noise_note 20, 8, 7, 48
	noise_note 20, 5, 1, 52
	sound_ret

Cry_Sinistea:
	channel_count 2
	channel 5, Cry_Sinistea_Ch5
	channel 8, Cry_Sinistea_Ch8

Cry_Sinistea_Ch5:
	duty_cycle_pattern 2, 1, 2, 0
	pitch_sweep 15, 7
	square_note 20, 0, -1, 1950
	pitch_sweep 15, 0
	square_note 36, 3, 7, 2000
	square_note 30, 4, 4, 500
	sound_ret

Cry_Sinistea_Ch8:
.loop1
	noise_note 1, 15, 1, 18
	noise_note 1, 0, -1, 18
	sound_loop 7, .loop1
	noise_note 1, 15, 1, 19
	noise_note 1, 0, -1, 19
	noise_note 1, 10, 1, 20
	noise_note 1, 0, -1, 20
	noise_note 1, 5, 1, 21
	noise_note 3, 0, -1, 21
	noise_note 1, 8, 3, 22
	noise_note 1, 0, -3, 22
	noise_note 1, 8, 3, 22
	noise_note 1, 0, -4, 22
	noise_note 1, 6, 4, 22
	noise_note 1, 0, -4, 22
	noise_note 1, 6, 4, 22
	noise_note 1, 0, -5, 22
.loop2
	noise_note 1, 5, 5, 22
	noise_note 1, 0, -5, 22
	sound_loop 2, .loop2
	noise_note 1, 4, 5, 22
	noise_note 1, 0, -6, 22
	noise_note 1, 4, 6, 22
	noise_note 1, 0, -6, 22
	noise_note 1, 3, 6, 22
	noise_note 1, 0, -6, 22
	noise_note 1, 3, 6, 22
	noise_note 1, 0, -7, 22
.loop3
	noise_note 1, 2, 7, 22
	noise_note 1, 0, -7, 22
	sound_loop 3, .loop3
	noise_note 1, 1, 7, 22
	noise_note 1, 0, -7, 22
	noise_note 1, 1, 7, 22
	sound_ret

Cry_Polteageist:
	channel_count 2
	channel 5, Cry_Polteageist_Ch5
	channel 8, Cry_Polteageist_Ch8

Cry_Polteageist_Ch5:
	duty_cycle_pattern 2, 1, 2, 0
	square_note 5, 0, 0, 0
	square_note 10, 5, -1, 10
	square_note 10, 15, 1, 10
	square_note 65, 0, 0, 0
	duty_cycle_pattern 2, 1, 2, 1
	square_note 5, 10, 0, 1700
	square_note 5, 0, 0, 0
	square_note 5, 10, 7, 1500
	sound_ret

Cry_Polteageist_Ch8:
	noise_note 15, 0, -1, 0
	noise_note 5, 10, -1, 29
	noise_note 25, 15, 1, 20
	noise_note 5, 0, -1, 14
	noise_note 5, 8, -1, 15
	sound_ret

Cry_Drifblim:
	channel_count 3
	channel 5, Cry_Drifblim_Ch5
	channel 6, Cry_Drifblim_Ch6
	channel 8, Cry_Drifblim_Ch8

Cry_Drifblim_Ch5:
	duty_cycle_pattern 2, 0, 2, 0
	pitch_sweep 15, -5
	square_note 10, 15, 4, 986
	square_note 2, 0, 0, 0
	square_note 6, 15, 4, 856
	square_note 4, 0, 0, 0
	pitch_sweep 15, 6
	square_note 6, 15, 4, 1046
	square_note 2, 0, 0, 0
	pitch_sweep 15, -4
	square_note 7, 15, 4, 1339
	square_note 4, 0, 0, 0
	pitch_sweep 15, 6
	square_note 6, 15, 4, 1155
	square_note 3, 0, 0, 0
	pitch_sweep 15, 0
	square_note 6, 15, 4, 1339
	square_note 4, 0, 0, 0
	square_note 8, 15, 1, 1452
	square_note 2, 0, 0, 0
	square_note 8, 7, 1, 1517
	sound_ret

Cry_Drifblim_Ch6:
	duty_cycle_pattern 0, 2, 0, 1
	square_note 10, 10, 4, 986
	square_note 2, 0, 0, 0
	square_note 6, 10, 4, 856
	square_note 4, 0, 0, 0
	square_note 4, 10, 4, 923
	square_note 4, 0, 0, 0
	square_note 7, 10, 4, 856
	square_note 4, 0, 0, 0
	square_note 3, 10, 4, 1339
	square_note 2, 0, 0, 0
	square_note 10, 10, 4, 923
	square_note 4, 0, 0, 0
	square_note 8, 5, 1, 1750
	sound_ret

Cry_Drifblim_Ch8:
	noise_note 60, 8, 0, 127
.loop1
	noise_note 1, 2, 1, 15
	noise_note 1, 0, 0, 0
	sound_loop 5, .loop1
.loop2
	noise_note 1, 1, 1, 15
	noise_note 1, 0, 0, 0
	sound_loop 5, .loop2
	sound_ret

Cry_Drifloon:
	channel_count 2
	channel 5, Cry_Drifloon_Ch5
	channel 6, Cry_Drifloon_Ch6

Cry_Drifloon_Ch5:
	duty_cycle_pattern 1, 2, 1, 2
	pitch_sweep 1, -7
	square_note 10, 15, 7, 1974
	pitch_sweep 4, 7
	square_note 10, 10, -7, 1849
	pitch_sweep 15, 7
	square_note 10, 12, 0, 1974
	pitch_sweep 15, 0
	square_note 5, 0, 0, 0
	duty_cycle 1
	pitch_sweep 3, 7
	square_note 8, 2, -4, 1849
	square_note 2, 0, 0, 0
	square_note 8, 2, -4, 1849
	square_note 2, 0, 0, 0
	duty_cycle_pattern 1, 2, 1, 2
	pitch_sweep 2, 7
	square_note 5, 4, -2, 1915
	pitch_sweep 15, 0
	square_note 5, 6, 1, 1985
	sound_ret

Cry_Drifloon_Ch6:
	duty_cycle_pattern 2, 1, 2, 1
	square_note 10, 0, -1, 1849
	square_note 5, 0, 0, 0
	duty_cycle 3
	square_note 20, 0, -3, 1798
	sound_ret

Cry_Mismagius:
	channel_count 2
	channel 5, Cry_Mismagius_Ch5
	channel 6, Cry_Mismagius_Ch6

Cry_Mismagius_Ch5:
	duty_cycle_pattern 2, 1, 2, 1
	pitch_sweep 5, -7
	square_note 5, 8, 7, 1750
	pitch_sweep 5, 7
	square_note 5, 8, -7, 1750
	pitch_sweep 5, -7
	square_note 5, 8, 7, 1766
	pitch_sweep 5, 7
	square_note 5, 8, -7, 1766
	pitch_sweep 5, -7
	square_note 5, 8, 7, 1783
	pitch_sweep 5, 7
	square_note 5, 8, -7, 1783
	pitch_sweep 5, -7
	square_note 5, 8, 7, 1812
	pitch_sweep 5, 7
	square_note 5, 8, -7, 1812
	pitch_sweep 5, -7
	square_note 5, 8, 7, 1837
	pitch_sweep 5, 7
	square_note 5, 8, -7, 1837
	square_note 20, 8, 2, 1849
	sound_ret

Cry_Mismagius_Ch6:
	duty_cycle_pattern 2, 1, 2, 1
	square_note 10, 5, 0, 1452
	square_note 10, 5, 0, 1486
	square_note 10, 5, 0, 1517
	square_note 10, 5, 0, 1575
	square_note 10, 5, 0, 1627
	square_note 20, 5, 2, 1650
	sound_ret

Cry_Sandygast:
	channel_count 2
	channel 5, Cry_Sandygast_Ch5
	channel 8, Cry_Sandygast_Ch8

Cry_Sandygast_Ch5:
	duty_cycle 2
	pitch_sweep 2, 5
	square_note 20, 0, -2, 176
	pitch_sweep 15, 0
	square_note 20, 5, 0, 856
	pitch_sweep 2, -5
	square_note 20, 5, 2, 856
	sound_ret

Cry_Sandygast_Ch8:
	noise_note 8, 10, -5, 66
	noise_note 8, 11, 2, 65
	noise_note 8, 10, 0, 65
	noise_note 24, 10, -2, 64
	noise_note 8, 15, 2, 64
	noise_note 8, 12, 2, 65
	noise_note 24, 10, 4, 66
	noise_note 24, 5, 4, 6
	sound_ret

Cry_Palossand:
	channel_count 2
	channel 5, Cry_Palossand_Ch5
	channel 8, Cry_Palossand_Ch8

Cry_Palossand_Ch5:
	duty_cycle_pattern 2, 1, 2, 1
	pitch_sweep 3, 4
	square_note 20, 5, -2, 176
	pitch_sweep 15, 0
	square_note 20, 10, -4, 1174
	pitch_sweep 15, -7
	square_note 20, 12, 0, 1174
	pitch_sweep 15, 7
	square_note 20, 12, 0, 1118
	pitch_sweep 1, -7
	square_note 20, 12, 3, 1174
	sound_ret

Cry_Palossand_Ch8:
	noise_note 20, 10, 3, 52
	noise_note 40, 1, -4, 50
	noise_note 30, 10, -7, 51
	noise_note 40, 10, 3, 53
	sound_ret

Cry_Zorua:
	channel_count 3
	channel 5, Cry_Zorua_Ch5
	channel 6, Cry_Zorua_Ch6
	channel 8, Cry_Zorua_Ch8

Cry_Zorua_Ch5:
	duty_cycle 2
	pitch_sweep 15, 7
	square_note 7, 13, -1, 1807
	square_note 4, 0, 0, 0
	square_note 7, 13, -1, 1893
	sound_ret

Cry_Zorua_Ch6:
	duty_cycle_pattern 2, 0, 1, 0
	square_note 7, 8, -1, 1797
	square_note 4, 0, 0, 0
	square_note 7, 8, -1, 1883
	sound_ret

Cry_Zorua_Ch8:
	noise_note 4, 5, -1, 33
	noise_note 3, 8, 1, 0
	noise_note 4, 0, 0, 0
	noise_note 3, 8, 0, 33
	noise_note 4, 8, 0, 16
	sound_ret

Cry_Zoroark:
	channel_count 2
	channel 5, Cry_Zoroark_Ch5
	channel 8, Cry_Zoroark_Ch8

Cry_Zoroark_Ch5:
	duty_cycle 2
	pitch_sweep 8, 7
	square_note 30, 0, -3, 0
	pitch_sweep 15, 0
	square_note 10, 6, 0, 176
	pitch_sweep 2, 7
	square_note 30, 5, 1, 176
	sound_ret

Cry_Zoroark_Ch8:
	noise_note 2, 15, 1, 80
	noise_note 1, 8, -1, 80
.loop1
	noise_note 2, 15, 1, 80
	noise_note 1, 8, -1, 81
	sound_loop 4, .loop1
.loop2
	noise_note 2, 15, 1, 96
	noise_note 1, 8, -1, 81
	sound_loop 4, .loop2
.loop3
	noise_note 2, 15, 1, 96
	noise_note 1, 8, -1, 96
	sound_loop 2, .loop3
	noise_note 2, 12, 1, 96
	noise_note 1, 6, -1, 128
	noise_note 2, 10, 1, 96
	noise_note 1, 4, -1, 128
	noise_note 2, 8, 1, 128
	noise_note 1, 2, -1, 128
.loop4
	noise_note 2, 5, 1, 128
	noise_note 1, 0, -1, 128
	sound_loop 3, .loop4
.loop5
	noise_note 2, 3, 1, 128
	noise_note 1, 0, -1, 128
	sound_loop 5, .loop5
	sound_ret
