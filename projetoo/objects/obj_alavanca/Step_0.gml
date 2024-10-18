if global.final{
	timer -= 1
	if timer <= 0{
		room_goto(rm_lua)
	}
}