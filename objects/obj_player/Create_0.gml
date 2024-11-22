spr_cell = spr_inv_cell;
spr_select = spr_inv_select_old;
spr_fall = sMishaIdle; // затычка
spr_idle = sMishaIdle;
spr_run = sMishaWalk;  // затычка
spr_jump = sMishaIdle;  // затычка
spr_walk = sMishaWalk;
spr_use = sMishaUse;


enum PLAYER_STATE {
    IDLE,
	WALK,
    RUN,
    JUMP,
    FALL,
	USE,
	TALK,
	THROW
}

current_state = PLAYER_STATE.IDLE;

throw_speed = 16;
move_speed = 0;
walk_speed = 10;
run_speed = 20;
jump_speed = 15;

dx = 0;
dy = 0;

max_inventory_size = 10; 
inventory = array_create(max_inventory_size);
current_item = 0;


