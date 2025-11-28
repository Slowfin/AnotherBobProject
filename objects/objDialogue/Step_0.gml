if chatWith == objWoman {
message[0] = "Привки!"
message[1] = "О... Я тя знаю!!"
message[2] = "Тыж этот.... Боб!!!"
message[3] = "Точно! Боб! АХахАх! Здарова, Боб!!!"
message[4] = 0
messageMax = 3
voice = "woman"
}
if chatWith == objCocroachNew {
message[0] = "Ага.... дада..."
message[1] = "(Что он несёт...)"
message[2] = 0
messageMax = 1
voice = "cocNew"
}
if chatWith == objCocroach {
message[0] = "И вот прикинь он кароче говорит типа \"ты хоть видел эту бицуху!?\""
message[1] = "А я кароче такой типа \"чел ты этой сосиской даже кастрюлю не поднимешь...\""
message[2] = "А он потом говорит, что..."
message[3] = 0
messageMax = 2
voice = "coc"
}
if chatWith == objBlueba {
message[0] = "Здравствуй."
message[1] = "Выглядишь неважно. Что-то стряслось?"
message[2] = 0
messageMax = 1
voice = "woman"
}

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
	
