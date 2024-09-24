if global.iniciar = true
{
	obj_foguete.x+=velocidade
	contador++
	if contador >= tempo
	{
		room_goto(rm_lua)
		contador = 0
	}
}