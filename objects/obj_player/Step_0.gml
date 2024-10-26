/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
function state_idle() {
    current_sprite = spr_idle;
	dx = 0;
	dy = 0;
    if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)) {
        current_state = PLAYER_STATE.WALK;
    } else if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up)) {
		dy = -jump_speed;
        current_state = PLAYER_STATE.JUMP;
    } else if (!place_meeting(x, y + 1, [tiles, obj_heart_zone])) {
		dy = 0.5;
		current_state = PLAYER_STATE.FALL;
	}
}

function state_walk() {
	current_sprite = spr_walk;
	
	if (keyboard_check_pressed(vk_shift)) {
		current_state = PLAYER_STATE.RUN;	
	} else if (keyboard_check(vk_left)) {
        dx = -walk_speed;
		image_xscale = -1;
    } else if (keyboard_check(vk_right)) {
        dx = walk_speed;
		image_xscale = 1;
    } else {
        dx = 0;
        current_state = PLAYER_STATE.IDLE;
    }
	
	if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up)) {
		dy = -jump_speed;
        current_state = PLAYER_STATE.JUMP;
    } 
	
	if (!place_meeting(x, y + 1, [tiles, obj_heart_zone])) {
		dy = 0.5;
		current_state = PLAYER_STATE.FALL;
	}
}

function state_run() {
	current_sprite = spr_run;
	
    if (keyboard_check(vk_left)) {
        dx = -run_speed;
		image_xscale = -1;
    } else if (keyboard_check(vk_right)) {
        dx = run_speed;
		image_xscale = 1;
    } else {
        dx = 0;
        current_state = PLAYER_STATE.IDLE;
    }
	
	if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up)) {
		dy = -jump_speed;
        current_state = PLAYER_STATE.JUMP;
    }
	
	if (!place_meeting(x, y + 1, [tiles, obj_heart_zone])) {
		dy = 0.5;
		current_state = PLAYER_STATE.FALL;
	}
}

function state_jump() {
	current_sprite = spr_jump;
	dy *= 0.95;
	
	if (dy >= -0.5) {
		dy = -dy;
		current_state = PLAYER_STATE.FALL;
	}
}

function state_fall() {
	current_sprite = spr_fall;
	
	if (place_meeting(x, y + 1, [tiles, obj_heart_zone])) {
		dy = 0;
		current_state = PLAYER_STATE.IDLE;
	} else {
		dy *= 1.05;
	}
}


switch (current_state) {
    case PLAYER_STATE.IDLE:
        state_idle();
        break;
    case PLAYER_STATE.WALK:
        state_walk();
        break;
	case PLAYER_STATE.RUN:
		state_run();
		break;
	case PLAYER_STATE.JUMP:
		state_jump();
		break;
	case PLAYER_STATE.FALL:
		state_fall();
		break;
}

move_and_collide(dx, dy,  [tiles, obj_heart_zone]);
sprite_index = current_sprite;

if keyboard_check(ord("R"))
{
	current_state = PLAYER_STATE.IDLE;
	x = 100;
	y = 100;
}

