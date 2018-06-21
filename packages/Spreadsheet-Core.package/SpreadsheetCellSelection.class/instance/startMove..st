initialization
startMove: evt
	
	| cell |
	cell := self grid cellAt: evt position.
	
	self targetCell: (BorderedMorph new 
		color: Color transparent;
		borderColor: Color blue;
		bounds: cell bounds ).
	self grid add: self targetCell 