// Deleta o objeto se o player o coletar
if (distance_to_object(obj_player) < 16) and keyboard_check(ord("E")) {
    obj_pedra.sprite_index = rock_small // Destroi o objeto coletável
	global.minerios = +1
}