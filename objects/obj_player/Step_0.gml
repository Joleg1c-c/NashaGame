/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
move_y += 0.1; 

if (grounded) move_x = 0;
else move_x *= 0.97
move_speed = walk_speed;

if (keyboard_check(vk_shift))
{
	if (grounded) {
		running = true;
		move_speed = run_speed;
	}
}

if (keyboard_check_released(vk_shift))
{
	running = false;
}

if keyboard_check(vk_left)
{
	if (grounded) move_x -= move_speed;
	else move_x -= move_speed * 0.05;
}	

if keyboard_check(vk_right)
{
	if (grounded) move_x += move_speed;
	else move_x += move_speed * 0.05;
}

if keyboard_check(ord("R"))
{
	room_restart();
}

if place_meeting(x, y + 1, [tiles, obj_heart_zone])
{
	move_y = 0;
	grounded = true;
	
	if keyboard_check(vk_up)
	{
		move_y -= jump_speed;
	}
}
else
{
	grounded = false;
}

show_debug_message(tiles);


if (move_y > 0) 
{
	falling = true;
}
else 
{
	falling = false;
}

if (move_x != 0)
{
	if (!grounded && !falling)
	{
		sprite_index = jumpSpr;
	}
	else if (!grounded && falling) 
	{
		sprite_index = fallSpr;
	}
	else 
	{
		if (running) sprite_index = runSpr;
		else sprite_index = walkSpr;
	}
	image_xscale = sign(move_x);
}
else if (falling)
{
	sprite_index = fallSpr;
}
else
{
	sprite_index = idleSpr;
}

move_and_collide(move_x, move_y,  [tiles, obj_heart_zone])

