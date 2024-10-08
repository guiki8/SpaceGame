#region	Colisão do objeto
if (y < obj_player.y and !pedra_acima) {
    depth = -3;
    pedra_acima = true;
} else if (y > obj_player.y and pedra_acima) {
    depth = -6;
    pedra_acima = false;
}
#endregion

#region Mecãnica de Coletar
if (distance_to_object(obj_player) < 16 and keyboard_check_pressed(ord("E"))) {
    
	obj_player.y = obj_pedra_pequena.y + 10
	global.minerando = true;
	timer_minerando = 0;
}

if global.minerando {
    obj_player.sprite_index = spr_mining;
    timer_minerando += 1;
	image_xscale -= 0.01
	image_yscale -= 0.01

    if timer_minerando > 120 {
        instance_change(obj_rock_very_small, true)
        global.minerando = false;
    }
}
#endregion