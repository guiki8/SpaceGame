draw_self()
if global.minerios >= 1
{
	global.inspecionar = true
	if global.inspecionar = true
	{
	var text_y = camera_get_view_y(view_camera[0]) +50
	var text_x = camera_get_view_x(view_camera[0]) +800
	var offset = 30
	draw_set_alpha(0.7)
	draw_set_color(c_black);
	draw_rectangle(text_x - offset, text_y - offset, text_x + offset + 400, text_y + offset + string_height_ext("Ótimo, agora leve o minério até a nave.", -1, 400), false);
	draw_set_alpha(1)
	draw_set_font(Fonte1);
    draw_set_color(c_white);
	draw_text_ext(text_x, text_y, "Ótimo, agora leve o minério até a nave.", -1, 400)
	}
}