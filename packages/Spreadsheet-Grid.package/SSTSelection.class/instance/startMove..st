cell moving
startMove: evt
	
	self targetCell: self selectedCell.
	self targetMorph: (BorderedMorph new 
		color: Color transparent;
		borderColor: Color blue;
		bounds: self selectedCell bounds ).
	self grid add: self targetMorph 