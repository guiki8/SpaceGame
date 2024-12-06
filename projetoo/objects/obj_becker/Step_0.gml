if global.regolito_inpecionado or global.anortosito_inpecionado{
	if !global.regolito_no_becker and !global.anortosito_no_becker{
		if !global.oxigenio and !global.combustivel{
			global.show_message_with_duration("Coloque um minério no becker e misture!", 240)
		}
	}
	if global.regolito_no_becker or global.anortosito_no_becker{
		global.show_message_with_duration("Despeje a mistura na válvula correta!", 240)
	}
}

if evento = true {
	tempo += 1
	if tempo = 1
	image_angle -= 3
	if tempo = 5 {
	image_angle += 6}
	if tempo = 10 {
	image_angle -= 3}
}

if tempo = 15 {
	tempo = 0
	evento = false	
}
#region Mudança do becker regolito
if global.click_R = 1 {
	sprite_index = spr_becker_regolito
	image_index = 0
	image_speed = 0
}
if global.click_R = 2 {
	image_index = 1
}
if global.click_R = 3 {
	image_index = 3
}
if global.click_R = 4 {
	image_index = 4
}
if global.click_R = 5 {
	image_index = 5
	global.pode_pegar = false
}
#endregion
#region Mudança do becker anortosito
if global.click_A = 1 {
	sprite_index = spr_becker_anortosito
	image_index = 0
	image_speed = 0
}
if global.click_A= 2 {
	image_index = 1
	image_speed = 0		
}
if global.click_A = 3 {
	image_index = 3
}
if global.click_A = 4 {
	image_index = 4
}
if global.click_A = 5 {
	image_index = 5
	global.pode_pegar = false
}
#endregion

#region Despejar mistura nas válvulas

if global.segurando_mistura_regolito or global.segurando_mistura_anortosito{
	x = mouse_x - 150
	y = mouse_y + 150
}

#endregion