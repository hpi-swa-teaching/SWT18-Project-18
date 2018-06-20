event handling
mouseDown: evt
	
	
	self selection clear.
	self clickAt: evt position.
	self editCell: self selection startCell event: evt.
	