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
	USE
}

current_state = PLAYER_STATE.IDLE;

move_speed = 0;
walk_speed = 10;
run_speed = 20;
jump_speed = 15;

dx = 0;
dy = 0;

layerID = layer_get_id("colizion");
tiles = layer_tilemap_get_id(layerID);

