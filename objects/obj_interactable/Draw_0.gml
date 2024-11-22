/// @description Insert description here
// You can write your code in this editor


draw_self();

if (is_highlighted) {
	var _icon_size = 32;
	var y_offset = sin(current_time / 196) * 8 + 32;
	draw_sprite_ext(
		spr_highlight,
		0,
		x,
		y - sprite_height / 2 - y_offset,
		_icon_size / sprite_get_width(spr_highlight), 
        _icon_size / sprite_get_height(spr_highlight), 
		0,
		c_white,
		1
		);
}

