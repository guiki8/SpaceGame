draw_self();

// Desenha o texto acima do objeto quando o player chega perto
if (distance_to_object(obj_player) < 16) { // Ajuste a distância conforme necessário
    draw_set_font(Fonte1);
    draw_set_color(c_white);
    draw_text(x - 128, y - 128, "Aperte E para entrar");
}

