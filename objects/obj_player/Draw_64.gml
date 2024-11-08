/// @description Insert description here
// You can write your code in this editor


for (var i = 0; i < array_length(inventory); i++) {
    if (inventory[i] != noone) {
        draw_sprite(
			inventory[i].sprite_index,
			0,
			0  + (i * inventory[i].sprite_width),
			0
		);
    }
}
