if mouse_check_button_pressed(mb_left)
{
instance_create_layer(1150, 230, "Instances", obj_tela_minerios)
aparecendo = true


if aparecendo = true
{
	tempo +=1
	image_yscale +=0.5
	image_xscale +=0.5
}
	if tempo > 30
	{
	aparecendo = false
	}
}



