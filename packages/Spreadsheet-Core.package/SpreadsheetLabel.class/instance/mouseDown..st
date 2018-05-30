event handling
mouseDown: evt
	
	super mouseDown: evt.
	self grid editCell: self cells first event: evt.
	self dragging: true.
	self grid startDragAtLabel: self.