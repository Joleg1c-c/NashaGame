event_inherited();

spavn_x = [760, 1000]
door_left_x = [250, 760];
door_right_x = [4950, 5566];
table_x = [1430, 2300];


all_x = [
// Старт
[
	{coord: true, left_x: spavn_x[0], right_x: spavn_x[1], dialog: obj_Dialog_level_1_start, importent: true}
],
// 1 - взаимодействие с ленью 1 попытка разбудить
[
	{coord: true, left_x: door_left_x[0], right_x: door_left_x[1], dialog: obj_Dialog_level_1_1door, importent: false},
	{coord: true, left_x: door_right_x[0], right_x: door_right_x[1], dialog: obj_Dialog_level_1_1door, importent: false},
	{coord: true, left_x: table_x[0], right_x: table_x[1], dialog: obj_Dialog_level_1_1, importent: true},
],
// 2 - взаимодействие с ждём, пока окинут водой
[
	{coord: true, left_x: door_left_x[0], right_x: door_left_x[1], dialog: obj_Dialog_level_1_2door, importent: false},
	{coord: true, left_x: door_right_x[0], right_x: door_right_x[1], dialog: obj_Dialog_level_1_2door, importent: false},
	{coord: false, item: ALL_EVENT_ITEMS.LAZINESS, dialog: obj_Dialog_level_1_2door, importent: true},
	
],
// 3 - Не даем покинуть локацию с неправильной стороны
[
	{coord: true, left_x: door_left_x[0], right_x: door_left_x[1], dialog: obj_Dialog_level_1_bad_door_1, importent: false},
],


];