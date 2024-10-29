if global.utilizando = true { //se for ativado, vai seguir o mouse
	x = mouse_x
	y = mouse_y
}

if global.segurando_regolito = true {
	global.pode_pegar = false
	image_index = 1
}

if global.segurando_anortosito = true {
	global.pode_pegar = false
	image_index = 2
}

if !global.segurando_anortosito and !global.segurando_regolito{
	global.pode_pegar = true
	image_index = 0
}

if (global.regolito_inpecionado or global.anortosito_inpecionado) and image_index = 0{
	global.pode_pegar = true
}