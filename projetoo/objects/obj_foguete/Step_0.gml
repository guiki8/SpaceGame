//Layer (Player na frente ou atrás)
if instance_exists(obj_player){
if y < obj_player.y and pedra_acima = false{
	depth = -3
	pedra_acima = true
} else if  y > obj_player.y and pedra_acima = true{
	depth = -6
	pedra_acima = false
}
}

#region cutscene direita 
if (room = rm_lua)
{
	if (cutscene_direita = true) {
		obj_player.x = x // Posição do player = posição do foguete
		obj_player.y = y
		obj_player.image_alpha = 0 // Player fica invisível
		obj_sombra.image_alpha = 0 // Sombra fica insisível
	
		tempo_cutscene += 1; //incrementa o tempo da cutscene
		//enquanto a cutscene está nos primeiros 2 segundos, o objeto se move para a direita
		if (tempo_cutscene <= duracao_cutscene)
		{
			x += velocidade; //move o objeto para a direita com a velocidade definida 
		}
		//quando a cutscene ultrapassa 2 segundos, começa a desacelerar por 5 segundos
		if (tempo_cutscene > duracao_cutscene && tempo_cutscene <= duracao_cutscene * 2)
		{
			//depois de 4 segundos, a cutscene acaba
		if (tempo_cutscene >= duracao_cutscene )
		{
			rotacionando = true //inicia a rotação ao fim da cutscene
			cutscene_direita = false
			tempo_cutscene = 0
		}
		}
	}

#endregion

#region rotacao
if (rotacionando = true) {
	obj_player.x = x
	obj_player.y = y
	
	if (image_angle < angulo_final)
	{
		image_angle += angulo_incremento; //rotaciona o objeto aos poucos
	}else{
		image_angle = angulo_final; //garante que ele pare exatamente em 90°
		rotacionando = false; //finaliza a rotação
		movendo_para_baixo = true;
		velocidade = 3
	}
}
#endregion

#region cutscene para baixo 
if (movendo_para_baixo = true) {
	obj_player.x = x // Posição do player = posição do foguete
	obj_player.y = y
	
	sprite_index = spr_foguete_pousando
    tempo_movimento_baixo += 1;

    // Move o objeto para baixo enquanto a duração do movimento não é atingida
    if (tempo_movimento_baixo <= duracao_movimento_baixo) {
        y += velocidade; // Move o objeto para baixo
        velocidade -= desaceleracao; // Desacelera a velocidade
        if (velocidade < 0) {
            velocidade = 0; // Garante que a velocidade não fique negativa
        }
    } else {
        movendo_para_baixo = false; // Finaliza o movimento
        show_debug_message("O objeto parou de se mover para baixo.");
		sprite_index = spr_foguete_parado
		
		x += 5 //Reposiciona x por causa do centro da hitbox ser diferente
		y += 180 //Reposiciona y por causa do centro da hitbox ser diferente
		obj_player.x = x-5 // Player sai da nave
		obj_player.y = y+40
		obj_player.image_alpha = 1 // Player fica visível
		obj_sombra.image_alpha = 1 // Sombra fica visível
		
    }
}
}
#endregion

#region entrar
if place_meeting(x+10, y+10, obj_player) and keyboard_check(ord("E")) {
    room_goto(rm_foguete);
}
#endregion