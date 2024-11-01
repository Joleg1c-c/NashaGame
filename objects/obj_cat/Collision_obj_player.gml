var shootKey = ord("E");


if (keyboard_check(shootKey) and obj_player.current_sprite != PLAYER_STATE.TALK)
{
	instance_create_depth(0, 0, -100, obj_DialogTest);
	show_debug_message("asdadasd");
}