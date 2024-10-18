//Layer (Player na frente ou atrás)
if instance_exists(obj_player) {
    if y < obj_player.y and pedra_acima == false {
        depth = -3;
        pedra_acima = true;
    } else if y > obj_player.y and pedra_acima == true {
        depth = -6;
        pedra_acima = false;
    }
}

#region cutscene para baixo 

if (room = rm_lua and global.movendo_para_baixo == true) {
	
    obj_player.x = x; // Posição do player = posição do foguete
    obj_player.y = y;
	
	obj_player.image_alpha = 0; // Player fica invisível
    obj_sombra.image_alpha = 0; // Sombra fica invisível
    
    // Calcula o tempo restante do movimento para baixo
    tempo_restante = duracao_movimento_baixo - tempo_movimento_baixo;

    // Se faltam menos de 2 segundos (120 frames) para o pouso, muda para spr_foguete_pousando
    if (tempo_restante <= 60) {
        sprite_index = spr_foguete_pousando;
    } else {
        sprite_index = spr_foguete_voando;
    }

    tempo_movimento_baixo += 1;

    // Move o objeto para baixo enquanto a duração do movimento não é atingida
    if (tempo_movimento_baixo <= duracao_movimento_baixo) {
        y += velocidade; // Move o objeto para baixo
        velocidade -= desaceleracao; // Desacelera a velocidade progressivamente

        // Garante que a velocidade nunca fique negativa
        if (velocidade < 0) {
            velocidade = 0; // Trava a velocidade em 0 quando a desaceleração for completa
        }
    } else {
        global.movendo_para_baixo = false; // Finaliza o movimento
        show_debug_message("O foguete parou de descer.");
        sprite_index = spr_foguete_parado;

        x += 5; // Reposiciona x por causa do centro da hitbox ser diferente
        y += 180; // Reposiciona y por causa do centro da hitbox ser diferente
        obj_player.x = x - 5; // Player sai da nave
        obj_player.y = y + 40;
        obj_player.image_alpha = 1; // Player fica visível
        obj_sombra.image_alpha = 1; // Sombra fica visível
    }
}

#region entrar
if place_meeting(x+10, y+10, obj_player) and keyboard_check(ord("E")) {
    room_goto(rm_foguete);
	global.entrou_no_foguete = true
}
#endregion

if global.final {
    if reset = false {
        x = 160;
        y = 1560;
        reset = true;
    }
    
    obj_player.x = x; // Posição do player = posição do foguete
    obj_player.y = y;
    
    obj_player.image_alpha = 0; // Player fica invisível
    obj_sombra.image_alpha = 0; // Sombra fica invisível
    
    // Calcula o tempo restante do movimento para cima
    tempo_restante2 = duracao_movimento_cima - tempo_movimento_cima;

    // Se faltam menos de 2 segundos (120 frames) para a decolagem, muda para spr_foguete_voando
    if (tempo_restante2 <= 60) {
        sprite_index = spr_foguete_voando;
    } else {
        sprite_index = spr_foguete_decolando;
    }

    tempo_movimento_cima += 1;

    // Move o objeto para cima enquanto a duração do movimento não é atingida
    if (tempo_movimento_cima <= duracao_movimento_cima) {
        y -= velocidade2; // Move o objeto para cima
        velocidade2 += aceleracao; // Acelera a velocidade progressivamente
    }
    
    if tempo_restante2 == 0 {
        room_goto(rm_start);
    }
}
