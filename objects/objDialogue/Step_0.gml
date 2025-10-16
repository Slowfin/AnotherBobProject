if global.dialogue == false {
	image_alpha = lerp(image_alpha,0,0.2)
}	else {
	image_alpha = lerp(image_alpha,1,0.2)	
}

if global.dialogue {
messageDraw = string_copy(message[messageCount],1,char)
if  messageDraw != message[messageCount] {
char += textSp
}

if canSkip > 0 {
	canSkip  -= 1
}	

if objPlayer.key_interact and global.dialogue and canSkip <= 0 and char >  3 {
	if messageDraw != message[messageCount] {
	char = 10000
	} else {
	messageCount += 1
	char = 0.6	
	}
}

}

if messageCount > messageMax and global.dialogue {
		global.dialogue = false	
		char = 0.6
		messageCount = 0
		messageDraw = ""
	}
	
