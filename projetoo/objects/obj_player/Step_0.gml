// Movimentação do Personagem
var _dir = keyboard_check(ord("D"));
var _esq = keyboard_check(ord("A"));
var _baixo = keyboard_check(ord("S"));
var _cima = keyboard_check(ord("W"));

// Atualiza as direções de movimento baseadas na entrada do teclado
if (_dir = true) {
    move_x = move_speed;
    move = true;
}
if (_esq = true) {
    move_x = -move_speed;
    move = true;
}
if (_baixo = true) {
    move_y = move_speed;
    move = true;
}
if (_cima = true) {
    move_y = -move_speed;
    move = true;
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
} else {
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

// Colisão e movimentação
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

// Reseta as variáveis de movimento
move_x = 0;
move_y = 0;
move = false;

