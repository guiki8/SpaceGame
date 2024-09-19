// Deleta o objeto se o player o coletar
if place_meeting(x, y, obj_player) and keyboard_check(ord("E")) {
    instance_destroy(); // Destroi o objeto coletável
}