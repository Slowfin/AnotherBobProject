global.dialogue = false
image_alpha = 0

if global.dialogue == false {
	image_alpha = lerp(image_alpha,0,0.1)
}	else {
	image_alpha = lerp(image_alpha,1,0.1)	
}

image_xscale = 4
image_yscale = 4

char = 0.6
textSp = 0.3
canSkip = 0
chatWith = 0
message[0] = "Ну привет, чмошник"
message[1] = "Ты я так понимаю ещё не понял, так я тебе еще раз всё поясню"
message[2] = "Это мой район, и пацаны тоже мои, а тебе, чушпан, здесь не рады"
message[3] = "Проваливай, пока пацанов не позвал"
message[4] = 0
messageCount = 0
messageDraw = 0
messageMax = 3
oldMessage = 0
