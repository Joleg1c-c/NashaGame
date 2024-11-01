/// @description 

if(showing_dialog == true) {
	var height = display_get_gui_height() / 4;
	var border = 2;
	var padding = 5.5;
	var text_width = 0.5;
	var _spriteWidth = height;
	var text_x = _spriteWidth + (padding * 2);
	var text_y = (height) / 2 - padding * 2 * 0;

	
	height += padding * 2;
	
	draw_set_alpha(alpha);
	
	draw_set_color(c_black);
	draw_rectangle(0, 0, display_get_gui_width(), height, false);
	
	draw_set_color(c_white);
	draw_rectangle(border, border, display_get_gui_width() - border, height - border, false);
	
	draw_set_color(c_black);
	draw_rectangle((border * 2), (border * 2), display_get_gui_width() - (border * 2), height - (border * 2), false);
	
	if(current_dialog.sprite != -1) {
		image_speed = 0.1;
		draw_sprite_stretched(current_dialog.sprite, image_index, border * 3, border * 3, _spriteWidth, _spriteWidth);
	}
	
	draw_set_color(c_white);

	draw_text_transformed(text_x, text_y, current_dialog.message, text_width, text_width, 0);
	
	alpha = lerp(alpha, 1, 0.06);
}

draw_set_alpha(1);