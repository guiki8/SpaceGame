#region	Colisão do objeto
if (y < obj_player.y and !pedra_acima) {
    depth = -3;
    pedra_acima = true;
} else if (y > obj_player.y and pedra_acima) {
    depth = -6;
    pedra_acima = false;
}


if (distance_to_object(obj_player) < 16 and keyboard_check_pressed(ord("E"))) {
    global.minerando = true;
	timer_minerando = 0;
	obj_player.sprite_index = spr_mining;
    show_debug_message("E");
}

if global.minerando {
    obj_player.sprite_index = spr_mining;

    timer_minerando += 1;

    if timer_minerando > 120 {
        self.sprite_index = rock_small;
        global.minerando = false;
    }
}
