event handling
startMove: evt
	
	| cell |
	cell := self cellAt: evt position.
	
	self targetCell: (BorderedMorph new 
		color: Color transparent;
		borderColor: Color blue;
		position: cell position;
		width: cell width;
		height: cell height).
	self addMorph: self targetCell 