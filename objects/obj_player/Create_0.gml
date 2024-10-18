window_set_size(1280, 720)


fallSpr = sPlayerFall;
idleSpr = sPlayerIdle;
runSpr = sPlayerRun;
jumpSpr = sPlayerJump;
walkSpr = sPlayerWalk;

running = false;
grounded = false;
falling = false;

move_speed = 0;
walk_speed = 1;
run_speed = 2;
jump_speed = 3.75;
move_x = 0;
move_y = 0;

window_set_position(10, 10);

layerID = layer_get_id("colizion");
tiles = layer_tilemap_get_id(layerID);

