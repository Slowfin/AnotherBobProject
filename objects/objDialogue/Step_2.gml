var noTalk = [" ", "!","?","-",":",";",",","."]
//var stopTalk = [",", ".", "!", "?"]
var lastChar  = string_char_at(messageDraw,string_length(messageDraw))

if !array_contains(noTalk,lastChar) {
if messageDraw != oldMessage and message[messageCount] != messageDraw {
if voice = "woman" {
	audio_play_sound(sndVoiceWoman,1,false,2,0,random_range(0.95,1.05))		
}
else if voice = "cocNew" {
	audio_play_sound(sndVoice,1,false,2,0,random_range(0.6,0.7))		
}
else if voice = "coc" {
	audio_play_sound(sndVoice,1,false,2,0,random_range(0.95,1.05))		
} else {
	audio_play_sound(sndVoice,1,false,2,0,random_range(0.95,1.05))		
}
}
}
oldMessage = messageDraw