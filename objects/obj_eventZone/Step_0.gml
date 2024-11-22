if (start){
	if (global.iEvent >= idEvent and global.iEvent < idEventEnd){
		self.visible = true;
	}
	else{
		self.visible = false;
	}
}
else if (global.iEvent == idEvent){
	self.visible = true;
}
else{
	self.visible = false;
}