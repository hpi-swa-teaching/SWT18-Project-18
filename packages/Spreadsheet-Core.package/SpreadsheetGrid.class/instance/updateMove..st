event handling
updateMove: evt
	
	| cell |
	
	cell := self cellAt: evt position.
	self targetCell
		position: cell position;
		width: cell width;
		height: cell height