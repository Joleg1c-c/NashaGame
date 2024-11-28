/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

function get_used(player) {
	var i = player.current_item;
	if (player.inventory[i] != 0 && player.inventory[i].object_index == obj_water) {
		
		var _tmp = player.inventory[i];
		player.inventory[i] = 0;
		instance_destroy(_tmp);
		instance_create_depth(0, 0, -100, obj_Dialog_level_1_3);
		obj_EventMenger_1lvl.Next();
		//obj_EventMenger_1lvl.TochItem(ALL_EVENT_ITEMS.LAZINESS);
	
	}
}