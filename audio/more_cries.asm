Cry_Mimikyu:
	channel_count 1
	channel 5, Cry_Mimikyu_Ch6

Cry_Mimikyu_Ch6:
	duty_cycle_pattern 0, 1, 1, 1
	square_note 20, 15, -5, 1935
	square_note 20, 5, -5, 1935
	square_note 10, 0, 0, 0
	duty_cycle_pattern 0, 2, 0, 1
	square_note 10, 5, 7, 1895
	square_note 10, 10, -7, 1895
	square_note 10, 5, -7, 1895
	square_note 40, 0, 0, 0
	square_note 5, 10, -2, 1890
	square_note 5, 10, -2, 1895
	square_note 5, 9, -2, 1900
	square_note 5, 9, -2, 1890
	duty_cycle_pattern 1, 1, 1, 1
	square_note 5, 8, -2, 1880
	square_note 5, 7, -2, 1865
	square_note 5, 6, -2, 1850
	square_note 5, 5, -2, 1835
	square_note 5, 4, -2, 1820
	sound_ret

Cry_Litwick:
	channel_count 3
	channel 5, Cry_Litwick_Ch5
	channel 6, Cry_Litwick_Ch6
	channel 8, Cry_Litwick_Ch8

Cry_Litwick_Ch5:
	duty_cycle_pattern 1, 1, 1, 1
	pitch_sweep 15, -7
	square_note 2, 10, 8, 1824
	square_note 2, 12, 8, 1831
	square_note 2, 15, 8, 1920
	square_note 2, 9, 8, 1913
	square_note 4, 7, 8, 1856
	square_note 4, 5, 8, 1852
	square_note 8, 3, 8, 1852
	square_note 3, 4, 8, 1750
	square_note 3, 7, 8, 1830
	square_note 3, 5, 8, 1800
	square_note 3, 3, 8, 1770
	sound_ret

Cry_Litwick_Ch6:
	duty_cycle_pattern 0, 1, 0, 1
.loop1
	square_note 1, 5, 1, 1820
	square_note 1, 8, 1, 1850
        sound_loop 2, .loop1
.loop2
	square_note 1, 4, 1, 1820
	square_note 1, 6, 1, 1850
        sound_loop 2, .loop2
.loop3
	square_note 1, 3, 1, 1820
	square_note 1, 5, 1, 1850
        sound_loop 4, .loop3
.loop4
	square_note 1, 2, 1, 1820
	square_note 1, 4, 1, 1850
        sound_loop 4, .loop4
.loop5
	square_note 1, 1, 1, 1820
	square_note 1, 2, 1, 1850
        sound_loop 4, .loop5
	sound_ret

Cry_Litwick_Ch8:
	noise_note 14, 15, 2, 101
	noise_note 13, 14, 2, 85
	noise_note 14, 13, 2, 86
	noise_note 8, 13, 1, 102
        sound_ret

Cry_Lampent:
	channel_count 3
	channel 5, Cry_Lampent_Ch5
	channel 6, Cry_Litwick_Ch6
	channel 8, Cry_Lampent_Ch8

Cry_Lampent_Ch5:
	duty_cycle_pattern 1, 1, 1, 1
	pitch_sweep 15, -7
	square_note 2, 10, 8, 1824
	square_note 2, 12, 8, 1831
	square_note 2, 15, 8, 1920
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
	noise_note 7, 15, 2, 101
	noise_note 6, 14, 2, 85
	noise_note 5, 13, 2, 86
	noise_note 3, 13, 1, 102
	noise_note 10, 15, 2, 101
	noise_note 9, 14, 2, 85
	noise_note 10, 13, 2, 86
	noise_note 8, 13, 1, 102
        sound_ret

Cry_Chandelure:
	channel_count 3
	channel 5, Cry_Chandelure_Ch5
	channel 6, Cry_Chandelure_Ch6
	channel 8, Cry_Chandelure_Ch8

Cry_Chandelure_Ch5:
	duty_cycle_pattern 1, 1, 2, 2
	pitch_sweep 15, 7
	square_note 15, 4, 0, 210
	pitch_sweep 15, 7
	square_note 15, 4, 0, 300
	pitch_sweep 15, 7
	square_note 15, 5, 0, 350
	sound_ret

Cry_Chandelure_Ch6:
	duty_cycle_pattern 2, 2, 1, 1
	square_note 7, 4, -7, 1000
	square_note 7, 8, 7, 1000
	square_note 7, 12, 7, 999
	square_note 7, 8, 7, 998
	square_note 7, 4, 7, 998
        sound_ret

Cry_Chandelure_Ch8:
	noise_note 10, 12, 7, 115
	noise_note 10, 10, 7, 116
	noise_note 10, 8, 7, 117
	noise_note 10, 6, -7, 118
	noise_note 10, 8, -7, 119
        sound_ret
