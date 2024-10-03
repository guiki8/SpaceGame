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
    self.sprite_index = rock_small // Destroi o objeto coletável
	global.minerios = +1
	global.minerando = true
}
#endregion