if y < obj_player.y and pedra_acima = false{
	depth = -3
	pedra_acima = true
} else if  y > obj_player.y and pedra_acima = true{
	depth = -6
	pedra_acima = false
}