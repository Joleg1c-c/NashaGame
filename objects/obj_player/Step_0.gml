/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
ysp += 0.1
xsp = 0

if keyboard_check(vk_left)
{
	xsp = -1
}	

if keyboard_check(vk_right)
{
	xsp = +1 	
}

if place_meeting(x, y+1, obj_block)
{
	ysp=0
	if keyboard_check(vk_up)
	{
		ysp=-4
	}
}


move_and_collide(xsp, ysp, obj_block)

if place_meeting(x, y, obj_Flag)
{
	room_goto_next()	
}

if place_meeting(x, y, obj_doomkrat)
{
	room_restart()	
}