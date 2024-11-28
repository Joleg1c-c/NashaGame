global.iEvent = 0

Next = function(){
	global.iEvent++;	
}

enum ALL_EVENT_ITEMS{
	LAZINESS,
	BOTELWATER,
	NONE
}

TochItem = function(_GetObject, _GetItem=ALL_EVENT_ITEMS.NONE){
	_item = _GetItem;
	_object = _GetObject;
	array_foreach(now_x, function(_val, _index)
	{
		if (!_val.coord){
			//show_debug_message(string(_val.object) + " " + string(_object));
			if (_val.object == _object and _val.with_item == _item){
				instance_create_depth(0, 0, -100, _val.dialog);
				if(_val.importent){
					Next();
				}
			}
		}
	});	
};

all_y = [0, 3000];

teleport_to = 1;

// all_x = [[], [], []];
