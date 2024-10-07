if (distance_to_object(obj_player) <16 and keyboard_check(ord("E"))) {
	coletando= true
	timer_coletando = 0
}

if coletando {
	obj_player.sprite_index = spr_coletar;
    timer_coletando += 1;

}


if timer_coletando > 30 {
     instance_destroy()
     coletando = false;
}