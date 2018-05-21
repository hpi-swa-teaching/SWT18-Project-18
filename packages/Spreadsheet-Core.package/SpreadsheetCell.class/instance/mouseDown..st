event handling
mouseDown: evt
	
	self dragging: true.
	self grid editCell: self event: evt.
	self grid startDragAtCell: self