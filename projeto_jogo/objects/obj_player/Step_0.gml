// Movimentação do Personagem
var _dir = keyboard_check(ord("D"))
var _esq = keyboard_check(ord("A"))
var _baixo = keyboard_check(ord("S"))
var _cima = keyboard_check(ord("W"))

move = false
if keyboard_check(_dir)
{
	x += velh
}
if keyboard_check(_esq)
{
	x -= velh
}
if keyboard_check(_baixo)
{
	y += velv
}
if keyboard_check(_cima)
{
	y -= velv
}


//Matriz de sprite em movimento
if keyboard_check(ord("D"))
{
	move = true
	sprite_index = walk_right
	image_xscale = 3
	last_key = "D"
}

if keyboard_check(ord("A"))
{
	move = true
	sprite_index = walk_right
	image_xscale = -3
	last_key = "A"
}
if keyboard_check(ord("S"))
{
	move = true
	sprite_index = walk_front
	last_key = "S"
}
if keyboard_check(ord("W"))
{
	move = true
	sprite_index = walk_back
	last_key = "W"
}

//Matriz do sprite parado
if !move and last_key = "D"
{
	sprite_index = idle_right
	image_xscale = 3
}
if !move and last_key = "A"
{
	sprite_index = idle_right
	image_xscale = -3
}
if !move and last_key = "S"
{
	sprite_index = idle_front
}
if !move and last_key = "W"
{
	sprite_index = idle_back
}

//Colisão 
if (place_meeting(x + velh,y , obj_colisor))
{
	velh = 0
}


//if (!place_meeting()




//if place_meeting(x,y,obj_grama))
/*var dir,esq

dir = keyboard_check(ord("D"))
esq = keyboard_check(ord("A"))

velo_h = (dir - esq) * velo_h
velo_v = (baixo - cima) * vel

if (place_meeting(x + velo_h, y, obj_colisor))
{
	while(!place_meeting(x + sign(velo_h), y, obj_colisor))
	{
		x+= sign(velo_h)
	}
	velo_h = 0;
}

if (place_meeting(x, y + velo_v, obj_colisor))
{
	while(!place_meeting(x, y + sign(velo_v),obj_colisor))
	{
		y += sign(velo_v);
	}
	velo_v = 0;
}