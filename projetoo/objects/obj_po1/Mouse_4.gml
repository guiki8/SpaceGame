if global.utilizando = true and global.pode_pegar = true and sprite_index = spr_po1   //se apertar enquanto estiver segurando a pinça
{
	global.segurando = true
	instance_destroy()
	instance_create_layer(x,y,"Instances",obj_vidro_vazio1)
}