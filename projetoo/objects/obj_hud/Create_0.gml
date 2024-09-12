// Variáveis que armazenam as velocidades de cada camada
speed_1 = 0.5; // Background mais distante (céu)
speed_2 = 0.3; // Background intermediário (terra)
speed_3 = -0.3; // Background próximo (pedras 1)
speed_4 = -1.2; // Background mais próximo (pedras 2)

// Pega a posição da câmera ou do jogador
camera_x = camera_get_view_x(view_camera[0]);
camera_y = camera_get_view_y(view_camera[0]);

// Pega o ID das layers que contêm os backgrounds
background_layer_1 = layer_get_id("Background_1");
background_layer_2 = layer_get_id("Background_2");
background_layer_3 = layer_get_id("Background_4");
background_layer_4 = layer_get_id("Background_5");