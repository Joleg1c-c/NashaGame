event_inherited();

function Gonext(){
	obj_EventCount.Next_2lvl();
}

spavn_x = [760, 1000]
door_left_x = [250, 760];
door_right_x = [4950, 5566];
table_x = [3360, 3838];


all_x = [
// Старт
[
	{coord: true, left_x: spavn_x[0], right_x: spavn_x[1], dialog: obj_Dialog_level_2_start, importent: true}
],
// 1 - взаимодействие с ленью 1 попытка разбудить
[
	{coord: true, left_x: door_right_x[0], right_x: door_right_x[1], dialog: obj_Dialog_level_2_4, importent: false},
	{coord: true, left_x: table_x[0], right_x: table_x[1], dialog: obj_Dialog_level_2_1, importent: true},
],
// 2 - взаимодействие с ждём, пока окинут водой
[
	{coord: true, left_x: door_right_x[0], right_x: door_right_x[1], dialog: obj_Dialog_level_1_2door, importent: false},
	{coord: false, with_item: ALL_EVENT_ITEMS.NONE, object: ALL_EVENT_ITEMS.GLUTTONY, dialog: obj_Dialog_level_2_2, importent: false},
		{coord: false, with_item: ALL_EVENT_ITEMS.SOUPE, object: ALL_EVENT_ITEMS.GLUTTONY, dialog: obj_Dialog_level_2_3, importent: true},

	
],
// 3 - Не даем покинуть локацию с неправильной стороны
[
	{coord: true, left_x: door_left_x[0], right_x: door_left_x[1], dialog: obj_Dialog_level_1_bad_door_1, importent: false},

],


];