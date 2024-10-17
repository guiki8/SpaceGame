draw_self()
 
 
var text_y = camera_get_view_y(view_camera[0]) +325
var text_x = camera_get_view_x(view_camera[0]) +490
var offset = 30
draw_set_alpha(0.7)
draw_set_alpha(1)
draw_set_font(Fonte1);
draw_set_color(c_black);
draw_text_ext(text_x, text_y, texto , -1, 400)
 
var texto_y = camera_get_view_y(view_camera[0]) +325
var texto_x = camera_get_view_x(view_camera[0]) +1050
var offset1 = 30
draw_set_alpha(0.7)
draw_set_alpha(1)
draw_set_font(Fonte1);
draw_set_color(c_black);
draw_text_ext(texto_x, texto_y, texto2 , -1, 400)