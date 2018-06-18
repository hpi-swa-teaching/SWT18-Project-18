event handling
mouseDown: evt
	| cell |
	
	cell := self cellAt: evt position.
	self dragging: true.
	self editCell: cell event: evt.
	self startDragAtCell: cell