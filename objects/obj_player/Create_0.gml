spr_fall = sPlayerFall;
spr_idle = sMishaIdle;
spr_run = sPlayerRun;
spr_jump = sPlayerJump;
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
walk_speed = 1;
run_speed = 2;
jump_speed = 3.75;

dx = 0;
dy = 0;

layerID = layer_get_id("colizion");
tiles = layer_tilemap_get_id(layerID);

