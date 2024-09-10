/*if place_meeting(10+x,10+y, obj_grama)
{
	
}*/
vel = 0
velh = 0
velv = 2

if  keyboard_check(ord("E"))
{
	global.grama += 1
	instance_destroy(obj_grama)
	vel = 2
	velh = 2
	velv = 2
}

