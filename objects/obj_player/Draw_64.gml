/// @description Insert description here
// You can write your code in this editor

if (current_state == PLAYER_STATE.TALK) {
	return;
}

var x_offset = 16;
var y_offset = 16;



for (var i = 0; i < max_inventory_size; i++) {
	var cell_sprite = (i == current_item) ? spr_select : spr_cell;
	draw_sprite_ext(
            cell_sprite, 
            0,                         
            x_offset + (i * 16),              
            y_offset,                         
            16 / sprite_get_width(cell_sprite), 
            16 / sprite_get_height(cell_sprite), 
            0,                          
            c_white,                   
            0.8                          
     );
}


for (var i = 0; i < max_inventory_size; i++) {
	if (inventory[i] != noone && inventory[i] != 0) {
        draw_sprite_ext(
            inventory[i].sprite_index, 
            0,                         
            x_offset + (i * 16),              
            y_offset,                         
            16 / inventory[i].sprite_width, 
            16 / inventory[i].sprite_height, 
            0,                          
            c_white,                   
            1                          
        );
    }
}
