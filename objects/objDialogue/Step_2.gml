var noTalk = [" ", "!","?","-",":",";",",","."]
//var stopTalk = [",", ".", "!", "?"]
var lastChar  = string_char_at(messageDraw,string_length(messageDraw))

if !array_contains(noTalk,lastChar) {
if messageDraw != oldMessage and message[messageCount] != messageDraw {
audio_play_sound(sndVoice,1,false,2,0,random_range(0.95,1.05))	
}
}
oldMessage = messageDraw