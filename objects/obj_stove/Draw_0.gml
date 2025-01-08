/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if (!cooking) {
	event_inherited();
	return;	
}

draw_set_font(font_menu); 
draw_text(x - 110, y - 110, string(selected));

var grid_size = 4;
var cell_size = 96; 

depth = -100000;

draw_text(x + grid_size * cell_size / 5, y - 120, "R для выбора ингридиента");

for (var i = 0; i < grid_size; i++) {
    for (var j = 0; j < grid_size; j++) {

        var x_pos = x + (i * cell_size);
        var y_pos = y + (j * cell_size);
        
		 
        var is_hovered = (mouse_x >= x_pos && mouse_x < x_pos + cell_size) &&
                         (mouse_y >= y_pos && mouse_y < y_pos + cell_size / 2);
        
        
        if (is_hovered && cell_states[i][j] != 2) {
            cell_states[i][j] = 1; 
        } else if (cell_states[i][j] == 1) {
            cell_states[i][j] = 0; 
        }

		if (cell_states[i][j] == 2) {
			draw_sprite_ext(
	            select_sprite, 
	            0,                         
	            x_pos,              
	            y_pos,                         
	            cell_size / sprite_get_width(select_sprite), 
	            cell_size / sprite_get_width(select_sprite), 
	            0,                          
	            c_white,                   
	            0.8                          
			);
		} else if (cell_states[i][j] == 1) {
			draw_sprite_ext(
	            hover_sprite, 
	            0,                         
	            x_pos,              
	            y_pos,                         
	            cell_size / sprite_get_width(hover_sprite), 
	            cell_size / sprite_get_width(hover_sprite), 
	            0,                          
	            c_white,                   
	            0.8                          
			);
		} else {
			draw_sprite_ext(
	            cell_sprite, 
	            0,                         
	            x_pos,              
	            y_pos,                         
	            cell_size / sprite_get_width(cell_sprite), 
	            cell_size / sprite_get_width(cell_sprite), 
	            0,                          
	            c_white,                   
	            0.8                          
			);
		}
		
		draw_sprite_ext(
	        icons[i][j], 
	        0,                         
	        x_pos - cell_size / 2,              
	        y_pos - cell_size / 2,                         
	        cell_size / sprite_get_width(icons[i][j]), 
	        cell_size / sprite_get_width(icons[i][j]), 
	        0,                          
	        c_white,                   
	        0.8                          
		);
		

        if (j == 0) {
            draw_text(x_pos - cell_size / 2, y - 80, horizontal_labels[i]);
        }
        
        if (i == 0) { 
            draw_text(x - 160, y_pos - cell_size / 4, vertical_labels[j]);
        }
		
    }
}
draw_set_font(-1);