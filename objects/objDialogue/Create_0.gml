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

message[0] = "Привет, бро, здарова!!! Че как у тебя, как жена, как дети?"
message[1] = "Братан, тут одно дело, какие-то слизняки захватили это место. Они меня бесят"
message[2] = "Избавься от них, и я дам тебе НАГРАДУ!!! "
message[3] = 0
messageCount = 0
messageDraw = 0
messageMax = 2
oldMessage = 0