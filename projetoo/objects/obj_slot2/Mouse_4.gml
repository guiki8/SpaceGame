if instance_exists(obj_fragmento_regolito){
	instance_destroy(obj_fragmento_regolito)
}
if global.minerios >= 2{
	instance_create_layer(640, 220, "Instances_1", obj_fragmento_anortosito)
	global.regolito = false
	global.anortosito = true
}