event handling
mouseDown: evt

	| cell |
	
	self selection clear.
	cell := self cellAt: evt position.
	self editCell: cell event: evt.
	self startDragAtCell: cell.