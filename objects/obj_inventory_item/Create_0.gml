/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

dx = 0;
dy = 0;

function get_used(player) {
	for (var i = 0; i <  player.max_inventory_size; i++) {
		if (player.inventory[i] == 0) {
			player.inventory[i] = self;
			is_interactable = false;
			visible = false;
			x = -100000;
			y = -100000;
			break;
		}
	}
}