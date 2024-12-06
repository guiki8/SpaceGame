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
 
if global.pagina == 1 and global.regolito_inpecionado {
	texto = "O regolito lunar é a camada superficial composta por uma mistura de poeira, fragmentos de rocha e micro-meteoritos que se acumulam ao longo de bilhões de anos. Sua formação é resultado de intensos impactos de meteoritos, que têm esculpido a superfície da Lua desde sua origem. Além disso, o regolito também sofre influência do vento solar."
	texto2 = "Estudos recentes têm demonstrado que o regolito lunar também contém água em forma de gelo, encontrada em regiões permanentemente sombreadas. No Regolito Lunar podem ser encontrados elementos como oxigênio, silício, e o raro Hélio-3. Pode ser utilizado para fabricar Oxigênio!"
} else if global.pagina == 2 and global.anortosito_inpecionado{
	texto = "O Anortosito Lunar  é uma das mais abundantes nas vastas e áridas terras altas da Lua, sendo composta predominantemente pelo mineral plagioclásio, que é especialmente rico em alumínio e silício. Esse tipo de rocha é fundamental para a constituição da crosta lunar, sendo uma das responsáveis pela diferenciação geológica da superfície da Lua."
	texto2 = "Ao contrário das rochas basálticas escuras encontradas nos mares lunares, formadas por erupções vulcânicas, as rochas das terras altas apresentam uma coloração mais clara e são resultado de processos de cristalização que ocorreram nas primeiras fases de formação do satélite natural da Terra. Pode ser utilizado como combustível para a nave!"
} else {
	texto = " "
	texto2 = " "
}
if sprite_index == spr_livro_abrindo or image_speed == 1{
	texto = " "
	texto2 = " "
}