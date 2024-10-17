if sprite_index = spr_livro_abrindo and image_index = 4 {
	image_speed = 0
	sprite_index = spr_livro_pagina
	image_index = 4
	}
if sprite_index = spr_livro_fechando and image_index = 4{
	image_speed = 0
	sprite_index = spr_livro_abrindo
	image_index = 0
}
 
if global.pagina == 1 {
	texto = "O regolito lunar é a camada superficial composta por uma mistura de poeira, fragmentos de rocha e micro-meteoritos que se acumulam ao longo de bilhões de anos. Sua formação é resultado de intensos impactos de meteoritos, que têm esculpido a superfície da Lua desde sua origem. Além disso, o regolito também sofre influência do vento solar."
	texto2 = "Estudos recentes têm demonstrado que o regolito lunar também contém água em forma de gelo, encontrada em regiões permanentemente sombreadas."
} else if global.pagina == 2 {
	texto = "regolito"
	texto = " "
} else {
	texto = " "
	texto2 = " "
}
if sprite_index == spr_livro_abrindo or image_speed == 1{
	texto = " "
	texto2 = " "
}