event handling
mouseDown: evt
	| cell |
	
	cell := self cellFor: evt position.
	self dragging: true.
	self editCell: cell event: evt.
	self startDragAtCell: cell