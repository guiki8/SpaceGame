pedra_acima = false;

cutscene_direita = false;
tempo_cutscene = 0;
duracao_cutscene = 120; // duração total da cutscene em frames (120 frames = 2 segundos a 60 fps)

global.movendo_para_baixo = true; // controle para a próxima cutscene
duracao_movimento_baixo = 300; // duração maior para o movimento para baixo (~5 segundos a 60 fps)
tempo_movimento_baixo = 0; // contador para o tempo de movimento

tempo_restante = 0
velocidade = 3;
desaceleracao = velocidade / 600; // desaceleração mais lenta, permitindo que o foguete se mova por mais tempo
	
//image_angle = -90;
angulo = image_angle;
rotacionando = false;
angulo_final = 0;
angulo_incremento = 2;

image_xscale = 5;
image_yscale = 5;

if (room = rm_start)
{
	image_angle =-90
}

global.entrou_no_foguete = false

texto = "Bem-vindo à Lua, este é um satélite natural que pertence à Terra, é principalmente composto por rochas basálticas e anortosito, cuidado ao explorar seu lado oculto!";