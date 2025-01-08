event_inherited();

function Gonext(){
	obj_EventCount.Next_3lvl();
}

// spavn_x = [760, 1000]
door_left_x = [250, 725];
door_right_x = [5020, 5566];
table_x = [2150, 2600];


all_x = [
// Старт
[
	{coord: true, left_x: table_x[0], right_x: table_x[1], dialog: obj_Dialog_level_3_1, importent: true},
	{coord: true, left_x: door_right_x[0], right_x: door_right_x[1], dialog: obj_Dialog_level_3_door, importent: false}
],
// 1 - взаимодействие с ленью 1 попытка разбудить
[
	{coord: true, left_x: door_right_x[0], right_x: door_right_x[1], dialog: obj_Dialog_level_3_door, importent: false},
	{coord: false, with_item: ALL_EVENT_ITEMS.NONE, object: ALL_EVENT_ITEMS.ANGRY, dialog: obj_Dialog_level_3_2, importent: true},
],
// 2 - взаимодействие с ждём, пока окинут водой
[
	{coord: true, left_x: door_right_x[0], right_x: door_right_x[1], dialog: obj_Dialog_level_3_door, importent: false},
	{coord: false, with_item: ALL_EVENT_ITEMS.NONE, object: ALL_EVENT_ITEMS.ANGRY, dialog: obj_Dialog_level_3_3, importent: false},

	
],
// 3 - Не даем покинуть локацию с неправильной стороны
[
	//{coord: true, left_x: door_right_x[0], right_x: door_right_x[1], dialog: obj_Dialog_level_1_bad_door_1, importent: false},

],


];