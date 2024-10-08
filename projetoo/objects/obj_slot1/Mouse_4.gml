if instance_exists(obj_fragmento_anortosito){
	instance_destroy(obj_fragmento_anortosito)
}
if global.minerios >= 1{
	instance_create_layer(640, 220, "Instances_1", obj_fragmento_regolito)
}