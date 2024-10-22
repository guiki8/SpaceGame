if !global.regolito_inpecionado and !global.anortosito_inpecionado and global.minerios == 2{
	global.show_message_with_duration("Inspecione os minérios", 240)
}
if room = rm_foguete and global.regolito_inpecionado = true and global.anortosito_inpecionado = true {
	global.show_message_with_duration("Agora utilize os frascos.", 1200)	
}