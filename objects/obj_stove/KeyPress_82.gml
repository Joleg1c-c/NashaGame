/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < grid_size; i++) {
    for (var j = 0; j < grid_size; j++) {
        if (cell_states[i][j] == 1) {
            cell_states[i][j] = 2;
			selected += 1;
        }
    }
}


if (cooking and selected == 4) {
	var correct_recipe = cell_states[0][0] && cell_states[1][3] && cell_states[2][1] && cell_states[3][2];
	var cooked_stew = instance_create_layer(-100000, -100000, "Instances", obj_stew)
	for (var i = 0; i <  cook.max_inventory_size; i++) {
		if (cook.inventory[i] == 0) {
			var layer_id = layer_get_id("collision");
			var tiles = layer_tilemap_get_id(layer_id);
			cooked_stew.tiles = tiles;
			cooked_stew.image_xscale = 0.3;
			cooked_stew.image_yscale = 0.3;
			cook.inventory[i] = cooked_stew;
			cooked_stew.is_interactable = false;
			cooked_stew.visible = false;
			cooked_stew.x = -100000;
			cooked_stew.y = -100000;
			audio_play_sound(pickupsound, 1, false);
			audio_sound_gain(pickupsound, 0.7, 0);
			cooked_stew.correct_recipe = correct_recipe;
			break;
		}
	}
	
	//show_message(string(correct_recipe));
	cook.current_state = PLAYER_STATE.IDLE;
	cooking = false;
	cook = undefined;
	return;
}

