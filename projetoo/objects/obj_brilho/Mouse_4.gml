instance_create_layer(1700, 1200, "Instances_1", obj_notificacao)
show_debug_message("APERTOU NO BRILHO")
global.descoberta = true

if instance_exists(obj_fragmento_regolito){
	global.regolito_inpecionado = true
	show_debug_message("inspecionou regolito")
}
if instance_exists(obj_fragmento_anortosito){
	global.anortosito_inpecionado = true
	show_debug_message("inspecionou anortosito")
}