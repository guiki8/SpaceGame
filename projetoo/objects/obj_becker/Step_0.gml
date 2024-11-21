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
if click_R = 1 {
	sprite_index = spr_becker_regolito
	image_index = 0
	image_speed = 0
}
if click_R = 2 {
	image_index = 1
	image_speed = 0		
}
if click_R = 3 {
	image_index = 3
}
if click_R = 4 {
	image_index = 4
}
if click_R = 5 {
	image_index = 5
	global.pode_pegar = false
}
#endregion
#region Mudança do becker anortosito
if click_A = 1 {
	sprite_index = spr_becker_anortosito
	image_index = 0
	image_speed = 0
}
if click_A= 2 {
	image_index = 1
	image_speed = 0		
}
if click_A = 3 {
	image_index = 3
}
if click_A = 4 {
	image_index = 4
}
if click_A = 5 {
	image_index = 5
}
#endregion
