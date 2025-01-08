/// @description Insert description here
// You can write your code in this editor

var _nearby_object = instance_nearest(x, y, obj_interactable);	

if (_nearby_object == noone) {
	return;
}
	
	
if (_nearby_object.is_interactable != false && distance_to_object(obj_interactable) < 55) {
	_nearby_object.get_used(self);
}