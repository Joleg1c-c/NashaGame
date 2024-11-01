function Dialogue() constructor{

	_dialog = [];
	
	add = function(_sprite, _message){
		array_push(_dialog, {
			sprite: _sprite, 
			message: _message,
		});
	}
	
	pop = function(){
		var _t = array_first(_dialog);
		array_delete(_dialog, 0, 1);
		
		return _t;
	}
	
	count = function() {
		return array_length(_dialog);	
	}
}