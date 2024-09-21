#region cutscene direita 
if (cutscene_direita = true)
	{
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
if (rotacionando = true) 
{
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
		
    }
}