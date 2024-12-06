// Evento Create de obj_control
global.message = "";
global.message_duration = 0;
global.message_timer = 0;
global.message_slot_free = true; // Slot de mensagem está livre no início

global.show_message_with_duration = function(_text, _duration) {
    if (global.message_slot_free) { // Verifica se o slot está livre
        global.message = _text;
        global.message_duration = _duration;
        global.message_timer = _duration;
        global.message_slot_free = false; // Marca o slot como ocupado
    }
};

global.draw_message = function() {
    if (global.message_timer > 0) {
        var text_y = camera_get_view_y(view_camera[0]) + 50;
        var text_x = camera_get_view_x(view_camera[0]) + 800;
        var offset = 15;
		
		if room = rm_lua or room = rm_lua_1{
			var _rectangle_height = string_height_ext(global.message, -1, 400)
		} else{
			var _rectangle_height = string_height_ext(global.message, -1, 400) / 2
		}
		
        draw_set_alpha(0.7);
        draw_set_color(c_black);
        draw_rectangle(text_x - offset - 70, text_y - offset, text_x + offset + 400, text_y + offset + _rectangle_height, false);
        
        draw_set_alpha(1);
        draw_set_font(Fonte1);
        draw_set_color(c_white);
        draw_text_ext(text_x, text_y, global.message, -1, 400);
        
        global.message_timer -= 1;
        
		instance_destroy(obj_dica)
		instance_create_depth(text_x - 70, text_y, -150, obj_dica)
		
        if (global.message_timer <= 0) {
            global.message = "";
            global.message_slot_free = true; // Libera o slot quando a mensagem desaparece
			instance_destroy(obj_dica)
        }
    }
};