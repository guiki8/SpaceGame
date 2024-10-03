#region	Colisão do objeto
if (y < obj_player.y and !pedra_acima) {
    depth = -3;
    pedra_acima = true;
} else if (y > obj_player.y and pedra_acima) {
    depth = -6;
    pedra_acima = false;
}
#endregion

#region Coletar o objeto
// Deleta o objeto se o player o coletar
if (distance_to_object(obj_player) < 16 and keyboard_check(ord("E"))) {
    // Muda o sprite do jogador para mineração apenas se ele não estiver minerando
    if (!global.minerando) {
        global.minerios += 1;
        global.minerando = true;
        obj_player.sprite_index = spr_mining; // Muda o sprite do jogador para mineração
        // Adicione um timer para controlar o tempo de mineração
        obj_player.timer_minerando = 120; // ou outro valor que desejar
    }
    
    // Muda o sprite da pedra para indicar que foi coletada
    self.sprite_index = rock_small; 
}
#endregion
