if obj_livro.sprite_index = spr_livro_pagina{
	global.pagina -= 1
	obj_livro.image_speed = 1
	if global.pagina <= 0{
		global.pagina = 1
		obj_livro.image_xscale = 10
		obj_livro.sprite_index = spr_livro_fechando
		obj_livro.image_index = 0
	} else {
	obj_livro.image_xscale = -10
	}
}