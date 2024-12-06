if global.segurando_regolito {
	global.segurando_regolito = false
	global.regolito_no_becker = true
	global.utilizando = false
	obj_pinca.x = 1506
	obj_pinca. y = 160
}

if global.regolito_no_becker{
	evento = true
} else if global.anortosito_no_becker{
	evento = true
}

if global.segurando_anortosito {
	global.segurando_anortosito = false
	global.anortosito_no_becker = true
	global.utilizando = false
	obj_pinca.x = 1506
	obj_pinca. y = 160
}

if global.regolito_no_becker and global.click_R < 6{
global.click_R += 1
}

if global.anortosito_no_becker and global.click_A < 6{
global.click_A += 1
}

if global.click_R == 6{
	global.segurando_mistura_regolito = true
}

if global.click_A == 5{
	global.segurando_mistura_anortosito = true
}