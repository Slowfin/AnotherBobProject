
draw_set_font(fPixelSmall)
draw_sprite_ext(sprite_index,image_index,50,50,4,4,0,image_blend,image_alpha)
draw_set_color(c_white)
if global.dialogue {
draw_text_ext_transformed(75,40,messageDraw,10,380,3,3,0)
}