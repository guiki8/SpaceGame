// Deleta o objeto se o player o coletar
if (distance_to_object(obj_player) < 16) and keyboard_check(ord("E")) {
	global.minerios = +1
}