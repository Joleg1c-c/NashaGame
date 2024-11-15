spr_fall = spr_player_fall;
spr_idle = spr_player_idle;
spr_run = spr_player_run;
spr_jump = spr_player_jump;
spr_walk = spr_player_walk;
spr_use = spr_player_use;
spr_throw = spr_player_use;
spr_cell = spr_inv_cell;
spr_select = spr_inv_select_old;

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

throw_speed = 2;
move_speed = 0;
walk_speed = 1;
run_speed = 2;
jump_speed = 3.75;

dx = 0;
dy = 0;

max_inventory_size = 10; 
inventory = array_create(max_inventory_size);
current_item = 0;


