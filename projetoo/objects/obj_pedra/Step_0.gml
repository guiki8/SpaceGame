#region	Colisão do objeto
if y < obj_player.y and pedra_acima = false{
	depth = -3
	pedra_acima = true
} else if  y > obj_player.y and pedra_acima = true{
	depth = -6
	pedra_acima = false
}
#endregion
#region Coletar o objeto
// Deleta o objeto se o player o coletar
while (distance_to_object(obj_player) < 16) and keyboard_check(ord("E")) {

	animacao_minerando = true
	if animacao_minerando == true 
	{
		
		tempo_incremento +=1
		if tempo_incremento >= tempo_minerando
		{
			animacao_minerando = false
			show_debug_message("tempo")
		}
	}
	/*
	{
		tempo_incremento++;
		obj_player.sprite_index = spr_mining	

	}
	if tempo_incremento >= tempo_minerando
	{
		obj_player.sprite_index = idle_front
		animacao_minerando = false
		global.minerios = +1
		self.sprite_index = rock_small
		
	}

	
	
    self.sprite_index = rock_small // Destroi o objeto coletável
	global.minerios = +1
	obj_player.sprite_index = spr_mining*/
}
#endregion