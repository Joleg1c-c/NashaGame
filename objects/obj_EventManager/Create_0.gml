
enum ALL_EVENT_ITEMS{
	LAZINESS,
	BOTELWATER,
	NONE
}
function Gonext(){
	obj_EventCount.Next_1lvl();
}


TochItem = function(_GetObject, _GetItem=ALL_EVENT_ITEMS.NONE){
	_item = _GetItem;
	_object = _GetObject;
	array_foreach(now_x, function(_val, _index)
	{
		if (!_val.coord){
			if (_val.object == _object and _val.with_item == _item){
				instance_create_depth(0, 0, -100, _val.dialog);
				if(_val.importent){
					Gonext();
				}
			}
		}
	});	
};

all_y = [0, 3000];

teleport_to = 1;


// all_x = [[], [], []];
