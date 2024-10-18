#region Movimentação do Personagem
var _dir = keyboard_check(ord("D"));
var _esq = keyboard_check(ord("A"));
var _baixo = keyboard_check(ord("S"));
var _cima = keyboard_check(ord("W"));

// Variáveis de movimento
move_x = 0;
move_y = 0;

// Atualiza as direções de movimento baseadas na entrada do teclado
if (_dir) {
    move_x += 1;
    move = true;
	variavel_test = true
}
if (_esq) {
    move_x -= 1;
    move = true;
	variavel_test = true
}
if (_baixo) {
    move_y += 1;
    move = true;
	variavel_test = true
}
if (_cima) {
    move_y -= 1;
    move = true;
	variavel_test = true
}
#endregion
#region Mudança dos sprites
// Normaliza o movimento para evitar que o jogador ande mais rápido na diagonal
var length = point_distance(0, 0, move_x, move_y);
if (length > 0) {
    move_x = (move_x / length) * move_speed;
    move_y = (move_y / length) * move_speed;
}

// Atualiza o sprite baseado na direção de movimento
if (move) {
    if (_dir) {
        sprite_index = walk_right;
        image_xscale = 3;
        last_key = "D";
    }
    if (_esq) {
        sprite_index = walk_right;
        image_xscale = -3;
        last_key = "A";
    }
    if (_baixo) {
        sprite_index = walk_front;
        last_key = "S";
    }
    if (_cima) {
        sprite_index = walk_back;
        last_key = "W";
    }
} else if !global.minerando{
    if (last_key == "D") {
        sprite_index = idle_right;
        image_xscale = 3;
    } else if (last_key == "A") {
        sprite_index = idle_right;
        image_xscale = -3;
    } else if (last_key == "S") {
        sprite_index = idle_front;
    } else if (last_key == "W") {
        sprite_index = idle_back;
    }
}
#endregion
#region Colisão e movimentação
var new_x = x + move_x;
var new_y = y + move_y;

// Verifica colisão horizontal
if (!place_meeting(new_x, y, obj_colisor)) {
    x = new_x;
}

// Verifica colisão vertical
if (!place_meeting(x, new_y, obj_colisor)) {
    y = new_y;
}
#endregion
#region Reseta as variáveis de movimento
move_x = 0;
move_y = 0;
move = false;
#endregion

if variavel_test = false and global.movendo_para_baixo = false {
	global.show_message_with_duration("Como primeiro objetivo tente minerar algumas pedras.", 240)
}

if global.minerios == 2 and global.entrou_no_foguete = false {
	global.show_message_with_duration("Leve os minérios para a nave", 240)

}