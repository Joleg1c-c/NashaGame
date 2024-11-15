/// @description Insert description here
// You can write your code in this editor


event_inherited();




dx *= 0.985; 

if (place_meeting(x + dx, y, [tiles, obj_heart_zone])) {
    dx = -dx;
}


if (abs(dx) < 0.5) {
	dx = 0;
}

if (dy < 0) {
	dy *= 0.8;
	if (dy > -0.5) {
		dy *= -1;
	}
} else if (dy > 0) {
	dy *= 1.05;
}

if (place_meeting(x, y + dy, [tiles, obj_heart_zone])) {
    dy = -dy;
}

dx = clamp(dx, -4, 4);
dy = clamp(dy, -4, 4);

move_and_collide(dx, dy,  [tiles, obj_heart_zone]);