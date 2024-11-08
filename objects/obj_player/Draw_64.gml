/// @description Insert description here
// You can write your code in this editor


for (var i = 0; i < max_inventory_size; i++) {
     draw_sprite_ext(
            spr_cell, 
            0,                         
            0 + (i * 16),              
            0,                         
            16 / sprite_get_width(spr_cell), 
            16 / sprite_get_height(spr_cell), 
            0,                          
            c_white,                   
            0.8                          
        );
}


for (var i = 0; i < array_length(inventory); i++) {
    if (inventory[i] != noone) {
        draw_sprite_ext(
            inventory[i].sprite_index, 
            0,                         
            0 + (i * 16),              
            0,                         
            16 / inventory[i].sprite_width, 
            16 / inventory[i].sprite_height, 
            0,                          
            c_white,                   
            1                          
        );
    }
}
