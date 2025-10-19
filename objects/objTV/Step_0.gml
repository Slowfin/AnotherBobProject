if place_meeting(x,y,objPlayer) and objPlayer.key_interact {

if mode == 1 {
	mode = 0
	channel  += 1
	audio_stop_sound(music)
	if channel >= maxChannel {
	channel = 0	
	} }
else if mode == 0 {
	mode = 1
	audio_play_sound(music,1,true)
}

}

if mode == 0 {
	sprite_index = sprTVOff
	}
else  {
	sprite_index = spriteTV
}

if channel == 0 {
	spriteTV = sprTVOn1	
	music = musTV1
}
if channel == 1 {
	spriteTV = sprTVOn4
	music = musTV2
}
if channel == 2 {
	spriteTV = sprTVOn3
	music = musBoss1
}