if (self.visible){
	instance_create_depth(0, 0, -100, Dioalog);
}
if (self.Importent and self.visible){
	obj_EventManager.Next();
}
//self.visible = false;
// instance_destroy();
//show_message(self.visible);