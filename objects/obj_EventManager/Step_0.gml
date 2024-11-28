now_x = all_x[global.iEvent]

tochItem = noone;

function left_is_closest_number(num1, num2, target) {
    var diff1 = abs(num1 - target);
    var diff2 = abs(num2 - target);
    
    if (diff1 < diff2) {
        return true;
    } else {
        return false;
    }
}

array_foreach(now_x, function(_val, _index)
{
	if (_val.coord){
		if (_val.left_x < obj_player.x and obj_player.x < _val.right_x)
		{
			instance_create_depth(0, 0, -100, _val.dialog);
			if(_val.importent){
				Next();
			}
			else{
				if (left_is_closest_number(_val.left_x, _val.right_x, obj_player.x)){
					obj_player.x -= teleport_to;
				}
				else{
					obj_player.x += teleport_to;

				}
			}
		}
	}
});

function TochItem(_item){
	array_foreach(now_x, function(_val, _index)
	{
		if (!_val.coord){
			show_debug_message(_val.item + " " + _item);
			if (_val.item == _item){
				instance_create_depth(0, 0, -100, _val.dialog);
				if(_val.importent){
					Next();
				}
			}
		}
	});	
};