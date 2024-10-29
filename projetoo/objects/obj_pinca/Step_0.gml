if global.utilizando = true //se for ativado, vai seguir o mouse
{
	x = mouse_x
	y = mouse_y
}
	if global.segurando = true // se estiver segurando, verifica se existe, se não, muda sprite
{
	if !instance_exists(obj_po2)
	{
		sprite_index = spr_pinca_usando2
		global.pode_pegar = false
	}
	else if !instance_destroy(obj_po1)
	{
		sprite_index = spr_pinca_usando1
		global.pode_pegar = false
	}
}

{

}