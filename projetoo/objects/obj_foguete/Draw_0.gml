draw_self();

// Desenha o texto acima do objeto quando o player chega perto
if (distance_to_object(obj_player) < 16) and !global.final { // Ajuste a distância conforme necessário
    draw_set_font(Fonte1);
    draw_set_color(c_white);
    draw_text(x - 128, y - 128, "Aperte E para entrar");
}

if global.movendo_para_baixo == true and (room = rm_lua) {
	var text_y = y - 300
	var text_x = x + 650
	var offset = 30
	draw_set_alpha(0.7)
	draw_set_color(c_black);
	draw_rectangle(text_x - offset, text_y - offset, text_x + offset + 400, text_y + offset + string_height_ext(texto, -1, 400), false);
	draw_set_alpha(1)
	draw_set_font(Fonte1);
    draw_set_color(c_white);
	draw_text_ext(text_x, text_y, texto, -1, 400)
}