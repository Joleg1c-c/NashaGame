/// @description Insert description here
// You can write your code in this editor
draw_self();


var x_offset = x - 100;
var y_offset = y - 100;
for (var i = 0; i < array_length(inventory); i++) {
    if (inventory[i] != noone) {
        draw_sprite(inventory[i].sprite_index, 0, x_offset  + (i * inventory[i].sprite_width), y_offset);
    }
}
