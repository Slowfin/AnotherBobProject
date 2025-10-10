var coinDrop =   irandom_range(30,35)

for (var i = 0; i < coinDrop; i += 1) {
	instance_create_layer(x,y,"Player",objCoin)	
}

			objCamera.alarm[0] = 5
			objCamera.isShaking = true
			objCamera.shakePower = 1
			
			audio_stop_sound(musBoss1)