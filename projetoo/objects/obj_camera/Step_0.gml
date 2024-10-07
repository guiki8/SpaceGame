// Pega a posição da câmera
camera_x = camera_get_view_x(view_camera[0]);
camera_y = camera_get_view_y(view_camera[0]);

// Posição do jogador
var player_x = obj_player.x;
var player_y = obj_player.y;

// Pega o tamanho da câmera
var cam_width = camera_get_view_width(view_camera[0]);
var cam_height = camera_get_view_height(view_camera[0]);

// Calcula a nova posição da câmera para centralizar a câmera no jogador
var cam_x = player_x - cam_width / 2;
var cam_y = player_y - cam_height / 2;

// Move as layers de fundo com base nas velocidades (Parallax)
layer_x(background_layer_1, camera_x * speed_1);
layer_y(background_layer_1, camera_y * speed_1);

layer_x(background_layer_2, camera_x * speed_2);
layer_y(background_layer_2, camera_y * speed_2);

layer_x(background_layer_3, camera_x * speed_3);

layer_x(background_layer_4, camera_x * speed_4);

// Define a nova posição da câmera
camera_set_view_pos(view_camera[0], cam_x, cam_y);