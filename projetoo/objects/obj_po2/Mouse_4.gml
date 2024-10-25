if global.utilizando = true and global.pode_pegar = true  //se apertar enquanto estiver segurando a pinça
{
	instance_destroy()
	global.segurando = true
	instance_create_layer(x,y,"Instances",obj_vidro_vazio2)
}