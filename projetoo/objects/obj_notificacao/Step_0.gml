if global.descoberta = true {
	tempo_notificacao++
	if tempo_notificacao <=60 {
		y-=6
	} else if tempo_notificacao >240 and tempo_notificacao < 360 {
		x+= 6
	} else if tempo_notificacao > 360 {
		global.descoberta = false	
	}
}