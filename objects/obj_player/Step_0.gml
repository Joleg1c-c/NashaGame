/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

function state_idle() {
    current_sprite = spr_idle;
	dx = 0;
	dy = 0;
    if (keyboard_check(vk_left) || keyboard_check(vk_right)) {
        current_state = PLAYER_STATE.WALK; 
	} else if (keyboard_check_pressed(ord("E"))) {
		current_state = PLAYER_STATE.USE;
	} else if (keyboard_check_pressed(ord("R"))) {
		current_state = PLAYER_STATE.THROW;
    } else if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up)) {
		dy = -jump_speed;
        current_state = PLAYER_STATE.JUMP;
    } else if (!place_meeting(x, y + 1, [tiles, obj_heart_zone])) {
		dy = jump_speed / 8;
		current_state = PLAYER_STATE.FALL;
	}
}

function state_walk() {
	current_sprite = spr_walk;
	
	if (keyboard_check(vk_shift)) {
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
		dy = jump_speed / 8;
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
	dx *= 0.99;
	
	if (keyboard_check(vk_left)) {
        dx -= walk_speed * 0.05;
		dx = clamp(dx, -run_speed, run_speed);
		image_xscale = -1;
    } else if (keyboard_check(vk_right)) {
        dx += walk_speed * 0.05;
		dx = clamp(dx, -run_speed, run_speed);
		image_xscale = 1;
	}
	
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
		dy = clamp(dy, -jump_speed, jump_speed);
	}
}

function state_use() {
	current_sprite = spr_use;
	
	if (image_index <= sprite_get_number(current_sprite) / 2) {
		return;	
	}
	
	var _nearby_object = instance_nearest(x, y, obj_interactable);
	
	if (_nearby_object == noone) {
		return;
	}
	
	
	if (_nearby_object.is_interactable != false && distance_to_object(obj_interactable) < 15) {
		_nearby_object.get_used(self);
		
	}
	 
	
	if (image_index >= sprite_get_number(current_sprite) - 1) {
		current_state = PLAYER_STATE.IDLE;
    }

}

function state_talk() {
	current_sprite = spr_idle;
}

function state_throw() {
	if (inventory[current_item] == 0) {
		current_state = PLAYER_STATE.IDLE;
		return;
	}
	
	current_sprite = spr_use;
	
	if (image_index >= sprite_get_number(current_sprite) - 1) {
		inventory[current_item].x = x;
		inventory[current_item].y = y - sprite_height / 2;
		inventory[current_item].dx = sign(image_xscale) * throw_speed;
		inventory[current_item].dy = -throw_speed;
		inventory[current_item].visible = true;
		inventory[current_item].is_interactable = true;
		inventory[current_item] = 0;
		current_state = PLAYER_STATE.IDLE;
    }
}

for (var i = 0; i <= 9; i++) {
    if (keyboard_check(ord(string(i)))) {
		
		current_item = (i == 0) ? 9 : (i - 1);
        
        break; 
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
	case PLAYER_STATE.USE:
		state_use();
		break;
	case PLAYER_STATE.TALK:
		state_talk();
		break;
	case PLAYER_STATE.THROW:
		state_throw();
		break;
}

move_and_collide(dx, dy,  [tiles, obj_heart_zone]);
sprite_index = current_sprite;



