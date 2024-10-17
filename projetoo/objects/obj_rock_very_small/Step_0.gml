if (distance_to_object(obj_player) <16 and keyboard_check(ord("E"))) {
	coletando= true
	timer_coletando = 0
}

if coletando {
	obj_player.sprite_index = spr_coletar;
    timer_coletando += 1;
}


if timer_coletando > 30 {
	coletando = false;
	if global.minerios == 0
	{
		//escrever "leve o minerio até a nave e o analise
		global.minerios++;
		show_debug_message("Minerios = 1")
		global.show_message_with_duration("Você coletou Regolito Lunar!", 240)
		
	} else if global.minerios == 1{
		global.minerios = 2
		show_debug_message("Minerios = 2")
		global.show_message_with_duration("Você coletou Anortosito Lunar!", 240)
	}
	instance_destroy()
}