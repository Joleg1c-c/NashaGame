/// @description Insert description here
// You can write your code in this editor


draw_self();

if (is_highlighted) {
	var y_offset = sin(current_time / 256) * 2 + 4;
	draw_sprite(spr_interactable, 0, x, y - sprite_height / 2 - y_offset);
}

