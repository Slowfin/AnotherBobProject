if !global.dialogue {

draw_set_font(fPixelSmall)
draw_set_color(c_black)
var outline = 4
draw_text_ext_transformed(50+outline,100,"cash " + string(objPlayer.money),5,1000,4,4,0)
draw_text_ext_transformed(50-outline,100,"cash " + string(objPlayer.money),5,1000,4,4,0)
draw_text_ext_transformed(50,100+outline,"cash " + string(objPlayer.money),5,1000,4,4,0)
draw_text_ext_transformed(50,100-outline,"cash " + string(objPlayer.money),5,1000,4,4,0)



draw_set_color(c_yellow)
draw_text_ext_transformed(50,100,"cash " + string(objPlayer.money),5,1000,4,4,0)

draw_sprite_ext(sprHealthBar,image_index,130,50,4,4,image_angle,image_blend,image_alpha)

if objPlayer.HP >= 1 {
	draw_sprite_ext(sprHealth,image_index,150,60,4,4,image_angle,image_blend,image_alpha)
}
if objPlayer.HP >= 2 {
	draw_sprite_ext(sprHealth,image_index,150+(35),55,4,4,image_angle,image_blend,image_alpha)
}
if objPlayer.HP >= 3 {
	draw_sprite_ext(sprHealth,image_index,150+(35*2),50,4,4,image_angle,image_blend,image_alpha)
}
if objPlayer.HP >= 4 {
	draw_sprite_ext(sprHealth,image_index,150+(35*3),50,4,4,image_angle,image_blend,image_alpha)
}
if objPlayer.HP >= 5 {
	draw_sprite_ext(sprHealth,image_index,150+(35*4),50,4,4,image_angle,image_blend,image_alpha)
}
if objPlayer.HP >= 6 {
	draw_sprite_ext(sprHealth,image_index,150+(35*5),50,4,4,image_angle,image_blend,image_alpha)
} 

}

 draw_set_alpha(global.fadeAlpha)
draw_rectangle_colour(-5000,-5000,5000,5000,c_black,c_black,c_black,c_black,false)
 draw_set_alpha(1) 