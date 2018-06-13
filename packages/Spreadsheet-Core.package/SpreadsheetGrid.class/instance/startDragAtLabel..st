event handling
startDragAtLabel: aLabel

	self selection
		startLabel:  aLabel;
		startCell: aLabel cells first;
		currentLabel: aLabel;
		currentCell: aLabel cells last;
		fromCollection: aLabel cells.