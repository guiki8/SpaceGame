#region debug

#endregion
_dir = keyboard_check(ord("D")) || keyboard_check(vk_right);
_esq = keyboard_check(ord("A")) || keyboard_check(vk_left);
_baixo = keyboard_check(ord("S")) || keyboard_check(vk_down);
_cima = keyboard_check(ord("W")) || keyboard_check(vk_up);

// Definindo a velocidade de movimento
move_speed = 2;

// Inicialização das variáveis de movimentação
move_x = 0;
move_y = 0;
move = false;

//Definição da velocidade
velh = 2
velv = 2	
vel = 2
move = false

//Declarando matriz de sprite
last_key = "S"

//Posicionameto na tela (Quanto menor mais na frente dos outros objetos)
depth = -5

global.minerando = false

variavel_test = false