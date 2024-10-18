/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
move_y += 0.1
move_x = 0

if keyboard_check(vk_left)
{
	move_x -= move_speed
}	

if keyboard_check(vk_right)
{
	move_x += move_speed	
}

if place_meeting(x, y+1, obj_block)
{
	move_y = 0
	
	if keyboard_check(vk_up)
	{
		move_y -= jump_speed
	}
}

if (move_x != 0)
{
	sprite_index = runSpr;
	image_xscale = sign(move_x);
}
else
{
	sprite_index = idleSpr;
}

move_and_collide(move_x, move_y, obj_block)

if place_meeting(x, y, obj_Flag)
{
	room_goto_next()	
}

if place_meeting(x, y, obj_doomkrat)
{
	room_restart()	
}

